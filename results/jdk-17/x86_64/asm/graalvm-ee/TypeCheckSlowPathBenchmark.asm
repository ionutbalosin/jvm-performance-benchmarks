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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 16)

# Run progress: 0.00% complete, ETA 00:08:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 18.778 ns/op
# Warmup Iteration   2: 19.539 ns/op
# Warmup Iteration   3: 18.959 ns/op
# Warmup Iteration   4: 18.383 ns/op
# Warmup Iteration   5: 18.381 ns/op
Iteration   1: 18.383 ns/op
Iteration   2: 18.383 ns/op
Iteration   3: 18.382 ns/op
Iteration   4: 18.382 ns/op
Iteration   5: 18.383 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  18.383 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (18.382, 18.383, 18.383), stdev = 0.001
  CI (99.9%): [18.380, 18.385] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 191114 total address lines.
Perf output processed (skipped 58.620 seconds):
 Column 1: cycles (50952 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 

                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
                0x00007fa6c2b1f058:   nopl   0x0(%rax,%rax,1)
                0x00007fa6c2b1f060:   cmp    $0xc265e0,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
                0x00007fa6c2b1f066:   jne    0x00007fa6c2b1f756           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
                0x00007fa6c2b1f06c:   cmpb   $0x0,0x94(%rsi)
                0x00007fa6c2b1f073:   jne    0x00007fa6c2b1f671           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   0.28%        0x00007fa6c2b1f079:   lea    0x8(%r9),%r9d
                0x00007fa6c2b1f07d:   data16 xchg %ax,%ax
                0x00007fa6c2b1f080:   cmp    $0x1ff8,%r9d
                0x00007fa6c2b1f087:   jge    0x00007fa6c2b1f49b
                0x00007fa6c2b1f08d:   mov    %rbx,%r8
   0.28%        0x00007fa6c2b1f090:   mov    0x10(%r11),%ecx              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [16]=Oop [24]=Oop }
                                                                          ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
                0x00007fa6c2b1f094:   mov    0x8(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007fa6c2b1f946
                0x00007fa6c2b1f09b:   movabs $0x800000000,%rbx
                0x00007fa6c2b1f0a5:   lea    (%rbx,%rcx,1),%rdi
   0.27%        0x00007fa6c2b1f0a9:   cmp    0x20(%rdi),%r10
                0x00007fa6c2b1f0ad:   je     0x00007fa6c2b1ee80
   0.00%        0x00007fa6c2b1f0b3:   nopw   0x0(%rax,%rax,1)
                0x00007fa6c2b1f0bc:   data16 data16 xchg %ax,%ax
                0x00007fa6c2b1f0c0:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                0x00007fa6c2b1f0c6:   je     0x00007fa6c2b1ee80
   0.26%        0x00007fa6c2b1f0cc:   mov    0x28(%rdi),%rbx
                0x00007fa6c2b1f0d0:   mov    (%rbx),%eax
   0.00%        0x00007fa6c2b1f0d2:   mov    $0x0,%ebp
          ╭     0x00007fa6c2b1f0d7:   jmp    0x00007fa6c2b1f0fd
          │     0x00007fa6c2b1f0dc:   nopl   0x0(%rax)
   1.26%  │↗    0x00007fa6c2b1f0e0:   mov    %ebp,%r13d
   1.04%  ││    0x00007fa6c2b1f0e3:   shl    $0x3,%r13d
   1.23%  ││    0x00007fa6c2b1f0e7:   lea    0x8(%r13),%r13d
   1.27%  ││    0x00007fa6c2b1f0eb:   movslq %r13d,%r13
   1.26%  ││    0x00007fa6c2b1f0ee:   mov    (%rbx,%r13,1),%r13
   1.06%  ││    0x00007fa6c2b1f0f2:   cmp    %r13,%r10
          ││    0x00007fa6c2b1f0f5:   je     0x00007fa6c2b1f452
   1.32%  ││    0x00007fa6c2b1f0fb:   inc    %ebp
   1.66%  ↘│    0x00007fa6c2b1f0fd:   data16 xchg %ax,%ax
   1.32%   │    0x00007fa6c2b1f100:   cmp    %ebp,%eax
           ╰    0x00007fa6c2b1f102:   jg     0x00007fa6c2b1f0e0
                0x00007fa6c2b1f104:   jmp    0x00007fa6c2b1f3aa
   0.24%        0x00007fa6c2b1f109:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                0x00007fa6c2b1f10f:   je     0x00007fa6c2b1eeca
                0x00007fa6c2b1f115:   mov    0x28(%rdi),%rbx
                0x00007fa6c2b1f119:   mov    (%rbx),%eax
                0x00007fa6c2b1f11b:   mov    $0x0,%ebp
   0.26%    ╭   0x00007fa6c2b1f120:   jmp    0x00007fa6c2b1f15d
            │   0x00007fa6c2b1f125:   data16 data16 nopw 0x0(%rax,%rax,1)
            │   0x00007fa6c2b1f130:   data16 data16 xchg %ax,%ax
            │   0x00007fa6c2b1f134:   nopl   0x0(%rax,%rax,1)
            │   0x00007fa6c2b1f13c:   data16 data16 xchg %ax,%ax
   1.29%    │↗  0x00007fa6c2b1f140:   mov    %ebp,%r13d
   0.94%    ││  0x00007fa6c2b1f143:   shl    $0x3,%r13d
   1.28%    ││  0x00007fa6c2b1f147:   lea    0x8(%r13),%r13d
   1.27%    ││  0x00007fa6c2b1f14b:   movslq %r13d,%r13
   1.34%    ││  0x00007fa6c2b1f14e:   mov    (%rbx,%r13,1),%r13
   1.07%    ││  0x00007fa6c2b1f152:   cmp    %r13,%r10
            ││  0x00007fa6c2b1f155:   je     0x00007fa6c2b1f45b
   1.25%    ││  0x00007fa6c2b1f15b:   inc    %ebp
   1.11%    ↘│  0x00007fa6c2b1f15d:   data16 xchg %ax,%ax
   1.41%     │  0x00007fa6c2b1f160:   cmp    %ebp,%eax
             ╰  0x00007fa6c2b1f162:   jg     0x00007fa6c2b1f140
                0x00007fa6c2b1f164:   jmp    0x00007fa6c2b1f3bc
                0x00007fa6c2b1f169:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                0x00007fa6c2b1f16f:   je     0x00007fa6c2b1ef14
                0x00007fa6c2b1f175:   mov    0x28(%rdi),%rbx
   0.28%        0x00007fa6c2b1f179:   mov    (%rbx),%eax
   0.00%        0x00007fa6c2b1f17b:   mov    $0x0,%ebp
                0x00007fa6c2b1f180:   jmp    0x00007fa6c2b1f1bd
                0x00007fa6c2b1f185:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007fa6c2b1f190:   data16 data16 xchg %ax,%ax
                0x00007fa6c2b1f194:   nopl   0x0(%rax,%rax,1)
                0x00007fa6c2b1f19c:   data16 data16 xchg %ax,%ax
   1.11%        0x00007fa6c2b1f1a0:   mov    %ebp,%r13d
   1.24%        0x00007fa6c2b1f1a3:   shl    $0x3,%r13d
   1.26%        0x00007fa6c2b1f1a7:   lea    0x8(%r13),%r13d
   1.29%        0x00007fa6c2b1f1ab:   movslq %r13d,%r13
   0.99%        0x00007fa6c2b1f1ae:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  24.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 

   0.29%      0x00007fa6c2b1f344:   jmp    0x00007fa6c2b1f425
              0x00007fa6c2b1f349:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fa6c2b1f34f:   je     0x00007fa6c2b1f058
   0.25%      0x00007fa6c2b1f355:   mov    0x28(%rdi),%rax
              0x00007fa6c2b1f359:   mov    (%rax),%ebp
              0x00007fa6c2b1f35b:   mov    $0x0,%r13d
          ╭   0x00007fa6c2b1f361:   jmp    0x00007fa6c2b1f39e
          │   0x00007fa6c2b1f366:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa6c2b1f371:   data16 data16 xchg %ax,%ax
          │   0x00007fa6c2b1f375:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.31%  │↗  0x00007fa6c2b1f380:   mov    %r13d,%r14d
   1.03%  ││  0x00007fa6c2b1f383:   shl    $0x3,%r14d
   1.31%  ││  0x00007fa6c2b1f387:   lea    0x8(%r14),%r14d
   1.27%  ││  0x00007fa6c2b1f38b:   movslq %r14d,%r14
   1.28%  ││  0x00007fa6c2b1f38e:   mov    (%rax,%r14,1),%r14
   1.03%  ││  0x00007fa6c2b1f392:   cmp    %r14,%r10
          ││  0x00007fa6c2b1f395:   je     0x00007fa6c2b1f492
   1.23%  ││  0x00007fa6c2b1f39b:   inc    %r13d
   1.59%  ↘│  0x00007fa6c2b1f39e:   xchg   %ax,%ax
   1.29%   │  0x00007fa6c2b1f3a0:   cmp    %r13d,%ebp
           ╰  0x00007fa6c2b1f3a3:   jg     0x00007fa6c2b1f380
              0x00007fa6c2b1f3a5:   jmp    0x00007fa6c2b1f437           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 109)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.27%      0x00007fa6c2b1f3aa:   cmpb   $0x0,0x94(%rsi)
              0x00007fa6c2b1f3b1:   je     0x00007fa6c2b1ee99
              0x00007fa6c2b1f3b7:   jmp    0x00007fa6c2b1f5f1
   0.24%      0x00007fa6c2b1f3bc:   nopl   0x0(%rax)
              0x00007fa6c2b1f3c0:   cmpb   $0x0,0x94(%rsi)
              0x00007fa6c2b1f3c7:   je     0x00007fa6c2b1eeed
              0x00007fa6c2b1f3cd:   jmp    0x00007fa6c2b1f62f
              0x00007fa6c2b1f3d2:   cmpb   $0x0,0x94(%rsi)
              0x00007fa6c2b1f3d9:   je     0x00007fa6c2b1ef2d
              0x00007fa6c2b1f3df:   nop
              0x00007fa6c2b1f3e0:   jmp    0x00007fa6c2b1f63a
              0x00007fa6c2b1f3e5:   cmpb   $0x0,0x94(%rsi)
              0x00007fa6c2b1f3ec:   je     0x00007fa6c2b1ef6d
              0x00007fa6c2b1f3f2:   jmp    0x00007fa6c2b1f645
....................................................................................................
  11.84%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 

              0x00007fa6c2b1f169:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fa6c2b1f16f:   je     0x00007fa6c2b1ef14
              0x00007fa6c2b1f175:   mov    0x28(%rdi),%rbx
   0.28%      0x00007fa6c2b1f179:   mov    (%rbx),%eax
   0.00%      0x00007fa6c2b1f17b:   mov    $0x0,%ebp
          ╭   0x00007fa6c2b1f180:   jmp    0x00007fa6c2b1f1bd
          │   0x00007fa6c2b1f185:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa6c2b1f190:   data16 data16 xchg %ax,%ax
          │   0x00007fa6c2b1f194:   nopl   0x0(%rax,%rax,1)
          │   0x00007fa6c2b1f19c:   data16 data16 xchg %ax,%ax
   1.11%  │↗  0x00007fa6c2b1f1a0:   mov    %ebp,%r13d
   1.24%  ││  0x00007fa6c2b1f1a3:   shl    $0x3,%r13d
   1.26%  ││  0x00007fa6c2b1f1a7:   lea    0x8(%r13),%r13d
   1.29%  ││  0x00007fa6c2b1f1ab:   movslq %r13d,%r13
   0.99%  ││  0x00007fa6c2b1f1ae:   mov    (%rbx,%r13,1),%r13
   1.29%  ││  0x00007fa6c2b1f1b2:   cmp    %r13,%r10
          ││  0x00007fa6c2b1f1b5:   je     0x00007fa6c2b1f465
   1.31%  ││  0x00007fa6c2b1f1bb:   inc    %ebp
   1.23%  ↘│  0x00007fa6c2b1f1bd:   data16 xchg %ax,%ax
   1.33%   │  0x00007fa6c2b1f1c0:   cmp    %ebp,%eax
           ╰  0x00007fa6c2b1f1c2:   jg     0x00007fa6c2b1f1a0
   0.25%      0x00007fa6c2b1f1c4:   jmp    0x00007fa6c2b1f3d2
              0x00007fa6c2b1f1c9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fa6c2b1f1cf:   je     0x00007fa6c2b1ef54
              0x00007fa6c2b1f1d5:   mov    0x28(%rdi),%rbx
   0.27%      0x00007fa6c2b1f1d9:   mov    (%rbx),%eax
              0x00007fa6c2b1f1db:   mov    $0x0,%ebp
              0x00007fa6c2b1f1e0:   jmp    0x00007fa6c2b1f21d
              0x00007fa6c2b1f1e5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fa6c2b1f1f0:   data16 data16 xchg %ax,%ax
              0x00007fa6c2b1f1f4:   nopl   0x0(%rax,%rax,1)
              0x00007fa6c2b1f1fc:   data16 data16 xchg %ax,%ax
   1.12%      0x00007fa6c2b1f200:   mov    %ebp,%r13d
   1.24%      0x00007fa6c2b1f203:   shl    $0x3,%r13d
   1.25%      0x00007fa6c2b1f207:   lea    0x8(%r13),%r13d
   1.25%      0x00007fa6c2b1f20b:   movslq %r13d,%r13
....................................................................................................
  11.58%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 

              0x00007fa6c2b1f1c9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fa6c2b1f1cf:   je     0x00007fa6c2b1ef54
              0x00007fa6c2b1f1d5:   mov    0x28(%rdi),%rbx
   0.27%      0x00007fa6c2b1f1d9:   mov    (%rbx),%eax
              0x00007fa6c2b1f1db:   mov    $0x0,%ebp
          ╭   0x00007fa6c2b1f1e0:   jmp    0x00007fa6c2b1f21d
          │   0x00007fa6c2b1f1e5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa6c2b1f1f0:   data16 data16 xchg %ax,%ax
          │   0x00007fa6c2b1f1f4:   nopl   0x0(%rax,%rax,1)
          │   0x00007fa6c2b1f1fc:   data16 data16 xchg %ax,%ax
   1.12%  │↗  0x00007fa6c2b1f200:   mov    %ebp,%r13d
   1.24%  ││  0x00007fa6c2b1f203:   shl    $0x3,%r13d
   1.25%  ││  0x00007fa6c2b1f207:   lea    0x8(%r13),%r13d
   1.25%  ││  0x00007fa6c2b1f20b:   movslq %r13d,%r13
   1.05%  ││  0x00007fa6c2b1f20e:   mov    (%rbx,%r13,1),%r13
   1.30%  ││  0x00007fa6c2b1f212:   cmp    %r13,%r10
          ││  0x00007fa6c2b1f215:   je     0x00007fa6c2b1f46e
   1.17%  ││  0x00007fa6c2b1f21b:   inc    %ebp
   1.30%  ↘│  0x00007fa6c2b1f21d:   data16 xchg %ax,%ax
   1.31%   │  0x00007fa6c2b1f220:   cmp    %ebp,%eax
   0.00%   ╰  0x00007fa6c2b1f222:   jg     0x00007fa6c2b1f200
   0.27%      0x00007fa6c2b1f224:   jmp    0x00007fa6c2b1f3e5
              0x00007fa6c2b1f229:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fa6c2b1f22f:   je     0x00007fa6c2b1ef94
              0x00007fa6c2b1f235:   mov    0x28(%rdi),%rbx
   0.31%      0x00007fa6c2b1f239:   mov    (%rbx),%eax
              0x00007fa6c2b1f23b:   mov    $0x0,%ebp
              0x00007fa6c2b1f240:   jmp    0x00007fa6c2b1f27d
              0x00007fa6c2b1f245:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fa6c2b1f250:   data16 data16 xchg %ax,%ax
              0x00007fa6c2b1f254:   nopl   0x0(%rax,%rax,1)
              0x00007fa6c2b1f25c:   data16 data16 xchg %ax,%ax
   1.02%      0x00007fa6c2b1f260:   mov    %ebp,%r13d
   1.23%      0x00007fa6c2b1f263:   shl    $0x3,%r13d
   1.25%      0x00007fa6c2b1f267:   lea    0x8(%r13),%r13d
   1.26%      0x00007fa6c2b1f26b:   movslq %r13d,%r13
