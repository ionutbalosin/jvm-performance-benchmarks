# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 6102.968 ns/op
# Warmup Iteration   2: 6066.321 ns/op
# Warmup Iteration   3: 6064.516 ns/op
# Warmup Iteration   4: 6062.830 ns/op
# Warmup Iteration   5: 6061.926 ns/op
Iteration   1: 6062.619 ns/op
Iteration   2: 6066.279 ns/op
Iteration   3: 6065.555 ns/op
Iteration   4: 6067.016 ns/op
Iteration   5: 6062.846 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  6064.863 ±(99.9%) 7.755 ns/op [Average]
  (min, avg, max) = (6062.619, 6064.863, 6067.016), stdev = 2.014
  CI (99.9%): [6057.107, 6072.618] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:·asm":
PrintAssembly processed: 192874 total address lines.
Perf output processed (skipped 58.703 seconds):
 Column 1: cycles (50549 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 740 

   0.01%          0x00007f89aab19ed8:   shl    $0x3,%rdx                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@1 (line 94)
   0.00%          0x00007f89aab19edc:   mov    %rdx,0x8(%rsp)
                  0x00007f89aab19ee1:   mov    $0x0,%r10d
          ╭       0x00007f89aab19ee7:   jmp    0x00007f89aab19f34           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@10 (line 94)
          │       0x00007f89aab19eec:   data16 data16 nopw 0x0(%rax,%rax,1)
          │       0x00007f89aab19ef7:   data16 data16 xchg %ax,%ax
          │       0x00007f89aab19efb:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 94)
   0.00%  │↗      0x00007f89aab19f00:   mov    0x10(%rdx,%r10,4),%r9d
          ││      0x00007f89aab19f05:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
          ││      0x00007f89aab19f09:   mov    %rsi,%rcx
          ││      0x00007f89aab19f0c:   mov    %r9,%rdx                     ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
   0.01%  ││      0x00007f89aab19f0f:   mov    %r10d,0x1c(%rsp)
          ││      0x00007f89aab19f14:   data16 xchg %ax,%ax
          ││      0x00007f89aab19f17:   call   0x00007f89aab193a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││                                                                ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
          ││                                                                ;   {optimized virtual_call}
   0.02%  ││      0x00007f89aab19f1c:   nop
          ││      0x00007f89aab19f1d:   mov    0x1c(%rsp),%r10d
   0.00%  ││      0x00007f89aab19f22:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 94)
          ││      0x00007f89aab19f25:   mov    0x8(%rsp),%rdx
          ││      0x00007f89aab19f2a:   mov    0x20(%rsp),%r11d
   0.00%  ││      0x00007f89aab19f2f:   mov    0x10(%rsp),%rsi              ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@10 (line 94)
   0.00%  ↘│      0x00007f89aab19f34:   cmp    %r10d,%r11d
           ╰      0x00007f89aab19f37:   ja     0x00007f89aab19f00
   0.00%          0x00007f89aab19f39:   mov    %r10d,%esi
                  0x00007f89aab19f3c:   mov    0x24(%rsp),%r10d
   0.00%          0x00007f89aab19f41:   lea    -0x8(%r10),%r11d
                  0x00007f89aab19f45:   mov    %r11d,0x20(%rsp)
   0.01%          0x00007f89aab19f4a:   mov    0x8(%rsp),%rdx
                  0x00007f89aab19f4f:   mov    %esi,%r10d
   0.00%    ╭     0x00007f89aab19f52:   jmp    0x00007f89aab1a0dc
            │     0x00007f89aab19f57:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 94)
            │↗    0x00007f89aab19f60:   mov    0x10(%rdx,%r10,4),%r9d
   1.46%    ││    0x00007f89aab19f65:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
   0.55%    ││    0x00007f89aab19f69:   mov    %rsi,%rcx
   0.22%    ││    0x00007f89aab19f6c:   mov    %r9,%rdx
   0.00%    ││    0x00007f89aab19f6f:   call   0x00007f89aab193a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││                                                              ;   {optimized virtual_call}
   2.67%    ││    0x00007f89aab19f74:   nop
            ││    0x00007f89aab19f75:   mov    0x8(%rsp),%rdx
   0.01%    ││    0x00007f89aab19f7a:   mov    0x1c(%rsp),%r10d
   0.81%    ││    0x00007f89aab19f7f:   mov    0x14(%rdx,%r10,4),%esi
   3.55%    ││    0x00007f89aab19f84:   mov    %esi,%r11d
            ││    0x00007f89aab19f87:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
   0.70%    ││    0x00007f89aab19f8b:   mov    %r10d,%r8d
            ││    0x00007f89aab19f8e:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 94)
            ││    0x00007f89aab19f91:   mov    0x10(%rsp),%rsi
            ││    0x00007f89aab19f96:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
   0.76%    ││    0x00007f89aab19f99:   mov    %r8d,0x18(%rsp)
            ││    0x00007f89aab19f9e:   nop
            ││    0x00007f89aab19f9f:   nop
            ││    0x00007f89aab19fa0:   data16 xchg %ax,%ax
   0.81%    ││    0x00007f89aab19fa3:   call   0x00007f89aab193a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││                                                              ;   {optimized virtual_call}
   2.10%    ││    0x00007f89aab19fa8:   nop
            ││    0x00007f89aab19fa9:   mov    0x8(%rsp),%rdx
   0.10%    ││    0x00007f89aab19fae:   mov    0x1c(%rsp),%r10d
   0.77%    ││    0x00007f89aab19fb3:   mov    0x18(%rdx,%r10,4),%esi
   1.43%    ││    0x00007f89aab19fb8:   mov    %esi,%r11d
            ││    0x00007f89aab19fbb:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
   0.88%    ││    0x00007f89aab19fbf:   lea    0x2(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 94)
            ││    0x00007f89aab19fc3:   mov    0x10(%rsp),%rsi
            ││    0x00007f89aab19fc8:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││    0x00007f89aab19fcb:   mov    %r8d,0x18(%rsp)
   0.79%    ││    0x00007f89aab19fd0:   data16 xchg %ax,%ax
            ││    0x00007f89aab19fd3:   call   0x00007f89aab193a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││                                                              ;   {optimized virtual_call}
   2.46%    ││    0x00007f89aab19fd8:   nop
            ││    0x00007f89aab19fd9:   mov    0x8(%rsp),%rdx
   0.07%    ││    0x00007f89aab19fde:   mov    0x1c(%rsp),%r10d
   0.74%    ││    0x00007f89aab19fe3:   mov    0x1c(%rdx,%r10,4),%esi
   2.90%    ││    0x00007f89aab19fe8:   mov    %esi,%r11d
            ││    0x00007f89aab19feb:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
   0.80%    ││    0x00007f89aab19fef:   lea    0x3(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 94)
            ││    0x00007f89aab19ff3:   mov    0x10(%rsp),%rsi
            ││    0x00007f89aab19ff8:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││    0x00007f89aab19ffb:   mov    %r8d,0x18(%rsp)
   0.80%    ││    0x00007f89aab1a000:   data16 xchg %ax,%ax
            ││    0x00007f89aab1a003:   call   0x00007f89aab193a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││                                                              ;   {optimized virtual_call}
   4.44%    ││    0x00007f89aab1a008:   nop
            ││    0x00007f89aab1a009:   mov    0x8(%rsp),%rdx
   0.01%    ││    0x00007f89aab1a00e:   mov    0x1c(%rsp),%r10d
   0.82%    ││    0x00007f89aab1a013:   mov    0x20(%rdx,%r10,4),%esi
   1.56%    ││    0x00007f89aab1a018:   mov    %esi,%r11d
            ││    0x00007f89aab1a01b:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
   0.39%    ││    0x00007f89aab1a01f:   lea    0x4(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 94)
   0.37%    ││    0x00007f89aab1a023:   mov    0x10(%rsp),%rsi
            ││    0x00007f89aab1a028:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││    0x00007f89aab1a02b:   mov    %r8d,0x18(%rsp)
   0.39%    ││    0x00007f89aab1a030:   data16 xchg %ax,%ax
   0.37%    ││    0x00007f89aab1a033:   call   0x00007f89aab193a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││                                                              ;   {optimized virtual_call}
   2.31%    ││    0x00007f89aab1a038:   nop
            ││    0x00007f89aab1a039:   mov    0x8(%rsp),%rdx
            ││    0x00007f89aab1a03e:   mov    0x1c(%rsp),%r10d
   0.81%    ││    0x00007f89aab1a043:   mov    0x24(%rdx,%r10,4),%esi
   3.15%    ││    0x00007f89aab1a048:   mov    %esi,%r11d
            ││    0x00007f89aab1a04b:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
   0.79%    ││    0x00007f89aab1a04f:   lea    0x5(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 94)
            ││    0x00007f89aab1a053:   mov    0x10(%rsp),%rsi
            ││    0x00007f89aab1a058:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││    0x00007f89aab1a05b:   mov    %r8d,0x18(%rsp)
   0.76%    ││    0x00007f89aab1a060:   data16 xchg %ax,%ax
            ││    0x00007f89aab1a063:   call   0x00007f89aab193a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││                                                              ;   {optimized virtual_call}
   1.71%    ││    0x00007f89aab1a068:   nop
            ││    0x00007f89aab1a069:   mov    0x8(%rsp),%rdx
   0.02%    ││    0x00007f89aab1a06e:   mov    0x1c(%rsp),%r10d
   0.78%    ││    0x00007f89aab1a073:   mov    0x28(%rdx,%r10,4),%esi
   3.11%    ││    0x00007f89aab1a078:   mov    %esi,%r11d
            ││    0x00007f89aab1a07b:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
   0.80%    ││    0x00007f89aab1a07f:   lea    0x6(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 94)
            ││    0x00007f89aab1a083:   mov    0x10(%rsp),%rsi
            ││    0x00007f89aab1a088:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││    0x00007f89aab1a08b:   mov    %r8d,0x18(%rsp)
   0.78%    ││    0x00007f89aab1a090:   data16 xchg %ax,%ax
            ││    0x00007f89aab1a093:   call   0x00007f89aab193a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││                                                              ;   {optimized virtual_call}
   1.94%    ││    0x00007f89aab1a098:   nop
            ││    0x00007f89aab1a099:   mov    0x8(%rsp),%rdx
   0.01%    ││    0x00007f89aab1a09e:   mov    0x1c(%rsp),%r10d
   0.79%    ││    0x00007f89aab1a0a3:   mov    0x2c(%rdx,%r10,4),%esi
   3.01%    ││    0x00007f89aab1a0a8:   mov    %esi,%r11d
            ││    0x00007f89aab1a0ab:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
   0.83%    ││    0x00007f89aab1a0af:   lea    0x7(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 94)
            ││    0x00007f89aab1a0b3:   mov    0x10(%rsp),%rsi
            ││    0x00007f89aab1a0b8:   mov    %r11,%rdx                    ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││    0x00007f89aab1a0bb:   mov    %r8d,0x18(%rsp)
   0.79%    ││    0x00007f89aab1a0c0:   data16 xchg %ax,%ax
            ││    0x00007f89aab1a0c3:   call   0x00007f89aab193a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
            ││                                                              ;   {optimized virtual_call}
   2.00%    ││    0x00007f89aab1a0c8:   nop
            ││    0x00007f89aab1a0c9:   mov    0x1c(%rsp),%r10d
   0.00%    ││    0x00007f89aab1a0ce:   lea    0x8(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 94)
   0.71%    ││    0x00007f89aab1a0d2:   mov    0x20(%rsp),%r11d
            ││    0x00007f89aab1a0d7:   mov    0x8(%rsp),%rdx               ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@10 (line 94)
            ↘│    0x00007f89aab1a0dc:   mov    0x10(%rsp),%rsi
   0.02%     │    0x00007f89aab1a0e1:   mov    %r10d,0x1c(%rsp)
   2.38%     │    0x00007f89aab1a0e6:   cmp    %r10d,%r11d
             ╰    0x00007f89aab1a0e9:   jg     0x00007f89aab19f60
   0.03%          0x00007f89aab1a0ef:   mov    %r10d,%r11d
   0.01%          0x00007f89aab1a0f2:   mov    0x24(%rsp),%r10d
   0.05%      ╭   0x00007f89aab1a0f7:   jmp    0x00007f89aab1a134
              │   0x00007f89aab1a0fc:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 94)
   0.04%      │↗  0x00007f89aab1a100:   mov    0x10(%rdx,%r11,4),%r8d
   0.21%      ││  0x00007f89aab1a105:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@17 (line 94)
   0.05%      ││  0x00007f89aab1a109:   mov    %rsi,%r9
              ││  0x00007f89aab1a10c:   mov    %r8,%rdx                     ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
              ││  0x00007f89aab1a10f:   mov    %r11d,0x20(%rsp)
   0.01%      ││  0x00007f89aab1a114:   data16 xchg %ax,%ax
   0.04%      ││  0x00007f89aab1a117:   call   0x00007f89aab193a0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
              ││                                                            ;*invokevirtual explicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@23 (line 96)
              ││                                                            ;   {optimized virtual_call}
   0.08%      ││  0x00007f89aab1a11c:   nop
              ││  0x00007f89aab1a11d:   mov    0x20(%rsp),%r11d
   0.01%      ││  0x00007f89aab1a122:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@32 (line 94)
   0.03%      ││  0x00007f89aab1a125:   mov    0x8(%rsp),%rdx
              ││  0x00007f89aab1a12a:   mov    0x24(%rsp),%r10d
   0.00%      ││  0x00007f89aab1a12f:   mov    0x10(%rsp),%rsi              ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@10 (line 94)
              ↘│  0x00007f89aab1a134:   cmp    %r11d,%r10d
               ╰  0x00007f89aab1a137:   ja     0x00007f89aab1a100           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@12 (line 94)
   0.02%          0x00007f89aab1a139:   mov    0x30(%rsp),%rbp
   0.00%          0x00007f89aab1a13e:   add    $0x38,%rsp
                  0x00007f89aab1a142:   mov    0x348(%r15),%rcx
   0.01%          0x00007f89aab1a149:   test   %eax,(%rcx)                  ;   {poll_return}
   0.03%          0x00007f89aab1a14b:   ret    
                  0x00007f89aab1a14c:   movl   $0xfffffff5,0x370(%r15)
                  0x00007f89aab1a157:   movq   $0x0,0x378(%r15)
                  0x00007f89aab1a162:   call   0x00007f89a302427a           ; ImmutableOopMap {rdx=NarrowOop rsi=Oop [16]=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe@0 (line 94)
                                                                            ;   {runtime_call DeoptimizationBlob}
                  0x00007f89aab1a167:   nop
                [Exception Handler]
                  0x00007f89aab1a168:   call   0x00007f89a3169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
                  0x00007f89aab1a16d:   nop
....................................................................................................
  61.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 736 

             #           [sp+0x20]  (sp of caller)
             0x00007f89aab19380:   mov    0x8(%rsi),%r10d
             0x00007f89aab19384:   movabs $0x800000000,%r12
             0x00007f89aab1938e:   add    %r12,%r10
             0x00007f89aab19391:   xor    %r12,%r12
             0x00007f89aab19394:   cmp    %r10,%rax
             0x00007f89aab19397:   jne    0x00007f89a301e780           ;   {runtime_call ic_miss_stub}
             0x00007f89aab1939d:   nop
             0x00007f89aab1939e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.65%     0x00007f89aab193a0:   mov    %eax,-0x14000(%rsp)
   7.27%     0x00007f89aab193a7:   sub    $0x18,%rsp
             0x00007f89aab193ab:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {}
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe@0 (line 105)
   0.54%  ╭  0x00007f89aab193b0:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f89aab193c6
  17.25%  │  0x00007f89aab193b3:   mov    0x10(%rsp),%rbp
   2.44%  │  0x00007f89aab193b8:   add    $0x18,%rsp
          │  0x00007f89aab193bc:   mov    0x348(%r15),%rcx
   0.00%  │  0x00007f89aab193c3:   test   %eax,(%rcx)                  ;   {poll_return}
   8.25%  │  0x00007f89aab193c5:   ret    
          ↘  0x00007f89aab193c6:   movl   $0xffffffed,0x370(%r15)
             0x00007f89aab193d1:   movq   $0x10,0x378(%r15)
             0x00007f89aab193dc:   nopl   0x0(%rax)
             0x00007f89aab193e0:   call   0x00007f89a302427a           ; ImmutableOopMap {}
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe@0 (line 105)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f89aab193e5:   nop
           [Exception Handler]
             0x00007f89aab193e6:   call   0x00007f89a3169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  36.40%  <total for region 2>

....[Hottest Regions]...............................................................................
  61.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 740 
  36.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 736 
   0.34%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub, version 5, compile id 755 
   0.06%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 740 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.73%  <...other 257 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  61.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicit_throw_npe, version 4, compile id 740 
  36.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::explicitThrowNpe, version 2, compile id 736 
   1.26%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_explicit_throw_npe_jmhTest::explicit_throw_npe_avgt_jmhStub, version 5, compile id 755 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  fileStream::write 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.11%  <...other 51 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.44%       jvmci, level 4
   1.26%               kernel
   0.10%            libjvm.so
   0.09%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.03%                     
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.00%          c1, level 3
....................................................................................................
  99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 16.67% complete, ETA 00:09:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2787294.697 ns/op
# Warmup Iteration   2: 2772447.885 ns/op
# Warmup Iteration   3: 2775319.075 ns/op
# Warmup Iteration   4: 2772484.973 ns/op
# Warmup Iteration   5: 2776421.124 ns/op
Iteration   1: 2775417.065 ns/op
Iteration   2: 2775451.498 ns/op
Iteration   3: 2777431.882 ns/op
Iteration   4: 2775557.729 ns/op
Iteration   5: 2773760.558 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  2775523.746 ±(99.9%) 5008.639 ns/op [Average]
  (min, avg, max) = (2773760.558, 2775523.746, 2777431.882), stdev = 1300.728
  CI (99.9%): [2770515.108, 2780532.385] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:·asm":
PrintAssembly processed: 188132 total address lines.
Perf output processed (skipped 58.533 seconds):
 Column 1: cycles (51069 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   8.98%            libjvm.so  CodeBlob::is_compiled 
   8.18%            libjvm.so  CodeHeap::find_blob_unsafe 
   7.23%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.95%            libjvm.so  frame::sender 
   6.23%            libjvm.so  CodeCache::find_blob 
   6.13%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   5.94%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   4.08%            libjvm.so  frame::sender_for_interpreter_frame 
   3.28%            libjvm.so  frame::sender_for_interpreter_frame 
   2.47%            libjvm.so  CodeBlob::is_deoptimization_stub 
   2.29%         libc-2.31.so  [unknown] 
   1.67%            libjvm.so  frame::sender_for_compiled_frame 
   1.63%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 1335398ul>::oop_access_barrier 
   1.59%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.51%            libjvm.so  ObjArrayKlass::allocate 
   1.41%            libjvm.so  nmethod::is_zombie 
   1.39%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.36%            libjvm.so  ObjArrayAllocator::initialize 
   1.35%            libjvm.so  frame::is_interpreted_frame 
   1.28%            libjvm.so  CompiledMethod::is_compiled 
  25.05%  <...other 461 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  17.99%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   8.98%            libjvm.so  CodeBlob::is_compiled 
   8.18%            libjvm.so  CodeHeap::find_blob_unsafe 
   7.36%            libjvm.so  frame::sender_for_interpreter_frame 
   7.26%            libjvm.so  frame::sender 
   6.23%            libjvm.so  CodeCache::find_blob 
   6.13%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   2.47%            libjvm.so  CodeBlob::is_deoptimization_stub 
   2.36%         libc-2.31.so  [unknown] 
   2.08%            libjvm.so  frame::sender_for_compiled_frame 
   1.79%               kernel  [unknown] 
   1.67%            libjvm.so  ObjArrayAllocator::initialize 
   1.63%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 1335398ul>::oop_access_barrier 
   1.53%            libjvm.so  MemAllocator::allocate 
   1.51%            libjvm.so  ObjArrayKlass::allocate 
   1.41%            libjvm.so  nmethod::is_zombie 
   1.39%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.35%            libjvm.so  frame::is_interpreted_frame 
   1.28%            libjvm.so  CompiledMethod::is_compiled 
   1.25%           ld-2.31.so  _dl_tunable_set_hwcaps 
  16.16%  <...other 164 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.59%            libjvm.so
   2.43%         libc-2.31.so
   1.79%               kernel
   1.25%           ld-2.31.so
   1.13%       jvmci, level 4
   0.41%                     
   0.24%     Unknown, level 0
   0.08%           libjava.so
   0.03%          interpreter
   0.02%               [vdso]
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%       libz.so.1.2.11
   0.00%       perf-43760.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 33.33% complete, ETA 00:07:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5437314.171 ns/op
# Warmup Iteration   2: 5416262.764 ns/op
# Warmup Iteration   3: 5415451.579 ns/op
# Warmup Iteration   4: 5413205.174 ns/op
# Warmup Iteration   5: 5415134.847 ns/op
Iteration   1: 5414216.634 ns/op
Iteration   2: 5409008.282 ns/op
Iteration   3: 5415265.502 ns/op
Iteration   4: 5418272.427 ns/op
Iteration   5: 5413505.721 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe":
  5414053.713 ±(99.9%) 12922.510 ns/op [Average]
  (min, avg, max) = (5409008.282, 5414053.713, 5418272.427), stdev = 3355.935
  CI (99.9%): [5401131.204, 5426976.223] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.explicit_throw_npe:·asm":
PrintAssembly processed: 187754 total address lines.
Perf output processed (skipped 58.551 seconds):
 Column 1: cycles (50582 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   8.84%            libjvm.so  CodeBlob::is_compiled 
   7.76%            libjvm.so  CodeCache::find_blob 
   7.71%            libjvm.so  CodeHeap::find_blob_unsafe 
   6.78%            libjvm.so  frame::sender 
   6.57%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.30%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   5.63%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   4.06%            libjvm.so  frame::sender_for_interpreter_frame 
   3.28%            libjvm.so  frame::sender_for_interpreter_frame 
   2.46%                       <unknown> 
   2.43%            libjvm.so  CodeBlob::is_deoptimization_stub 
   1.83%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 1335398ul>::oop_access_barrier 
   1.70%            libjvm.so  ObjArrayAllocator::initialize 
   1.65%            libjvm.so  ObjArrayKlass::allocate 
   1.56%            libjvm.so  frame::sender_for_compiled_frame 
   1.43%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.38%            libjvm.so  frame::interpreter_frame_bcp 
   1.36%            libjvm.so  nmethod::is_zombie 
   1.34%            libjvm.so  frame::is_interpreted_frame 
   1.29%            libjvm.so  Method::bcp_from 
  24.65%  <...other 414 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  16.65%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   8.84%            libjvm.so  CodeBlob::is_compiled 
   7.76%            libjvm.so  CodeCache::find_blob 
   7.71%            libjvm.so  CodeHeap::find_blob_unsafe 
   7.34%            libjvm.so  frame::sender_for_interpreter_frame 
   7.12%            libjvm.so  frame::sender 
   6.30%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   2.96%                       <unknown> 
   2.43%            libjvm.so  CodeBlob::is_deoptimization_stub 
   1.96%            libjvm.so  frame::sender_for_compiled_frame 
   1.83%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 1335398ul>::oop_access_barrier 
   1.70%            libjvm.so  ObjArrayAllocator::initialize 
   1.65%            libjvm.so  ObjArrayKlass::allocate 
   1.49%            libjvm.so  MemAllocator::allocate 
   1.38%            libjvm.so  frame::interpreter_frame_bcp 
   1.36%            libjvm.so  nmethod::is_zombie 
   1.34%            libjvm.so  frame::is_interpreted_frame 
   1.29%            libjvm.so  Method::bcp_from 
   1.27%               kernel  [unknown] 
   1.26%           ld-2.31.so  _dl_tunable_set_hwcaps 
  16.35%  <...other 145 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.83%            libjvm.so
   2.96%                     
   1.27%               kernel
   1.26%           ld-2.31.so
   1.12%       jvmci, level 4
   0.35%     Unknown, level 0
   0.10%           libjava.so
   0.06%         libc-2.31.so
   0.02%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.00%          c1, level 3
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.0)

# Run progress: 50.00% complete, ETA 00:05:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6117.708 ns/op
# Warmup Iteration   2: 6098.338 ns/op
# Warmup Iteration   3: 6062.262 ns/op
# Warmup Iteration   4: 6063.300 ns/op
# Warmup Iteration   5: 6063.071 ns/op
Iteration   1: 6062.357 ns/op
Iteration   2: 6066.182 ns/op
Iteration   3: 6062.723 ns/op
Iteration   4: 6062.874 ns/op
Iteration   5: 6062.243 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  6063.276 ±(99.9%) 6.334 ns/op [Average]
  (min, avg, max) = (6062.243, 6063.276, 6066.182), stdev = 1.645
  CI (99.9%): [6056.941, 6069.610] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:·asm":
PrintAssembly processed: 190874 total address lines.
Perf output processed (skipped 58.686 seconds):
 Column 1: cycles (50691 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 725 

   0.02%          0x00007fbf0eb1a9d8:   shl    $0x3,%rdx                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@1 (line 82)
                  0x00007fbf0eb1a9dc:   mov    %rdx,0x8(%rsp)
                  0x00007fbf0eb1a9e1:   mov    $0x0,%r10d
          ╭       0x00007fbf0eb1a9e7:   jmp    0x00007fbf0eb1aa34           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@10 (line 82)
          │       0x00007fbf0eb1a9ec:   data16 data16 nopw 0x0(%rax,%rax,1)
          │       0x00007fbf0eb1a9f7:   data16 data16 xchg %ax,%ax
          │       0x00007fbf0eb1a9fb:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 82)
   0.01%  │↗      0x00007fbf0eb1aa00:   mov    0x10(%rdx,%r10,4),%r9d
          ││      0x00007fbf0eb1aa05:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
          ││      0x00007fbf0eb1aa09:   mov    %rsi,%rcx
          ││      0x00007fbf0eb1aa0c:   mov    %r9,%rdx                     ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
   0.00%  ││      0x00007fbf0eb1aa0f:   mov    %r10d,0x1c(%rsp)
          ││      0x00007fbf0eb1aa14:   data16 xchg %ax,%ax
          ││      0x00007fbf0eb1aa17:   call   0x00007fbf0eb19ea0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││                                                                ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
          ││                                                                ;   {optimized virtual_call}
   0.03%  ││      0x00007fbf0eb1aa1c:   nop
          ││      0x00007fbf0eb1aa1d:   mov    0x1c(%rsp),%r10d
   0.00%  ││      0x00007fbf0eb1aa22:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 82)
   0.00%  ││      0x00007fbf0eb1aa25:   mov    0x8(%rsp),%rdx
          ││      0x00007fbf0eb1aa2a:   mov    0x20(%rsp),%r11d
   0.00%  ││      0x00007fbf0eb1aa2f:   mov    0x10(%rsp),%rsi              ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@10 (line 82)
   0.00%  ↘│      0x00007fbf0eb1aa34:   cmp    %r10d,%r11d
           ╰      0x00007fbf0eb1aa37:   ja     0x00007fbf0eb1aa00
   0.01%          0x00007fbf0eb1aa39:   mov    %r10d,%esi
                  0x00007fbf0eb1aa3c:   mov    0x24(%rsp),%r10d
   0.00%          0x00007fbf0eb1aa41:   lea    -0x8(%r10),%r11d
                  0x00007fbf0eb1aa45:   mov    %r11d,0x20(%rsp)
   0.01%          0x00007fbf0eb1aa4a:   mov    0x8(%rsp),%rdx
                  0x00007fbf0eb1aa4f:   mov    %esi,%r10d
            ╭     0x00007fbf0eb1aa52:   jmp    0x00007fbf0eb1abdc
            │     0x00007fbf0eb1aa57:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 82)
            │↗    0x00007fbf0eb1aa60:   mov    0x10(%rdx,%r10,4),%r9d
   1.42%    ││    0x00007fbf0eb1aa65:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
   0.56%    ││    0x00007fbf0eb1aa69:   mov    %rsi,%rcx
   0.24%    ││    0x00007fbf0eb1aa6c:   mov    %r9,%rdx
            ││    0x00007fbf0eb1aa6f:   call   0x00007fbf0eb19ea0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││                                                              ;   {optimized virtual_call}
   2.69%    ││    0x00007fbf0eb1aa74:   nop
            ││    0x00007fbf0eb1aa75:   mov    0x8(%rsp),%rdx
   0.03%    ││    0x00007fbf0eb1aa7a:   mov    0x1c(%rsp),%r10d
   0.81%    ││    0x00007fbf0eb1aa7f:   mov    0x14(%rdx,%r10,4),%esi
   3.40%    ││    0x00007fbf0eb1aa84:   mov    %esi,%r11d
            ││    0x00007fbf0eb1aa87:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
   0.83%    ││    0x00007fbf0eb1aa8b:   mov    %r10d,%r8d
            ││    0x00007fbf0eb1aa8e:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 82)
            ││    0x00007fbf0eb1aa91:   mov    0x10(%rsp),%rsi
            ││    0x00007fbf0eb1aa96:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
   0.83%    ││    0x00007fbf0eb1aa99:   mov    %r8d,0x18(%rsp)
            ││    0x00007fbf0eb1aa9e:   nop
            ││    0x00007fbf0eb1aa9f:   nop
            ││    0x00007fbf0eb1aaa0:   data16 xchg %ax,%ax
   0.77%    ││    0x00007fbf0eb1aaa3:   call   0x00007fbf0eb19ea0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││                                                              ;   {optimized virtual_call}
   2.05%    ││    0x00007fbf0eb1aaa8:   nop
            ││    0x00007fbf0eb1aaa9:   mov    0x8(%rsp),%rdx
   0.07%    ││    0x00007fbf0eb1aaae:   mov    0x1c(%rsp),%r10d
   0.77%    ││    0x00007fbf0eb1aab3:   mov    0x18(%rdx,%r10,4),%esi
   1.35%    ││    0x00007fbf0eb1aab8:   mov    %esi,%r11d
            ││    0x00007fbf0eb1aabb:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
   0.81%    ││    0x00007fbf0eb1aabf:   lea    0x2(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 82)
            ││    0x00007fbf0eb1aac3:   mov    0x10(%rsp),%rsi
            ││    0x00007fbf0eb1aac8:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││    0x00007fbf0eb1aacb:   mov    %r8d,0x18(%rsp)
   0.84%    ││    0x00007fbf0eb1aad0:   data16 xchg %ax,%ax
            ││    0x00007fbf0eb1aad3:   call   0x00007fbf0eb19ea0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││                                                              ;   {optimized virtual_call}
   2.39%    ││    0x00007fbf0eb1aad8:   nop
            ││    0x00007fbf0eb1aad9:   mov    0x8(%rsp),%rdx
   0.08%    ││    0x00007fbf0eb1aade:   mov    0x1c(%rsp),%r10d
   0.75%    ││    0x00007fbf0eb1aae3:   mov    0x1c(%rdx,%r10,4),%esi
   2.92%    ││    0x00007fbf0eb1aae8:   mov    %esi,%r11d
            ││    0x00007fbf0eb1aaeb:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
   0.81%    ││    0x00007fbf0eb1aaef:   lea    0x3(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 82)
            ││    0x00007fbf0eb1aaf3:   mov    0x10(%rsp),%rsi
            ││    0x00007fbf0eb1aaf8:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││    0x00007fbf0eb1aafb:   mov    %r8d,0x18(%rsp)
   0.78%    ││    0x00007fbf0eb1ab00:   data16 xchg %ax,%ax
            ││    0x00007fbf0eb1ab03:   call   0x00007fbf0eb19ea0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││                                                              ;   {optimized virtual_call}
   4.44%    ││    0x00007fbf0eb1ab08:   nop
            ││    0x00007fbf0eb1ab09:   mov    0x8(%rsp),%rdx
   0.01%    ││    0x00007fbf0eb1ab0e:   mov    0x1c(%rsp),%r10d
   0.82%    ││    0x00007fbf0eb1ab13:   mov    0x20(%rdx,%r10,4),%esi
   1.51%    ││    0x00007fbf0eb1ab18:   mov    %esi,%r11d
            ││    0x00007fbf0eb1ab1b:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
   0.38%    ││    0x00007fbf0eb1ab1f:   lea    0x4(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 82)
   0.40%    ││    0x00007fbf0eb1ab23:   mov    0x10(%rsp),%rsi
            ││    0x00007fbf0eb1ab28:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││    0x00007fbf0eb1ab2b:   mov    %r8d,0x18(%rsp)
   0.36%    ││    0x00007fbf0eb1ab30:   data16 xchg %ax,%ax
   0.43%    ││    0x00007fbf0eb1ab33:   call   0x00007fbf0eb19ea0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││                                                              ;   {optimized virtual_call}
   2.20%    ││    0x00007fbf0eb1ab38:   nop
            ││    0x00007fbf0eb1ab39:   mov    0x8(%rsp),%rdx
            ││    0x00007fbf0eb1ab3e:   mov    0x1c(%rsp),%r10d
   0.81%    ││    0x00007fbf0eb1ab43:   mov    0x24(%rdx,%r10,4),%esi
   3.31%    ││    0x00007fbf0eb1ab48:   mov    %esi,%r11d
            ││    0x00007fbf0eb1ab4b:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
   0.78%    ││    0x00007fbf0eb1ab4f:   lea    0x5(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 82)
            ││    0x00007fbf0eb1ab53:   mov    0x10(%rsp),%rsi
            ││    0x00007fbf0eb1ab58:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││    0x00007fbf0eb1ab5b:   mov    %r8d,0x18(%rsp)
   0.80%    ││    0x00007fbf0eb1ab60:   data16 xchg %ax,%ax
            ││    0x00007fbf0eb1ab63:   call   0x00007fbf0eb19ea0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││                                                              ;   {optimized virtual_call}
   1.75%    ││    0x00007fbf0eb1ab68:   nop
            ││    0x00007fbf0eb1ab69:   mov    0x8(%rsp),%rdx
   0.02%    ││    0x00007fbf0eb1ab6e:   mov    0x1c(%rsp),%r10d
   0.80%    ││    0x00007fbf0eb1ab73:   mov    0x28(%rdx,%r10,4),%esi
   3.11%    ││    0x00007fbf0eb1ab78:   mov    %esi,%r11d
            ││    0x00007fbf0eb1ab7b:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
   0.81%    ││    0x00007fbf0eb1ab7f:   lea    0x6(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 82)
            ││    0x00007fbf0eb1ab83:   mov    0x10(%rsp),%rsi
            ││    0x00007fbf0eb1ab88:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││    0x00007fbf0eb1ab8b:   mov    %r8d,0x18(%rsp)
   0.79%    ││    0x00007fbf0eb1ab90:   data16 xchg %ax,%ax
            ││    0x00007fbf0eb1ab93:   call   0x00007fbf0eb19ea0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││                                                              ;   {optimized virtual_call}
   1.98%    ││    0x00007fbf0eb1ab98:   nop
            ││    0x00007fbf0eb1ab99:   mov    0x8(%rsp),%rdx
   0.01%    ││    0x00007fbf0eb1ab9e:   mov    0x1c(%rsp),%r10d
   0.81%    ││    0x00007fbf0eb1aba3:   mov    0x2c(%rdx,%r10,4),%esi
   3.14%    ││    0x00007fbf0eb1aba8:   mov    %esi,%r11d
            ││    0x00007fbf0eb1abab:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
   0.86%    ││    0x00007fbf0eb1abaf:   lea    0x7(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 82)
            ││    0x00007fbf0eb1abb3:   mov    0x10(%rsp),%rsi
            ││    0x00007fbf0eb1abb8:   mov    %r11,%rdx                    ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││    0x00007fbf0eb1abbb:   mov    %r8d,0x18(%rsp)
   0.75%    ││    0x00007fbf0eb1abc0:   data16 xchg %ax,%ax
            ││    0x00007fbf0eb1abc3:   call   0x00007fbf0eb19ea0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
            ││                                                              ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
            ││                                                              ;   {optimized virtual_call}
   1.99%    ││    0x00007fbf0eb1abc8:   nop
            ││    0x00007fbf0eb1abc9:   mov    0x1c(%rsp),%r10d
   0.01%    ││    0x00007fbf0eb1abce:   lea    0x8(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 82)
   0.76%    ││    0x00007fbf0eb1abd2:   mov    0x20(%rsp),%r11d
            ││    0x00007fbf0eb1abd7:   mov    0x8(%rsp),%rdx               ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@10 (line 82)
            ↘│    0x00007fbf0eb1abdc:   mov    0x10(%rsp),%rsi
   0.02%     │    0x00007fbf0eb1abe1:   mov    %r10d,0x1c(%rsp)
   2.29%     │    0x00007fbf0eb1abe6:   cmp    %r10d,%r11d
             ╰    0x00007fbf0eb1abe9:   jg     0x00007fbf0eb1aa60
   0.05%          0x00007fbf0eb1abef:   mov    %r10d,%r11d
   0.02%          0x00007fbf0eb1abf2:   mov    0x24(%rsp),%r10d
   0.05%      ╭   0x00007fbf0eb1abf7:   jmp    0x00007fbf0eb1ac34
              │   0x00007fbf0eb1abfc:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 82)
   0.04%      │↗  0x00007fbf0eb1ac00:   mov    0x10(%rdx,%r11,4),%r8d
   0.14%      ││  0x00007fbf0eb1ac05:   shl    $0x3,%r8                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@17 (line 82)
   0.04%      ││  0x00007fbf0eb1ac09:   mov    %rsi,%r9
              ││  0x00007fbf0eb1ac0c:   mov    %r8,%rdx                     ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
   0.00%      ││  0x00007fbf0eb1ac0f:   mov    %r11d,0x20(%rsp)
   0.01%      ││  0x00007fbf0eb1ac14:   data16 xchg %ax,%ax
   0.04%      ││  0x00007fbf0eb1ac17:   call   0x00007fbf0eb19ea0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
              ││                                                            ;*invokevirtual implicitThrowNpe {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@23 (line 84)
              ││                                                            ;   {optimized virtual_call}
   0.08%      ││  0x00007fbf0eb1ac1c:   nop
              ││  0x00007fbf0eb1ac1d:   mov    0x20(%rsp),%r11d
   0.02%      ││  0x00007fbf0eb1ac22:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@32 (line 82)
   0.04%      ││  0x00007fbf0eb1ac25:   mov    0x8(%rsp),%rdx
              ││  0x00007fbf0eb1ac2a:   mov    0x24(%rsp),%r10d
   0.00%      ││  0x00007fbf0eb1ac2f:   mov    0x10(%rsp),%rsi              ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@10 (line 82)
              ↘│  0x00007fbf0eb1ac34:   cmp    %r11d,%r10d
               ╰  0x00007fbf0eb1ac37:   ja     0x00007fbf0eb1ac00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@12 (line 82)
   0.01%          0x00007fbf0eb1ac39:   mov    0x30(%rsp),%rbp
                  0x00007fbf0eb1ac3e:   add    $0x38,%rsp
                  0x00007fbf0eb1ac42:   mov    0x348(%r15),%rcx
   0.00%          0x00007fbf0eb1ac49:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%          0x00007fbf0eb1ac4b:   ret    
                  0x00007fbf0eb1ac4c:   movl   $0xfffffff5,0x370(%r15)
                  0x00007fbf0eb1ac57:   movq   $0x0,0x378(%r15)
                  0x00007fbf0eb1ac62:   call   0x00007fbf0702427a           ; ImmutableOopMap {rdx=NarrowOop rsi=Oop [16]=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe@0 (line 82)
                                                                            ;   {runtime_call DeoptimizationBlob}
                  0x00007fbf0eb1ac67:   nop
                [Exception Handler]
                  0x00007fbf0eb1ac68:   call   0x00007fbf07169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
                  0x00007fbf0eb1ac6d:   nop
....................................................................................................
  62.04%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 722 

             #           [sp+0x20]  (sp of caller)
             0x00007fbf0eb19e80:   mov    0x8(%rsi),%r10d
             0x00007fbf0eb19e84:   movabs $0x800000000,%r12
             0x00007fbf0eb19e8e:   add    %r12,%r10
             0x00007fbf0eb19e91:   xor    %r12,%r12
             0x00007fbf0eb19e94:   cmp    %r10,%rax
             0x00007fbf0eb19e97:   jne    0x00007fbf0701e780           ;   {runtime_call ic_miss_stub}
             0x00007fbf0eb19e9d:   nop
             0x00007fbf0eb19e9e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.63%     0x00007fbf0eb19ea0:   mov    %eax,-0x14000(%rsp)
   7.09%     0x00007fbf0eb19ea7:   sub    $0x18,%rsp
             0x00007fbf0eb19eab:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {}
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe@0 (line 113)
   0.63%  ╭  0x00007fbf0eb19eb0:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007fbf0eb19ec6
  16.94%  │  0x00007fbf0eb19eb3:   mov    0x10(%rsp),%rbp
   2.51%  │  0x00007fbf0eb19eb8:   add    $0x18,%rsp
          │  0x00007fbf0eb19ebc:   mov    0x348(%r15),%rcx
   0.01%  │  0x00007fbf0eb19ec3:   test   %eax,(%rcx)                  ;   {poll_return}
   8.17%  │  0x00007fbf0eb19ec5:   ret    
          ↘  0x00007fbf0eb19ec6:   movl   $0xfffffff5,0x370(%r15)
             0x00007fbf0eb19ed1:   movq   $0x0,0x378(%r15)
             0x00007fbf0eb19edc:   nopl   0x0(%rax)
             0x00007fbf0eb19ee0:   call   0x00007fbf0702427a           ; ImmutableOopMap {}
                                                                       ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe@0 (line 113)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fbf0eb19ee5:   nop
           [Exception Handler]
             0x00007fbf0eb19ee6:   call   0x00007fbf07169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  35.99%  <total for region 2>

....[Hottest Regions]...............................................................................
  62.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 725 
  35.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 722 
   0.42%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub, version 5, compile id 740 
   0.07%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 725 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.89%  <...other 317 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  62.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicit_throw_npe, version 4, compile id 725 
  35.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark::implicitThrowNpe, version 2, compile id 722 
   1.52%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.NpeThrowBenchmark_implicit_throw_npe_jmhTest::implicit_throw_npe_avgt_jmhStub, version 5, compile id 740 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  WatcherThread::run 
   0.01%            libjvm.so  HighResTimeSampler::take_sample 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%            libjvm.so  outputStream::update_position 
   0.16%  <...other 74 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.16%       jvmci, level 4
   1.52%               kernel
   0.14%            libjvm.so
   0.07%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.03%                     
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%       perf-43876.map
....................................................................................................
  99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 0.5)

# Run progress: 66.67% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8536578.460 ns/op
# Warmup Iteration   2: 8481614.006 ns/op
# Warmup Iteration   3: 8482876.694 ns/op
# Warmup Iteration   4: 8472751.458 ns/op
# Warmup Iteration   5: 8474664.204 ns/op
Iteration   1: 8482350.051 ns/op
Iteration   2: 8477563.503 ns/op
Iteration   3: 8483169.466 ns/op
Iteration   4: 8476508.528 ns/op
Iteration   5: 8480030.512 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  8479924.412 ±(99.9%) 11171.433 ns/op [Average]
  (min, avg, max) = (8476508.528, 8479924.412, 8483169.466), stdev = 2901.186
  CI (99.9%): [8468752.979, 8491095.845] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:·asm":
PrintAssembly processed: 191284 total address lines.
Perf output processed (skipped 58.677 seconds):
 Column 1: cycles (50989 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   6.24%         libc-2.31.so  _int_malloc 
   6.18%            libjvm.so  stringStream::write 
   3.86%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   3.72%            libjvm.so  CodeBlob::is_compiled 
   3.55%                       <unknown> 
   3.53%            libjvm.so  CodeHeap::find_blob_unsafe 
   2.88%         libc-2.31.so  __strncat_ssse3 
   2.87%         libc-2.31.so  ptmalloc_init.part.0 
   2.83%                       <unknown> 
   2.76%            libjvm.so  CodeCache::find_blob 
   2.74%            libjvm.so  frame::sender 
   2.60%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.56%                       <unknown> 
   2.46%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.46%         libc-2.31.so  _int_realloc 
   2.32%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.01%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   1.81%                       <unknown> 
   1.79%         libc-2.31.so  __strncat_ssse3 
   1.62%         libc-2.31.so  __strncat_ssse3 
  39.22%  <...other 673 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  12.11%                       <unknown> 
   8.70%         libc-2.31.so  __strncat_ssse3 
   6.75%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.24%         libc-2.31.so  _int_malloc 
   6.24%            libjvm.so  stringStream::write 
   4.34%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   3.72%            libjvm.so  CodeBlob::is_compiled 
   3.53%            libjvm.so  CodeHeap::find_blob_unsafe 
   3.28%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.87%         libc-2.31.so  ptmalloc_init.part.0 
   2.86%            libjvm.so  frame::sender 
   2.76%            libjvm.so  CodeCache::find_blob 
   2.66%            libjvm.so  frame::sender_for_interpreter_frame 
   2.46%         libc-2.31.so  _int_realloc 
   2.36%               kernel  [unknown] 
   2.10%            libjvm.so  outputStream::print 
   2.01%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   1.37%         libc-2.31.so  _nl_cleanup_time 
   1.35%         libc-2.31.so  _nl_parse_alt_digit 
   1.28%            libjvm.so  frame::sender_for_compiled_frame 
  21.03%  <...other 216 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  54.13%            libjvm.so
  29.59%         libc-2.31.so
  12.11%                     
   2.36%               kernel
   0.48%           ld-2.31.so
   0.46%       jvmci, level 4
   0.31%               [vdso]
   0.20%   libpthread-2.31.so
   0.11%     Unknown, level 0
   0.10%         runtime stub
   0.06%       perf-43937.map
   0.04%           libjava.so
   0.02%          interpreter
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe
# Parameters: (size = 1024, threshold = 1.0)

# Run progress: 83.33% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17332672.566 ns/op
# Warmup Iteration   2: 17252097.386 ns/op
# Warmup Iteration   3: 17266814.434 ns/op
# Warmup Iteration   4: 17258451.088 ns/op
# Warmup Iteration   5: 17271216.674 ns/op
Iteration   1: 17269704.084 ns/op
Iteration   2: 17278271.649 ns/op
Iteration   3: 17245644.162 ns/op
Iteration   4: 17275656.230 ns/op
Iteration   5: 17261245.393 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe":
  17266104.304 ±(99.9%) 50737.565 ns/op [Average]
  (min, avg, max) = (17245644.162, 17266104.304, 17278271.649), stdev = 13176.384
  CI (99.9%): [17215366.739, 17316841.868] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe:·asm":
PrintAssembly processed: 193424 total address lines.
Perf output processed (skipped 58.717 seconds):
 Column 1: cycles (50868 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   6.40%         libc-2.31.so  _int_malloc 
   6.21%            libjvm.so  stringStream::write 
   3.71%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   3.50%            libjvm.so  CodeHeap::find_blob_unsafe 
   3.50%            libjvm.so  CodeBlob::is_compiled 
   3.45%                       <unknown> 
   3.07%         libc-2.31.so  __strncat_ssse3 
   2.65%            libjvm.so  CodeCache::find_blob 
   2.64%            libjvm.so  frame::sender 
   2.63%                       <unknown> 
   2.58%         libc-2.31.so  _int_realloc 
   2.57%         libc-2.31.so  ptmalloc_init.part.0 
   2.52%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.39%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.29%                       <unknown> 
   2.04%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   1.72%         libc-2.31.so  __strncat_ssse3 
   1.57%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   1.57%                       <unknown> 
   1.32%         libc-2.31.so  _nl_parse_alt_digit 
  41.65%  <...other 595 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  11.68%                       <unknown> 
   9.02%         libc-2.31.so  __strncat_ssse3 
   6.67%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.40%         libc-2.31.so  _int_malloc 
   6.23%            libjvm.so  stringStream::write 
   4.19%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   3.50%            libjvm.so  CodeHeap::find_blob_unsafe 
   3.50%            libjvm.so  CodeBlob::is_compiled 
   3.14%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.74%            libjvm.so  frame::sender 
   2.65%            libjvm.so  CodeCache::find_blob 
   2.58%         libc-2.31.so  _int_realloc 
   2.57%         libc-2.31.so  ptmalloc_init.part.0 
   2.22%            libjvm.so  frame::sender_for_interpreter_frame 
   2.10%            libjvm.so  outputStream::print 
   1.73%               kernel  [unknown] 
   1.57%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   1.35%            libjvm.so  frame::sender_for_compiled_frame 
   1.32%         libc-2.31.so  _nl_parse_alt_digit 
   1.12%         libc-2.31.so  _nl_cleanup_time 
  23.70%  <...other 211 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  54.47%            libjvm.so
  30.16%         libc-2.31.so
  11.68%                     
   1.73%               kernel
   0.58%           ld-2.31.so
   0.52%       jvmci, level 4
   0.24%               [vdso]
   0.23%   libpthread-2.31.so
   0.15%         runtime stub
   0.09%           libjava.so
   0.08%     Unknown, level 0
   0.05%       perf-43994.map
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:10

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

Benchmark                                  (size)  (threshold)  Mode  Cnt         Score       Error  Units
NpeThrowBenchmark.explicit_throw_npe         1024          0.0  avgt    5      6064.863 ±     7.755  ns/op
NpeThrowBenchmark.explicit_throw_npe:·asm    1024          0.0  avgt                NaN                ---
NpeThrowBenchmark.explicit_throw_npe         1024          0.5  avgt    5   2775523.746 ±  5008.639  ns/op
NpeThrowBenchmark.explicit_throw_npe:·asm    1024          0.5  avgt                NaN                ---
NpeThrowBenchmark.explicit_throw_npe         1024          1.0  avgt    5   5414053.713 ± 12922.510  ns/op
NpeThrowBenchmark.explicit_throw_npe:·asm    1024          1.0  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe         1024          0.0  avgt    5      6063.276 ±     6.334  ns/op
NpeThrowBenchmark.implicit_throw_npe:·asm    1024          0.0  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe         1024          0.5  avgt    5   8479924.412 ± 11171.433  ns/op
NpeThrowBenchmark.implicit_throw_npe:·asm    1024          0.5  avgt                NaN                ---
NpeThrowBenchmark.implicit_throw_npe         1024          1.0  avgt    5  17266104.304 ± 50737.565  ns/op
NpeThrowBenchmark.implicit_throw_npe:·asm    1024          1.0  avgt                NaN                ---
