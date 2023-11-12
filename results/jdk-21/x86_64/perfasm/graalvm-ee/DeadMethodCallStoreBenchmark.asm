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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_baseline

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 775.778 ns/op
# Warmup Iteration   2: 771.428 ns/op
# Warmup Iteration   3: 770.331 ns/op
# Warmup Iteration   4: 770.378 ns/op
# Warmup Iteration   5: 770.363 ns/op
Iteration   1: 770.354 ns/op
Iteration   2: 770.332 ns/op
Iteration   3: 770.355 ns/op
Iteration   4: 770.351 ns/op
Iteration   5: 770.356 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_baseline":
  770.350 ±(99.9%) 0.039 ns/op [Average]
  (min, avg, max) = (770.332, 770.350, 770.356), stdev = 0.010
  CI (99.9%): [770.310, 770.389] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_baseline:asm":
PrintAssembly processed: 228371 total address lines.
Perf output processed (skipped 60.714 seconds):
 Column 1: cycles (50670 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline, version 2, compile id 978 

                    # {method} {0x00007fa0cf47c050} &apos;method_call_baseline&apos; &apos;()D&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadMethodCallStoreBenchmark&apos;
                    #           [sp+0x20]  (sp of caller)
                    0x00007fa14ed7f820:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                    0x00007fa14ed7f824:   movabs $0x7fa0d3000000,%r12
                    0x00007fa14ed7f82e:   add    %r12,%r10
                    0x00007fa14ed7f831:   xor    %r12,%r12
                    0x00007fa14ed7f834:   cmp    %r10,%rax
                    0x00007fa14ed7f837:   jne    0x00007fa14e764080           ;   {runtime_call ic_miss_stub}
                    0x00007fa14ed7f83d:   data16 xchg %ax,%ax
                  [Verified Entry Point]
   0.04%            0x00007fa14ed7f840:   mov    %eax,-0x14000(%rsp)
                    0x00007fa14ed7f847:   sub    $0x18,%rsp
   0.07%            0x00007fa14ed7f84b:   nop
                    0x00007fa14ed7f84c:   cmpl   $0x1,0x20(%r15)
          ╭         0x00007fa14ed7f854:   jne    0x00007fa14ed7f9b5
          │      ↗  0x00007fa14ed7f85a:   vmovsd -0x62(%rip),%xmm0        # 0x00007fa14ed7f800
          │      │                                                            ;   {section_word}
   0.05%  │      │  0x00007fa14ed7f862:   vmovsd -0x62(%rip),%xmm1        # 0x00007fa14ed7f808
          │      │                                                            ;   {section_word}
          │      │  0x00007fa14ed7f86a:   mov    $0x5,%r10d
          │╭     │  0x00007fa14ed7f870:   jmp    0x00007fa14ed7f92b
          ││     │  0x00007fa14ed7f875:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.04%  ││↗    │  0x00007fa14ed7f880:   lea    0x10(%r10),%r11d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f884:   vxorpd %xmm2,%xmm2,%xmm2
   2.92%  │││    │  0x00007fa14ed7f888:   vcvtsi2sd %r10d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.04%  │││    │  0x00007fa14ed7f88d:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f891:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   8.76%  │││    │  0x00007fa14ed7f895:   lea    0x2(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f899:   vxorpd %xmm2,%xmm2,%xmm2
   0.05%  │││    │  0x00007fa14ed7f89d:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   2.91%  │││    │  0x00007fa14ed7f8a2:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f8a6:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   9.12%  │││    │  0x00007fa14ed7f8aa:   lea    0x4(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f8ae:   vxorpd %xmm2,%xmm2,%xmm2
          │││    │  0x00007fa14ed7f8b2:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   3.05%  │││    │  0x00007fa14ed7f8b7:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f8bb:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   8.98%  │││    │  0x00007fa14ed7f8bf:   lea    0x6(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f8c3:   vxorpd %xmm2,%xmm2,%xmm2
   0.04%  │││    │  0x00007fa14ed7f8c7:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   3.11%  │││    │  0x00007fa14ed7f8cc:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f8d0:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   8.93%  │││    │  0x00007fa14ed7f8d4:   lea    0x8(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f8d8:   vxorpd %xmm2,%xmm2,%xmm2
          │││    │  0x00007fa14ed7f8dc:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   3.11%  │││    │  0x00007fa14ed7f8e1:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f8e5:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   9.06%  │││    │  0x00007fa14ed7f8e9:   lea    0xa(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f8ed:   vxorpd %xmm2,%xmm2,%xmm2
          │││    │  0x00007fa14ed7f8f1:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   3.07%  │││    │  0x00007fa14ed7f8f6:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f8fa:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   9.28%  │││    │  0x00007fa14ed7f8fe:   lea    0xc(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f902:   vxorpd %xmm2,%xmm2,%xmm2
          │││    │  0x00007fa14ed7f906:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   3.16%  │││    │  0x00007fa14ed7f90b:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f90f:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   9.21%  │││    │  0x00007fa14ed7f913:   lea    0xe(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f917:   vxorpd %xmm2,%xmm2,%xmm2
          │││    │  0x00007fa14ed7f91b:   vcvtsi2sd %r10d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   3.00%  │││    │  0x00007fa14ed7f920:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │││    │  0x00007fa14ed7f924:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   9.36%  │││    │  0x00007fa14ed7f928:   mov    %r11d,%r10d
          │↘│    │  0x00007fa14ed7f92b:   cmp    $0x3d8,%r10d
          │ ╰    │  0x00007fa14ed7f932:   jb     0x00007fa14ed7f880
          │      │  0x00007fa14ed7f938:   mov    %r10d,%r11d
          │      │  0x00007fa14ed7f93b:   mov    $0x1,%r10d
   0.05%  │      │  0x00007fa14ed7f941:   data16 data16 nopw 0x0(%rax,%rax,1)
          │      │  0x00007fa14ed7f94c:   data16 data16 xchg %ax,%ax
          │    ↗↗│  0x00007fa14ed7f950:   cmp    $0x3e8,%r11d
          │  ╭ │││  0x00007fa14ed7f957:   jae    0x00007fa14ed7f996           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.04%  │  │ │││  0x00007fa14ed7f95d:   lea    0x2(%r11),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.05%  │  │ │││  0x00007fa14ed7f961:   mov    %r10d,%r9d                   ;   {no_reloc}
          │  │ │││  0x00007fa14ed7f964:   xor    $0x1,%r9d                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@41 (line 98)
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │  │ │││  0x00007fa14ed7f968:   vxorpd %xmm2,%xmm2,%xmm2
   0.05%  │  │ │││  0x00007fa14ed7f96c:   vcvtsi2sd %r11d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.05%  │  │ │││  0x00007fa14ed7f971:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
          │  │ │││  0x00007fa14ed7f975:   test   %r10d,%r10d
          │  │╭│││  0x00007fa14ed7f978:   jne    0x00007fa14ed7f98a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@16 (line 93)
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.05%  │  │││││  0x00007fa14ed7f97e:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.05%  │  │││││  0x00007fa14ed7f982:   mov    %r8d,%r11d
          │  │││││  0x00007fa14ed7f985:   mov    %r9d,%r10d
          │  ││╰││  0x00007fa14ed7f988:   jmp    0x00007fa14ed7f950
          │  │↘ ││  0x00007fa14ed7f98a:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@0 (line 81)
   0.04%  │  │  ││  0x00007fa14ed7f98e:   mov    %r8d,%r11d
          │  │  ││  0x00007fa14ed7f991:   mov    %r9d,%r10d
          │  │  ╰│  0x00007fa14ed7f994:   jmp    0x00007fa14ed7f950
   0.10%  │  ↘   │  0x00007fa14ed7f996:   vmovsd 0x10(%rsi),%xmm0             ;*getfield circleRadius {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@5 (line 82)
          │      │  0x00007fa14ed7f99b:   vmulsd %xmm0,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@12 (line 82)
          │      │  0x00007fa14ed7f99f:   vmulsd %xmm1,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline@14 (line 82)
   0.11%  │      │  0x00007fa14ed7f9a3:   add    $0x18,%rsp
          │      │  0x00007fa14ed7f9a7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │      │  0x00007fa14ed7f9ae:   ja     0x00007fa14ed7f9c6
          │      │  0x00007fa14ed7f9b4:   ret    
          ↘      │  0x00007fa14ed7f9b5:   mov    %rbp,0x10(%rsp)
                 │  0x00007fa14ed7f9ba:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                 │  0x00007fa14ed7f9bf:   nop
                 ╰  0x00007fa14ed7f9c0:   jmp    0x00007fa14ed7f85a
                    0x00007fa14ed7f9c5:   hlt    
                    0x00007fa14ed7f9c6:   lea    -0x26(%rip),%rcx        # 0x00007fa14ed7f9a7
....................................................................................................
  97.94%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline, version 2, compile id 978 
   0.55%               kernel  [unknown] 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_baseline_jmhTest::method_call_baseline_avgt_jmhStub, version 5, compile id 1002 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.79%  <...other 283 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_baseline, version 2, compile id 978 
   1.58%               kernel  [unknown] 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_baseline_jmhTest::method_call_baseline_avgt_jmhStub, version 5, compile id 1002 
   0.05%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  _IO_str_init_static_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  _IO_fflush 
   0.00%         libc-2.31.so  syscall 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%         libc-2.31.so  _IO_old_init 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.14%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.11%       jvmci, level 4
   1.58%               kernel
   0.11%            libjvm.so
   0.09%         libc-2.31.so
   0.05%                     
   0.03%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.00%           ld-2.31.so
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_dse

# Run progress: 50.00% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 778.032 ns/op
# Warmup Iteration   2: 771.847 ns/op
# Warmup Iteration   3: 770.326 ns/op
# Warmup Iteration   4: 770.312 ns/op
# Warmup Iteration   5: 770.334 ns/op
Iteration   1: 770.348 ns/op
Iteration   2: 770.341 ns/op
Iteration   3: 770.349 ns/op
Iteration   4: 770.329 ns/op
Iteration   5: 770.325 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_dse":
  770.338 ±(99.9%) 0.042 ns/op [Average]
  (min, avg, max) = (770.325, 770.338, 770.349), stdev = 0.011
  CI (99.9%): [770.296, 770.380] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark.method_call_dse:asm":
PrintAssembly processed: 227580 total address lines.
Perf output processed (skipped 60.775 seconds):
 Column 1: cycles (50556 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse, version 2, compile id 956 

                    # {method} {0x00007f0a3c47eec8} &apos;method_call_dse&apos; &apos;()D&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadMethodCallStoreBenchmark&apos;
                    #           [sp+0x20]  (sp of caller)
                    0x00007f0ac2d7d820:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                    0x00007f0ac2d7d824:   movabs $0x7f0a47000000,%r12
                    0x00007f0ac2d7d82e:   add    %r12,%r10
                    0x00007f0ac2d7d831:   xor    %r12,%r12
                    0x00007f0ac2d7d834:   cmp    %r10,%rax
                    0x00007f0ac2d7d837:   jne    0x00007f0ac2764080           ;   {runtime_call ic_miss_stub}
                    0x00007f0ac2d7d83d:   data16 xchg %ax,%ax
                  [Verified Entry Point]
   0.05%            0x00007f0ac2d7d840:   mov    %eax,-0x14000(%rsp)
                    0x00007f0ac2d7d847:   sub    $0x18,%rsp
   0.05%            0x00007f0ac2d7d84b:   nop
                    0x00007f0ac2d7d84c:   cmpl   $0x1,0x20(%r15)
          ╭         0x00007f0ac2d7d854:   jne    0x00007f0ac2d7d9b5
          │      ↗  0x00007f0ac2d7d85a:   vmovsd -0x62(%rip),%xmm0        # 0x00007f0ac2d7d800
          │      │                                                            ;   {section_word}
   0.05%  │      │  0x00007f0ac2d7d862:   vmovsd -0x62(%rip),%xmm1        # 0x00007f0ac2d7d808
          │      │                                                            ;   {section_word}
          │      │  0x00007f0ac2d7d86a:   mov    $0x5,%r10d
          │╭     │  0x00007f0ac2d7d870:   jmp    0x00007f0ac2d7d92b
          ││     │  0x00007f0ac2d7d875:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
          ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.04%  ││↗    │  0x00007f0ac2d7d880:   lea    0x10(%r10),%r11d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d884:   vxorpd %xmm2,%xmm2,%xmm2
   3.02%  │││    │  0x00007f0ac2d7d888:   vcvtsi2sd %r10d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.06%  │││    │  0x00007f0ac2d7d88d:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d891:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   9.23%  │││    │  0x00007f0ac2d7d895:   lea    0x2(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d899:   vxorpd %xmm2,%xmm2,%xmm2
   0.04%  │││    │  0x00007f0ac2d7d89d:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   2.86%  │││    │  0x00007f0ac2d7d8a2:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d8a6:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   8.87%  │││    │  0x00007f0ac2d7d8aa:   lea    0x4(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d8ae:   vxorpd %xmm2,%xmm2,%xmm2
          │││    │  0x00007f0ac2d7d8b2:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   3.03%  │││    │  0x00007f0ac2d7d8b7:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d8bb:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   8.72%  │││    │  0x00007f0ac2d7d8bf:   lea    0x6(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d8c3:   vxorpd %xmm2,%xmm2,%xmm2
   0.04%  │││    │  0x00007f0ac2d7d8c7:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   2.95%  │││    │  0x00007f0ac2d7d8cc:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d8d0:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   9.07%  │││    │  0x00007f0ac2d7d8d4:   lea    0x8(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d8d8:   vxorpd %xmm2,%xmm2,%xmm2
          │││    │  0x00007f0ac2d7d8dc:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   3.13%  │││    │  0x00007f0ac2d7d8e1:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d8e5:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   9.08%  │││    │  0x00007f0ac2d7d8e9:   lea    0xa(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d8ed:   vxorpd %xmm2,%xmm2,%xmm2
          │││    │  0x00007f0ac2d7d8f1:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   3.14%  │││    │  0x00007f0ac2d7d8f6:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d8fa:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   9.28%  │││    │  0x00007f0ac2d7d8fe:   lea    0xc(%r10),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d902:   vxorpd %xmm2,%xmm2,%xmm2
          │││    │  0x00007f0ac2d7d906:   vcvtsi2sd %r8d,%xmm2,%xmm2          ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   3.13%  │││    │  0x00007f0ac2d7d90b:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d90f:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   9.41%  │││    │  0x00007f0ac2d7d913:   lea    0xe(%r10),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d917:   vxorpd %xmm2,%xmm2,%xmm2
          │││    │  0x00007f0ac2d7d91b:   vcvtsi2sd %r10d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   3.15%  │││    │  0x00007f0ac2d7d920:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │││    │  0x00007f0ac2d7d924:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   9.20%  │││    │  0x00007f0ac2d7d928:   mov    %r11d,%r10d
          │↘│    │  0x00007f0ac2d7d92b:   cmp    $0x3d8,%r10d
          │ ╰    │  0x00007f0ac2d7d932:   jb     0x00007f0ac2d7d880
          │      │  0x00007f0ac2d7d938:   mov    %r10d,%r11d
          │      │  0x00007f0ac2d7d93b:   mov    $0x1,%r10d
   0.05%  │      │  0x00007f0ac2d7d941:   data16 data16 nopw 0x0(%rax,%rax,1)
          │      │  0x00007f0ac2d7d94c:   data16 data16 xchg %ax,%ax
          │    ↗↗│  0x00007f0ac2d7d950:   cmp    $0x3e8,%r11d
          │  ╭ │││  0x00007f0ac2d7d957:   jae    0x00007f0ac2d7d996           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@12 (line 92)
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.04%  │  │ │││  0x00007f0ac2d7d95d:   lea    0x2(%r11),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@50 (line 92)
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.06%  │  │ │││  0x00007f0ac2d7d961:   mov    %r10d,%r9d                   ;   {no_reloc}
          │  │ │││  0x00007f0ac2d7d964:   xor    $0x1,%r9d                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@41 (line 98)
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │  │ │││  0x00007f0ac2d7d968:   vxorpd %xmm2,%xmm2,%xmm2
   0.04%  │  │ │││  0x00007f0ac2d7d96c:   vcvtsi2sd %r11d,%xmm2,%xmm2         ;*i2d {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@24 (line 94)
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.06%  │  │ │││  0x00007f0ac2d7d971:   vdivsd %xmm2,%xmm0,%xmm2            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@25 (line 94)
          │  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
          │  │ │││  0x00007f0ac2d7d975:   test   %r10d,%r10d
          │  │╭│││  0x00007f0ac2d7d978:   jne    0x00007f0ac2d7d98a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@16 (line 93)
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.05%  │  │││││  0x00007f0ac2d7d97e:   vsubsd %xmm2,%xmm1,%xmm1            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@38 (line 96)
          │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.04%  │  │││││  0x00007f0ac2d7d982:   mov    %r8d,%r11d
          │  │││││  0x00007f0ac2d7d985:   mov    %r9d,%r10d
          │  ││╰││  0x00007f0ac2d7d988:   jmp    0x00007f0ac2d7d950
          │  │↘ ││  0x00007f0ac2d7d98a:   vaddsd %xmm2,%xmm1,%xmm1            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
          │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::computePi@26 (line 94)
          │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@16 (line 74)
   0.04%  │  │  ││  0x00007f0ac2d7d98e:   mov    %r8d,%r11d
          │  │  ││  0x00007f0ac2d7d991:   mov    %r9d,%r10d
          │  │  ╰│  0x00007f0ac2d7d994:   jmp    0x00007f0ac2d7d950
   0.09%  │  ↘   │  0x00007f0ac2d7d996:   vmovsd 0x10(%rsi),%xmm0             ;*getfield circleRadius {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@21 (line 75)
          │      │  0x00007f0ac2d7d99b:   vmulsd %xmm0,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@28 (line 75)
          │      │  0x00007f0ac2d7d99f:   vmulsd %xmm1,%xmm0,%xmm0            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse@30 (line 75)
   0.12%  │      │  0x00007f0ac2d7d9a3:   add    $0x18,%rsp
          │      │  0x00007f0ac2d7d9a7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │      │  0x00007f0ac2d7d9ae:   ja     0x00007f0ac2d7d9c6
          │      │  0x00007f0ac2d7d9b4:   ret    
          ↘      │  0x00007f0ac2d7d9b5:   mov    %rbp,0x10(%rsp)
                 │  0x00007f0ac2d7d9ba:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                 │  0x00007f0ac2d7d9bf:   nop
                 ╰  0x00007f0ac2d7d9c0:   jmp    0x00007f0ac2d7d85a
                    0x00007f0ac2d7d9c5:   hlt    
                    0x00007f0ac2d7d9c6:   lea    -0x26(%rip),%rcx        # 0x00007f0ac2d7d9a7
....................................................................................................
  98.18%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse, version 2, compile id 956 
   0.19%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_dse_jmhTest::method_call_dse_avgt_jmhStub, version 5, compile id 982 
   0.12%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  fileStream::write 
   0.88%  <...other 306 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadMethodCallStoreBenchmark::method_call_dse, version 2, compile id 956 
   1.33%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadMethodCallStoreBenchmark_method_call_dse_jmhTest::method_call_dse_avgt_jmhStub, version 5, compile id 982 
   0.12%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  os::vsnprintf 
   0.00%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%        libc-2.31.so  _IO_fflush 
   0.00%        libc-2.31.so  __call_tls_dtors 
   0.12%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.33%      jvmci, level 4
   1.33%              kernel
   0.12%                    
   0.11%           libjvm.so
   0.07%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%       libdl-2.31.so
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:49

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

Benchmark                                              Mode  Cnt    Score   Error  Units
DeadMethodCallStoreBenchmark.method_call_baseline      avgt    5  770.350 ± 0.039  ns/op
DeadMethodCallStoreBenchmark.method_call_baseline:asm  avgt           NaN            ---
DeadMethodCallStoreBenchmark.method_call_dse           avgt    5  770.338 ± 0.042  ns/op
DeadMethodCallStoreBenchmark.method_call_dse:asm       avgt           NaN            ---