....................................................................................................
  11.54%  <total for region 4>

....[Hottest Region 5]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 

              0x00007fa6c2b1f289:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fa6c2b1f28f:   je     0x00007fa6c2b1efd4
              0x00007fa6c2b1f295:   mov    0x28(%rdi),%rbx
   0.26%      0x00007fa6c2b1f299:   mov    (%rbx),%eax
              0x00007fa6c2b1f29b:   mov    $0x0,%ebp
          ╭   0x00007fa6c2b1f2a0:   jmp    0x00007fa6c2b1f2dd
          │   0x00007fa6c2b1f2a5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa6c2b1f2b0:   data16 data16 xchg %ax,%ax
          │   0x00007fa6c2b1f2b4:   nopl   0x0(%rax,%rax,1)
          │   0x00007fa6c2b1f2bc:   data16 data16 xchg %ax,%ax
   1.06%  │↗  0x00007fa6c2b1f2c0:   mov    %ebp,%r13d
   1.22%  ││  0x00007fa6c2b1f2c3:   shl    $0x3,%r13d
   1.24%  ││  0x00007fa6c2b1f2c7:   lea    0x8(%r13),%r13d
   1.26%  ││  0x00007fa6c2b1f2cb:   movslq %r13d,%r13
   1.07%  ││  0x00007fa6c2b1f2ce:   mov    (%rbx,%r13,1),%r13
   1.27%  ││  0x00007fa6c2b1f2d2:   cmp    %r13,%r10
          ││  0x00007fa6c2b1f2d5:   je     0x00007fa6c2b1f480
   1.17%  ││  0x00007fa6c2b1f2db:   inc    %ebp
   1.27%  ↘│  0x00007fa6c2b1f2dd:   data16 xchg %ax,%ax
   1.47%   │  0x00007fa6c2b1f2e0:   cmp    %ebp,%eax
           ╰  0x00007fa6c2b1f2e2:   jg     0x00007fa6c2b1f2c0
   0.26%      0x00007fa6c2b1f2e4:   jmp    0x00007fa6c2b1f412
              0x00007fa6c2b1f2e9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fa6c2b1f2ef:   je     0x00007fa6c2b1f014
              0x00007fa6c2b1f2f5:   mov    0x28(%rdi),%rbx
   0.24%      0x00007fa6c2b1f2f9:   mov    (%rbx),%eax
              0x00007fa6c2b1f2fb:   mov    $0x0,%ebp
              0x00007fa6c2b1f300:   jmp    0x00007fa6c2b1f33d
              0x00007fa6c2b1f305:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fa6c2b1f310:   data16 data16 xchg %ax,%ax
              0x00007fa6c2b1f314:   nopl   0x0(%rax,%rax,1)
              0x00007fa6c2b1f31c:   data16 data16 xchg %ax,%ax
   0.93%      0x00007fa6c2b1f320:   mov    %ebp,%r13d
   1.33%      0x00007fa6c2b1f323:   shl    $0x3,%r13d
   1.27%      0x00007fa6c2b1f327:   lea    0x8(%r13),%r13d
   1.26%      0x00007fa6c2b1f32b:   movslq %r13d,%r13
....................................................................................................
  11.54%  <total for region 5>

....[Hottest Region 6]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 

              0x00007fa6c2b1f2e9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fa6c2b1f2ef:   je     0x00007fa6c2b1f014
              0x00007fa6c2b1f2f5:   mov    0x28(%rdi),%rbx
   0.24%      0x00007fa6c2b1f2f9:   mov    (%rbx),%eax
              0x00007fa6c2b1f2fb:   mov    $0x0,%ebp
          ╭   0x00007fa6c2b1f300:   jmp    0x00007fa6c2b1f33d
          │   0x00007fa6c2b1f305:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa6c2b1f310:   data16 data16 xchg %ax,%ax
          │   0x00007fa6c2b1f314:   nopl   0x0(%rax,%rax,1)
          │   0x00007fa6c2b1f31c:   data16 data16 xchg %ax,%ax
   0.93%  │↗  0x00007fa6c2b1f320:   mov    %ebp,%r13d
   1.33%  ││  0x00007fa6c2b1f323:   shl    $0x3,%r13d
   1.27%  ││  0x00007fa6c2b1f327:   lea    0x8(%r13),%r13d
   1.26%  ││  0x00007fa6c2b1f32b:   movslq %r13d,%r13
   0.97%  ││  0x00007fa6c2b1f32e:   mov    (%rbx,%r13,1),%r13
   1.27%  ││  0x00007fa6c2b1f332:   cmp    %r13,%r10
          ││  0x00007fa6c2b1f335:   je     0x00007fa6c2b1f489
   1.28%  ││  0x00007fa6c2b1f33b:   inc    %ebp
   1.31%  ↘│  0x00007fa6c2b1f33d:   data16 xchg %ax,%ax
   1.35%   │  0x00007fa6c2b1f340:   cmp    %ebp,%eax
           ╰  0x00007fa6c2b1f342:   jg     0x00007fa6c2b1f320
   0.29%      0x00007fa6c2b1f344:   jmp    0x00007fa6c2b1f425
              0x00007fa6c2b1f349:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fa6c2b1f34f:   je     0x00007fa6c2b1f058
   0.25%      0x00007fa6c2b1f355:   mov    0x28(%rdi),%rax
              0x00007fa6c2b1f359:   mov    (%rax),%ebp
              0x00007fa6c2b1f35b:   mov    $0x0,%r13d
              0x00007fa6c2b1f361:   jmp    0x00007fa6c2b1f39e
              0x00007fa6c2b1f366:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fa6c2b1f371:   data16 data16 xchg %ax,%ax
              0x00007fa6c2b1f375:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.31%      0x00007fa6c2b1f380:   mov    %r13d,%r14d
   1.03%      0x00007fa6c2b1f383:   shl    $0x3,%r14d
   1.31%      0x00007fa6c2b1f387:   lea    0x8(%r14),%r14d
   1.27%      0x00007fa6c2b1f38b:   movslq %r14d,%r14
....................................................................................................
  11.51%  <total for region 6>

....[Hottest Region 7]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 

              0x00007fa6c2b1f229:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fa6c2b1f22f:   je     0x00007fa6c2b1ef94
              0x00007fa6c2b1f235:   mov    0x28(%rdi),%rbx
   0.31%      0x00007fa6c2b1f239:   mov    (%rbx),%eax
              0x00007fa6c2b1f23b:   mov    $0x0,%ebp
          ╭   0x00007fa6c2b1f240:   jmp    0x00007fa6c2b1f27d
          │   0x00007fa6c2b1f245:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa6c2b1f250:   data16 data16 xchg %ax,%ax
          │   0x00007fa6c2b1f254:   nopl   0x0(%rax,%rax,1)
          │   0x00007fa6c2b1f25c:   data16 data16 xchg %ax,%ax
   1.02%  │↗  0x00007fa6c2b1f260:   mov    %ebp,%r13d
   1.23%  ││  0x00007fa6c2b1f263:   shl    $0x3,%r13d
   1.25%  ││  0x00007fa6c2b1f267:   lea    0x8(%r13),%r13d
   1.26%  ││  0x00007fa6c2b1f26b:   movslq %r13d,%r13
   0.93%  ││  0x00007fa6c2b1f26e:   mov    (%rbx,%r13,1),%r13
   1.41%  ││  0x00007fa6c2b1f272:   cmp    %r13,%r10
          ││  0x00007fa6c2b1f275:   je     0x00007fa6c2b1f477
   1.27%  ││  0x00007fa6c2b1f27b:   inc    %ebp
   1.24%  ↘│  0x00007fa6c2b1f27d:   data16 xchg %ax,%ax
   1.27%   │  0x00007fa6c2b1f280:   cmp    %ebp,%eax
           ╰  0x00007fa6c2b1f282:   jg     0x00007fa6c2b1f260
   0.27%      0x00007fa6c2b1f284:   jmp    0x00007fa6c2b1f3f7
              0x00007fa6c2b1f289:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fa6c2b1f28f:   je     0x00007fa6c2b1efd4
              0x00007fa6c2b1f295:   mov    0x28(%rdi),%rbx
   0.26%      0x00007fa6c2b1f299:   mov    (%rbx),%eax
              0x00007fa6c2b1f29b:   mov    $0x0,%ebp
              0x00007fa6c2b1f2a0:   jmp    0x00007fa6c2b1f2dd
              0x00007fa6c2b1f2a5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fa6c2b1f2b0:   data16 data16 xchg %ax,%ax
              0x00007fa6c2b1f2b4:   nopl   0x0(%rax,%rax,1)
              0x00007fa6c2b1f2bc:   data16 data16 xchg %ax,%ax
   1.06%      0x00007fa6c2b1f2c0:   mov    %ebp,%r13d
   1.22%      0x00007fa6c2b1f2c3:   shl    $0x3,%r13d
   1.24%      0x00007fa6c2b1f2c7:   lea    0x8(%r13),%r13d
   1.26%      0x00007fa6c2b1f2cb:   movslq %r13d,%r13
....................................................................................................
  11.42%  <total for region 7>

....[Hottest Regions]...............................................................................
  24.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
  11.84%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
  11.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
  11.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
  11.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
  11.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
  11.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
   1.08%               kernel  [unknown] 
   0.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
   0.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
   0.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
   0.49%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
   0.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
   0.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
   0.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
   0.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
   0.10%               kernel  [unknown] 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   1.09%  <...other 318 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 759 
   2.04%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  syscall 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  os::elapsed_counter 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.19%  <...other 86 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.60%       jvmci, level 4
   2.04%               kernel
   0.17%            libjvm.so
   0.07%         libc-2.31.so
   0.03%                     
   0.03%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%          c1, level 3
   0.00%     Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 32)

# Run progress: 20.00% complete, ETA 00:07:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 32.774 ns/op
# Warmup Iteration   2: 32.608 ns/op
# Warmup Iteration   3: 32.896 ns/op
# Warmup Iteration   4: 32.314 ns/op
# Warmup Iteration   5: 32.315 ns/op
Iteration   1: 32.315 ns/op
Iteration   2: 32.312 ns/op
Iteration   3: 32.312 ns/op
Iteration   4: 32.311 ns/op
Iteration   5: 32.314 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  32.313 ±(99.9%) 0.007 ns/op [Average]
  (min, avg, max) = (32.311, 32.313, 32.315), stdev = 0.002
  CI (99.9%): [32.306, 32.320] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 196699 total address lines.
