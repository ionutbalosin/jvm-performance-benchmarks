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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop
# Parameters: (iterations = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2246.324 us/op
# Warmup Iteration   2: 2190.956 us/op
# Warmup Iteration   3: 2190.979 us/op
# Warmup Iteration   4: 2191.270 us/op
# Warmup Iteration   5: 2190.752 us/op
Iteration   1: 2191.031 us/op
Iteration   2: 2187.499 us/op
Iteration   3: 2191.281 us/op
Iteration   4: 2190.791 us/op
Iteration   5: 2190.807 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop":
  2190.282 ±(99.9%) 6.040 us/op [Average]
  (min, avg, max) = (2187.499, 2190.282, 2191.281), stdev = 1.568
  CI (99.9%): [2184.242, 2196.321] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.initial_loop:asm":
PrintAssembly processed: 227014 total address lines.
Perf output processed (skipped 60.604 seconds):
 Column 1: cycles (50505 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 963 

              0x00007fabbad82f33:   vmovsd %xmm0,(%rsp)
              0x00007fabbad82f38:   mov    $0x2,%r10d
              0x00007fabbad82f3e:   vmovsd -0x2ce(%rip),%xmm3        # 0x00007fabbad82c78
                                                                        ;   {section_word}
              0x00007fabbad82f46:   vmovsd 0x68(%rsp),%xmm2
              0x00007fabbad82f4c:   vmovsd 0x8(%rsp),%xmm1
              0x00007fabbad82f52:   vmovsd 0x70(%rsp),%xmm13
              0x00007fabbad82f58:   vmovsd 0x10(%rsp),%xmm12
              0x00007fabbad82f5e:   xchg   %ax,%ax                      ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@21 (line 77)
   0.26%   ↗  0x00007fabbad82f60:   cmp    %r10d,%r13d
           │  0x00007fabbad82f63:   jle    0x00007fabbad832ef           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@25 (line 77)
           │  0x00007fabbad82f69:   mov    %r10d,%r11d
           │  0x00007fabbad82f6c:   dec    %r11d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@31 (line 78)
           │  0x00007fabbad82f6f:   vxorpd %xmm14,%xmm14,%xmm14
   0.29%   │  0x00007fabbad82f74:   vcvtsi2sd %r11d,%xmm14,%xmm14       ;*i2d {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@32 (line 78)
           │  0x00007fabbad82f79:   vmulsd %xmm13,%xmm14,%xmm14         ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@35 (line 78)
           │  0x00007fabbad82f7e:   vmovupd %xmm14,%xmm0                ;* unwind (locked if synchronized)
           │                                                            ; - java.lang.Math::tan@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@36 (line 78)
   0.30%   │  0x00007fabbad82f83:   vmovupd %xmm3,%xmm10
           │  0x00007fabbad82f87:   mov    %r10d,%r13d
           │  0x00007fabbad82f8a:   vmovupd %xmm1,%xmm14
           │  0x00007fabbad82f8e:   vmovupd %xmm2,%xmm13
   0.32%   │  0x00007fabbad82f92:   call   0x00007fabba8f8a40           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
           │  0x00007fabbad82f97:   nop
           │  0x00007fabbad82f98:   vaddsd %xmm14,%xmm0,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@44 (line 78)
   1.16%   │  0x00007fabbad82f9d:   vmulsd %xmm0,%xmm14,%xmm0           ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@63 (line 79)
   0.02%   │  0x00007fabbad82fa1:   vsubsd %xmm0,%xmm13,%xmm0           ;*dsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@64 (line 79)
   1.37%   │  0x00007fabbad82fa5:   vdivsd %xmm0,%xmm1,%xmm0            ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@70 (line 80)
   3.92%   │  0x00007fabbad82fa9:   vaddsd %xmm0,%xmm12,%xmm1           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@71 (line 80)
   1.41%   │  0x00007fabbad82fad:   vmovq  %xmm1,%r10                   ;* unwind (locked if synchronized)
           │                                                            ; - java.lang.Double::doubleToRawLongBits@-3
           │                                                            ; - java.lang.FdLibm::__HI@1 (line 104)
           │                                                            ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.41%   │  0x00007fabbad82fb2:   sar    $0x20,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm::__HI@8 (line 105)
           │                                                            ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.32%   │  0x00007fabbad82fb6:   mov    %r10d,%r10d                  ;*l2i {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm::__HI@9 (line 105)
           │                                                            ; - java.lang.FdLibm$Atan::compute@1 (line 1267)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.32%   │  0x00007fabbad82fb9:   mov    %r10d,%r11d
           │  0x00007fabbad82fbc:   and    $0x7fffffff,%r11d            ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@10 (line 1268)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.14%   │  0x00007fabbad82fc3:   cmp    $0x44100000,%r11d
           │  0x00007fabbad82fca:   jae    0x00007fabbad835af           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@17 (line 1269)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.27%   │  0x00007fabbad82fd0:   mov    %r13d,%r8d
   0.00%   │  0x00007fabbad82fd3:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@84 (line 77)
           │  0x00007fabbad82fd6:   data16 nopw 0x0(%rax,%rax,1)
           │  0x00007fabbad82fe0:   cmp    $0x3fdc0000,%r11d
           │  0x00007fabbad82fe7:   jb     0x00007fabbad8312d
   0.28%   │  0x00007fabbad82fed:   vmovsd -0x375(%rip),%xmm0        # 0x00007fabbad82c80
           │                                                            ;   {section_word}
   0.00%   │  0x00007fabbad82ff5:   vandpd %xmm0,%xmm1,%xmm0            ;* unwind (locked if synchronized)
           │                                                            ; - java.lang.Math::abs@-3
           │                                                            ; - java.lang.FdLibm$Atan::compute@108 (line 1287)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
           │  0x00007fabbad82ff9:   nopl   0x0(%rax)
           │  0x00007fabbad83000:   cmp    $0x3ff30000,%r11d
           │  0x00007fabbad83007:   jb     0x00007fabbad831e5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@116 (line 1288)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.37%   │  0x00007fabbad8300d:   cmp    $0x40038000,%r11d
           │  0x00007fabbad83014:   jb     0x00007fabbad8329e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@164 (line 1297)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.32%   │  0x00007fabbad8301a:   vdivsd %xmm0,%xmm10,%xmm0           ;*ddiv {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@194 (line 1302)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.94%   │  0x00007fabbad8301e:   vmulsd %xmm0,%xmm0,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@198 (line 1307)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.13%   │  0x00007fabbad83022:   vmulsd %xmm2,%xmm2,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@205 (line 1308)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.17%   │  0x00007fabbad83026:   vmulsd %xmm9,%xmm3,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@247 (line 1310)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.47%   │  0x00007fabbad8302b:   vaddsd %xmm11,%xmm4,%xmm4           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@248 (line 1310)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.25%   │  0x00007fabbad83030:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@249 (line 1310)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.15%   │  0x00007fabbad83034:   vaddsd %xmm15,%xmm4,%xmm4           ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@250 (line 1310)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.11%   │  0x00007fabbad83039:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@251 (line 1310)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.14%   │  0x00007fabbad8303d:   vaddsd %xmm8,%xmm4,%xmm4            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@252 (line 1310)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.17%   │  0x00007fabbad83042:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@253 (line 1310)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.24%   │  0x00007fabbad83046:   vaddsd 0x18(%rsp),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@254 (line 1310)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.14%   │  0x00007fabbad8304c:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@255 (line 1310)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.16%   │  0x00007fabbad83050:   vaddsd 0x20(%rsp),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@256 (line 1310)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.12%   │  0x00007fabbad83056:   vmulsd %xmm2,%xmm4,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@257 (line 1310)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.11%   │  0x00007fabbad8305a:   vmulsd 0x58(%rsp),%xmm3,%xmm4       ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@292 (line 1311)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
           │  0x00007fabbad83060:   vaddsd 0x50(%rsp),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@293 (line 1311)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
           │  0x00007fabbad83066:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@294 (line 1311)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
           │  0x00007fabbad8306a:   vaddsd 0x48(%rsp),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@295 (line 1311)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.31%   │  0x00007fabbad83070:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@296 (line 1311)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
           │  0x00007fabbad83074:   vaddsd 0x40(%rsp),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@297 (line 1311)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
           │  0x00007fabbad8307a:   vmulsd %xmm3,%xmm4,%xmm4            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@298 (line 1311)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
           │  0x00007fabbad8307e:   vaddsd 0x38(%rsp),%xmm4,%xmm4       ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@299 (line 1311)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.28%   │  0x00007fabbad83084:   vmulsd %xmm3,%xmm4,%xmm3            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@300 (line 1311)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
           │  0x00007fabbad83088:   vaddsd %xmm3,%xmm2,%xmm2            ;*dadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@314 (line 1313)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   0.54%   │  0x00007fabbad8308c:   vmovupd %xmm0,%xmm3
           │  0x00007fabbad83090:   mov    $0x28,%r11
           │  0x00007fabbad83097:   vmovsd 0x0(%rbp,%r11,1),%xmm4       ;*daload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@323 (line 1315)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
           │  0x00007fabbad8309e:   vmulsd %xmm2,%xmm3,%xmm2            ;*dmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@315 (line 1313)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.18%   │  0x00007fabbad830a2:   vsubsd (%r14,%r11,1),%xmm2,%xmm2    ;*dsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@337 (line 1315)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.03%   │  0x00007fabbad830a8:   vsubsd %xmm0,%xmm2,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@339 (line 1315)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.15%   │  0x00007fabbad830ac:   vsubsd %xmm0,%xmm4,%xmm0            ;*dsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.FdLibm$Atan::compute@340 (line 1315)
           │                                                            ; - java.lang.StrictMath::atan@1 (line 227)
           │                                                            ; - java.lang.Math::atan@1 (line 279)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
   1.19%   │  0x00007fabbad830b0:   test   %r10d,%r10d
          ╭│  0x00007fabbad830b3:   jl     0x00007fabbad830ed
          ││  0x00007fabbad830b9:   mov    %r8d,%r13d
          ││  0x00007fabbad830bc:   vmovupd %xmm1,%xmm12
          ││  0x00007fabbad830c0:   call   0x00007fabba8f8a40           ;   {runtime_call Stub&lt;AMD64MathStub.tan&gt;}
          ││  0x00007fabbad830c5:   nop
          ││  0x00007fabbad830c6:   vmovsd %xmm0,(%rsp)
   0.26%  ││  0x00007fabbad830cb:   mov    %r13d,%r10d
          ││  0x00007fabbad830ce:   vmovupd %xmm10,%xmm3
          ││  0x00007fabbad830d3:   vmovupd %xmm13,%xmm2
   0.23%  ││  0x00007fabbad830d8:   vmovupd %xmm14,%xmm1
          ││  0x00007fabbad830dd:   vmovsd 0x70(%rsp),%xmm13
          ││  0x00007fabbad830e3:   mov    0x64(%rsp),%r13d
          │╰  0x00007fabbad830e8:   jmp    0x00007fabbad82f60           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.FdLibm$Atan::compute@345 (line 1316)
          │                                                             ; - java.lang.StrictMath::atan@1 (line 227)
          │                                                             ; - java.lang.Math::atan@1 (line 279)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop@76 (line 81)
          ↘   0x00007fabbad830ed:   mov    %r8d,%r13d
              0x00007fabbad830f0:   vmovupd %xmm1,%xmm12
              0x00007fabbad830f4:   vmovsd -0x474(%rip),%xmm1        # 0x00007fabbad82c88
....................................................................................................
  34.98%  <total for region 1>

....[Hottest Region 2]..............................................................................
, <unknown> 

              0x00007fabba8f8cea:   vaddsd %xmm1,%xmm0,%xmm0
              0x00007fabba8f8cee:   jmp    0x00007fabba8f9299
              0x00007fabba8f8cf3:   vmovq  -0x1a5b(%rip),%xmm3        # 0x00007fabba8f72a0
              0x00007fabba8f8cfb:   vmulsd %xmm0,%xmm3,%xmm3
              0x00007fabba8f8cff:   vaddsd %xmm3,%xmm0,%xmm0
              0x00007fabba8f8d03:   vmulsd -0x1a8b(%rip),%xmm0,%xmm0        # 0x00007fabba8f7280
              0x00007fabba8f8d0b:   jmp    0x00007fabba8f9299
              0x00007fabba8f8d10:   vmovdqu %xmm0,%xmm1
              0x00007fabba8f8d14:   vmulsd %xmm1,%xmm1,%xmm1
              0x00007fabba8f8d18:   jmp    0x00007fabba8f9299
   0.23%      0x00007fabba8f8d1d:   vpextrw $0x3,%xmm0,%eax
              0x00007fabba8f8d22:   and    $0x7ff0,%eax
              0x00007fabba8f8d28:   cmp    $0x7ff0,%eax
              0x00007fabba8f8d2e:   je     0x00007fabba8f9286
   0.21%      0x00007fabba8f8d34:   vpextrw $0x3,%xmm0,%ecx
              0x00007fabba8f8d39:   and    $0x7ff0,%ecx
              0x00007fabba8f8d3f:   sub    $0x3f60,%ecx
   0.22%      0x00007fabba8f8d45:   shr    $0x7,%ecx
              0x00007fabba8f8d48:   and    $0xfffc,%ecx
              0x00007fabba8f8d4e:   lea    -0x3c5(%rip),%r11        # 0x00007fabba8f8990
              0x00007fabba8f8d55:   add    %r11,%rcx
   0.24%      0x00007fabba8f8d58:   vmovq  %xmm0,%rax
              0x00007fabba8f8d5d:   mov    0x14(%rcx),%r10d
              0x00007fabba8f8d61:   mov    0x18(%rcx),%r8d
              0x00007fabba8f8d65:   mov    %eax,%edx
   0.25%      0x00007fabba8f8d67:   shr    $0x15,%rax
              0x00007fabba8f8d6b:   or     $0x80000000,%eax
              0x00007fabba8f8d71:   shr    $0xb,%eax
              0x00007fabba8f8d74:   mov    %r10d,%r9d
   0.25%      0x00007fabba8f8d77:   imul   %rdx,%r10
              0x00007fabba8f8d7b:   imul   %rax,%r9
              0x00007fabba8f8d7f:   imul   %rax,%r8
              0x00007fabba8f8d83:   mov    0x10(%rcx),%esi
   0.23%      0x00007fabba8f8d86:   mov    0xc(%rcx),%edi
              0x00007fabba8f8d89:   mov    %r10d,%r11d
              0x00007fabba8f8d8c:   shr    $0x20,%r10
              0x00007fabba8f8d90:   add    %r10,%r9
   0.22%      0x00007fabba8f8d93:   add    %r8,%r11
              0x00007fabba8f8d96:   mov    %r11d,%r8d
              0x00007fabba8f8d99:   shr    $0x20,%r11
              0x00007fabba8f8d9d:   add    %r11,%r9
   0.25%      0x00007fabba8f8da0:   mov    %esi,%r10d
              0x00007fabba8f8da3:   imul   %rdx,%rsi
              0x00007fabba8f8da7:   imul   %rax,%r10
              0x00007fabba8f8dab:   mov    %edi,%r11d
   0.24%      0x00007fabba8f8dae:   imul   %rdx,%rdi
              0x00007fabba8f8db2:   mov    %esi,%ebx
              0x00007fabba8f8db4:   shr    $0x20,%rsi
              0x00007fabba8f8db8:   add    %rbx,%r9
   0.20%      0x00007fabba8f8dbb:   mov    %r9d,%ebx
              0x00007fabba8f8dbe:   shr    $0x20,%r9
              0x00007fabba8f8dc2:   add    %rsi,%r10
              0x00007fabba8f8dc5:   add    %r9,%r10
   0.26%      0x00007fabba8f8dc8:   shl    $0x20,%rbx
              0x00007fabba8f8dcc:   or     %rbx,%r8
              0x00007fabba8f8dcf:   imul   %rax,%r11
              0x00007fabba8f8dd3:   mov    0x8(%rcx),%r9d
   0.26%      0x00007fabba8f8dd7:   mov    0x4(%rcx),%esi
              0x00007fabba8f8dda:   mov    %edi,%ebx
              0x00007fabba8f8ddc:   shr    $0x20,%rdi
              0x00007fabba8f8de0:   add    %rbx,%r10
   0.27%      0x00007fabba8f8de3:   mov    %r10d,%ebx
              0x00007fabba8f8de6:   shr    $0x20,%r10
              0x00007fabba8f8dea:   add    %rdi,%r11
              0x00007fabba8f8ded:   add    %r10,%r11
   0.22%      0x00007fabba8f8df0:   mov    %r9,%rdi
              0x00007fabba8f8df3:   imul   %rdx,%r9
              0x00007fabba8f8df7:   imul   %rax,%rdi
              0x00007fabba8f8dfb:   mov    %r9d,%r10d
   0.27%      0x00007fabba8f8dfe:   shr    $0x20,%r9
              0x00007fabba8f8e02:   add    %r10,%r11
              0x00007fabba8f8e05:   mov    %r11d,%r10d
              0x00007fabba8f8e08:   shr    $0x20,%r11
   0.26%      0x00007fabba8f8e0c:   add    %r9,%rdi
              0x00007fabba8f8e0f:   add    %r11,%rdi
   0.00%      0x00007fabba8f8e12:   mov    %rsi,%r9
              0x00007fabba8f8e15:   imul   %rdx,%rsi
   0.27%      0x00007fabba8f8e19:   imul   %rax,%r9
              0x00007fabba8f8e1d:   shl    $0x20,%r10
              0x00007fabba8f8e21:   or     %rbx,%r10
              0x00007fabba8f8e24:   mov    (%rcx),%eax
   0.24%      0x00007fabba8f8e26:   mov    %esi,%r11d
              0x00007fabba8f8e29:   shr    $0x20,%rsi
              0x00007fabba8f8e2d:   add    %r11,%rdi
              0x00007fabba8f8e30:   mov    %edi,%r11d
   0.25%      0x00007fabba8f8e33:   shr    $0x20,%rdi
              0x00007fabba8f8e37:   add    %rsi,%r9
              0x00007fabba8f8e3a:   add    %rdi,%r9
              0x00007fabba8f8e3d:   imul   %rax,%rdx
   0.28%      0x00007fabba8f8e41:   vpextrw $0x3,%xmm0,%ebx
              0x00007fabba8f8e46:   lea    -0x4bd(%rip),%rdi        # 0x00007fabba8f8990
              0x00007fabba8f8e4d:   sub    %rdi,%rcx
   0.24%      0x00007fabba8f8e50:   add    %ecx,%ecx
              0x00007fabba8f8e52:   add    %ecx,%ecx
              0x00007fabba8f8e54:   add    %ecx,%ecx
              0x00007fabba8f8e56:   add    $0x13,%ecx
   0.28%      0x00007fabba8f8e59:   mov    $0x8000,%esi
              0x00007fabba8f8e5e:   and    %ebx,%esi
              0x00007fabba8f8e60:   shr    $0x4,%ebx
              0x00007fabba8f8e63:   and    $0x7ff,%ebx
   0.25%      0x00007fabba8f8e69:   sub    $0x3ff,%ebx
              0x00007fabba8f8e6f:   sub    %ebx,%ecx
              0x00007fabba8f8e71:   add    %rdx,%r9
              0x00007fabba8f8e74:   mov    %ecx,%edx
   0.24%      0x00007fabba8f8e76:   add    $0x20,%edx
              0x00007fabba8f8e79:   nopl   0x0(%rax)
   0.00%      0x00007fabba8f8e80:   cmp    $0x0,%ecx
              0x00007fabba8f8e83:   jl     0x00007fabba8f91d2
              0x00007fabba8f8e89:   neg    %ecx
   0.26%      0x00007fabba8f8e8b:   add    $0x1d,%ecx
              0x00007fabba8f8e8e:   shl    %cl,%r9d
   0.25%      0x00007fabba8f8e91:   mov    %r9d,%edi
              0x00007fabba8f8e94:   and    $0x3fffffff,%r9d
              0x00007fabba8f8e9b:   nopl   0x0(%rax,%rax,1)
              0x00007fabba8f8ea0:   test   $0x20000000,%r9d
              0x00007fabba8f8ea7:   jne    0x00007fabba8f91ff
   0.13%      0x00007fabba8f8ead:   shr    %cl,%r9d
   0.02%      0x00007fabba8f8eb0:   mov    $0x0,%ebx
   0.14%      0x00007fabba8f8eb5:   shl    $0x20,%r9
              0x00007fabba8f8eb9:   or     %r11,%r9
   0.01%      0x00007fabba8f8ebc:   nopl   0x0(%rax)
   0.00%      0x00007fabba8f8ec0:   cmp    $0x0,%r9
          ╭   0x00007fabba8f8ec4:   je     0x00007fabba8f917d
   0.29%  │↗  0x00007fabba8f8eca:   bsr    %r9,%r11
   0.02%  ││  0x00007fabba8f8ece:   mov    $0x1d,%ecx
   0.00%  ││  0x00007fabba8f8ed3:   sub    %r11d,%ecx
          ││  0x00007fabba8f8ed6:   jle    0x00007fabba8f91af
   0.01%  ││  0x00007fabba8f8edc:   shl    %cl,%r9
   0.01%  ││  0x00007fabba8f8edf:   mov    %r10,%rax
          ││  0x00007fabba8f8ee2:   shl    %cl,%r10
   0.00%  ││  0x00007fabba8f8ee5:   add    %ecx,%edx
          ││  0x00007fabba8f8ee7:   neg    %ecx
          ││  0x00007fabba8f8ee9:   add    $0x40,%ecx
          ││  0x00007fabba8f8eec:   shr    %cl,%rax
   0.01%  ││  0x00007fabba8f8eef:   shr    %cl,%r8
   0.00%  ││  0x00007fabba8f8ef2:   or     %rax,%r9
          ││  0x00007fabba8f8ef5:   or     %r8,%r10
   0.27%  ││  0x00007fabba8f8ef8:   vcvtsi2sd %r9,%xmm0,%xmm0
   0.09%  ││  0x00007fabba8f8efd:   shr    %r10
   0.00%  ││  0x00007fabba8f8f00:   vcvtsi2sd %r10,%xmm3,%xmm3
   0.25%  ││  0x00007fabba8f8f05:   vxorpd %xmm4,%xmm4,%xmm4
   0.01%  ││  0x00007fabba8f8f09:   shl    $0x4,%edx
          ││  0x00007fabba8f8f0c:   neg    %edx
   0.24%  ││  0x00007fabba8f8f0e:   add    $0x3ff0,%edx
   0.01%  ││  0x00007fabba8f8f14:   or     %esi,%edx
   0.01%  ││  0x00007fabba8f8f16:   xor    %ebx,%edx
          ││  0x00007fabba8f8f18:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.25%  ││  0x00007fabba8f8f1d:   vmovq  -0x1c7d(%rip),%xmm2        # 0x00007fabba8f72a8
   0.01%  ││  0x00007fabba8f8f25:   vmovq  -0x1c7d(%rip),%xmm7        # 0x00007fabba8f72b0
          ││  0x00007fabba8f8f2d:   vxorpd %xmm5,%xmm5,%xmm5
   0.24%  ││  0x00007fabba8f8f31:   sub    $0x3f0,%edx
   0.01%  ││  0x00007fabba8f8f37:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.01%  ││  0x00007fabba8f8f3c:   vmulsd %xmm4,%xmm0,%xmm0
   0.22%  ││  0x00007fabba8f8f40:   shl    $0x10,%esi
   0.01%  ││  0x00007fabba8f8f43:   sar    $0x1f,%esi
   0.01%  ││  0x00007fabba8f8f46:   vmulsd %xmm5,%xmm3,%xmm3
   0.01%  ││  0x00007fabba8f8f4a:   vmovdqu %xmm0,%xmm1
   0.24%  ││  0x00007fabba8f8f4e:   vmulsd %xmm2,%xmm0,%xmm0
   0.04%  ││  0x00007fabba8f8f52:   shr    $0x1e,%edi
   0.00%  ││  0x00007fabba8f8f55:   vaddsd %xmm3,%xmm1,%xmm1
   0.06%  ││  0x00007fabba8f8f59:   vmulsd %xmm2,%xmm3,%xmm3
   0.27%  ││  0x00007fabba8f8f5d:   add    %esi,%edi
   0.00%  ││  0x00007fabba8f8f5f:   xor    %esi,%edi
          ││  0x00007fabba8f8f61:   vmulsd %xmm1,%xmm7,%xmm7
   0.17%  ││  0x00007fabba8f8f65:   mov    %edi,%eax
   0.16%  ││  0x00007fabba8f8f67:   vaddsd %xmm3,%xmm7,%xmm7
   0.50%  ││  0x00007fabba8f8f6b:   vmovdqu %xmm0,%xmm2
          ││  0x00007fabba8f8f6f:   vaddsd %xmm7,%xmm0,%xmm0
   0.75%  ││  0x00007fabba8f8f73:   vsubsd %xmm0,%xmm2,%xmm2
   0.96%  ││  0x00007fabba8f8f77:   vaddsd %xmm2,%xmm7,%xmm7
   0.98%  ││  0x00007fabba8f8f7b:   vmovdqu -0x1c93(%rip),%xmm1        # 0x00007fabba8f72f0
          ││  0x00007fabba8f8f83:   vmovddup %xmm0,%xmm0
          ││  0x00007fabba8f8f87:   vmovdqu -0x1caf(%rip),%xmm4        # 0x00007fabba8f72e0
          ││  0x00007fabba8f8f8f:   vandpd %xmm0,%xmm4,%xmm4
   0.26%  ││  0x00007fabba8f8f93:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007fabba8f8f97:   vmovddup %xmm7,%xmm7
          ││  0x00007fabba8f8f9b:   vmovdqu -0x1ce3(%rip),%xmm5        # 0x00007fabba8f72c0
          ││  0x00007fabba8f8fa3:   vmovdqu -0x1cdb(%rip),%xmm6        # 0x00007fabba8f72d0
   0.27%  ││  0x00007fabba8f8fab:   vpor   %xmm4,%xmm5,%xmm5
          ││  0x00007fabba8f8faf:   vaddpd %xmm5,%xmm1,%xmm1
   0.08%  ││  0x00007fabba8f8fb3:   vmovdqu %xmm1,%xmm5
          ││  0x00007fabba8f8fb7:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.29%  ││  0x00007fabba8f8fbb:   vcvttsd2si %xmm5,%edx
   1.39%  ││  0x00007fabba8f8fbf:   vcvttpd2dq %xmm1,%xmm1
          ││  0x00007fabba8f8fc3:   vcvtdq2pd %xmm1,%xmm1
   0.69%  ││  0x00007fabba8f8fc7:   vmulpd %xmm6,%xmm1,%xmm1
   1.04%  ││  0x00007fabba8f8fcb:   vmovdqu -0x1cd3(%rip),%xmm3        # 0x00007fabba8f7300
          ││  0x00007fabba8f8fd3:   vmovq  -0x1d4b(%rip),%xmm5        # 0x00007fabba8f7290
          ││  0x00007fabba8f8fdb:   shl    $0x4,%eax
          ││  0x00007fabba8f8fde:   add    $0x72900,%edx
   0.27%  ││  0x00007fabba8f8fe4:   vmovdqu -0x1cdc(%rip),%xmm4        # 0x00007fabba8f7310
          ││  0x00007fabba8f8fec:   vmulpd %xmm1,%xmm3,%xmm3
   0.75%  ││  0x00007fabba8f8ff0:   add    %eax,%edx
          ││  0x00007fabba8f8ff2:   and    $0x1f,%edx
          ││  0x00007fabba8f8ff5:   vmulsd %xmm1,%xmm5,%xmm5
   0.22%  ││  0x00007fabba8f8ff9:   mov    %edx,%ecx
   0.08%  ││  0x00007fabba8f8ffb:   vmulpd %xmm1,%xmm4,%xmm4
   0.07%  ││  0x00007fabba8f8fff:   shl    %ecx
          ││  0x00007fabba8f9001:   vsubpd %xmm3,%xmm0,%xmm0
   0.68%  ││  0x00007fabba8f9005:   vmulpd -0x1ced(%rip),%xmm1,%xmm1        # 0x00007fabba8f7320
          ││  0x00007fabba8f900d:   add    %ecx,%edx
          ││  0x00007fabba8f900f:   shl    $0x2,%ecx
          ││  0x00007fabba8f9012:   add    %ecx,%edx
   0.26%  ││  0x00007fabba8f9014:   vaddsd %xmm0,%xmm5,%xmm5
   0.71%  ││  0x00007fabba8f9018:   vmovdqu %xmm0,%xmm2
          ││  0x00007fabba8f901c:   vsubpd %xmm4,%xmm0,%xmm0
   0.09%  ││  0x00007fabba8f9020:   vmovq  -0x1d90(%rip),%xmm6        # 0x00007fabba8f7298
          ││  0x00007fabba8f9028:   shl    $0x4,%edx
   0.12%  ││  0x00007fabba8f902b:   lea    -0x1d02(%rip),%rax        # 0x00007fabba8f7330
          ││  0x00007fabba8f9032:   vandpd -0x70a(%rip),%xmm5,%xmm5        # 0x00007fabba8f8930
   0.16%  ││  0x00007fabba8f903a:   vmovdqu %xmm0,%xmm3
          ││  0x00007fabba8f903e:   add    %rdx,%rax
   0.14%  ││  0x00007fabba8f9041:   vsubpd %xmm0,%xmm2,%xmm2
   0.93%  ││  0x00007fabba8f9045:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.02%  ││  0x00007fabba8f9049:   vdivsd %xmm5,%xmm6,%xmm6
   2.40%  ││  0x00007fabba8f904d:   vsubpd %xmm4,%xmm2,%xmm2
          ││  0x00007fabba8f9051:   vsubsd %xmm5,%xmm3,%xmm3
          ││  0x00007fabba8f9055:   vsubpd %xmm1,%xmm2,%xmm2
          ││  0x00007fabba8f9059:   vmovdqu 0x30(%rax),%xmm1
   0.22%  ││  0x00007fabba8f905e:   vaddpd %xmm7,%xmm2,%xmm2
   0.04%  ││  0x00007fabba8f9062:   vmovdqu 0x10(%rax),%xmm7
          ││  0x00007fabba8f9067:   vmulpd %xmm0,%xmm7,%xmm7
          ││  0x00007fabba8f906b:   vmovdqu 0x60(%rax),%xmm4
   0.18%  ││  0x00007fabba8f9070:   vmulpd %xmm0,%xmm1,%xmm1
   0.07%  ││  0x00007fabba8f9074:   vmulpd %xmm0,%xmm4,%xmm4
          ││  0x00007fabba8f9078:   vaddsd %xmm3,%xmm2,%xmm2
   0.73%  ││  0x00007fabba8f907c:   vmovdqu %xmm0,%xmm3
          ││  0x00007fabba8f9080:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007fabba8f9084:   vaddpd (%rax),%xmm7,%xmm7
          ││  0x00007fabba8f9088:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.25%  ││  0x00007fabba8f908d:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  ││  0x00007fabba8f9091:   vaddpd 0x50(%rax),%xmm4,%xmm4
          ││  0x00007fabba8f9096:   vaddpd %xmm1,%xmm7,%xmm7
          ││  0x00007fabba8f909a:   vmovdqu 0x70(%rax),%xmm1
   0.26%  ││  0x00007fabba8f909f:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  ││  0x00007fabba8f90a3:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007fabba8f90a7:   vaddpd %xmm1,%xmm4,%xmm4
   0.00%  ││  0x00007fabba8f90ab:   vmovdqu 0x40(%rax),%xmm1
   0.28%  ││  0x00007fabba8f90b0:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  ││  0x00007fabba8f90b4:   vaddpd %xmm1,%xmm7,%xmm7
   0.25%  ││  0x00007fabba8f90b8:   vmovdqu %xmm3,%xmm1
          ││  0x00007fabba8f90bc:   vmulpd %xmm0,%xmm3,%xmm3
   0.13%  ││  0x00007fabba8f90c0:   vmulsd %xmm0,%xmm0,%xmm0
          ││  0x00007fabba8f90c4:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.16%  ││  0x00007fabba8f90cc:   vmulpd %xmm3,%xmm4,%xmm4
          ││  0x00007fabba8f90d0:   vmovdqu %xmm1,%xmm3
   0.12%  ││  0x00007fabba8f90d4:   vaddpd %xmm4,%xmm7,%xmm7
   0.73%  ││  0x00007fabba8f90d8:   vmovdqu %xmm1,%xmm4
          ││  0x00007fabba8f90dc:   vmulsd %xmm7,%xmm0,%xmm0
   0.83%  ││  0x00007fabba8f90e0:   vunpckhpd %xmm7,%xmm7,%xmm7
          ││  0x00007fabba8f90e4:   vaddsd %xmm7,%xmm0,%xmm0
   1.02%  ││  0x00007fabba8f90e8:   vunpckhpd %xmm1,%xmm1,%xmm1
          ││  0x00007fabba8f90ec:   vaddsd %xmm1,%xmm3,%xmm3
          ││  0x00007fabba8f90f0:   vsubsd %xmm3,%xmm4,%xmm4
          ││  0x00007fabba8f90f4:   vaddsd %xmm4,%xmm1,%xmm1
   0.22%  ││  0x00007fabba8f90f8:   vmovdqu %xmm2,%xmm4
          ││  0x00007fabba8f90fc:   vmovq  0x90(%rax),%xmm7
          ││  0x00007fabba8f9104:   vunpckhpd %xmm2,%xmm2,%xmm2
          ││  0x00007fabba8f9108:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.28%  ││  0x00007fabba8f9110:   vmulsd %xmm2,%xmm7,%xmm7
          ││  0x00007fabba8f9114:   vaddsd 0x88(%rax),%xmm7,%xmm7
          ││  0x00007fabba8f911c:   vaddsd %xmm1,%xmm7,%xmm7
          ││  0x00007fabba8f9120:   vaddsd %xmm7,%xmm0,%xmm0
   0.54%  ││  0x00007fabba8f9124:   vmovq  -0x1e94(%rip),%xmm7        # 0x00007fabba8f7298
          ││  0x00007fabba8f912c:   vmulsd %xmm6,%xmm4,%xmm4
          ││  0x00007fabba8f9130:   vmovq  0xa8(%rax),%xmm2
          ││  0x00007fabba8f9138:   vandpd %xmm6,%xmm2,%xmm2
   0.27%  ││  0x00007fabba8f913c:   vmulsd %xmm2,%xmm5,%xmm5
          ││  0x00007fabba8f9140:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          ││  0x00007fabba8f9148:   vsubsd %xmm5,%xmm7,%xmm7
          ││  0x00007fabba8f914c:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.24%  ││  0x00007fabba8f9154:   vsubsd %xmm4,%xmm7,%xmm7
          ││  0x00007fabba8f9158:   vmulsd %xmm6,%xmm7,%xmm7
          ││  0x00007fabba8f915c:   vmovdqu %xmm3,%xmm4
          ││  0x00007fabba8f9160:   vsubsd %xmm2,%xmm3,%xmm3
   0.23%  ││  0x00007fabba8f9164:   vaddsd %xmm3,%xmm2,%xmm2
          ││  0x00007fabba8f9168:   vsubsd %xmm2,%xmm4,%xmm4
          ││  0x00007fabba8f916c:   vaddsd %xmm4,%xmm0,%xmm0
   0.27%  ││  0x00007fabba8f9170:   vsubsd %xmm7,%xmm0,%xmm0
   0.99%  ││  0x00007fabba8f9174:   vaddsd %xmm3,%xmm0,%xmm0
   1.01%  ││  0x00007fabba8f9178:   jmp    0x00007fabba8f9299
          ↘│  0x00007fabba8f917d:   add    $0x40,%edx
           │  0x00007fabba8f9180:   mov    %r10,%r9
           │  0x00007fabba8f9183:   mov    %r8,%r10
           │  0x00007fabba8f9186:   mov    $0x0,%r8d
           │  0x00007fabba8f918c:   cmp    $0x0,%r9
           ╰  0x00007fabba8f9190:   jne    0x00007fabba8f8eca
              0x00007fabba8f9196:   add    $0x40,%edx
              0x00007fabba8f9199:   mov    %r10,%r9
              0x00007fabba8f919c:   mov    %r8,%r10
              0x00007fabba8f919f:   nop
....................................................................................................
  33.30%  <total for region 2>

....[Hottest Region 3]..............................................................................
, <unknown> 

           --------------------------------------------------------------------------------
           [/Disassembly]
           </print_nmethod>
           <task_queued compile_id='962' compile_kind='osr' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark initial_loop ()D' bytes='93' count='7' backedge_count='109651' iicount='7' osr_bci='21' stamp='10.318' comment='tiered' hot_count='109651'/>
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           Decoding RuntimeStub - Stub&lt;AMD64MathStub.tan&gt; 0x00007fabba8f7110
           --------------------------------------------------------------------------------
   0.25%     0x00007fabba8f8a40:   sub    $0x18,%rsp
   0.31%     0x00007fabba8f8a44:   push   %rbx
   0.25%     0x00007fabba8f8a45:   sub    $0x10,%rsp
   0.03%     0x00007fabba8f8a49:   vmovsd %xmm0,0x8(%rsp)
   0.28%     0x00007fabba8f8a4f:   vpextrw $0x3,%xmm0,%eax
   0.29%     0x00007fabba8f8a54:   and    $0x7fff,%eax
   0.30%     0x00007fabba8f8a5a:   sub    $0x3fba,%eax
   0.59%     0x00007fabba8f8a60:   cmp    $0x10e,%eax
          ╭  0x00007fabba8f8a66:   ja     0x00007fabba8f8c69
   0.27%  │  0x00007fabba8f8a6c:   vmovdqu -0x17b4(%rip),%xmm5        # 0x00007fabba8f72c0
          │  0x00007fabba8f8a74:   vmovdqu -0x17ac(%rip),%xmm6        # 0x00007fabba8f72d0
          │  0x00007fabba8f8a7c:   vunpcklpd %xmm0,%xmm0,%xmm0
   0.04%  │  0x00007fabba8f8a80:   vmovdqu -0x17a8(%rip),%xmm4        # 0x00007fabba8f72e0
   0.28%  │  0x00007fabba8f8a88:   vandpd %xmm0,%xmm4,%xmm4
          │  0x00007fabba8f8a8c:   vmovdqu -0x17a4(%rip),%xmm1        # 0x00007fabba8f72f0
          │  0x00007fabba8f8a94:   vmulpd %xmm0,%xmm1,%xmm1
   0.05%  │  0x00007fabba8f8a98:   vpor   %xmm4,%xmm5,%xmm5
   0.32%  │  0x00007fabba8f8a9c:   vaddpd %xmm5,%xmm1,%xmm1
   0.87%  │  0x00007fabba8f8aa0:   vmovdqu %xmm1,%xmm7
          │  0x00007fabba8f8aa4:   vunpckhpd %xmm7,%xmm7,%xmm7
   0.33%  │  0x00007fabba8f8aa8:   vcvttsd2si %xmm7,%edx
   1.72%  │  0x00007fabba8f8aac:   vcvttpd2dq %xmm1,%xmm1
   0.04%  │  0x00007fabba8f8ab0:   vcvtdq2pd %xmm1,%xmm1
   0.87%  │  0x00007fabba8f8ab4:   vmulpd %xmm6,%xmm1,%xmm1
   1.17%  │  0x00007fabba8f8ab8:   vmovdqu -0x17c0(%rip),%xmm3        # 0x00007fabba8f7300
   0.03%  │  0x00007fabba8f8ac0:   vmovq  -0x1838(%rip),%xmm5        # 0x00007fabba8f7290
          │  0x00007fabba8f8ac8:   add    $0x72900,%rdx
          │  0x00007fabba8f8acf:   vmovdqu -0x17c7(%rip),%xmm4        # 0x00007fabba8f7310
   0.27%  │  0x00007fabba8f8ad7:   vmulpd %xmm1,%xmm3,%xmm3
   0.88%  │  0x00007fabba8f8adb:   and    $0x1f,%rdx
          │  0x00007fabba8f8adf:   vmulsd %xmm1,%xmm5,%xmm5
   0.23%  │  0x00007fabba8f8ae3:   mov    %rdx,%rcx
          │  0x00007fabba8f8ae6:   vmulpd %xmm1,%xmm4,%xmm4
   0.23%  │  0x00007fabba8f8aea:   shl    %rcx
          │  0x00007fabba8f8aed:   vsubpd %xmm3,%xmm0,%xmm0
   0.72%  │  0x00007fabba8f8af1:   vmulpd -0x17d9(%rip),%xmm1,%xmm1        # 0x00007fabba8f7320
          │  0x00007fabba8f8af9:   add    %rcx,%rdx
   0.04%  │  0x00007fabba8f8afc:   shl    $0x2,%rcx
          │  0x00007fabba8f8b00:   add    %rcx,%rdx
   0.30%  │  0x00007fabba8f8b03:   vaddsd %xmm0,%xmm5,%xmm5
   0.95%  │  0x00007fabba8f8b07:   vmovdqu %xmm0,%xmm2
   0.02%  │  0x00007fabba8f8b0b:   vsubpd %xmm4,%xmm0,%xmm0
   0.12%  │  0x00007fabba8f8b0f:   vmovq  -0x187f(%rip),%xmm6        # 0x00007fabba8f7298
          │  0x00007fabba8f8b17:   shl    $0x4,%rdx
   0.14%  │  0x00007fabba8f8b1b:   lea    -0x17f2(%rip),%rax        # 0x00007fabba8f7330
   0.03%  │  0x00007fabba8f8b22:   vandpd -0x1fa(%rip),%xmm5,%xmm5        # 0x00007fabba8f8930
   0.15%  │  0x00007fabba8f8b2a:   vmovdqu %xmm0,%xmm3
          │  0x00007fabba8f8b2e:   add    %rdx,%rax
   0.13%  │  0x00007fabba8f8b31:   vsubpd %xmm0,%xmm2,%xmm2
   1.24%  │  0x00007fabba8f8b35:   vunpckhpd %xmm0,%xmm0,%xmm0
          │  0x00007fabba8f8b39:   vdivsd %xmm5,%xmm6,%xmm6
   2.78%  │  0x00007fabba8f8b3d:   vsubpd %xmm4,%xmm2,%xmm2
          │  0x00007fabba8f8b41:   vmovdqu 0x10(%rax),%xmm7
   0.00%  │  0x00007fabba8f8b46:   vsubsd %xmm5,%xmm3,%xmm3
          │  0x00007fabba8f8b4a:   vmulpd %xmm0,%xmm7,%xmm7
   0.26%  │  0x00007fabba8f8b4e:   vsubpd %xmm1,%xmm2,%xmm2
          │  0x00007fabba8f8b52:   vmovdqu 0x30(%rax),%xmm1
   0.01%  │  0x00007fabba8f8b57:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007fabba8f8b5b:   vmovdqu 0x60(%rax),%xmm4
   0.36%  │  0x00007fabba8f8b60:   vmulpd %xmm0,%xmm4,%xmm4
          │  0x00007fabba8f8b64:   vaddsd %xmm3,%xmm2,%xmm2
   0.01%  │  0x00007fabba8f8b68:   vmovdqu %xmm0,%xmm3
          │  0x00007fabba8f8b6c:   vmulpd %xmm0,%xmm0,%xmm0
   0.41%  │  0x00007fabba8f8b70:   vaddpd (%rax),%xmm7,%xmm7
          │  0x00007fabba8f8b74:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.01%  │  0x00007fabba8f8b79:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007fabba8f8b7d:   vaddpd 0x50(%rax),%xmm4,%xmm4
   0.33%  │  0x00007fabba8f8b82:   vaddpd %xmm1,%xmm7,%xmm7
   0.03%  │  0x00007fabba8f8b86:   vmovdqu 0x70(%rax),%xmm1
   0.00%  │  0x00007fabba8f8b8b:   vmulpd %xmm0,%xmm1,%xmm1
          │  0x00007fabba8f8b8f:   vmulpd %xmm0,%xmm0,%xmm0
   0.30%  │  0x00007fabba8f8b93:   vaddpd %xmm1,%xmm4,%xmm4
   0.01%  │  0x00007fabba8f8b97:   vmovdqu 0x40(%rax),%xmm1
   0.01%  │  0x00007fabba8f8b9c:   vmulpd %xmm0,%xmm1,%xmm1
   0.01%  │  0x00007fabba8f8ba0:   vaddpd %xmm1,%xmm7,%xmm7
   0.53%  │  0x00007fabba8f8ba4:   vmovdqu %xmm3,%xmm1
          │  0x00007fabba8f8ba8:   vmulpd %xmm0,%xmm3,%xmm3
   0.00%  │  0x00007fabba8f8bac:   vmulsd %xmm0,%xmm0,%xmm0
          │  0x00007fabba8f8bb0:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.59%  │  0x00007fabba8f8bb8:   vmulpd %xmm3,%xmm4,%xmm4
   0.00%  │  0x00007fabba8f8bbc:   vmovdqu %xmm1,%xmm3
   0.01%  │  0x00007fabba8f8bc0:   vaddpd %xmm4,%xmm7,%xmm7
   0.92%  │  0x00007fabba8f8bc4:   vmovdqu %xmm1,%xmm4
          │  0x00007fabba8f8bc8:   vmulsd %xmm7,%xmm0,%xmm0
   0.99%  │  0x00007fabba8f8bcc:   vunpckhpd %xmm7,%xmm7,%xmm7
          │  0x00007fabba8f8bd0:   vaddsd %xmm7,%xmm0,%xmm0
   1.23%  │  0x00007fabba8f8bd4:   vunpckhpd %xmm1,%xmm1,%xmm1
          │  0x00007fabba8f8bd8:   vaddsd %xmm1,%xmm3,%xmm3
          │  0x00007fabba8f8bdc:   vsubsd %xmm3,%xmm4,%xmm4
          │  0x00007fabba8f8be0:   vaddsd %xmm4,%xmm1,%xmm1
   0.35%  │  0x00007fabba8f8be4:   vmovdqu %xmm2,%xmm4
          │  0x00007fabba8f8be8:   vmovq  0x90(%rax),%xmm7
          │  0x00007fabba8f8bf0:   vunpckhpd %xmm2,%xmm2,%xmm2
          │  0x00007fabba8f8bf4:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.30%  │  0x00007fabba8f8bfc:   vmulsd %xmm2,%xmm7,%xmm7
          │  0x00007fabba8f8c00:   vaddsd 0x88(%rax),%xmm7,%xmm7
          │  0x00007fabba8f8c08:   vaddsd %xmm1,%xmm7,%xmm7
          │  0x00007fabba8f8c0c:   vaddsd %xmm7,%xmm0,%xmm0
   0.67%  │  0x00007fabba8f8c10:   vmovq  -0x1980(%rip),%xmm7        # 0x00007fabba8f7298
          │  0x00007fabba8f8c18:   vmulsd %xmm6,%xmm4,%xmm4
          │  0x00007fabba8f8c1c:   vmovq  0xa8(%rax),%xmm2
          │  0x00007fabba8f8c24:   vandpd %xmm6,%xmm2,%xmm2
   0.32%  │  0x00007fabba8f8c28:   vmulsd %xmm2,%xmm5,%xmm5
          │  0x00007fabba8f8c2c:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          │  0x00007fabba8f8c34:   vsubsd %xmm5,%xmm7,%xmm7
          │  0x00007fabba8f8c38:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.30%  │  0x00007fabba8f8c40:   vsubsd %xmm4,%xmm7,%xmm7
          │  0x00007fabba8f8c44:   vmulsd %xmm6,%xmm7,%xmm7
          │  0x00007fabba8f8c48:   vmovdqu %xmm3,%xmm4
          │  0x00007fabba8f8c4c:   vsubsd %xmm2,%xmm3,%xmm3
   0.31%  │  0x00007fabba8f8c50:   vaddsd %xmm3,%xmm2,%xmm2
          │  0x00007fabba8f8c54:   vsubsd %xmm2,%xmm4,%xmm4
          │  0x00007fabba8f8c58:   vaddsd %xmm4,%xmm0,%xmm0
   0.36%  │  0x00007fabba8f8c5c:   vsubsd %xmm7,%xmm0,%xmm0
   1.27%  │  0x00007fabba8f8c60:   vaddsd %xmm3,%xmm0,%xmm0
   1.25%  │  0x00007fabba8f8c64:   jmp    0x00007fabba8f9299
          ↘  0x00007fabba8f8c69:   jg     0x00007fabba8f8d1d
             0x00007fabba8f8c6f:   vpextrw $0x3,%xmm0,%eax
             0x00007fabba8f8c74:   mov    %eax,%edx
             0x00007fabba8f8c76:   data16 nopw 0x0(%rax,%rax,1)
             0x00007fabba8f8c80:   and    $0x7ff0,%eax
             0x00007fabba8f8c86:   je     0x00007fabba8f8d10
             0x00007fabba8f8c8c:   and    $0x7fff,%edx
             0x00007fabba8f8c92:   cmp    $0x3e20,%edx
             0x00007fabba8f8c98:   jb     0x00007fabba8f8cf3
             0x00007fabba8f8c9e:   vmovdqu %xmm0,%xmm2
....................................................................................................
  27.71%  <total for region 3>

....[Hottest Regions]...............................................................................
  34.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 963 
  33.30%                      <unknown> 
  27.71%                      <unknown> 
   1.01%                      <unknown> 
   0.77%                      <unknown> 
   0.55%                      <unknown> 
   0.31%              kernel  [unknown] 
   0.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 963 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.79%  <...other 281 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  63.42%                      <unknown> 
  35.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::initial_loop, version 3, compile id 963 
   1.26%              kernel  [unknown] 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.00%         interpreter  aload  25 aload  
   0.00%        libc-2.31.so  _IO_old_init 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%         interpreter  return entry points  
   0.12%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  63.42%                    
  35.08%      jvmci, level 4
   1.26%              kernel
   0.11%           libjvm.so
   0.09%        libc-2.31.so
   0.03%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%    perf-2133516.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking
# Parameters: (iterations = 16384)

# Run progress: 50.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 953.656 us/op
# Warmup Iteration   2: 946.796 us/op
# Warmup Iteration   3: 946.757 us/op
# Warmup Iteration   4: 946.766 us/op
# Warmup Iteration   5: 946.734 us/op
Iteration   1: 946.683 us/op
Iteration   2: 946.534 us/op
Iteration   3: 946.594 us/op
Iteration   4: 946.529 us/op
Iteration   5: 946.551 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking":
  946.578 ±(99.9%) 0.247 us/op [Average]
  (min, avg, max) = (946.529, 946.578, 946.683), stdev = 0.064
  CI (99.9%): [946.332, 946.825] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:asm":
PrintAssembly processed: 227115 total address lines.
Perf output processed (skipped 60.836 seconds):
 Column 1: cycles (50526 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

              0x00007efef28f8c6a:   vaddsd %xmm1,%xmm0,%xmm0
              0x00007efef28f8c6e:   jmp    0x00007efef28f9219
              0x00007efef28f8c73:   vmovq  -0x1a5b(%rip),%xmm3        # 0x00007efef28f7220
              0x00007efef28f8c7b:   vmulsd %xmm0,%xmm3,%xmm3
              0x00007efef28f8c7f:   vaddsd %xmm3,%xmm0,%xmm0
              0x00007efef28f8c83:   vmulsd -0x1a8b(%rip),%xmm0,%xmm0        # 0x00007efef28f7200
              0x00007efef28f8c8b:   jmp    0x00007efef28f9219
              0x00007efef28f8c90:   vmovdqu %xmm0,%xmm1
              0x00007efef28f8c94:   vmulsd %xmm1,%xmm1,%xmm1
              0x00007efef28f8c98:   jmp    0x00007efef28f9219
   0.62%      0x00007efef28f8c9d:   vpextrw $0x3,%xmm0,%eax
              0x00007efef28f8ca2:   and    $0x7ff0,%eax
              0x00007efef28f8ca8:   cmp    $0x7ff0,%eax
              0x00007efef28f8cae:   je     0x00007efef28f9206
   0.63%      0x00007efef28f8cb4:   vpextrw $0x3,%xmm0,%ecx
              0x00007efef28f8cb9:   and    $0x7ff0,%ecx
              0x00007efef28f8cbf:   sub    $0x3f60,%ecx
   0.64%      0x00007efef28f8cc5:   shr    $0x7,%ecx
              0x00007efef28f8cc8:   and    $0xfffc,%ecx
              0x00007efef28f8cce:   lea    -0x3c5(%rip),%r11        # 0x00007efef28f8910
              0x00007efef28f8cd5:   add    %r11,%rcx
   0.64%      0x00007efef28f8cd8:   vmovq  %xmm0,%rax
              0x00007efef28f8cdd:   mov    0x14(%rcx),%r10d
              0x00007efef28f8ce1:   mov    0x18(%rcx),%r8d
              0x00007efef28f8ce5:   mov    %eax,%edx
   0.62%      0x00007efef28f8ce7:   shr    $0x15,%rax
              0x00007efef28f8ceb:   or     $0x80000000,%eax
              0x00007efef28f8cf1:   shr    $0xb,%eax
              0x00007efef28f8cf4:   mov    %r10d,%r9d
   0.61%      0x00007efef28f8cf7:   imul   %rdx,%r10
              0x00007efef28f8cfb:   imul   %rax,%r9
              0x00007efef28f8cff:   imul   %rax,%r8
              0x00007efef28f8d03:   mov    0x10(%rcx),%esi
   0.69%      0x00007efef28f8d06:   mov    0xc(%rcx),%edi
              0x00007efef28f8d09:   mov    %r10d,%r11d
              0x00007efef28f8d0c:   shr    $0x20,%r10
              0x00007efef28f8d10:   add    %r10,%r9
   0.65%      0x00007efef28f8d13:   add    %r8,%r11
              0x00007efef28f8d16:   mov    %r11d,%r8d
              0x00007efef28f8d19:   shr    $0x20,%r11
              0x00007efef28f8d1d:   add    %r11,%r9
   0.72%      0x00007efef28f8d20:   mov    %esi,%r10d
              0x00007efef28f8d23:   imul   %rdx,%rsi
              0x00007efef28f8d27:   imul   %rax,%r10
              0x00007efef28f8d2b:   mov    %edi,%r11d
   0.64%      0x00007efef28f8d2e:   imul   %rdx,%rdi
              0x00007efef28f8d32:   mov    %esi,%ebx
              0x00007efef28f8d34:   shr    $0x20,%rsi
              0x00007efef28f8d38:   add    %rbx,%r9
   0.56%      0x00007efef28f8d3b:   mov    %r9d,%ebx
              0x00007efef28f8d3e:   shr    $0x20,%r9
              0x00007efef28f8d42:   add    %rsi,%r10
              0x00007efef28f8d45:   add    %r9,%r10
   0.57%      0x00007efef28f8d48:   shl    $0x20,%rbx
              0x00007efef28f8d4c:   or     %rbx,%r8
              0x00007efef28f8d4f:   imul   %rax,%r11
              0x00007efef28f8d53:   mov    0x8(%rcx),%r9d
   0.60%      0x00007efef28f8d57:   mov    0x4(%rcx),%esi
              0x00007efef28f8d5a:   mov    %edi,%ebx
              0x00007efef28f8d5c:   shr    $0x20,%rdi
              0x00007efef28f8d60:   add    %rbx,%r10
   0.65%      0x00007efef28f8d63:   mov    %r10d,%ebx
              0x00007efef28f8d66:   shr    $0x20,%r10
              0x00007efef28f8d6a:   add    %rdi,%r11
              0x00007efef28f8d6d:   add    %r10,%r11
   0.61%      0x00007efef28f8d70:   mov    %r9,%rdi
              0x00007efef28f8d73:   imul   %rdx,%r9
              0x00007efef28f8d77:   imul   %rax,%rdi
              0x00007efef28f8d7b:   mov    %r9d,%r10d
   0.65%      0x00007efef28f8d7e:   shr    $0x20,%r9
              0x00007efef28f8d82:   add    %r10,%r11
              0x00007efef28f8d85:   mov    %r11d,%r10d
              0x00007efef28f8d88:   shr    $0x20,%r11
   0.63%      0x00007efef28f8d8c:   add    %r9,%rdi
              0x00007efef28f8d8f:   add    %r11,%rdi
              0x00007efef28f8d92:   mov    %rsi,%r9
              0x00007efef28f8d95:   imul   %rdx,%rsi
   0.62%      0x00007efef28f8d99:   imul   %rax,%r9
              0x00007efef28f8d9d:   shl    $0x20,%r10
              0x00007efef28f8da1:   or     %rbx,%r10
              0x00007efef28f8da4:   mov    (%rcx),%eax
   0.67%      0x00007efef28f8da6:   mov    %esi,%r11d
              0x00007efef28f8da9:   shr    $0x20,%rsi
              0x00007efef28f8dad:   add    %r11,%rdi
              0x00007efef28f8db0:   mov    %edi,%r11d
   0.62%      0x00007efef28f8db3:   shr    $0x20,%rdi
              0x00007efef28f8db7:   add    %rsi,%r9
              0x00007efef28f8dba:   add    %rdi,%r9
              0x00007efef28f8dbd:   imul   %rax,%rdx
   0.69%      0x00007efef28f8dc1:   vpextrw $0x3,%xmm0,%ebx
              0x00007efef28f8dc6:   lea    -0x4bd(%rip),%rdi        # 0x00007efef28f8910
              0x00007efef28f8dcd:   sub    %rdi,%rcx
   0.66%      0x00007efef28f8dd0:   add    %ecx,%ecx
              0x00007efef28f8dd2:   add    %ecx,%ecx
              0x00007efef28f8dd4:   add    %ecx,%ecx
              0x00007efef28f8dd6:   add    $0x13,%ecx
   0.63%      0x00007efef28f8dd9:   mov    $0x8000,%esi
              0x00007efef28f8dde:   and    %ebx,%esi
              0x00007efef28f8de0:   shr    $0x4,%ebx
              0x00007efef28f8de3:   and    $0x7ff,%ebx
   0.61%      0x00007efef28f8de9:   sub    $0x3ff,%ebx
              0x00007efef28f8def:   sub    %ebx,%ecx
              0x00007efef28f8df1:   add    %rdx,%r9
              0x00007efef28f8df4:   mov    %ecx,%edx
   0.59%      0x00007efef28f8df6:   add    $0x20,%edx
              0x00007efef28f8df9:   nopl   0x0(%rax)
              0x00007efef28f8e00:   cmp    $0x0,%ecx
              0x00007efef28f8e03:   jl     0x00007efef28f9152
              0x00007efef28f8e09:   neg    %ecx
   0.64%      0x00007efef28f8e0b:   add    $0x1d,%ecx
              0x00007efef28f8e0e:   shl    %cl,%r9d
   0.64%      0x00007efef28f8e11:   mov    %r9d,%edi
              0x00007efef28f8e14:   and    $0x3fffffff,%r9d
              0x00007efef28f8e1b:   nopl   0x0(%rax,%rax,1)
              0x00007efef28f8e20:   test   $0x20000000,%r9d
              0x00007efef28f8e27:   jne    0x00007efef28f917f
   0.30%      0x00007efef28f8e2d:   shr    %cl,%r9d
   0.01%      0x00007efef28f8e30:   mov    $0x0,%ebx
   0.28%      0x00007efef28f8e35:   shl    $0x20,%r9
              0x00007efef28f8e39:   or     %r11,%r9
   0.00%      0x00007efef28f8e3c:   nopl   0x0(%rax)
   0.00%      0x00007efef28f8e40:   cmp    $0x0,%r9
          ╭   0x00007efef28f8e44:   je     0x00007efef28f90fd
   0.60%  │↗  0x00007efef28f8e4a:   bsr    %r9,%r11
   0.00%  ││  0x00007efef28f8e4e:   mov    $0x1d,%ecx
          ││  0x00007efef28f8e53:   sub    %r11d,%ecx
          ││  0x00007efef28f8e56:   jle    0x00007efef28f912f
   0.01%  ││  0x00007efef28f8e5c:   shl    %cl,%r9
   0.04%  ││  0x00007efef28f8e5f:   mov    %r10,%rax
          ││  0x00007efef28f8e62:   shl    %cl,%r10
   0.04%  ││  0x00007efef28f8e65:   add    %ecx,%edx
          ││  0x00007efef28f8e67:   neg    %ecx
   0.02%  ││  0x00007efef28f8e69:   add    $0x40,%ecx
          ││  0x00007efef28f8e6c:   shr    %cl,%rax
   0.04%  ││  0x00007efef28f8e6f:   shr    %cl,%r8
   0.01%  ││  0x00007efef28f8e72:   or     %rax,%r9
   0.02%  ││  0x00007efef28f8e75:   or     %r8,%r10
   0.69%  ││  0x00007efef28f8e78:   vcvtsi2sd %r9,%xmm0,%xmm0
   0.10%  ││  0x00007efef28f8e7d:   shr    %r10
   0.02%  ││  0x00007efef28f8e80:   vcvtsi2sd %r10,%xmm3,%xmm3
   0.66%  ││  0x00007efef28f8e85:   vxorpd %xmm4,%xmm4,%xmm4
   0.02%  ││  0x00007efef28f8e89:   shl    $0x4,%edx
   0.01%  ││  0x00007efef28f8e8c:   neg    %edx
   0.61%  ││  0x00007efef28f8e8e:   add    $0x3ff0,%edx
   0.03%  ││  0x00007efef28f8e94:   or     %esi,%edx
   0.01%  ││  0x00007efef28f8e96:   xor    %ebx,%edx
   0.01%  ││  0x00007efef28f8e98:   vpinsrw $0x3,%edx,%xmm4,%xmm4
   0.58%  ││  0x00007efef28f8e9d:   vmovq  -0x1c7d(%rip),%xmm2        # 0x00007efef28f7228
   0.01%  ││  0x00007efef28f8ea5:   vmovq  -0x1c7d(%rip),%xmm7        # 0x00007efef28f7230
   0.03%  ││  0x00007efef28f8ead:   vxorpd %xmm5,%xmm5,%xmm5
   0.59%  ││  0x00007efef28f8eb1:   sub    $0x3f0,%edx
   0.03%  ││  0x00007efef28f8eb7:   vpinsrw $0x3,%edx,%xmm5,%xmm5
   0.04%  ││  0x00007efef28f8ebc:   vmulsd %xmm4,%xmm0,%xmm0
   0.70%  ││  0x00007efef28f8ec0:   shl    $0x10,%esi
   0.02%  ││  0x00007efef28f8ec3:   sar    $0x1f,%esi
   0.01%  ││  0x00007efef28f8ec6:   vmulsd %xmm5,%xmm3,%xmm3
   0.08%  ││  0x00007efef28f8eca:   vmovdqu %xmm0,%xmm1
   0.68%  ││  0x00007efef28f8ece:   vmulsd %xmm2,%xmm0,%xmm0
   0.07%  ││  0x00007efef28f8ed2:   shr    $0x1e,%edi
   0.00%  ││  0x00007efef28f8ed5:   vaddsd %xmm3,%xmm1,%xmm1
   0.17%  ││  0x00007efef28f8ed9:   vmulsd %xmm2,%xmm3,%xmm3
   0.61%  ││  0x00007efef28f8edd:   add    %esi,%edi
          ││  0x00007efef28f8edf:   xor    %esi,%edi
          ││  0x00007efef28f8ee1:   vmulsd %xmm1,%xmm7,%xmm7
   0.54%  ││  0x00007efef28f8ee5:   mov    %edi,%eax
   0.45%  ││  0x00007efef28f8ee7:   vaddsd %xmm3,%xmm7,%xmm7
   0.91%  ││  0x00007efef28f8eeb:   vmovdqu %xmm0,%xmm2
          ││  0x00007efef28f8eef:   vaddsd %xmm7,%xmm0,%xmm0
   1.19%  ││  0x00007efef28f8ef3:   vsubsd %xmm0,%xmm2,%xmm2
   1.79%  ││  0x00007efef28f8ef7:   vaddsd %xmm2,%xmm7,%xmm7
   1.60%  ││  0x00007efef28f8efb:   vmovdqu -0x1c93(%rip),%xmm1        # 0x00007efef28f7270
          ││  0x00007efef28f8f03:   vmovddup %xmm0,%xmm0
   0.01%  ││  0x00007efef28f8f07:   vmovdqu -0x1caf(%rip),%xmm4        # 0x00007efef28f7260
   0.22%  ││  0x00007efef28f8f0f:   vandpd %xmm0,%xmm4,%xmm4
   0.45%  ││  0x00007efef28f8f13:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007efef28f8f17:   vmovddup %xmm7,%xmm7
   0.00%  ││  0x00007efef28f8f1b:   vmovdqu -0x1ce3(%rip),%xmm5        # 0x00007efef28f7240
   0.24%  ││  0x00007efef28f8f23:   vmovdqu -0x1cdb(%rip),%xmm6        # 0x00007efef28f7250
   0.36%  ││  0x00007efef28f8f2b:   vpor   %xmm4,%xmm5,%xmm5
          ││  0x00007efef28f8f2f:   vaddpd %xmm5,%xmm1,%xmm1
   0.10%  ││  0x00007efef28f8f33:   vmovdqu %xmm1,%xmm5
   0.20%  ││  0x00007efef28f8f37:   vunpckhpd %xmm5,%xmm5,%xmm5
   0.45%  ││  0x00007efef28f8f3b:   vcvttsd2si %xmm5,%edx
   3.07%  ││  0x00007efef28f8f3f:   vcvttpd2dq %xmm1,%xmm1
   0.11%  ││  0x00007efef28f8f43:   vcvtdq2pd %xmm1,%xmm1
   1.71%  ││  0x00007efef28f8f47:   vmulpd %xmm6,%xmm1,%xmm1
   2.51%  ││  0x00007efef28f8f4b:   vmovdqu -0x1cd3(%rip),%xmm3        # 0x00007efef28f7280
          ││  0x00007efef28f8f53:   vmovq  -0x1d4b(%rip),%xmm5        # 0x00007efef28f7210
          ││  0x00007efef28f8f5b:   shl    $0x4,%eax
          ││  0x00007efef28f8f5e:   add    $0x72900,%edx
   0.58%  ││  0x00007efef28f8f64:   vmovdqu -0x1cdc(%rip),%xmm4        # 0x00007efef28f7290
          ││  0x00007efef28f8f6c:   vmulpd %xmm1,%xmm3,%xmm3
   2.06%  ││  0x00007efef28f8f70:   add    %eax,%edx
          ││  0x00007efef28f8f72:   and    $0x1f,%edx
   0.01%  ││  0x00007efef28f8f75:   vmulsd %xmm1,%xmm5,%xmm5
   0.36%  ││  0x00007efef28f8f79:   mov    %edx,%ecx
   0.42%  ││  0x00007efef28f8f7b:   vmulpd %xmm1,%xmm4,%xmm4
   0.23%  ││  0x00007efef28f8f7f:   shl    %ecx
   0.00%  ││  0x00007efef28f8f81:   vsubpd %xmm3,%xmm0,%xmm0
   1.53%  ││  0x00007efef28f8f85:   vmulpd -0x1ced(%rip),%xmm1,%xmm1        # 0x00007efef28f72a0
          ││  0x00007efef28f8f8d:   add    %ecx,%edx
          ││  0x00007efef28f8f8f:   shl    $0x2,%ecx
          ││  0x00007efef28f8f92:   add    %ecx,%edx
   0.64%  ││  0x00007efef28f8f94:   vaddsd %xmm0,%xmm5,%xmm5
   2.00%  ││  0x00007efef28f8f98:   vmovdqu %xmm0,%xmm2
          ││  0x00007efef28f8f9c:   vsubpd %xmm4,%xmm0,%xmm0
   0.44%  ││  0x00007efef28f8fa0:   vmovq  -0x1d90(%rip),%xmm6        # 0x00007efef28f7218
          ││  0x00007efef28f8fa8:   shl    $0x4,%edx
   0.25%  ││  0x00007efef28f8fab:   lea    -0x1d02(%rip),%rax        # 0x00007efef28f72b0
          ││  0x00007efef28f8fb2:   vandpd -0x70a(%rip),%xmm5,%xmm5        # 0x00007efef28f88b0
   0.97%  ││  0x00007efef28f8fba:   vmovdqu %xmm0,%xmm3
          ││  0x00007efef28f8fbe:   add    %rdx,%rax
   0.14%  ││  0x00007efef28f8fc1:   vsubpd %xmm0,%xmm2,%xmm2
   1.98%  ││  0x00007efef28f8fc5:   vunpckhpd %xmm0,%xmm0,%xmm0
   0.08%  ││  0x00007efef28f8fc9:   vdivsd %xmm5,%xmm6,%xmm6
   6.17%  ││  0x00007efef28f8fcd:   vsubpd %xmm4,%xmm2,%xmm2
          ││  0x00007efef28f8fd1:   vsubsd %xmm5,%xmm3,%xmm3
          ││  0x00007efef28f8fd5:   vsubpd %xmm1,%xmm2,%xmm2
          ││  0x00007efef28f8fd9:   vmovdqu 0x30(%rax),%xmm1
   0.66%  ││  0x00007efef28f8fde:   vaddpd %xmm7,%xmm2,%xmm2
   0.22%  ││  0x00007efef28f8fe2:   vmovdqu 0x10(%rax),%xmm7
          ││  0x00007efef28f8fe7:   vmulpd %xmm0,%xmm7,%xmm7
          ││  0x00007efef28f8feb:   vmovdqu 0x60(%rax),%xmm4
   0.45%  ││  0x00007efef28f8ff0:   vmulpd %xmm0,%xmm1,%xmm1
   0.19%  ││  0x00007efef28f8ff4:   vmulpd %xmm0,%xmm4,%xmm4
          ││  0x00007efef28f8ff8:   vaddsd %xmm3,%xmm2,%xmm2
   1.73%  ││  0x00007efef28f8ffc:   vmovdqu %xmm0,%xmm3
   0.00%  ││  0x00007efef28f9000:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007efef28f9004:   vaddpd (%rax),%xmm7,%xmm7
          ││  0x00007efef28f9008:   vaddpd 0x20(%rax),%xmm1,%xmm1
   0.60%  ││  0x00007efef28f900d:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  ││  0x00007efef28f9011:   vaddpd 0x50(%rax),%xmm4,%xmm4
          ││  0x00007efef28f9016:   vaddpd %xmm1,%xmm7,%xmm7
   0.01%  ││  0x00007efef28f901a:   vmovdqu 0x70(%rax),%xmm1
   0.64%  ││  0x00007efef28f901f:   vmulpd %xmm0,%xmm1,%xmm1
   0.00%  ││  0x00007efef28f9023:   vmulpd %xmm0,%xmm0,%xmm0
          ││  0x00007efef28f9027:   vaddpd %xmm1,%xmm4,%xmm4
   0.01%  ││  0x00007efef28f902b:   vmovdqu 0x40(%rax),%xmm1
   0.62%  ││  0x00007efef28f9030:   vmulpd %xmm0,%xmm1,%xmm1
          ││  0x00007efef28f9034:   vaddpd %xmm1,%xmm7,%xmm7
   0.28%  ││  0x00007efef28f9038:   vmovdqu %xmm3,%xmm1
          ││  0x00007efef28f903c:   vmulpd %xmm0,%xmm3,%xmm3
   0.51%  ││  0x00007efef28f9040:   vmulsd %xmm0,%xmm0,%xmm0
          ││  0x00007efef28f9044:   vmulpd 0x90(%rax),%xmm1,%xmm1
   0.22%  ││  0x00007efef28f904c:   vmulpd %xmm3,%xmm4,%xmm4
   0.01%  ││  0x00007efef28f9050:   vmovdqu %xmm1,%xmm3
   0.46%  ││  0x00007efef28f9054:   vaddpd %xmm4,%xmm7,%xmm7
   1.53%  ││  0x00007efef28f9058:   vmovdqu %xmm1,%xmm4
          ││  0x00007efef28f905c:   vmulsd %xmm7,%xmm0,%xmm0
   1.88%  ││  0x00007efef28f9060:   vunpckhpd %xmm7,%xmm7,%xmm7
          ││  0x00007efef28f9064:   vaddsd %xmm7,%xmm0,%xmm0
   2.68%  ││  0x00007efef28f9068:   vunpckhpd %xmm1,%xmm1,%xmm1
          ││  0x00007efef28f906c:   vaddsd %xmm1,%xmm3,%xmm3
          ││  0x00007efef28f9070:   vsubsd %xmm3,%xmm4,%xmm4
          ││  0x00007efef28f9074:   vaddsd %xmm4,%xmm1,%xmm1
   0.62%  ││  0x00007efef28f9078:   vmovdqu %xmm2,%xmm4
          ││  0x00007efef28f907c:   vmovq  0x90(%rax),%xmm7
          ││  0x00007efef28f9084:   vunpckhpd %xmm2,%xmm2,%xmm2
          ││  0x00007efef28f9088:   vaddsd 0x98(%rax),%xmm7,%xmm7
   0.62%  ││  0x00007efef28f9090:   vmulsd %xmm2,%xmm7,%xmm7
          ││  0x00007efef28f9094:   vaddsd 0x88(%rax),%xmm7,%xmm7
          ││  0x00007efef28f909c:   vaddsd %xmm1,%xmm7,%xmm7
          ││  0x00007efef28f90a0:   vaddsd %xmm7,%xmm0,%xmm0
   1.32%  ││  0x00007efef28f90a4:   vmovq  -0x1e94(%rip),%xmm7        # 0x00007efef28f7218
          ││  0x00007efef28f90ac:   vmulsd %xmm6,%xmm4,%xmm4
          ││  0x00007efef28f90b0:   vmovq  0xa8(%rax),%xmm2
          ││  0x00007efef28f90b8:   vandpd %xmm6,%xmm2,%xmm2
   0.65%  ││  0x00007efef28f90bc:   vmulsd %xmm2,%xmm5,%xmm5
          ││  0x00007efef28f90c0:   vmulsd 0xa0(%rax),%xmm6,%xmm6
          ││  0x00007efef28f90c8:   vsubsd %xmm5,%xmm7,%xmm7
          ││  0x00007efef28f90cc:   vsubsd 0x80(%rax),%xmm2,%xmm2
   0.67%  ││  0x00007efef28f90d4:   vsubsd %xmm4,%xmm7,%xmm7
          ││  0x00007efef28f90d8:   vmulsd %xmm6,%xmm7,%xmm7
          ││  0x00007efef28f90dc:   vmovdqu %xmm3,%xmm4
          ││  0x00007efef28f90e0:   vsubsd %xmm2,%xmm3,%xmm3
   0.62%  ││  0x00007efef28f90e4:   vaddsd %xmm3,%xmm2,%xmm2
          ││  0x00007efef28f90e8:   vsubsd %xmm2,%xmm4,%xmm4
   0.00%  ││  0x00007efef28f90ec:   vaddsd %xmm4,%xmm0,%xmm0
   0.74%  ││  0x00007efef28f90f0:   vsubsd %xmm7,%xmm0,%xmm0
   2.51%  ││  0x00007efef28f90f4:   vaddsd %xmm3,%xmm0,%xmm0
   2.49%  ││  0x00007efef28f90f8:   jmp    0x00007efef28f9219
          ↘│  0x00007efef28f90fd:   add    $0x40,%edx
           │  0x00007efef28f9100:   mov    %r10,%r9
           │  0x00007efef28f9103:   mov    %r8,%r10
           │  0x00007efef28f9106:   mov    $0x0,%r8d
           │  0x00007efef28f910c:   cmp    $0x0,%r9
           ╰  0x00007efef28f9110:   jne    0x00007efef28f8e4a
              0x00007efef28f9116:   add    $0x40,%edx
              0x00007efef28f9119:   mov    %r10,%r9
              0x00007efef28f911c:   mov    %r8,%r10
              0x00007efef28f911f:   nop
....................................................................................................
  80.93%  <total for region 1>

....[Hottest Regions]...............................................................................
  80.93%                      <unknown> 
   9.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 4, compile id 960 
   2.83%                      <unknown> 
   2.38%                      <unknown> 
   1.83%                      <unknown> 
   0.66%                      <unknown> 
   0.18%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.92%  <...other 314 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.73%                      <unknown> 
   9.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInvariantCodeMotionBenchmark::manual_loop_hoisting_and_sinking, version 4, compile id 960 
   1.17%              kernel  [unknown] 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  defaultStream::hold 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.17%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.73%                    
   9.76%      jvmci, level 4
   1.17%              kernel
   0.18%           libjvm.so
   0.11%        libc-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%    perf-2133584.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:48

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

Benchmark                                                              (iterations)  Mode  Cnt     Score   Error  Units
LoopInvariantCodeMotionBenchmark.initial_loop                                 16384  avgt    5  2190.282 ± 6.040  us/op
LoopInvariantCodeMotionBenchmark.initial_loop:asm                             16384  avgt            NaN            ---
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking             16384  avgt    5   946.578 ± 0.247  us/op
LoopInvariantCodeMotionBenchmark.manual_loop_hoisting_and_sinking:asm         16384  avgt            NaN            ---