Perf output processed (skipped 58.930 seconds):
 Column 1: cycles (50746 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 

                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
                  0x00007fd896b20258:   nopl   0x0(%rax,%rax,1)
                  0x00007fd896b20260:   cmp    $0xc265e0,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
                  0x00007fd896b20266:   jne    0x00007fd896b20956           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
                  0x00007fd896b2026c:   cmpb   $0x0,0x94(%rsi)
                  0x00007fd896b20273:   jne    0x00007fd896b20871           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   0.16%          0x00007fd896b20279:   lea    0x8(%r9),%r9d
                  0x00007fd896b2027d:   data16 xchg %ax,%ax
                  0x00007fd896b20280:   cmp    $0x1ff8,%r9d
                  0x00007fd896b20287:   jge    0x00007fd896b2069b
                  0x00007fd896b2028d:   mov    %rbx,%r8
   0.14%          0x00007fd896b20290:   mov    0x10(%r11),%ecx              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [16]=Oop [24]=Oop }
                                                                            ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
                  0x00007fd896b20294:   mov    0x8(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007fd896b20b46
                  0x00007fd896b2029b:   movabs $0x800000000,%rbx
                  0x00007fd896b202a5:   lea    (%rbx,%rcx,1),%rdi
   0.17%          0x00007fd896b202a9:   cmp    0x20(%rdi),%r10
                  0x00007fd896b202ad:   je     0x00007fd896b20080
   0.00%          0x00007fd896b202b3:   nopw   0x0(%rax,%rax,1)
                  0x00007fd896b202bc:   data16 data16 xchg %ax,%ax
                  0x00007fd896b202c0:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                  0x00007fd896b202c6:   je     0x00007fd896b20080
   0.15%          0x00007fd896b202cc:   mov    0x28(%rdi),%rbx
                  0x00007fd896b202d0:   mov    (%rbx),%eax
                  0x00007fd896b202d2:   mov    $0x0,%ebp
          ╭       0x00007fd896b202d7:   jmp    0x00007fd896b202fd
          │       0x00007fd896b202dc:   nopl   0x0(%rax)
   1.25%  │↗      0x00007fd896b202e0:   mov    %ebp,%r13d
   1.13%  ││      0x00007fd896b202e3:   shl    $0x3,%r13d
   1.32%  ││      0x00007fd896b202e7:   lea    0x8(%r13),%r13d
   1.34%  ││      0x00007fd896b202eb:   movslq %r13d,%r13
   1.31%  ││      0x00007fd896b202ee:   mov    (%rbx,%r13,1),%r13
   1.22%  ││      0x00007fd896b202f2:   cmp    %r13,%r10
          ││      0x00007fd896b202f5:   je     0x00007fd896b20652
   1.22%  ││      0x00007fd896b202fb:   inc    %ebp
   1.50%  ↘│      0x00007fd896b202fd:   data16 xchg %ax,%ax
   1.29%   │      0x00007fd896b20300:   cmp    %ebp,%eax
           ╰      0x00007fd896b20302:   jg     0x00007fd896b202e0
                  0x00007fd896b20304:   jmp    0x00007fd896b205aa
   0.18%          0x00007fd896b20309:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                  0x00007fd896b2030f:   je     0x00007fd896b200ca
                  0x00007fd896b20315:   mov    0x28(%rdi),%rbx
                  0x00007fd896b20319:   mov    (%rbx),%eax
                  0x00007fd896b2031b:   mov    $0x0,%ebp
   0.15%    ╭     0x00007fd896b20320:   jmp    0x00007fd896b2035d
            │     0x00007fd896b20325:   data16 data16 nopw 0x0(%rax,%rax,1)
            │     0x00007fd896b20330:   data16 data16 xchg %ax,%ax
            │     0x00007fd896b20334:   nopl   0x0(%rax,%rax,1)
            │     0x00007fd896b2033c:   data16 data16 xchg %ax,%ax
   1.37%    │↗    0x00007fd896b20340:   mov    %ebp,%r13d
   1.16%    ││    0x00007fd896b20343:   shl    $0x3,%r13d
   1.32%    ││    0x00007fd896b20347:   lea    0x8(%r13),%r13d
   1.32%    ││    0x00007fd896b2034b:   movslq %r13d,%r13
   1.42%    ││    0x00007fd896b2034e:   mov    (%rbx,%r13,1),%r13
   1.14%    ││    0x00007fd896b20352:   cmp    %r13,%r10
            ││    0x00007fd896b20355:   je     0x00007fd896b2065b
   1.31%    ││    0x00007fd896b2035b:   inc    %ebp
   1.31%    ↘│    0x00007fd896b2035d:   data16 xchg %ax,%ax
   1.21%     │    0x00007fd896b20360:   cmp    %ebp,%eax
             ╰    0x00007fd896b20362:   jg     0x00007fd896b20340
                  0x00007fd896b20364:   jmp    0x00007fd896b205bc
                  0x00007fd896b20369:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                  0x00007fd896b2036f:   je     0x00007fd896b20114
                  0x00007fd896b20375:   mov    0x28(%rdi),%rbx
   0.16%          0x00007fd896b20379:   mov    (%rbx),%eax
                  0x00007fd896b2037b:   mov    $0x0,%ebp
   0.00%      ╭   0x00007fd896b20380:   jmp    0x00007fd896b203bd
              │   0x00007fd896b20385:   data16 data16 nopw 0x0(%rax,%rax,1)
              │   0x00007fd896b20390:   data16 data16 xchg %ax,%ax
              │   0x00007fd896b20394:   nopl   0x0(%rax,%rax,1)
              │   0x00007fd896b2039c:   data16 data16 xchg %ax,%ax
   1.15%      │↗  0x00007fd896b203a0:   mov    %ebp,%r13d
   1.31%      ││  0x00007fd896b203a3:   shl    $0x3,%r13d
   1.29%      ││  0x00007fd896b203a7:   lea    0x8(%r13),%r13d
   1.32%      ││  0x00007fd896b203ab:   movslq %r13d,%r13
   1.10%      ││  0x00007fd896b203ae:   mov    (%rbx,%r13,1),%r13
   1.32%      ││  0x00007fd896b203b2:   cmp    %r13,%r10
              ││  0x00007fd896b203b5:   je     0x00007fd896b20665
   1.33%      ││  0x00007fd896b203bb:   inc    %ebp
   1.30%      ↘│  0x00007fd896b203bd:   data16 xchg %ax,%ax
   1.31%       │  0x00007fd896b203c0:   cmp    %ebp,%eax
               ╰  0x00007fd896b203c2:   jg     0x00007fd896b203a0
   0.14%          0x00007fd896b203c4:   jmp    0x00007fd896b205d2
   0.01%          0x00007fd896b203c9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                  0x00007fd896b203cf:   je     0x00007fd896b20154
                  0x00007fd896b203d5:   mov    0x28(%rdi),%rbx
   0.15%          0x00007fd896b203d9:   mov    (%rbx),%eax
   0.00%          0x00007fd896b203db:   mov    $0x0,%ebp
                  0x00007fd896b203e0:   jmp    0x00007fd896b2041d
                  0x00007fd896b203e5:   data16 data16 nopw 0x0(%rax,%rax,1)
                  0x00007fd896b203f0:   data16 data16 xchg %ax,%ax
                  0x00007fd896b203f4:   nopl   0x0(%rax,%rax,1)
                  0x00007fd896b203fc:   data16 data16 xchg %ax,%ax
   1.06%          0x00007fd896b20400:   mov    %ebp,%r13d
   1.39%          0x00007fd896b20403:   shl    $0x3,%r13d
   1.18%          0x00007fd896b20407:   lea    0x8(%r13),%r13d
   1.31%          0x00007fd896b2040b:   movslq %r13d,%r13
   1.25%          0x00007fd896b2040e:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  35.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 

   0.11%      0x00007fd896b20544:   jmp    0x00007fd896b20625
              0x00007fd896b20549:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fd896b2054f:   je     0x00007fd896b20258
   0.14%      0x00007fd896b20555:   mov    0x28(%rdi),%rax
              0x00007fd896b20559:   mov    (%rax),%ebp
              0x00007fd896b2055b:   mov    $0x0,%r13d
          ╭   0x00007fd896b20561:   jmp    0x00007fd896b2059e
          │   0x00007fd896b20566:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fd896b20571:   data16 data16 xchg %ax,%ax
          │   0x00007fd896b20575:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.30%  │↗  0x00007fd896b20580:   mov    %r13d,%r14d
   1.07%  ││  0x00007fd896b20583:   shl    $0x3,%r14d
   1.30%  ││  0x00007fd896b20587:   lea    0x8(%r14),%r14d
   1.32%  ││  0x00007fd896b2058b:   movslq %r14d,%r14
   1.28%  ││  0x00007fd896b2058e:   mov    (%rax,%r14,1),%r14
   1.20%  ││  0x00007fd896b20592:   cmp    %r14,%r10
          ││  0x00007fd896b20595:   je     0x00007fd896b20692
   1.41%  ││  0x00007fd896b2059b:   inc    %r13d
   1.45%  ↘│  0x00007fd896b2059e:   xchg   %ax,%ax
   1.32%   │  0x00007fd896b205a0:   cmp    %r13d,%ebp
           ╰  0x00007fd896b205a3:   jg     0x00007fd896b20580
              0x00007fd896b205a5:   jmp    0x00007fd896b20637           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 109)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.17%      0x00007fd896b205aa:   cmpb   $0x0,0x94(%rsi)
              0x00007fd896b205b1:   je     0x00007fd896b20099
              0x00007fd896b205b7:   jmp    0x00007fd896b207f1
   0.15%      0x00007fd896b205bc:   nopl   0x0(%rax)
              0x00007fd896b205c0:   cmpb   $0x0,0x94(%rsi)
              0x00007fd896b205c7:   je     0x00007fd896b200ed
              0x00007fd896b205cd:   jmp    0x00007fd896b2082f
   0.00%      0x00007fd896b205d2:   cmpb   $0x0,0x94(%rsi)
              0x00007fd896b205d9:   je     0x00007fd896b2012d
              0x00007fd896b205df:   nop
              0x00007fd896b205e0:   jmp    0x00007fd896b2083a
              0x00007fd896b205e5:   cmpb   $0x0,0x94(%rsi)
              0x00007fd896b205ec:   je     0x00007fd896b2016d
              0x00007fd896b205f2:   jmp    0x00007fd896b20845
              0x00007fd896b205f7:   nopw   0x0(%rax,%rax,1)
              0x00007fd896b20600:   cmpb   $0x0,0x94(%rsi)
   0.00%      0x00007fd896b20607:   je     0x00007fd896b201ad
              0x00007fd896b2060d:   jmp    0x00007fd896b20850
....................................................................................................
  11.98%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 

              0x00007fd896b20429:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fd896b2042f:   je     0x00007fd896b20194
              0x00007fd896b20435:   mov    0x28(%rdi),%rbx
   0.16%      0x00007fd896b20439:   mov    (%rbx),%eax
              0x00007fd896b2043b:   mov    $0x0,%ebp
          ╭   0x00007fd896b20440:   jmp    0x00007fd896b2047d
          │   0x00007fd896b20445:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fd896b20450:   data16 data16 xchg %ax,%ax
          │   0x00007fd896b20454:   nopl   0x0(%rax,%rax,1)
          │   0x00007fd896b2045c:   data16 data16 xchg %ax,%ax
   1.14%  │↗  0x00007fd896b20460:   mov    %ebp,%r13d
   1.32%  ││  0x00007fd896b20463:   shl    $0x3,%r13d
   1.28%  ││  0x00007fd896b20467:   lea    0x8(%r13),%r13d
   1.36%  ││  0x00007fd896b2046b:   movslq %r13d,%r13
   1.11%  ││  0x00007fd896b2046e:   mov    (%rbx,%r13,1),%r13
   1.35%  ││  0x00007fd896b20472:   cmp    %r13,%r10
          ││  0x00007fd896b20475:   je     0x00007fd896b20677
   1.34%  ││  0x00007fd896b2047b:   inc    %ebp
   1.31%  ↘│  0x00007fd896b2047d:   data16 xchg %ax,%ax
   1.34%   │  0x00007fd896b20480:   cmp    %ebp,%eax
           ╰  0x00007fd896b20482:   jg     0x00007fd896b20460
   0.16%      0x00007fd896b20484:   jmp    0x00007fd896b205f7
              0x00007fd896b20489:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fd896b2048f:   je     0x00007fd896b201d4
              0x00007fd896b20495:   mov    0x28(%rdi),%rbx
   0.15%      0x00007fd896b20499:   mov    (%rbx),%eax
              0x00007fd896b2049b:   mov    $0x0,%ebp
              0x00007fd896b204a0:   jmp    0x00007fd896b204dd
              0x00007fd896b204a5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fd896b204b0:   data16 data16 xchg %ax,%ax
              0x00007fd896b204b4:   nopl   0x0(%rax,%rax,1)
              0x00007fd896b204bc:   data16 data16 xchg %ax,%ax
   1.13%      0x00007fd896b204c0:   mov    %ebp,%r13d
   1.33%      0x00007fd896b204c3:   shl    $0x3,%r13d
   1.32%      0x00007fd896b204c7:   lea    0x8(%r13),%r13d
   1.31%      0x00007fd896b204cb:   movslq %r13d,%r13
....................................................................................................
  11.87%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 

              0x00007fd896b20489:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fd896b2048f:   je     0x00007fd896b201d4
              0x00007fd896b20495:   mov    0x28(%rdi),%rbx
   0.15%      0x00007fd896b20499:   mov    (%rbx),%eax
              0x00007fd896b2049b:   mov    $0x0,%ebp
          ╭   0x00007fd896b204a0:   jmp    0x00007fd896b204dd
          │   0x00007fd896b204a5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fd896b204b0:   data16 data16 xchg %ax,%ax
          │   0x00007fd896b204b4:   nopl   0x0(%rax,%rax,1)
          │   0x00007fd896b204bc:   data16 data16 xchg %ax,%ax
   1.13%  │↗  0x00007fd896b204c0:   mov    %ebp,%r13d
   1.33%  ││  0x00007fd896b204c3:   shl    $0x3,%r13d
   1.32%  ││  0x00007fd896b204c7:   lea    0x8(%r13),%r13d
   1.31%  ││  0x00007fd896b204cb:   movslq %r13d,%r13
   1.18%  ││  0x00007fd896b204ce:   mov    (%rbx,%r13,1),%r13
   1.33%  ││  0x00007fd896b204d2:   cmp    %r13,%r10
          ││  0x00007fd896b204d5:   je     0x00007fd896b20680
   1.29%  ││  0x00007fd896b204db:   inc    %ebp
   1.30%  ↘│  0x00007fd896b204dd:   data16 xchg %ax,%ax
   1.35%   │  0x00007fd896b204e0:   cmp    %ebp,%eax
           ╰  0x00007fd896b204e2:   jg     0x00007fd896b204c0
   0.13%      0x00007fd896b204e4:   jmp    0x00007fd896b20612
              0x00007fd896b204e9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fd896b204ef:   je     0x00007fd896b20214
              0x00007fd896b204f5:   mov    0x28(%rdi),%rbx
   0.14%      0x00007fd896b204f9:   mov    (%rbx),%eax
              0x00007fd896b204fb:   mov    $0x0,%ebp
              0x00007fd896b20500:   jmp    0x00007fd896b2053d
              0x00007fd896b20505:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fd896b20510:   data16 data16 xchg %ax,%ax
              0x00007fd896b20514:   nopl   0x0(%rax,%rax,1)
              0x00007fd896b2051c:   data16 data16 xchg %ax,%ax
   1.13%      0x00007fd896b20520:   mov    %ebp,%r13d
   1.25%      0x00007fd896b20523:   shl    $0x3,%r13d
   1.35%      0x00007fd896b20527:   lea    0x8(%r13),%r13d
   1.30%      0x00007fd896b2052b:   movslq %r13d,%r13
....................................................................................................
  11.82%  <total for region 4>

....[Hottest Region 5]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 

              0x00007fd896b204e9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fd896b204ef:   je     0x00007fd896b20214
              0x00007fd896b204f5:   mov    0x28(%rdi),%rbx
   0.14%      0x00007fd896b204f9:   mov    (%rbx),%eax
              0x00007fd896b204fb:   mov    $0x0,%ebp
          ╭   0x00007fd896b20500:   jmp    0x00007fd896b2053d
          │   0x00007fd896b20505:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fd896b20510:   data16 data16 xchg %ax,%ax
          │   0x00007fd896b20514:   nopl   0x0(%rax,%rax,1)
          │   0x00007fd896b2051c:   data16 data16 xchg %ax,%ax
   1.13%  │↗  0x00007fd896b20520:   mov    %ebp,%r13d
   1.25%  ││  0x00007fd896b20523:   shl    $0x3,%r13d
   1.35%  ││  0x00007fd896b20527:   lea    0x8(%r13),%r13d
   1.30%  ││  0x00007fd896b2052b:   movslq %r13d,%r13
   1.17%  ││  0x00007fd896b2052e:   mov    (%rbx,%r13,1),%r13
   1.36%  ││  0x00007fd896b20532:   cmp    %r13,%r10
          ││  0x00007fd896b20535:   je     0x00007fd896b20689
   1.36%  ││  0x00007fd896b2053b:   inc    %ebp
   1.25%  ↘│  0x00007fd896b2053d:   data16 xchg %ax,%ax
   1.33%   │  0x00007fd896b20540:   cmp    %ebp,%eax
           ╰  0x00007fd896b20542:   jg     0x00007fd896b20520
   0.11%      0x00007fd896b20544:   jmp    0x00007fd896b20625
              0x00007fd896b20549:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fd896b2054f:   je     0x00007fd896b20258
   0.14%      0x00007fd896b20555:   mov    0x28(%rdi),%rax
              0x00007fd896b20559:   mov    (%rax),%ebp
              0x00007fd896b2055b:   mov    $0x0,%r13d
              0x00007fd896b20561:   jmp    0x00007fd896b2059e
              0x00007fd896b20566:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fd896b20571:   data16 data16 xchg %ax,%ax
              0x00007fd896b20575:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.30%      0x00007fd896b20580:   mov    %r13d,%r14d
   1.07%      0x00007fd896b20583:   shl    $0x3,%r14d
   1.30%      0x00007fd896b20587:   lea    0x8(%r14),%r14d
   1.32%      0x00007fd896b2058b:   movslq %r14d,%r14
....................................................................................................
  11.74%  <total for region 5>

....[Hottest Region 6]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 

   0.01%      0x00007fd896b203c9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fd896b203cf:   je     0x00007fd896b20154
              0x00007fd896b203d5:   mov    0x28(%rdi),%rbx
   0.15%      0x00007fd896b203d9:   mov    (%rbx),%eax
   0.00%      0x00007fd896b203db:   mov    $0x0,%ebp
          ╭   0x00007fd896b203e0:   jmp    0x00007fd896b2041d
          │   0x00007fd896b203e5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fd896b203f0:   data16 data16 xchg %ax,%ax
          │   0x00007fd896b203f4:   nopl   0x0(%rax,%rax,1)
          │   0x00007fd896b203fc:   data16 data16 xchg %ax,%ax
   1.06%  │↗  0x00007fd896b20400:   mov    %ebp,%r13d
   1.39%  ││  0x00007fd896b20403:   shl    $0x3,%r13d
   1.18%  ││  0x00007fd896b20407:   lea    0x8(%r13),%r13d
   1.31%  ││  0x00007fd896b2040b:   movslq %r13d,%r13
   1.25%  ││  0x00007fd896b2040e:   mov    (%rbx,%r13,1),%r13
   1.21%  ││  0x00007fd896b20412:   cmp    %r13,%r10
          ││  0x00007fd896b20415:   je     0x00007fd896b2066e
   1.34%  ││  0x00007fd896b2041b:   inc    %ebp
   1.28%  ↘│  0x00007fd896b2041d:   data16 xchg %ax,%ax
   1.31%   │  0x00007fd896b20420:   cmp    %ebp,%eax
           ╰  0x00007fd896b20422:   jg     0x00007fd896b20400
   0.15%      0x00007fd896b20424:   jmp    0x00007fd896b205e5
              0x00007fd896b20429:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fd896b2042f:   je     0x00007fd896b20194
              0x00007fd896b20435:   mov    0x28(%rdi),%rbx
   0.16%      0x00007fd896b20439:   mov    (%rbx),%eax
              0x00007fd896b2043b:   mov    $0x0,%ebp
              0x00007fd896b20440:   jmp    0x00007fd896b2047d
              0x00007fd896b20445:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fd896b20450:   data16 data16 xchg %ax,%ax
              0x00007fd896b20454:   nopl   0x0(%rax,%rax,1)
              0x00007fd896b2045c:   data16 data16 xchg %ax,%ax
   1.14%      0x00007fd896b20460:   mov    %ebp,%r13d
   1.32%      0x00007fd896b20463:   shl    $0x3,%r13d
   1.28%      0x00007fd896b20467:   lea    0x8(%r13),%r13d
   1.36%      0x00007fd896b2046b:   movslq %r13d,%r13
....................................................................................................
  11.65%  <total for region 6>

....[Hottest Regions]...............................................................................
  35.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
  11.98%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
  11.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
  11.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
  11.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
  11.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
   0.61%               kernel  [unknown] 
   0.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
   0.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
   0.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
   0.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
   0.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
   0.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
   0.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
   0.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
   0.11%               kernel  [unknown] 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   1.85%  <...other 414 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 764 
   2.44%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  defaultStream::write 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.15%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.23%       jvmci, level 4
   2.44%               kernel
   0.16%            libjvm.so
   0.07%         libc-2.31.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.00%       perf-48544.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 64)

# Run progress: 40.00% complete, ETA 00:05:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 66.503 ns/op
# Warmup Iteration   2: 61.714 ns/op
# Warmup Iteration   3: 68.889 ns/op
# Warmup Iteration   4: 60.175 ns/op
# Warmup Iteration   5: 60.179 ns/op
Iteration   1: 60.181 ns/op
Iteration   2: 60.177 ns/op
Iteration   3: 60.181 ns/op
Iteration   4: 60.172 ns/op
Iteration   5: 62.576 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  60.658 ±(99.9%) 4.129 ns/op [Average]
  (min, avg, max) = (60.172, 60.658, 62.576), stdev = 1.072
  CI (99.9%): [56.529, 64.786] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 198595 total address lines.
Perf output processed (skipped 58.982 seconds):
 Column 1: cycles (50843 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 

                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
                0x00007fef82b20658:   nopl   0x0(%rax,%rax,1)
                0x00007fef82b20660:   cmp    $0xc265e0,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
                0x00007fef82b20666:   jne    0x00007fef82b20d56           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
                0x00007fef82b2066c:   cmpb   $0x0,0x94(%rsi)
                0x00007fef82b20673:   jne    0x00007fef82b20c71           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   0.08%        0x00007fef82b20679:   lea    0x8(%r9),%r9d
                0x00007fef82b2067d:   data16 xchg %ax,%ax
                0x00007fef82b20680:   cmp    $0x1ff8,%r9d
                0x00007fef82b20687:   jge    0x00007fef82b20a9b
                0x00007fef82b2068d:   mov    %rbx,%r8
   0.08%        0x00007fef82b20690:   mov    0x10(%r11),%ecx              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [16]=Oop [24]=Oop }
                                                                          ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
                0x00007fef82b20694:   mov    0x8(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007fef82b20f46
   0.02%        0x00007fef82b2069b:   movabs $0x800000000,%rbx
                0x00007fef82b206a5:   lea    (%rbx,%rcx,1),%rdi
   0.07%        0x00007fef82b206a9:   cmp    0x20(%rdi),%r10
                0x00007fef82b206ad:   je     0x00007fef82b20480
   0.04%        0x00007fef82b206b3:   nopw   0x0(%rax,%rax,1)
                0x00007fef82b206bc:   data16 data16 xchg %ax,%ax
                0x00007fef82b206c0:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                0x00007fef82b206c6:   je     0x00007fef82b20480
   0.07%        0x00007fef82b206cc:   mov    0x28(%rdi),%rbx
   0.01%        0x00007fef82b206d0:   mov    (%rbx),%eax
   0.02%        0x00007fef82b206d2:   mov    $0x0,%ebp
          ╭     0x00007fef82b206d7:   jmp    0x00007fef82b206fd
          │     0x00007fef82b206dc:   nopl   0x0(%rax)
   1.31%  │↗    0x00007fef82b206e0:   mov    %ebp,%r13d
   1.31%  ││    0x00007fef82b206e3:   shl    $0x3,%r13d
   1.29%  ││    0x00007fef82b206e7:   lea    0x8(%r13),%r13d
   1.39%  ││    0x00007fef82b206eb:   movslq %r13d,%r13
   1.25%  ││    0x00007fef82b206ee:   mov    (%rbx,%r13,1),%r13
   1.24%  ││    0x00007fef82b206f2:   cmp    %r13,%r10
   0.00%  ││    0x00007fef82b206f5:   je     0x00007fef82b20a52
   1.28%  ││    0x00007fef82b206fb:   inc    %ebp
   1.38%  ↘│    0x00007fef82b206fd:   data16 xchg %ax,%ax
   1.29%   │    0x00007fef82b20700:   cmp    %ebp,%eax
           ╰    0x00007fef82b20702:   jg     0x00007fef82b206e0
   0.00%        0x00007fef82b20704:   jmp    0x00007fef82b209aa
   0.09%        0x00007fef82b20709:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                0x00007fef82b2070f:   je     0x00007fef82b204ca
                0x00007fef82b20715:   mov    0x28(%rdi),%rbx
                0x00007fef82b20719:   mov    (%rbx),%eax
   0.01%        0x00007fef82b2071b:   mov    $0x0,%ebp
   0.08%    ╭   0x00007fef82b20720:   jmp    0x00007fef82b2075d
            │   0x00007fef82b20725:   data16 data16 nopw 0x0(%rax,%rax,1)
            │   0x00007fef82b20730:   data16 data16 xchg %ax,%ax
            │   0x00007fef82b20734:   nopl   0x0(%rax,%rax,1)
            │   0x00007fef82b2073c:   data16 data16 xchg %ax,%ax
   1.38%    │↗  0x00007fef82b20740:   mov    %ebp,%r13d
   1.16%    ││  0x00007fef82b20743:   shl    $0x3,%r13d
   1.28%    ││  0x00007fef82b20747:   lea    0x8(%r13),%r13d
   1.43%    ││  0x00007fef82b2074b:   movslq %r13d,%r13
   1.31%    ││  0x00007fef82b2074e:   mov    (%rbx,%r13,1),%r13
   1.21%    ││  0x00007fef82b20752:   cmp    %r13,%r10
            ││  0x00007fef82b20755:   je     0x00007fef82b20a5b
   1.28%    ││  0x00007fef82b2075b:   inc    %ebp
   1.36%    ↘│  0x00007fef82b2075d:   data16 xchg %ax,%ax
   1.36%     │  0x00007fef82b20760:   cmp    %ebp,%eax
   0.00%     ╰  0x00007fef82b20762:   jg     0x00007fef82b20740
                0x00007fef82b20764:   jmp    0x00007fef82b209bc
   0.02%        0x00007fef82b20769:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                0x00007fef82b2076f:   je     0x00007fef82b20514
                0x00007fef82b20775:   mov    0x28(%rdi),%rbx
   0.08%        0x00007fef82b20779:   mov    (%rbx),%eax
   0.02%        0x00007fef82b2077b:   mov    $0x0,%ebp
                0x00007fef82b20780:   jmp    0x00007fef82b207bd
                0x00007fef82b20785:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007fef82b20790:   data16 data16 xchg %ax,%ax
                0x00007fef82b20794:   nopl   0x0(%rax,%rax,1)
                0x00007fef82b2079c:   data16 data16 xchg %ax,%ax
   1.26%        0x00007fef82b207a0:   mov    %ebp,%r13d
   1.28%        0x00007fef82b207a3:   shl    $0x3,%r13d
   1.36%        0x00007fef82b207a7:   lea    0x8(%r13),%r13d
   1.40%        0x00007fef82b207ab:   movslq %r13d,%r13
   1.31%        0x00007fef82b207ae:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  24.21%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 

   0.07%       0x00007fef82b20944:   jmp    0x00007fef82b20a25
   0.02%       0x00007fef82b20949:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
               0x00007fef82b2094f:   je     0x00007fef82b20658
   0.07%       0x00007fef82b20955:   mov    0x28(%rdi),%rax
               0x00007fef82b20959:   mov    (%rax),%ebp
   0.02%       0x00007fef82b2095b:   mov    $0x0,%r13d
          ╭    0x00007fef82b20961:   jmp    0x00007fef82b2099e
          │    0x00007fef82b20966:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007fef82b20971:   data16 data16 xchg %ax,%ax
          │    0x00007fef82b20975:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.30%  │↗   0x00007fef82b20980:   mov    %r13d,%r14d
   1.21%  ││   0x00007fef82b20983:   shl    $0x3,%r14d
   1.40%  ││   0x00007fef82b20987:   lea    0x8(%r14),%r14d
   1.32%  ││   0x00007fef82b2098b:   movslq %r14d,%r14
   1.38%  ││   0x00007fef82b2098e:   mov    (%rax,%r14,1),%r14
   1.21%  ││   0x00007fef82b20992:   cmp    %r14,%r10
          ││   0x00007fef82b20995:   je     0x00007fef82b20a92
   1.28%  ││   0x00007fef82b2099b:   inc    %r13d
   1.34%  ↘│   0x00007fef82b2099e:   xchg   %ax,%ax
   1.28%   │   0x00007fef82b209a0:   cmp    %r13d,%ebp
           ╰   0x00007fef82b209a3:   jg     0x00007fef82b20980
            ╭  0x00007fef82b209a5:   jmp    0x00007fef82b20a37           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 109)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.09%    │  0x00007fef82b209aa:   cmpb   $0x0,0x94(%rsi)
   0.02%    │  0x00007fef82b209b1:   je     0x00007fef82b20499
            │  0x00007fef82b209b7:   jmp    0x00007fef82b20bf1
   0.06%    │  0x00007fef82b209bc:   nopl   0x0(%rax)
   0.00%    │  0x00007fef82b209c0:   cmpb   $0x0,0x94(%rsi)
   0.02%    │  0x00007fef82b209c7:   je     0x00007fef82b204ed
            │  0x00007fef82b209cd:   jmp    0x00007fef82b20c2f
   0.02%    │  0x00007fef82b209d2:   cmpb   $0x0,0x94(%rsi)
   0.00%    │  0x00007fef82b209d9:   je     0x00007fef82b2052d
            │  0x00007fef82b209df:   nop
            │  0x00007fef82b209e0:   jmp    0x00007fef82b20c3a
   0.02%    │  0x00007fef82b209e5:   cmpb   $0x0,0x94(%rsi)
   0.03%    │  0x00007fef82b209ec:   je     0x00007fef82b2056d
            │  0x00007fef82b209f2:   jmp    0x00007fef82b20c45
   0.01%    │  0x00007fef82b209f7:   nopw   0x0(%rax,%rax,1)
            │  0x00007fef82b20a00:   cmpb   $0x0,0x94(%rsi)
   0.01%    │  0x00007fef82b20a07:   je     0x00007fef82b205ad
            │  0x00007fef82b20a0d:   jmp    0x00007fef82b20c50
   0.01%    │  0x00007fef82b20a12:   cmpb   $0x0,0x94(%rsi)
   0.02%    │  0x00007fef82b20a19:   je     0x00007fef82b205ed
            │  0x00007fef82b20a1f:   nop
            │  0x00007fef82b20a20:   jmp    0x00007fef82b20c5b
   0.00%    │  0x00007fef82b20a25:   cmpb   $0x0,0x94(%rsi)
   0.02%    │  0x00007fef82b20a2c:   je     0x00007fef82b2062d
            │  0x00007fef82b20a32:   jmp    0x00007fef82b20c66
   0.11%    ↘  0x00007fef82b20a37:   nopw   0x0(%rax,%rax,1)
               0x00007fef82b20a40:   cmpb   $0x0,0x94(%rsi)
   0.04%       0x00007fef82b20a47:   je     0x00007fef82b20679
               0x00007fef82b20a4d:   jmp    0x00007fef82b20c71           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
               0x00007fef82b20a52:   mov    %r10,0x20(%rdi)
               0x00007fef82b20a56:   jmp    0x00007fef82b20480
               0x00007fef82b20a5b:   mov    %r10,0x20(%rdi)
               0x00007fef82b20a5f:   nop
               0x00007fef82b20a60:   jmp    0x00007fef82b204ca
               0x00007fef82b20a65:   mov    %r10,0x20(%rdi)
               0x00007fef82b20a69:   jmp    0x00007fef82b20514
               0x00007fef82b20a6e:   mov    %r10,0x20(%rdi)
....................................................................................................
  12.20%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 

   0.02%      0x00007fef82b208e9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fef82b208ef:   je     0x00007fef82b20614
              0x00007fef82b208f5:   mov    0x28(%rdi),%rbx
   0.07%      0x00007fef82b208f9:   mov    (%rbx),%eax
   0.00%      0x00007fef82b208fb:   mov    $0x0,%ebp
          ╭   0x00007fef82b20900:   jmp    0x00007fef82b2093d
          │   0x00007fef82b20905:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fef82b20910:   data16 data16 xchg %ax,%ax
          │   0x00007fef82b20914:   nopl   0x0(%rax,%rax,1)
          │   0x00007fef82b2091c:   data16 data16 xchg %ax,%ax
   1.25%  │↗  0x00007fef82b20920:   mov    %ebp,%r13d
   1.39%  ││  0x00007fef82b20923:   shl    $0x3,%r13d
   1.34%  ││  0x00007fef82b20927:   lea    0x8(%r13),%r13d
   1.32%  ││  0x00007fef82b2092b:   movslq %r13d,%r13
   1.23%  ││  0x00007fef82b2092e:   mov    (%rbx,%r13,1),%r13
   1.32%  ││  0x00007fef82b20932:   cmp    %r13,%r10
          ││  0x00007fef82b20935:   je     0x00007fef82b20a89
   1.38%  ││  0x00007fef82b2093b:   inc    %ebp
   1.38%  ↘│  0x00007fef82b2093d:   data16 xchg %ax,%ax
   1.35%   │  0x00007fef82b20940:   cmp    %ebp,%eax
   0.00%   ╰  0x00007fef82b20942:   jg     0x00007fef82b20920
   0.07%      0x00007fef82b20944:   jmp    0x00007fef82b20a25
   0.02%      0x00007fef82b20949:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fef82b2094f:   je     0x00007fef82b20658
   0.07%      0x00007fef82b20955:   mov    0x28(%rdi),%rax
              0x00007fef82b20959:   mov    (%rax),%ebp
   0.02%      0x00007fef82b2095b:   mov    $0x0,%r13d
              0x00007fef82b20961:   jmp    0x00007fef82b2099e
              0x00007fef82b20966:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fef82b20971:   data16 data16 xchg %ax,%ax
              0x00007fef82b20975:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.30%      0x00007fef82b20980:   mov    %r13d,%r14d
   1.21%      0x00007fef82b20983:   shl    $0x3,%r14d
   1.40%      0x00007fef82b20987:   lea    0x8(%r14),%r14d
   1.32%      0x00007fef82b2098b:   movslq %r14d,%r14
   1.38%      0x00007fef82b2098e:   mov    (%rax,%r14,1),%r14
   1.21%      0x00007fef82b20992:   cmp    %r14,%r10
....................................................................................................
  12.14%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 

   0.02%      0x00007fef82b207c9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fef82b207cf:   je     0x00007fef82b20554
              0x00007fef82b207d5:   mov    0x28(%rdi),%rbx
   0.08%      0x00007fef82b207d9:   mov    (%rbx),%eax
   0.01%      0x00007fef82b207db:   mov    $0x0,%ebp
          ╭   0x00007fef82b207e0:   jmp    0x00007fef82b2081d
          │   0x00007fef82b207e5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fef82b207f0:   data16 data16 xchg %ax,%ax
          │   0x00007fef82b207f4:   nopl   0x0(%rax,%rax,1)
          │   0x00007fef82b207fc:   data16 data16 xchg %ax,%ax
   1.31%  │↗  0x00007fef82b20800:   mov    %ebp,%r13d
   1.31%  ││  0x00007fef82b20803:   shl    $0x3,%r13d
   1.31%  ││  0x00007fef82b20807:   lea    0x8(%r13),%r13d
   1.38%  ││  0x00007fef82b2080b:   movslq %r13d,%r13
   1.31%  ││  0x00007fef82b2080e:   mov    (%rbx,%r13,1),%r13
   1.38%  ││  0x00007fef82b20812:   cmp    %r13,%r10
          ││  0x00007fef82b20815:   je     0x00007fef82b20a6e
   1.30%  ││  0x00007fef82b2081b:   inc    %ebp
   1.30%  ↘│  0x00007fef82b2081d:   data16 xchg %ax,%ax
   1.27%   │  0x00007fef82b20820:   cmp    %ebp,%eax
           ╰  0x00007fef82b20822:   jg     0x00007fef82b20800
   0.07%      0x00007fef82b20824:   jmp    0x00007fef82b209e5
   0.04%      0x00007fef82b20829:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fef82b2082f:   je     0x00007fef82b20594
              0x00007fef82b20835:   mov    0x28(%rdi),%rbx
   0.07%      0x00007fef82b20839:   mov    (%rbx),%eax
   0.02%      0x00007fef82b2083b:   mov    $0x0,%ebp
              0x00007fef82b20840:   jmp    0x00007fef82b2087d
              0x00007fef82b20845:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fef82b20850:   data16 data16 xchg %ax,%ax
              0x00007fef82b20854:   nopl   0x0(%rax,%rax,1)
              0x00007fef82b2085c:   data16 data16 xchg %ax,%ax
   1.31%      0x00007fef82b20860:   mov    %ebp,%r13d
   1.29%      0x00007fef82b20863:   shl    $0x3,%r13d
   1.35%      0x00007fef82b20867:   lea    0x8(%r13),%r13d
   1.30%      0x00007fef82b2086b:   movslq %r13d,%r13
   1.26%      0x00007fef82b2086e:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  12.06%  <total for region 4>

....[Hottest Region 5]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 

   0.02%      0x00007fef82b20769:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fef82b2076f:   je     0x00007fef82b20514
              0x00007fef82b20775:   mov    0x28(%rdi),%rbx
   0.08%      0x00007fef82b20779:   mov    (%rbx),%eax
   0.02%      0x00007fef82b2077b:   mov    $0x0,%ebp
          ╭   0x00007fef82b20780:   jmp    0x00007fef82b207bd
          │   0x00007fef82b20785:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fef82b20790:   data16 data16 xchg %ax,%ax
          │   0x00007fef82b20794:   nopl   0x0(%rax,%rax,1)
          │   0x00007fef82b2079c:   data16 data16 xchg %ax,%ax
   1.26%  │↗  0x00007fef82b207a0:   mov    %ebp,%r13d
   1.28%  ││  0x00007fef82b207a3:   shl    $0x3,%r13d
   1.36%  ││  0x00007fef82b207a7:   lea    0x8(%r13),%r13d
   1.40%  ││  0x00007fef82b207ab:   movslq %r13d,%r13
   1.31%  ││  0x00007fef82b207ae:   mov    (%rbx,%r13,1),%r13
   1.30%  ││  0x00007fef82b207b2:   cmp    %r13,%r10
          ││  0x00007fef82b207b5:   je     0x00007fef82b20a65
   1.37%  ││  0x00007fef82b207bb:   inc    %ebp
   1.21%  ↘│  0x00007fef82b207bd:   data16 xchg %ax,%ax
   1.37%   │  0x00007fef82b207c0:   cmp    %ebp,%eax
           ╰  0x00007fef82b207c2:   jg     0x00007fef82b207a0
   0.07%      0x00007fef82b207c4:   jmp    0x00007fef82b209d2
   0.02%      0x00007fef82b207c9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fef82b207cf:   je     0x00007fef82b20554
              0x00007fef82b207d5:   mov    0x28(%rdi),%rbx
   0.08%      0x00007fef82b207d9:   mov    (%rbx),%eax
   0.01%      0x00007fef82b207db:   mov    $0x0,%ebp
              0x00007fef82b207e0:   jmp    0x00007fef82b2081d
              0x00007fef82b207e5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fef82b207f0:   data16 data16 xchg %ax,%ax
              0x00007fef82b207f4:   nopl   0x0(%rax,%rax,1)
              0x00007fef82b207fc:   data16 data16 xchg %ax,%ax
   1.31%      0x00007fef82b20800:   mov    %ebp,%r13d
   1.31%      0x00007fef82b20803:   shl    $0x3,%r13d
   1.31%      0x00007fef82b20807:   lea    0x8(%r13),%r13d
   1.38%      0x00007fef82b2080b:   movslq %r13d,%r13
   1.31%      0x00007fef82b2080e:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  12.05%  <total for region 5>

....[Hottest Region 6]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 

   0.04%      0x00007fef82b20829:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fef82b2082f:   je     0x00007fef82b20594
              0x00007fef82b20835:   mov    0x28(%rdi),%rbx
   0.07%      0x00007fef82b20839:   mov    (%rbx),%eax
   0.02%      0x00007fef82b2083b:   mov    $0x0,%ebp
          ╭   0x00007fef82b20840:   jmp    0x00007fef82b2087d
          │   0x00007fef82b20845:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fef82b20850:   data16 data16 xchg %ax,%ax
          │   0x00007fef82b20854:   nopl   0x0(%rax,%rax,1)
          │   0x00007fef82b2085c:   data16 data16 xchg %ax,%ax
   1.31%  │↗  0x00007fef82b20860:   mov    %ebp,%r13d
   1.29%  ││  0x00007fef82b20863:   shl    $0x3,%r13d
   1.35%  ││  0x00007fef82b20867:   lea    0x8(%r13),%r13d
   1.30%  ││  0x00007fef82b2086b:   movslq %r13d,%r13
   1.26%  ││  0x00007fef82b2086e:   mov    (%rbx,%r13,1),%r13
   1.34%  ││  0x00007fef82b20872:   cmp    %r13,%r10
          ││  0x00007fef82b20875:   je     0x00007fef82b20a77
   1.32%  ││  0x00007fef82b2087b:   inc    %ebp
   1.42%  ↘│  0x00007fef82b2087d:   data16 xchg %ax,%ax
   1.27%   │  0x00007fef82b20880:   cmp    %ebp,%eax
           ╰  0x00007fef82b20882:   jg     0x00007fef82b20860
   0.06%      0x00007fef82b20884:   jmp    0x00007fef82b209f7
   0.02%      0x00007fef82b20889:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fef82b2088f:   je     0x00007fef82b205d4
              0x00007fef82b20895:   mov    0x28(%rdi),%rbx
   0.08%      0x00007fef82b20899:   mov    (%rbx),%eax
   0.01%      0x00007fef82b2089b:   mov    $0x0,%ebp
              0x00007fef82b208a0:   jmp    0x00007fef82b208dd
              0x00007fef82b208a5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fef82b208b0:   data16 data16 xchg %ax,%ax
              0x00007fef82b208b4:   nopl   0x0(%rax,%rax,1)
              0x00007fef82b208bc:   data16 data16 xchg %ax,%ax
   1.23%      0x00007fef82b208c0:   mov    %ebp,%r13d
   1.25%      0x00007fef82b208c3:   shl    $0x3,%r13d
   1.25%      0x00007fef82b208c7:   lea    0x8(%r13),%r13d
   1.35%      0x00007fef82b208cb:   movslq %r13d,%r13
   1.33%      0x00007fef82b208ce:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  12.04%  <total for region 6>

....[Hottest Region 7]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 

   0.02%      0x00007fef82b20889:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fef82b2088f:   je     0x00007fef82b205d4
              0x00007fef82b20895:   mov    0x28(%rdi),%rbx
   0.08%      0x00007fef82b20899:   mov    (%rbx),%eax
   0.01%      0x00007fef82b2089b:   mov    $0x0,%ebp
          ╭   0x00007fef82b208a0:   jmp    0x00007fef82b208dd
          │   0x00007fef82b208a5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fef82b208b0:   data16 data16 xchg %ax,%ax
          │   0x00007fef82b208b4:   nopl   0x0(%rax,%rax,1)
          │   0x00007fef82b208bc:   data16 data16 xchg %ax,%ax
   1.23%  │↗  0x00007fef82b208c0:   mov    %ebp,%r13d
   1.25%  ││  0x00007fef82b208c3:   shl    $0x3,%r13d
   1.25%  ││  0x00007fef82b208c7:   lea    0x8(%r13),%r13d
   1.35%  ││  0x00007fef82b208cb:   movslq %r13d,%r13
   1.33%  ││  0x00007fef82b208ce:   mov    (%rbx,%r13,1),%r13
   1.25%  ││  0x00007fef82b208d2:   cmp    %r13,%r10
          ││  0x00007fef82b208d5:   je     0x00007fef82b20a80
   1.25%  ││  0x00007fef82b208db:   inc    %ebp
   1.40%  ↘│  0x00007fef82b208dd:   data16 xchg %ax,%ax
   1.36%   │  0x00007fef82b208e0:   cmp    %ebp,%eax
           ╰  0x00007fef82b208e2:   jg     0x00007fef82b208c0
   0.08%      0x00007fef82b208e4:   jmp    0x00007fef82b20a12
   0.02%      0x00007fef82b208e9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007fef82b208ef:   je     0x00007fef82b20614
              0x00007fef82b208f5:   mov    0x28(%rdi),%rbx
   0.07%      0x00007fef82b208f9:   mov    (%rbx),%eax
   0.00%      0x00007fef82b208fb:   mov    $0x0,%ebp
              0x00007fef82b20900:   jmp    0x00007fef82b2093d
              0x00007fef82b20905:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fef82b20910:   data16 data16 xchg %ax,%ax
              0x00007fef82b20914:   nopl   0x0(%rax,%rax,1)
              0x00007fef82b2091c:   data16 data16 xchg %ax,%ax
   1.25%      0x00007fef82b20920:   mov    %ebp,%r13d
   1.39%      0x00007fef82b20923:   shl    $0x3,%r13d
   1.34%      0x00007fef82b20927:   lea    0x8(%r13),%r13d
   1.32%      0x00007fef82b2092b:   movslq %r13d,%r13
   1.23%      0x00007fef82b2092e:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  11.85%  <total for region 7>

....[Hottest Regions]...............................................................................
  24.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
  12.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
  12.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
  12.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
  12.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
  12.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
  11.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
   0.65%               kernel  [unknown] 
   0.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
   0.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
   0.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
   0.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
   0.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
   0.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
   0.09%               kernel  [unknown] 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   1.25%  <...other 355 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 778 
   1.73%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  WatcherThread::run 
   0.01%            libjvm.so  xmlStream::write_text 
   0.24%  <...other 95 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.82%       jvmci, level 4
   1.73%               kernel
   0.19%            libjvm.so
   0.11%         libc-2.31.so
   0.04%   libpthread-2.31.so
   0.04%                     
   0.03%  libjvmcicompiler.so
   0.03%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 128)

# Run progress: 60.00% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 125.259 ns/op
# Warmup Iteration   2: 133.326 ns/op
# Warmup Iteration   3: 124.819 ns/op
# Warmup Iteration   4: 127.196 ns/op
# Warmup Iteration   5: 127.208 ns/op
Iteration   1: 127.776 ns/op
Iteration   2: 127.220 ns/op
Iteration   3: 127.201 ns/op
Iteration   4: 127.259 ns/op
Iteration   5: 127.737 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  127.439 ±(99.9%) 1.122 ns/op [Average]
  (min, avg, max) = (127.201, 127.439, 127.776), stdev = 0.291
  CI (99.9%): [126.317, 128.560] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 212884 total address lines.
Perf output processed (skipped 59.748 seconds):
 Column 1: cycles (50723 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 

   0.03%       0x00007f77beb261c4:   jmp    0x00007f77beb262a5
   0.21%       0x00007f77beb261c9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
               0x00007f77beb261cf:   je     0x00007f77beb25ed8
               0x00007f77beb261d5:   mov    0x28(%rdi),%rax
               0x00007f77beb261d9:   mov    (%rax),%ebp
   0.10%       0x00007f77beb261db:   mov    $0x0,%r13d
          ╭    0x00007f77beb261e1:   jmp    0x00007f77beb2621e
          │    0x00007f77beb261e6:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007f77beb261f1:   data16 data16 xchg %ax,%ax
          │    0x00007f77beb261f5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.95%  │↗   0x00007f77beb26200:   mov    %r13d,%r14d
   2.27%  ││   0x00007f77beb26203:   shl    $0x3,%r14d
   0.79%  ││   0x00007f77beb26207:   lea    0x8(%r14),%r14d
   0.93%  ││   0x00007f77beb2620b:   movslq %r14d,%r14
   0.91%  ││   0x00007f77beb2620e:   mov    (%rax,%r14,1),%r14
   2.48%  ││   0x00007f77beb26212:   cmp    %r14,%r10
          ││   0x00007f77beb26215:   je     0x00007f77beb26312
   2.15%  ││   0x00007f77beb2621b:   inc    %r13d
   0.81%  ↘│   0x00007f77beb2621e:   xchg   %ax,%ax
   0.84%   │   0x00007f77beb26220:   cmp    %r13d,%ebp
           ╰   0x00007f77beb26223:   jg     0x00007f77beb26200
   0.18%    ╭  0x00007f77beb26225:   jmp    0x00007f77beb262b7           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 109)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.16%    │  0x00007f77beb2622a:   cmpb   $0x0,0x94(%rsi)
   0.37%    │  0x00007f77beb26231:   je     0x00007f77beb25d19
            │  0x00007f77beb26237:   jmp    0x00007f77beb26471
   0.21%    │  0x00007f77beb2623c:   nopl   0x0(%rax)
   0.01%    │  0x00007f77beb26240:   cmpb   $0x0,0x94(%rsi)
   0.35%    │  0x00007f77beb26247:   je     0x00007f77beb25d6d
            │  0x00007f77beb2624d:   jmp    0x00007f77beb264af
   0.21%    │  0x00007f77beb26252:   cmpb   $0x0,0x94(%rsi)
   0.24%    │  0x00007f77beb26259:   je     0x00007f77beb25dad
            │  0x00007f77beb2625f:   nop
            │  0x00007f77beb26260:   jmp    0x00007f77beb264ba
   0.20%    │  0x00007f77beb26265:   cmpb   $0x0,0x94(%rsi)
   0.26%    │  0x00007f77beb2626c:   je     0x00007f77beb25ded
            │  0x00007f77beb26272:   jmp    0x00007f77beb264c5
   0.25%    │  0x00007f77beb26277:   nopw   0x0(%rax,%rax,1)
            │  0x00007f77beb26280:   cmpb   $0x0,0x94(%rsi)
   0.26%    │  0x00007f77beb26287:   je     0x00007f77beb25e2d
            │  0x00007f77beb2628d:   jmp    0x00007f77beb264d0
   0.21%    │  0x00007f77beb26292:   cmpb   $0x0,0x94(%rsi)
   0.21%    │  0x00007f77beb26299:   je     0x00007f77beb25e6d
            │  0x00007f77beb2629f:   nop
            │  0x00007f77beb262a0:   jmp    0x00007f77beb264db
   0.24%    │  0x00007f77beb262a5:   cmpb   $0x0,0x94(%rsi)
   0.21%    │  0x00007f77beb262ac:   je     0x00007f77beb25ead
            │  0x00007f77beb262b2:   jmp    0x00007f77beb264e6
   0.21%    ↘  0x00007f77beb262b7:   nopw   0x0(%rax,%rax,1)
               0x00007f77beb262c0:   cmpb   $0x0,0x94(%rsi)
   0.23%       0x00007f77beb262c7:   je     0x00007f77beb25ef9
               0x00007f77beb262cd:   jmp    0x00007f77beb264f1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
               0x00007f77beb262d2:   mov    %r10,0x20(%rdi)
               0x00007f77beb262d6:   jmp    0x00007f77beb25d00
               0x00007f77beb262db:   mov    %r10,0x20(%rdi)
               0x00007f77beb262df:   nop
               0x00007f77beb262e0:   jmp    0x00007f77beb25d4a
               0x00007f77beb262e5:   mov    %r10,0x20(%rdi)
               0x00007f77beb262e9:   jmp    0x00007f77beb25d94
               0x00007f77beb262ee:   mov    %r10,0x20(%rdi)
....................................................................................................
  16.14%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
              0x00007f77beb25ed8:   nopl   0x0(%rax,%rax,1)
              0x00007f77beb25ee0:   cmp    $0xc265e0,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
              0x00007f77beb25ee6:   jne    0x00007f77beb265d6           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
              0x00007f77beb25eec:   cmpb   $0x0,0x94(%rsi)
              0x00007f77beb25ef3:   jne    0x00007f77beb264f1           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   0.04%      0x00007f77beb25ef9:   lea    0x8(%r9),%r9d
              0x00007f77beb25efd:   data16 xchg %ax,%ax
              0x00007f77beb25f00:   cmp    $0x1ff8,%r9d
              0x00007f77beb25f07:   jge    0x00007f77beb2631b
              0x00007f77beb25f0d:   mov    %rbx,%r8
   0.05%      0x00007f77beb25f10:   mov    0x10(%r11),%ecx              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [16]=Oop [24]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
              0x00007f77beb25f14:   mov    0x8(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f77beb267c6
   0.15%      0x00007f77beb25f1b:   movabs $0x800000000,%rbx
              0x00007f77beb25f25:   lea    (%rbx,%rcx,1),%rdi
   0.02%      0x00007f77beb25f29:   cmp    0x20(%rdi),%r10
              0x00007f77beb25f2d:   je     0x00007f77beb25d00
   0.21%      0x00007f77beb25f33:   nopw   0x0(%rax,%rax,1)
              0x00007f77beb25f3c:   data16 data16 xchg %ax,%ax
              0x00007f77beb25f40:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb25f46:   je     0x00007f77beb25d00
              0x00007f77beb25f4c:   mov    0x28(%rdi),%rbx
   0.05%      0x00007f77beb25f50:   mov    (%rbx),%eax
   0.09%      0x00007f77beb25f52:   mov    $0x0,%ebp
          ╭   0x00007f77beb25f57:   jmp    0x00007f77beb25f7d
          │   0x00007f77beb25f5c:   nopl   0x0(%rax)
   1.22%  │↗  0x00007f77beb25f60:   mov    %ebp,%r13d
   1.16%  ││  0x00007f77beb25f63:   shl    $0x3,%r13d
   1.27%  ││  0x00007f77beb25f67:   lea    0x8(%r13),%r13d
   1.24%  ││  0x00007f77beb25f6b:   movslq %r13d,%r13
   1.17%  ││  0x00007f77beb25f6e:   mov    (%rbx,%r13,1),%r13
   1.24%  ││  0x00007f77beb25f72:   cmp    %r13,%r10
          ││  0x00007f77beb25f75:   je     0x00007f77beb262d2
   1.18%  ││  0x00007f77beb25f7b:   inc    %ebp
   1.25%  ↘│  0x00007f77beb25f7d:   data16 xchg %ax,%ax
   1.27%   │  0x00007f77beb25f80:   cmp    %ebp,%eax
           ╰  0x00007f77beb25f82:   jg     0x00007f77beb25f60
   0.01%      0x00007f77beb25f84:   jmp    0x00007f77beb2622a
   0.23%      0x00007f77beb25f89:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb25f8f:   je     0x00007f77beb25d4a
              0x00007f77beb25f95:   mov    0x28(%rdi),%rbx
              0x00007f77beb25f99:   mov    (%rbx),%eax
   0.07%      0x00007f77beb25f9b:   mov    $0x0,%ebp
              0x00007f77beb25fa0:   jmp    0x00007f77beb25fdd
              0x00007f77beb25fa5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f77beb25fb0:   data16 data16 xchg %ax,%ax
              0x00007f77beb25fb4:   nopl   0x0(%rax,%rax,1)
              0x00007f77beb25fbc:   data16 data16 xchg %ax,%ax
   1.25%      0x00007f77beb25fc0:   mov    %ebp,%r13d
   1.20%      0x00007f77beb25fc3:   shl    $0x3,%r13d
   1.19%      0x00007f77beb25fc7:   lea    0x8(%r13),%r13d
   1.21%      0x00007f77beb25fcb:   movslq %r13d,%r13
   1.25%      0x00007f77beb25fce:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  11.90%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 

   0.18%      0x00007f77beb25fe9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb25fef:   je     0x00007f77beb25d94
              0x00007f77beb25ff5:   mov    0x28(%rdi),%rbx
              0x00007f77beb25ff9:   mov    (%rbx),%eax
   0.13%      0x00007f77beb25ffb:   mov    $0x0,%ebp
          ╭   0x00007f77beb26000:   jmp    0x00007f77beb2603d
          │   0x00007f77beb26005:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f77beb26010:   data16 data16 xchg %ax,%ax
          │   0x00007f77beb26014:   nopl   0x0(%rax,%rax,1)
          │   0x00007f77beb2601c:   data16 data16 xchg %ax,%ax
   1.28%  │↗  0x00007f77beb26020:   mov    %ebp,%r13d
   1.28%  ││  0x00007f77beb26023:   shl    $0x3,%r13d
   1.21%  ││  0x00007f77beb26027:   lea    0x8(%r13),%r13d
   1.23%  ││  0x00007f77beb2602b:   movslq %r13d,%r13
   1.26%  ││  0x00007f77beb2602e:   mov    (%rbx,%r13,1),%r13
   1.15%  ││  0x00007f77beb26032:   cmp    %r13,%r10
          ││  0x00007f77beb26035:   je     0x00007f77beb262e5
   1.30%  ││  0x00007f77beb2603b:   inc    %ebp
   1.28%  ↘│  0x00007f77beb2603d:   data16 xchg %ax,%ax
   1.23%   │  0x00007f77beb26040:   cmp    %ebp,%eax
           ╰  0x00007f77beb26042:   jg     0x00007f77beb26020
              0x00007f77beb26044:   jmp    0x00007f77beb26252
   0.23%      0x00007f77beb26049:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb2604f:   je     0x00007f77beb25dd4
              0x00007f77beb26055:   mov    0x28(%rdi),%rbx
              0x00007f77beb26059:   mov    (%rbx),%eax
   0.13%      0x00007f77beb2605b:   mov    $0x0,%ebp
              0x00007f77beb26060:   jmp    0x00007f77beb2609d
              0x00007f77beb26065:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f77beb26070:   data16 data16 xchg %ax,%ax
              0x00007f77beb26074:   nopl   0x0(%rax,%rax,1)
              0x00007f77beb2607c:   data16 data16 xchg %ax,%ax
   1.26%      0x00007f77beb26080:   mov    %ebp,%r13d
   1.26%      0x00007f77beb26083:   shl    $0x3,%r13d
   1.14%      0x00007f77beb26087:   lea    0x8(%r13),%r13d
   1.20%      0x00007f77beb2608b:   movslq %r13d,%r13
   1.22%      0x00007f77beb2608e:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  11.59%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 

   0.23%      0x00007f77beb25f89:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb25f8f:   je     0x00007f77beb25d4a
              0x00007f77beb25f95:   mov    0x28(%rdi),%rbx
              0x00007f77beb25f99:   mov    (%rbx),%eax
   0.07%      0x00007f77beb25f9b:   mov    $0x0,%ebp
          ╭   0x00007f77beb25fa0:   jmp    0x00007f77beb25fdd
          │   0x00007f77beb25fa5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f77beb25fb0:   data16 data16 xchg %ax,%ax
          │   0x00007f77beb25fb4:   nopl   0x0(%rax,%rax,1)
          │   0x00007f77beb25fbc:   data16 data16 xchg %ax,%ax
   1.25%  │↗  0x00007f77beb25fc0:   mov    %ebp,%r13d
   1.20%  ││  0x00007f77beb25fc3:   shl    $0x3,%r13d
   1.19%  ││  0x00007f77beb25fc7:   lea    0x8(%r13),%r13d
   1.21%  ││  0x00007f77beb25fcb:   movslq %r13d,%r13
   1.25%  ││  0x00007f77beb25fce:   mov    (%rbx,%r13,1),%r13
   1.18%  ││  0x00007f77beb25fd2:   cmp    %r13,%r10
          ││  0x00007f77beb25fd5:   je     0x00007f77beb262db
   1.25%  ││  0x00007f77beb25fdb:   inc    %ebp
   1.29%  ↘│  0x00007f77beb25fdd:   data16 xchg %ax,%ax
   1.27%   │  0x00007f77beb25fe0:   cmp    %ebp,%eax
           ╰  0x00007f77beb25fe2:   jg     0x00007f77beb25fc0
   0.03%      0x00007f77beb25fe4:   jmp    0x00007f77beb2623c
   0.18%      0x00007f77beb25fe9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb25fef:   je     0x00007f77beb25d94
              0x00007f77beb25ff5:   mov    0x28(%rdi),%rbx
              0x00007f77beb25ff9:   mov    (%rbx),%eax
   0.13%      0x00007f77beb25ffb:   mov    $0x0,%ebp
              0x00007f77beb26000:   jmp    0x00007f77beb2603d
              0x00007f77beb26005:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f77beb26010:   data16 data16 xchg %ax,%ax
              0x00007f77beb26014:   nopl   0x0(%rax,%rax,1)
              0x00007f77beb2601c:   data16 data16 xchg %ax,%ax
   1.28%      0x00007f77beb26020:   mov    %ebp,%r13d
   1.28%      0x00007f77beb26023:   shl    $0x3,%r13d
   1.21%      0x00007f77beb26027:   lea    0x8(%r13),%r13d
   1.23%      0x00007f77beb2602b:   movslq %r13d,%r13
   1.26%      0x00007f77beb2602e:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  11.43%  <total for region 4>

....[Hottest Region 5]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 

   0.23%      0x00007f77beb26169:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb2616f:   je     0x00007f77beb25e94
              0x00007f77beb26175:   mov    0x28(%rdi),%rbx
              0x00007f77beb26179:   mov    (%rbx),%eax
   0.08%      0x00007f77beb2617b:   mov    $0x0,%ebp
          ╭   0x00007f77beb26180:   jmp    0x00007f77beb261bd
          │   0x00007f77beb26185:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f77beb26190:   data16 data16 xchg %ax,%ax
          │   0x00007f77beb26194:   nopl   0x0(%rax,%rax,1)
          │   0x00007f77beb2619c:   data16 data16 xchg %ax,%ax
   1.25%  │↗  0x00007f77beb261a0:   mov    %ebp,%r13d
   1.16%  ││  0x00007f77beb261a3:   shl    $0x3,%r13d
   1.21%  ││  0x00007f77beb261a7:   lea    0x8(%r13),%r13d
   1.25%  ││  0x00007f77beb261ab:   movslq %r13d,%r13
   1.21%  ││  0x00007f77beb261ae:   mov    (%rbx,%r13,1),%r13
   1.24%  ││  0x00007f77beb261b2:   cmp    %r13,%r10
          ││  0x00007f77beb261b5:   je     0x00007f77beb26309
   1.22%  ││  0x00007f77beb261bb:   inc    %ebp
   1.14%  ↘│  0x00007f77beb261bd:   data16 xchg %ax,%ax
   1.28%   │  0x00007f77beb261c0:   cmp    %ebp,%eax
           ╰  0x00007f77beb261c2:   jg     0x00007f77beb261a0
   0.03%      0x00007f77beb261c4:   jmp    0x00007f77beb262a5
   0.21%      0x00007f77beb261c9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb261cf:   je     0x00007f77beb25ed8
              0x00007f77beb261d5:   mov    0x28(%rdi),%rax
              0x00007f77beb261d9:   mov    (%rax),%ebp
   0.10%      0x00007f77beb261db:   mov    $0x0,%r13d
              0x00007f77beb261e1:   jmp    0x00007f77beb2621e
              0x00007f77beb261e6:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f77beb261f1:   data16 data16 xchg %ax,%ax
              0x00007f77beb261f5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.95%      0x00007f77beb26200:   mov    %r13d,%r14d
   2.27%      0x00007f77beb26203:   shl    $0x3,%r14d
   0.79%      0x00007f77beb26207:   lea    0x8(%r14),%r14d
   0.93%      0x00007f77beb2620b:   movslq %r14d,%r14
   0.91%      0x00007f77beb2620e:   mov    (%rax,%r14,1),%r14
   2.48%      0x00007f77beb26212:   cmp    %r14,%r10
....................................................................................................
  11.30%  <total for region 5>

....[Hottest Region 6]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 

   0.23%      0x00007f77beb26049:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb2604f:   je     0x00007f77beb25dd4
              0x00007f77beb26055:   mov    0x28(%rdi),%rbx
              0x00007f77beb26059:   mov    (%rbx),%eax
   0.13%      0x00007f77beb2605b:   mov    $0x0,%ebp
          ╭   0x00007f77beb26060:   jmp    0x00007f77beb2609d
          │   0x00007f77beb26065:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f77beb26070:   data16 data16 xchg %ax,%ax
          │   0x00007f77beb26074:   nopl   0x0(%rax,%rax,1)
          │   0x00007f77beb2607c:   data16 data16 xchg %ax,%ax
   1.26%  │↗  0x00007f77beb26080:   mov    %ebp,%r13d
   1.26%  ││  0x00007f77beb26083:   shl    $0x3,%r13d
   1.14%  ││  0x00007f77beb26087:   lea    0x8(%r13),%r13d
   1.20%  ││  0x00007f77beb2608b:   movslq %r13d,%r13
   1.22%  ││  0x00007f77beb2608e:   mov    (%rbx,%r13,1),%r13
   1.18%  ││  0x00007f77beb26092:   cmp    %r13,%r10
          ││  0x00007f77beb26095:   je     0x00007f77beb262ee
   1.21%  ││  0x00007f77beb2609b:   inc    %ebp
   1.27%  ↘│  0x00007f77beb2609d:   data16 xchg %ax,%ax
   1.18%   │  0x00007f77beb260a0:   cmp    %ebp,%eax
           ╰  0x00007f77beb260a2:   jg     0x00007f77beb26080
   0.01%      0x00007f77beb260a4:   jmp    0x00007f77beb26265
   0.21%      0x00007f77beb260a9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb260af:   je     0x00007f77beb25e14
              0x00007f77beb260b5:   mov    0x28(%rdi),%rbx
              0x00007f77beb260b9:   mov    (%rbx),%eax
   0.08%      0x00007f77beb260bb:   mov    $0x0,%ebp
              0x00007f77beb260c0:   jmp    0x00007f77beb260fd
              0x00007f77beb260c5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f77beb260d0:   data16 data16 xchg %ax,%ax
              0x00007f77beb260d4:   nopl   0x0(%rax,%rax,1)
              0x00007f77beb260dc:   data16 data16 xchg %ax,%ax
   1.28%      0x00007f77beb260e0:   mov    %ebp,%r13d
   1.21%      0x00007f77beb260e3:   shl    $0x3,%r13d
   1.10%      0x00007f77beb260e7:   lea    0x8(%r13),%r13d
   1.24%      0x00007f77beb260eb:   movslq %r13d,%r13
   1.20%      0x00007f77beb260ee:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  11.22%  <total for region 6>

....[Hottest Region 7]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 

   0.21%      0x00007f77beb26109:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb2610f:   je     0x00007f77beb25e54
              0x00007f77beb26115:   mov    0x28(%rdi),%rbx
              0x00007f77beb26119:   mov    (%rbx),%eax
   0.09%      0x00007f77beb2611b:   mov    $0x0,%ebp
          ╭   0x00007f77beb26120:   jmp    0x00007f77beb2615d
          │   0x00007f77beb26125:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f77beb26130:   data16 data16 xchg %ax,%ax
          │   0x00007f77beb26134:   nopl   0x0(%rax,%rax,1)
          │   0x00007f77beb2613c:   data16 data16 xchg %ax,%ax
   1.18%  │↗  0x00007f77beb26140:   mov    %ebp,%r13d
   1.23%  ││  0x00007f77beb26143:   shl    $0x3,%r13d
   1.22%  ││  0x00007f77beb26147:   lea    0x8(%r13),%r13d
   1.20%  ││  0x00007f77beb2614b:   movslq %r13d,%r13
   1.17%  ││  0x00007f77beb2614e:   mov    (%rbx,%r13,1),%r13
   1.21%  ││  0x00007f77beb26152:   cmp    %r13,%r10
          ││  0x00007f77beb26155:   je     0x00007f77beb26300
   1.16%  ││  0x00007f77beb2615b:   inc    %ebp
   1.21%  ↘│  0x00007f77beb2615d:   data16 xchg %ax,%ax
   1.19%   │  0x00007f77beb26160:   cmp    %ebp,%eax
           ╰  0x00007f77beb26162:   jg     0x00007f77beb26140
   0.01%      0x00007f77beb26164:   jmp    0x00007f77beb26292
   0.23%      0x00007f77beb26169:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb2616f:   je     0x00007f77beb25e94
              0x00007f77beb26175:   mov    0x28(%rdi),%rbx
              0x00007f77beb26179:   mov    (%rbx),%eax
   0.08%      0x00007f77beb2617b:   mov    $0x0,%ebp
              0x00007f77beb26180:   jmp    0x00007f77beb261bd
              0x00007f77beb26185:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f77beb26190:   data16 data16 xchg %ax,%ax
              0x00007f77beb26194:   nopl   0x0(%rax,%rax,1)
              0x00007f77beb2619c:   data16 data16 xchg %ax,%ax
   1.25%      0x00007f77beb261a0:   mov    %ebp,%r13d
   1.16%      0x00007f77beb261a3:   shl    $0x3,%r13d
   1.21%      0x00007f77beb261a7:   lea    0x8(%r13),%r13d
   1.25%      0x00007f77beb261ab:   movslq %r13d,%r13
   1.21%      0x00007f77beb261ae:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  11.11%  <total for region 7>

....[Hottest Region 8]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 

   0.21%      0x00007f77beb260a9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb260af:   je     0x00007f77beb25e14
              0x00007f77beb260b5:   mov    0x28(%rdi),%rbx
              0x00007f77beb260b9:   mov    (%rbx),%eax
   0.08%      0x00007f77beb260bb:   mov    $0x0,%ebp
          ╭   0x00007f77beb260c0:   jmp    0x00007f77beb260fd
          │   0x00007f77beb260c5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f77beb260d0:   data16 data16 xchg %ax,%ax
          │   0x00007f77beb260d4:   nopl   0x0(%rax,%rax,1)
          │   0x00007f77beb260dc:   data16 data16 xchg %ax,%ax
   1.28%  │↗  0x00007f77beb260e0:   mov    %ebp,%r13d
   1.21%  ││  0x00007f77beb260e3:   shl    $0x3,%r13d
   1.10%  ││  0x00007f77beb260e7:   lea    0x8(%r13),%r13d
   1.24%  ││  0x00007f77beb260eb:   movslq %r13d,%r13
   1.20%  ││  0x00007f77beb260ee:   mov    (%rbx,%r13,1),%r13
   1.16%  ││  0x00007f77beb260f2:   cmp    %r13,%r10
          ││  0x00007f77beb260f5:   je     0x00007f77beb262f7
   1.21%  ││  0x00007f77beb260fb:   inc    %ebp
   1.18%  ↘│  0x00007f77beb260fd:   data16 xchg %ax,%ax
   1.17%   │  0x00007f77beb26100:   cmp    %ebp,%eax
           ╰  0x00007f77beb26102:   jg     0x00007f77beb260e0
   0.02%      0x00007f77beb26104:   jmp    0x00007f77beb26277
   0.21%      0x00007f77beb26109:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f77beb2610f:   je     0x00007f77beb25e54
              0x00007f77beb26115:   mov    0x28(%rdi),%rbx
              0x00007f77beb26119:   mov    (%rbx),%eax
   0.09%      0x00007f77beb2611b:   mov    $0x0,%ebp
              0x00007f77beb26120:   jmp    0x00007f77beb2615d
              0x00007f77beb26125:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f77beb26130:   data16 data16 xchg %ax,%ax
              0x00007f77beb26134:   nopl   0x0(%rax,%rax,1)
              0x00007f77beb2613c:   data16 data16 xchg %ax,%ax
   1.18%      0x00007f77beb26140:   mov    %ebp,%r13d
   1.23%      0x00007f77beb26143:   shl    $0x3,%r13d
   1.22%      0x00007f77beb26147:   lea    0x8(%r13),%r13d
   1.20%      0x00007f77beb2614b:   movslq %r13d,%r13
   1.17%      0x00007f77beb2614e:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  11.08%  <total for region 8>

....[Hottest Regions]...............................................................................
  16.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
  11.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
  11.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
  11.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
  11.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
  11.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
  11.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
  11.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
   0.69%               kernel  [unknown] 
   0.29%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
   0.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
   0.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
   0.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
   0.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
   0.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
   0.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
   0.11%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   1.49%  <...other 383 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 818 
   2.02%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  syscall 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  _IO_setb 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  _IO_str_init_static_internal 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.00%            libjvm.so  G1Policy::predict_region_non_copy_time_ms 
   0.17%  <...other 80 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.62%       jvmci, level 4
   2.02%               kernel
   0.17%            libjvm.so
   0.08%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.00%         libm-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 256)

# Run progress: 80.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 237.295 ns/op
# Warmup Iteration   2: 246.081 ns/op
# Warmup Iteration   3: 236.486 ns/op
# Warmup Iteration   4: 238.807 ns/op
# Warmup Iteration   5: 238.756 ns/op
Iteration   1: 238.777 ns/op
Iteration   2: 239.540 ns/op
Iteration   3: 239.536 ns/op
Iteration   4: 238.737 ns/op
Iteration   5: 238.781 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  239.074 ±(99.9%) 1.631 ns/op [Average]
  (min, avg, max) = (238.737, 239.074, 239.540), stdev = 0.424
  CI (99.9%): [237.443, 240.705] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 212790 total address lines.
Perf output processed (skipped 59.724 seconds):
 Column 1: cycles (51012 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 

   0.16%        0x00007f5946b239c9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                0x00007f5946b239cf:   je     0x00007f5946b23754
                0x00007f5946b239d5:   mov    0x28(%rdi),%rbx
                0x00007f5946b239d9:   mov    (%rbx),%eax
   0.07%        0x00007f5946b239db:   mov    $0x0,%ebp
          ╭     0x00007f5946b239e0:   jmp    0x00007f5946b23a1d
          │     0x00007f5946b239e5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │     0x00007f5946b239f0:   data16 data16 xchg %ax,%ax
          │     0x00007f5946b239f4:   nopl   0x0(%rax,%rax,1)
          │     0x00007f5946b239fc:   data16 data16 xchg %ax,%ax
   1.26%  │↗    0x00007f5946b23a00:   mov    %ebp,%r13d
   1.12%  ││    0x00007f5946b23a03:   shl    $0x3,%r13d
   1.22%  ││    0x00007f5946b23a07:   lea    0x8(%r13),%r13d
   1.21%  ││    0x00007f5946b23a0b:   movslq %r13d,%r13
   1.22%  ││    0x00007f5946b23a0e:   mov    (%rbx,%r13,1),%r13
   1.10%  ││    0x00007f5946b23a12:   cmp    %r13,%r10
          ││    0x00007f5946b23a15:   je     0x00007f5946b23c6e
   1.27%  ││    0x00007f5946b23a1b:   inc    %ebp
   1.18%  ↘│    0x00007f5946b23a1d:   data16 xchg %ax,%ax
   1.21%   │    0x00007f5946b23a20:   cmp    %ebp,%eax
           ╰    0x00007f5946b23a22:   jg     0x00007f5946b23a00
   0.00%        0x00007f5946b23a24:   jmp    0x00007f5946b23be5
   0.11%        0x00007f5946b23a29:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                0x00007f5946b23a2f:   je     0x00007f5946b23794
                0x00007f5946b23a35:   mov    0x28(%rdi),%rbx
                0x00007f5946b23a39:   mov    (%rbx),%eax
   0.04%        0x00007f5946b23a3b:   mov    $0x0,%ebp
   0.00%    ╭   0x00007f5946b23a40:   jmp    0x00007f5946b23a7d
            │   0x00007f5946b23a45:   data16 data16 nopw 0x0(%rax,%rax,1)
            │   0x00007f5946b23a50:   data16 data16 xchg %ax,%ax
            │   0x00007f5946b23a54:   nopl   0x0(%rax,%rax,1)
            │   0x00007f5946b23a5c:   data16 data16 xchg %ax,%ax
   1.19%    │↗  0x00007f5946b23a60:   mov    %ebp,%r13d
   1.19%    ││  0x00007f5946b23a63:   shl    $0x3,%r13d
   1.26%    ││  0x00007f5946b23a67:   lea    0x8(%r13),%r13d
   1.25%    ││  0x00007f5946b23a6b:   movslq %r13d,%r13
   1.20%    ││  0x00007f5946b23a6e:   mov    (%rbx,%r13,1),%r13
   1.26%    ││  0x00007f5946b23a72:   cmp    %r13,%r10
            ││  0x00007f5946b23a75:   je     0x00007f5946b23c77
   1.22%    ││  0x00007f5946b23a7b:   inc    %ebp
   1.20%    ↘│  0x00007f5946b23a7d:   data16 xchg %ax,%ax
   1.15%     │  0x00007f5946b23a80:   cmp    %ebp,%eax
             ╰  0x00007f5946b23a82:   jg     0x00007f5946b23a60
   0.01%        0x00007f5946b23a84:   jmp    0x00007f5946b23bf7
   0.11%        0x00007f5946b23a89:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
                0x00007f5946b23a8f:   je     0x00007f5946b237d4
                0x00007f5946b23a95:   mov    0x28(%rdi),%rbx
                0x00007f5946b23a99:   mov    (%rbx),%eax
   0.05%        0x00007f5946b23a9b:   mov    $0x0,%ebp
                0x00007f5946b23aa0:   jmp    0x00007f5946b23add
                0x00007f5946b23aa5:   data16 data16 nopw 0x0(%rax,%rax,1)
                0x00007f5946b23ab0:   data16 data16 xchg %ax,%ax
                0x00007f5946b23ab4:   nopl   0x0(%rax,%rax,1)
                0x00007f5946b23abc:   data16 data16 xchg %ax,%ax
   1.22%        0x00007f5946b23ac0:   mov    %ebp,%r13d
   1.25%        0x00007f5946b23ac3:   shl    $0x3,%r13d
   1.15%        0x00007f5946b23ac7:   lea    0x8(%r13),%r13d
   1.22%        0x00007f5946b23acb:   movslq %r13d,%r13
   1.20%        0x00007f5946b23ace:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  22.04%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 

   0.01%       0x00007f5946b23b44:   jmp    0x00007f5946b23c25
   0.11%       0x00007f5946b23b49:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
               0x00007f5946b23b4f:   je     0x00007f5946b23858
               0x00007f5946b23b55:   mov    0x28(%rdi),%rax
               0x00007f5946b23b59:   mov    (%rax),%ebp
   0.07%       0x00007f5946b23b5b:   mov    $0x0,%r13d
          ╭    0x00007f5946b23b61:   jmp    0x00007f5946b23b9e
          │    0x00007f5946b23b66:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007f5946b23b71:   data16 data16 xchg %ax,%ax
          │    0x00007f5946b23b75:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.18%  │↗   0x00007f5946b23b80:   mov    %r13d,%r14d
   2.04%  ││   0x00007f5946b23b83:   shl    $0x3,%r14d
   1.11%  ││   0x00007f5946b23b87:   lea    0x8(%r14),%r14d
   1.24%  ││   0x00007f5946b23b8b:   movslq %r14d,%r14
   1.23%  ││   0x00007f5946b23b8e:   mov    (%rax,%r14,1),%r14
   2.03%  ││   0x00007f5946b23b92:   cmp    %r14,%r10
          ││   0x00007f5946b23b95:   je     0x00007f5946b23c92
   2.06%  ││   0x00007f5946b23b9b:   inc    %r13d
   1.16%  ↘│   0x00007f5946b23b9e:   xchg   %ax,%ax
   1.16%   │   0x00007f5946b23ba0:   cmp    %r13d,%ebp
           ╰   0x00007f5946b23ba3:   jg     0x00007f5946b23b80
   0.08%    ╭  0x00007f5946b23ba5:   jmp    0x00007f5946b23c37           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@1 (line 109)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
   0.11%    │  0x00007f5946b23baa:   cmpb   $0x0,0x94(%rsi)
   0.18%    │  0x00007f5946b23bb1:   je     0x00007f5946b23699
            │  0x00007f5946b23bb7:   jmp    0x00007f5946b23df1
   0.10%    │  0x00007f5946b23bbc:   nopl   0x0(%rax)
   0.02%    │  0x00007f5946b23bc0:   cmpb   $0x0,0x94(%rsi)
   0.22%    │  0x00007f5946b23bc7:   je     0x00007f5946b236ed
            │  0x00007f5946b23bcd:   jmp    0x00007f5946b23e2f
   0.12%    │  0x00007f5946b23bd2:   cmpb   $0x0,0x94(%rsi)
   0.07%    │  0x00007f5946b23bd9:   je     0x00007f5946b2372d
            │  0x00007f5946b23bdf:   nop
            │  0x00007f5946b23be0:   jmp    0x00007f5946b23e3a
   0.08%    │  0x00007f5946b23be5:   cmpb   $0x0,0x94(%rsi)
   0.13%    │  0x00007f5946b23bec:   je     0x00007f5946b2376d
            │  0x00007f5946b23bf2:   jmp    0x00007f5946b23e45
   0.11%    │  0x00007f5946b23bf7:   nopw   0x0(%rax,%rax,1)
            │  0x00007f5946b23c00:   cmpb   $0x0,0x94(%rsi)
   0.16%    │  0x00007f5946b23c07:   je     0x00007f5946b237ad
            │  0x00007f5946b23c0d:   jmp    0x00007f5946b23e50
   0.10%    │  0x00007f5946b23c12:   cmpb   $0x0,0x94(%rsi)
   0.13%    │  0x00007f5946b23c19:   je     0x00007f5946b237ed
            │  0x00007f5946b23c1f:   nop
            │  0x00007f5946b23c20:   jmp    0x00007f5946b23e5b
   0.10%    │  0x00007f5946b23c25:   cmpb   $0x0,0x94(%rsi)
   0.15%    │  0x00007f5946b23c2c:   je     0x00007f5946b2382d
            │  0x00007f5946b23c32:   jmp    0x00007f5946b23e66
   0.10%    ↘  0x00007f5946b23c37:   nopw   0x0(%rax,%rax,1)
               0x00007f5946b23c40:   cmpb   $0x0,0x94(%rsi)
   0.12%       0x00007f5946b23c47:   je     0x00007f5946b23879
               0x00007f5946b23c4d:   jmp    0x00007f5946b23e71           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
               0x00007f5946b23c52:   mov    %r10,0x20(%rdi)
               0x00007f5946b23c56:   jmp    0x00007f5946b23680
               0x00007f5946b23c5b:   mov    %r10,0x20(%rdi)
               0x00007f5946b23c5f:   nop
               0x00007f5946b23c60:   jmp    0x00007f5946b236ca
               0x00007f5946b23c65:   mov    %r10,0x20(%rdi)
               0x00007f5946b23c69:   jmp    0x00007f5946b23714
               0x00007f5946b23c6e:   mov    %r10,0x20(%rdi)
....................................................................................................
  15.31%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
              0x00007f5946b23858:   nopl   0x0(%rax,%rax,1)
              0x00007f5946b23860:   cmp    $0xc265e0,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark$SomeCloseable&apos;)}
              0x00007f5946b23866:   jne    0x00007f5946b23f56           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::closeNotAutoCloseable@8 (line 111)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check@4 (line 103)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@17 (line 232)
              0x00007f5946b2386c:   cmpb   $0x0,0x94(%rsi)
              0x00007f5946b23873:   jne    0x00007f5946b23e71           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@33 (line 234)
   0.03%      0x00007f5946b23879:   lea    0x8(%r9),%r9d
              0x00007f5946b2387d:   data16 xchg %ax,%ax
              0x00007f5946b23880:   cmp    $0x1ff8,%r9d
              0x00007f5946b23887:   jge    0x00007f5946b23c9b
              0x00007f5946b2388d:   mov    %rbx,%r8
   0.02%      0x00007f5946b23890:   mov    0x10(%r11),%ecx              ; ImmutableOopMap {rdx=Oop rsi=Oop r11=Oop [16]=Oop [24]=Oop }
                                                                        ;*aload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub@13 (line 232)
              0x00007f5946b23894:   mov    0x8(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f5946b24146
   0.08%      0x00007f5946b2389b:   movabs $0x800000000,%rbx
              0x00007f5946b238a5:   lea    (%rbx,%rcx,1),%rdi
   0.02%      0x00007f5946b238a9:   cmp    0x20(%rdi),%r10
              0x00007f5946b238ad:   je     0x00007f5946b23680
   0.15%      0x00007f5946b238b3:   nopw   0x0(%rax,%rax,1)
              0x00007f5946b238bc:   data16 data16 xchg %ax,%ax
              0x00007f5946b238c0:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f5946b238c6:   je     0x00007f5946b23680
              0x00007f5946b238cc:   mov    0x28(%rdi),%rbx
   0.03%      0x00007f5946b238d0:   mov    (%rbx),%eax
   0.04%      0x00007f5946b238d2:   mov    $0x0,%ebp
          ╭   0x00007f5946b238d7:   jmp    0x00007f5946b238fd
          │   0x00007f5946b238dc:   nopl   0x0(%rax)
   1.44%  │↗  0x00007f5946b238e0:   mov    %ebp,%r13d
   1.47%  ││  0x00007f5946b238e3:   shl    $0x3,%r13d
   1.42%  ││  0x00007f5946b238e7:   lea    0x8(%r13),%r13d
   1.41%  ││  0x00007f5946b238eb:   movslq %r13d,%r13
   1.33%  ││  0x00007f5946b238ee:   mov    (%rbx,%r13,1),%r13
   1.36%  ││  0x00007f5946b238f2:   cmp    %r13,%r10
          ││  0x00007f5946b238f5:   je     0x00007f5946b23c52
   1.33%  ││  0x00007f5946b238fb:   inc    %ebp
   1.36%  ↘│  0x00007f5946b238fd:   data16 xchg %ax,%ax
   1.49%   │  0x00007f5946b23900:   cmp    %ebp,%eax
           ╰  0x00007f5946b23902:   jg     0x00007f5946b238e0
   0.01%      0x00007f5946b23904:   jmp    0x00007f5946b23baa
   0.10%      0x00007f5946b23909:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f5946b2390f:   je     0x00007f5946b236ca
              0x00007f5946b23915:   mov    0x28(%rdi),%rbx
              0x00007f5946b23919:   mov    (%rbx),%eax
   0.05%      0x00007f5946b2391b:   mov    $0x0,%ebp
              0x00007f5946b23920:   jmp    0x00007f5946b2395d
              0x00007f5946b23925:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f5946b23930:   data16 data16 xchg %ax,%ax
              0x00007f5946b23934:   nopl   0x0(%rax,%rax,1)
              0x00007f5946b2393c:   data16 data16 xchg %ax,%ax
   1.21%      0x00007f5946b23940:   mov    %ebp,%r13d
   1.27%      0x00007f5946b23943:   shl    $0x3,%r13d
   1.31%      0x00007f5946b23947:   lea    0x8(%r13),%r13d
   1.38%      0x00007f5946b2394b:   movslq %r13d,%r13
   1.35%      0x00007f5946b2394e:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  13.13%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 

   0.10%      0x00007f5946b23909:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f5946b2390f:   je     0x00007f5946b236ca
              0x00007f5946b23915:   mov    0x28(%rdi),%rbx
              0x00007f5946b23919:   mov    (%rbx),%eax
   0.05%      0x00007f5946b2391b:   mov    $0x0,%ebp
          ╭   0x00007f5946b23920:   jmp    0x00007f5946b2395d
          │   0x00007f5946b23925:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f5946b23930:   data16 data16 xchg %ax,%ax
          │   0x00007f5946b23934:   nopl   0x0(%rax,%rax,1)
          │   0x00007f5946b2393c:   data16 data16 xchg %ax,%ax
   1.21%  │↗  0x00007f5946b23940:   mov    %ebp,%r13d
   1.27%  ││  0x00007f5946b23943:   shl    $0x3,%r13d
   1.31%  ││  0x00007f5946b23947:   lea    0x8(%r13),%r13d
   1.38%  ││  0x00007f5946b2394b:   movslq %r13d,%r13
   1.35%  ││  0x00007f5946b2394e:   mov    (%rbx,%r13,1),%r13
   1.27%  ││  0x00007f5946b23952:   cmp    %r13,%r10
          ││  0x00007f5946b23955:   je     0x00007f5946b23c5b
   1.25%  ││  0x00007f5946b2395b:   inc    %ebp
   1.20%  ↘│  0x00007f5946b2395d:   data16 xchg %ax,%ax
   1.27%   │  0x00007f5946b23960:   cmp    %ebp,%eax
           ╰  0x00007f5946b23962:   jg     0x00007f5946b23940
   0.01%      0x00007f5946b23964:   jmp    0x00007f5946b23bbc
   0.13%      0x00007f5946b23969:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f5946b2396f:   je     0x00007f5946b23714
              0x00007f5946b23975:   mov    0x28(%rdi),%rbx
              0x00007f5946b23979:   mov    (%rbx),%eax
   0.08%      0x00007f5946b2397b:   mov    $0x0,%ebp
              0x00007f5946b23980:   jmp    0x00007f5946b239bd
              0x00007f5946b23985:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f5946b23990:   data16 data16 xchg %ax,%ax
              0x00007f5946b23994:   nopl   0x0(%rax,%rax,1)
              0x00007f5946b2399c:   data16 data16 xchg %ax,%ax
   1.22%      0x00007f5946b239a0:   mov    %ebp,%r13d
   1.23%      0x00007f5946b239a3:   shl    $0x3,%r13d
   1.34%      0x00007f5946b239a7:   lea    0x8(%r13),%r13d
   1.21%      0x00007f5946b239ab:   movslq %r13d,%r13
   1.21%      0x00007f5946b239ae:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  11.74%  <total for region 4>

....[Hottest Region 5]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 

   0.11%      0x00007f5946b23ae9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f5946b23aef:   je     0x00007f5946b23814
              0x00007f5946b23af5:   mov    0x28(%rdi),%rbx
              0x00007f5946b23af9:   mov    (%rbx),%eax
   0.08%      0x00007f5946b23afb:   mov    $0x0,%ebp
          ╭   0x00007f5946b23b00:   jmp    0x00007f5946b23b3d
          │   0x00007f5946b23b05:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f5946b23b10:   data16 data16 xchg %ax,%ax
          │   0x00007f5946b23b14:   nopl   0x0(%rax,%rax,1)
          │   0x00007f5946b23b1c:   data16 data16 xchg %ax,%ax
   1.34%  │↗  0x00007f5946b23b20:   mov    %ebp,%r13d
   1.25%  ││  0x00007f5946b23b23:   shl    $0x3,%r13d
   1.24%  ││  0x00007f5946b23b27:   lea    0x8(%r13),%r13d
   1.21%  ││  0x00007f5946b23b2b:   movslq %r13d,%r13
   1.28%  ││  0x00007f5946b23b2e:   mov    (%rbx,%r13,1),%r13
   1.34%  ││  0x00007f5946b23b32:   cmp    %r13,%r10
          ││  0x00007f5946b23b35:   je     0x00007f5946b23c89
   1.31%  ││  0x00007f5946b23b3b:   inc    %ebp
   1.20%  ↘│  0x00007f5946b23b3d:   data16 xchg %ax,%ax
   1.25%   │  0x00007f5946b23b40:   cmp    %ebp,%eax
           ╰  0x00007f5946b23b42:   jg     0x00007f5946b23b20
   0.01%      0x00007f5946b23b44:   jmp    0x00007f5946b23c25
   0.11%      0x00007f5946b23b49:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f5946b23b4f:   je     0x00007f5946b23858
              0x00007f5946b23b55:   mov    0x28(%rdi),%rax
              0x00007f5946b23b59:   mov    (%rax),%ebp
   0.07%      0x00007f5946b23b5b:   mov    $0x0,%r13d
              0x00007f5946b23b61:   jmp    0x00007f5946b23b9e
              0x00007f5946b23b66:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f5946b23b71:   data16 data16 xchg %ax,%ax
              0x00007f5946b23b75:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.18%      0x00007f5946b23b80:   mov    %r13d,%r14d
   2.04%      0x00007f5946b23b83:   shl    $0x3,%r14d
   1.11%      0x00007f5946b23b87:   lea    0x8(%r14),%r14d
   1.24%      0x00007f5946b23b8b:   movslq %r14d,%r14
   1.23%      0x00007f5946b23b8e:   mov    (%rax,%r14,1),%r14
   2.03%      0x00007f5946b23b92:   cmp    %r14,%r10
....................................................................................................
  11.61%  <total for region 5>

....[Hottest Region 6]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 

   0.13%      0x00007f5946b23969:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f5946b2396f:   je     0x00007f5946b23714
              0x00007f5946b23975:   mov    0x28(%rdi),%rbx
              0x00007f5946b23979:   mov    (%rbx),%eax
   0.08%      0x00007f5946b2397b:   mov    $0x0,%ebp
          ╭   0x00007f5946b23980:   jmp    0x00007f5946b239bd
          │   0x00007f5946b23985:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f5946b23990:   data16 data16 xchg %ax,%ax
          │   0x00007f5946b23994:   nopl   0x0(%rax,%rax,1)
          │   0x00007f5946b2399c:   data16 data16 xchg %ax,%ax
   1.22%  │↗  0x00007f5946b239a0:   mov    %ebp,%r13d
   1.23%  ││  0x00007f5946b239a3:   shl    $0x3,%r13d
   1.34%  ││  0x00007f5946b239a7:   lea    0x8(%r13),%r13d
   1.21%  ││  0x00007f5946b239ab:   movslq %r13d,%r13
   1.21%  ││  0x00007f5946b239ae:   mov    (%rbx,%r13,1),%r13
   1.20%  ││  0x00007f5946b239b2:   cmp    %r13,%r10
          ││  0x00007f5946b239b5:   je     0x00007f5946b23c65
   1.24%  ││  0x00007f5946b239bb:   inc    %ebp
   1.28%  ↘│  0x00007f5946b239bd:   data16 xchg %ax,%ax
   1.31%   │  0x00007f5946b239c0:   cmp    %ebp,%eax
           ╰  0x00007f5946b239c2:   jg     0x00007f5946b239a0
              0x00007f5946b239c4:   jmp    0x00007f5946b23bd2
   0.16%      0x00007f5946b239c9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f5946b239cf:   je     0x00007f5946b23754
              0x00007f5946b239d5:   mov    0x28(%rdi),%rbx
              0x00007f5946b239d9:   mov    (%rbx),%eax
   0.07%      0x00007f5946b239db:   mov    $0x0,%ebp
              0x00007f5946b239e0:   jmp    0x00007f5946b23a1d
              0x00007f5946b239e5:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f5946b239f0:   data16 data16 xchg %ax,%ax
              0x00007f5946b239f4:   nopl   0x0(%rax,%rax,1)
              0x00007f5946b239fc:   data16 data16 xchg %ax,%ax
   1.26%      0x00007f5946b23a00:   mov    %ebp,%r13d
   1.12%      0x00007f5946b23a03:   shl    $0x3,%r13d
   1.22%      0x00007f5946b23a07:   lea    0x8(%r13),%r13d
   1.21%      0x00007f5946b23a0b:   movslq %r13d,%r13
   1.22%      0x00007f5946b23a0e:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  11.48%  <total for region 6>

....[Hottest Region 7]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 

   0.11%      0x00007f5946b23a89:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f5946b23a8f:   je     0x00007f5946b237d4
              0x00007f5946b23a95:   mov    0x28(%rdi),%rbx
              0x00007f5946b23a99:   mov    (%rbx),%eax
   0.05%      0x00007f5946b23a9b:   mov    $0x0,%ebp
          ╭   0x00007f5946b23aa0:   jmp    0x00007f5946b23add
          │   0x00007f5946b23aa5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f5946b23ab0:   data16 data16 xchg %ax,%ax
          │   0x00007f5946b23ab4:   nopl   0x0(%rax,%rax,1)
          │   0x00007f5946b23abc:   data16 data16 xchg %ax,%ax
   1.22%  │↗  0x00007f5946b23ac0:   mov    %ebp,%r13d
   1.25%  ││  0x00007f5946b23ac3:   shl    $0x3,%r13d
   1.15%  ││  0x00007f5946b23ac7:   lea    0x8(%r13),%r13d
   1.22%  ││  0x00007f5946b23acb:   movslq %r13d,%r13
   1.20%  ││  0x00007f5946b23ace:   mov    (%rbx,%r13,1),%r13
   1.24%  ││  0x00007f5946b23ad2:   cmp    %r13,%r10
          ││  0x00007f5946b23ad5:   je     0x00007f5946b23c80
   1.28%  ││  0x00007f5946b23adb:   inc    %ebp
   1.16%  ↘│  0x00007f5946b23add:   data16 xchg %ax,%ax
   1.23%   │  0x00007f5946b23ae0:   cmp    %ebp,%eax
           ╰  0x00007f5946b23ae2:   jg     0x00007f5946b23ac0
   0.01%      0x00007f5946b23ae4:   jmp    0x00007f5946b23c12
   0.11%      0x00007f5946b23ae9:   cmp    $0x157e8,%ecx                ;   {metadata(&apos;java/lang/AutoCloseable&apos;)}
              0x00007f5946b23aef:   je     0x00007f5946b23814
              0x00007f5946b23af5:   mov    0x28(%rdi),%rbx
              0x00007f5946b23af9:   mov    (%rbx),%eax
   0.08%      0x00007f5946b23afb:   mov    $0x0,%ebp
              0x00007f5946b23b00:   jmp    0x00007f5946b23b3d
              0x00007f5946b23b05:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f5946b23b10:   data16 data16 xchg %ax,%ax
              0x00007f5946b23b14:   nopl   0x0(%rax,%rax,1)
              0x00007f5946b23b1c:   data16 data16 xchg %ax,%ax
   1.34%      0x00007f5946b23b20:   mov    %ebp,%r13d
   1.25%      0x00007f5946b23b23:   shl    $0x3,%r13d
   1.24%      0x00007f5946b23b27:   lea    0x8(%r13),%r13d
   1.21%      0x00007f5946b23b2b:   movslq %r13d,%r13
   1.28%      0x00007f5946b23b2e:   mov    (%rbx,%r13,1),%r13
....................................................................................................
  11.13%  <total for region 7>

....[Hottest Regions]...............................................................................
  22.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
  15.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
  13.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
  11.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
  11.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
  11.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
  11.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
   0.84%               kernel  [unknown] 
   0.48%               kernel  [unknown] 
   0.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
   0.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
   0.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
   0.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
   0.08%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   1.07%  <...other 300 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub, version 6, compile id 827 
   2.23%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%         libc-2.31.so  _itoa_word 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.16%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.43%       jvmci, level 4
   2.23%               kernel
   0.14%            libjvm.so
   0.10%         libc-2.31.so
   0.03%                     
   0.03%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%               [vdso]
   0.00%       libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:09:22

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

Benchmark                                              (supertypes)  Mode  Cnt    Score   Error  Units
TypeCheckSlowPathBenchmark.instanceof_type_check                 16  avgt    5   18.383 ± 0.003  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm            16  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                 32  avgt    5   32.313 ± 0.007  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm            32  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                 64  avgt    5   60.658 ± 4.129  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm            64  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                128  avgt    5  127.439 ± 1.122  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm           128  avgt           NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                256  avgt    5  239.074 ± 1.631  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm           256  avgt           NaN            ---
