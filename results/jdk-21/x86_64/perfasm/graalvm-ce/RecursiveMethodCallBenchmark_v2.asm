# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method
# Parameters: (depth = 256)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 397.735 ns/op
# Warmup Iteration   2: 399.462 ns/op
# Warmup Iteration   3: 392.833 ns/op
# Warmup Iteration   4: 388.839 ns/op
# Warmup Iteration   5: 387.986 ns/op
Iteration   1: 396.306 ns/op
Iteration   2: 388.035 ns/op
Iteration   3: 389.439 ns/op
Iteration   4: 391.287 ns/op
Iteration   5: 404.747 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method":
  393.963 ±(99.9%) 26.156 ns/op [Average]
  (min, avg, max) = (388.035, 393.963, 404.747), stdev = 6.793
  CI (99.9%): [367.807, 420.119] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method:asm":
PrintAssembly processed: 219930 total address lines.
Perf output processed (skipped 81.610 seconds):
 Column 1: cycles (51385 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 1090 

                              # parm0:    rdx       = int
                              #           [sp+0x20]  (sp of caller)
                              0x00007f46a719caa0:   mov    0x8(%rsi),%r10d
                              0x00007f46a719caa4:   movabs $0x7f4623000000,%r12
                              0x00007f46a719caae:   add    %r12,%r10
                              0x00007f46a719cab1:   xor    %r12,%r12
                              0x00007f46a719cab4:   cmp    %r10,%rax
                              0x00007f46a719cab7:   jne    0x00007f46a6af9080           ;   {runtime_call ic_miss_stub}
                              0x00007f46a719cabd:   data16 xchg %ax,%ax
                            [Verified Entry Point]
   6.98%           ↗          0x00007f46a719cac0:   mov    %eax,-0x14000(%rsp)
   6.11%           │          0x00007f46a719cac7:   sub    $0x18,%rsp
   2.58%           │          0x00007f46a719cacb:   nop
   2.24%           │          0x00007f46a719cacc:   cmpl   $0x1,0x20(%r15)
   2.95%  ╭        │          0x00007f46a719cad4:   jne    0x00007f46a719cbc6
   2.73%  │        │      ↗   0x00007f46a719cada:   mov    %rbp,0x10(%rsp)
   2.59%  │        │      │   0x00007f46a719cadf:   nop
   2.29%  │        │      │   0x00007f46a719cae0:   test   %edx,%edx
          │╭       │      │   0x00007f46a719cae2:   je     0x00007f46a719cb57           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││       │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 106)
   3.05%  ││       │      │   0x00007f46a719cae8:   cmp    $0x1,%edx
          ││╭      │      │   0x00007f46a719caeb:   je     0x00007f46a719cb78           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││      │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 106)
          │││      │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   2.65%  │││      │      │   0x00007f46a719caf1:   lea    -0x2(%rdx),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││      │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@11 (line 109)
          │││      │      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   2.53%  │││      │      │   0x00007f46a719caf5:   cmp    $0x2,%r10d
          │││╭     │      │   0x00007f46a719caf9:   jge    0x00007f46a719cb18
          ││││     │      │   0x00007f46a719caff:   cmp    $0x0,%r10d
          ││││╭    │      │   0x00007f46a719cb03:   je     0x00007f46a719cb87
          │││││    │      │   0x00007f46a719cb09:   cmp    $0x1,%r10d
          │││││╭   │      │   0x00007f46a719cb0d:   je     0x00007f46a719cb96
          ││││││╭  │      │   0x00007f46a719cb13:   jmp    0x00007f46a719cb30
   2.91%  │││↘│││  │      │   0x00007f46a719cb18:   cmp    $0x2,%r10d
   2.50%  │││ │││  │      │   0x00007f46a719cb1c:   nopl   0x0(%rax)
   2.66%  │││ │││╭ │      │   0x00007f46a719cb20:   je     0x00007f46a719cba5
   2.26%  │││ ││││ │      │   0x00007f46a719cb26:   cmp    $0x3,%r10d
          │││ ││││╭│      │   0x00007f46a719cb2a:   je     0x00007f46a719cbb4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 106)
          │││ ││││││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││ ││││││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   3.34%  │││ ││↘│││      │   0x00007f46a719cb30:   lea    -0x6(%rdx),%edx
   2.46%  │││ ││ ││╰      │   0x00007f46a719cb33:   call   0x00007f46a719cac0           ; ImmutableOopMap {}
          │││ ││ ││       │                                                             ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=1}
          │││ ││ ││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││ ││ ││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││ ││ ││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││ ││ ││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││ ││ ││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││ ││ ││       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │││ ││ ││       │                                                             ;   {optimized virtual_call}
  20.19%  │││ ││ ││       │   0x00007f46a719cb38:   nopl   0x228(%rax,%rax,1)           ;   {other}
   0.40%  │││ ││ ││  ↗↗↗↗↗│   0x00007f46a719cb40:   mov    0x10(%rsp),%rbp
   9.11%  │││ ││ ││  ││││││   0x00007f46a719cb45:   add    $0x18,%rsp
   1.50%  │││ ││ ││  ││││││↗  0x00007f46a719cb49:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││ ││ ││ ╭│││││││  0x00007f46a719cb50:   ja     0x00007f46a719cbd6
   0.12%  │││ ││ ││ ││││││││  0x00007f46a719cb56:   ret    
          │↘│ ││ ││ ││││││││  0x00007f46a719cb57:   movabs $0x7fea347c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fea347c0})}
          │ │ ││ ││ ││││││││  0x00007f46a719cb61:   mov    0x10(%rsp),%rbp
          │ │ ││ ││ ││││││││  0x00007f46a719cb66:   add    $0x18,%rsp
          │ │ ││ ││ ││││││││  0x00007f46a719cb6a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │ ││ ││ ││││││││  0x00007f46a719cb71:   ja     0x00007f46a719cbea
          │ │ ││ ││ ││││││││  0x00007f46a719cb77:   ret    
          │ ↘ ││ ││ ││││││││  0x00007f46a719cb78:   movabs $0x7fea347c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fea347c0})}
          │   ││ ││ ││││││││  0x00007f46a719cb82:   mov    %r10,%rax
          │   ││ ││ │╰││││││  0x00007f46a719cb85:   jmp    0x00007f46a719cb40
          │   ↘│ ││ │ ││││││  0x00007f46a719cb87:   movabs $0x7fea347c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fea347c0})}
          │    │ ││ │ ││││││  0x00007f46a719cb91:   mov    %r10,%rax
          │    │ ││ │ ╰│││││  0x00007f46a719cb94:   jmp    0x00007f46a719cb40
          │    ↘ ││ │  │││││  0x00007f46a719cb96:   movabs $0x7fea347c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fea347c0})}
          │      ││ │  │││││  0x00007f46a719cba0:   mov    %r10,%rax
          │      ││ │  ╰││││  0x00007f46a719cba3:   jmp    0x00007f46a719cb40
   0.32%  │      ↘│ │   ││││  0x00007f46a719cba5:   movabs $0x7fea347c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fea347c0})}
   0.00%  │       │ │   ││││  0x00007f46a719cbaf:   mov    %r10,%rax
          │       │ │   ╰│││  0x00007f46a719cbb2:   jmp    0x00007f46a719cb40
          │       ↘ │    │││  0x00007f46a719cbb4:   movabs $0x7fea347c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fea347c0})}
          │         │    │││  0x00007f46a719cbbe:   mov    %r10,%rax
          │         │    ╰││  0x00007f46a719cbc1:   jmp    0x00007f46a719cb40
          ↘         │     ││  0x00007f46a719cbc6:   mov    %rbp,0x10(%rsp)
                    │     ││  0x00007f46a719cbcb:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                    │     ╰│  0x00007f46a719cbd0:   jmp    0x00007f46a719cada
                    │      │  0x00007f46a719cbd5:   hlt    
                    ↘      ╰  0x00007f46a719cbd6:   lea    -0x94(%rip),%rcx        # 0x00007f46a719cb49
                              0x00007f46a719cbdd:   mov    %rcx,0x468(%r15)
....................................................................................................
  84.48%  <total for region 1>

....[Hottest Regions]...............................................................................
  84.48%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 1090 
   8.34%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 1092 
   2.43%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 5, compile id 1115 
   0.62%                kernel  [unknown] 
   0.34%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%             libjvm.so  fileStream::write 
   2.24%  <...other 395 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  84.48%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 1090 
   8.34%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 1092 
   3.78%                kernel  [unknown] 
   2.43%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 5, compile id 1115 
   0.21%                        <unknown> 
   0.05%             libjvm.so  fileStream::write 
   0.04%             libc.so.6  __vfprintf_internal 
   0.04%             libc.so.6  __strchr_avx2 
   0.04%             libjvm.so  xmlStream::write 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __GI___pthread_enable_asynccancel 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.36%  <...other 114 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.26%        jvmci, level 4
   3.78%                kernel
   0.40%             libjvm.so
   0.26%             libc.so.6
   0.21%                      
   0.03%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.01%         perf-7969.map
   0.00%          runtime stub
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method
# Parameters: (depth = 256)

# Run progress: 16.67% complete, ETA 00:11:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 367.850 ns/op
# Warmup Iteration   2: 357.668 ns/op
# Warmup Iteration   3: 358.922 ns/op
# Warmup Iteration   4: 356.731 ns/op
# Warmup Iteration   5: 353.454 ns/op
Iteration   1: 356.137 ns/op
Iteration   2: 360.615 ns/op
Iteration   3: 358.923 ns/op
Iteration   4: 360.471 ns/op
Iteration   5: 360.506 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method":
  359.330 ±(99.9%) 7.381 ns/op [Average]
  (min, avg, max) = (356.137, 359.330, 360.615), stdev = 1.917
  CI (99.9%): [351.950, 366.711] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method:asm":
PrintAssembly processed: 220953 total address lines.
Perf output processed (skipped 81.298 seconds):
 Column 1: cycles (51136 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 1059 

                                 dependencies   [0x00007f057b19c4d0,0x00007f057b19c4d8] = 8
                                 JVMCI data     [0x00007f057b19c4d8,0x00007f057b19c4f0] = 24
                                [Disassembly]
                                --------------------------------------------------------------------------------
                                [Constant Pool (empty)]
                                --------------------------------------------------------------------------------
                                [Verified Entry Point]
                                  # {method} {0x00007f04f347bc18} &apos;cls_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
                                  # parm0:    rsi       = int
                                  #           [sp+0x20]  (sp of caller)
   8.85%                          0x00007f057b19c2a0:   mov    %eax,-0x14000(%rsp)
   6.77%                          0x00007f057b19c2a7:   sub    $0x18,%rsp
   2.95%                          0x00007f057b19c2ab:   nop
   2.79%                          0x00007f057b19c2ac:   cmpl   $0x1,0x20(%r15)
   2.95%  ╭                       0x00007f057b19c2b4:   jne    0x00007f057b19c3a6
   2.94%  │               ↗       0x00007f057b19c2ba:   mov    %rbp,0x10(%rsp)
   3.06%  │               │       0x00007f057b19c2bf:   nop
   2.70%  │               │       0x00007f057b19c2c0:   test   %esi,%esi
          │╭              │       0x00007f057b19c2c2:   je     0x00007f057b19c337           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││              │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
   2.86%  ││              │       0x00007f057b19c2c8:   cmp    $0x1,%esi
          ││╭             │       0x00007f057b19c2cb:   je     0x00007f057b19c358           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
          │││             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   2.91%  │││             │       0x00007f057b19c2d1:   lea    -0x2(%rsi),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 116)
          │││             │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   2.87%  │││             │       0x00007f057b19c2d5:   cmp    $0x2,%r10d
          │││╭            │       0x00007f057b19c2d9:   jge    0x00007f057b19c2f8
          ││││            │       0x00007f057b19c2df:   cmp    $0x0,%r10d
          ││││╭           │       0x00007f057b19c2e3:   je     0x00007f057b19c367
          │││││           │       0x00007f057b19c2e9:   cmp    $0x1,%r10d
          │││││╭          │       0x00007f057b19c2ed:   je     0x00007f057b19c376
          ││││││╭         │       0x00007f057b19c2f3:   jmp    0x00007f057b19c310
   2.79%  │││↘│││         │       0x00007f057b19c2f8:   cmp    $0x2,%r10d
   2.95%  │││ │││         │       0x00007f057b19c2fc:   nopl   0x0(%rax)
   3.08%  │││ │││╭        │       0x00007f057b19c300:   je     0x00007f057b19c385
   2.84%  │││ ││││        │       0x00007f057b19c306:   cmp    $0x3,%r10d
          │││ ││││╭       │       0x00007f057b19c30a:   je     0x00007f057b19c394           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││       │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
          │││ │││││       │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││ │││││       │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   3.05%  │││ ││↘││       │       0x00007f057b19c310:   lea    -0x6(%rsi),%esi
   2.80%  │││ ││ ││       │       0x00007f057b19c313:   call   0x00007f057b19c2a0           ; ImmutableOopMap {}
          │││ ││ ││       │                                                                 ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=1}
          │││ ││ ││       │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││ ││ ││       │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││ ││ ││       │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││ ││ ││       │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││ ││ ││       │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││ ││ ││       │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │││ ││ ││       │                                                                 ;   {static_call}
  12.40%  │││ ││ ││       │       0x00007f057b19c318:   nopl   0x208(%rax,%rax,1)           ;   {other}
   0.37%  │││ ││ ││  ↗↗↗↗↗│       0x00007f057b19c320:   mov    0x10(%rsp),%rbp
   3.13%  │││ ││ ││  ││││││       0x00007f057b19c325:   add    $0x18,%rsp
   8.62%  │││ ││ ││  ││││││↗      0x00007f057b19c329:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││ ││ ││╭ │││││││      0x00007f057b19c330:   ja     0x00007f057b19c3b6
   0.12%  │││ ││ │││ │││││││      0x00007f057b19c336:   ret    
          │↘│ ││ │││ │││││││      0x00007f057b19c337:   movabs $0x7fed34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
          │ │ ││ │││ │││││││      0x00007f057b19c341:   mov    0x10(%rsp),%rbp
          │ │ ││ │││ │││││││      0x00007f057b19c346:   add    $0x18,%rsp
          │ │ ││ │││ │││││││↗     0x00007f057b19c34a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │ ││ │││╭││││││││     0x00007f057b19c351:   ja     0x00007f057b19c3ca
          │ │ ││ ││││││││││││     0x00007f057b19c357:   ret    
          │ ↘ ││ ││││││││││││     0x00007f057b19c358:   movabs $0x7fed34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
          │   ││ ││││││││││││     0x00007f057b19c362:   mov    %r10,%rax
          │   ││ ││││╰│││││││     0x00007f057b19c365:   jmp    0x00007f057b19c320
          │   ↘│ ││││ │││││││     0x00007f057b19c367:   movabs $0x7fed34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
          │    │ ││││ │││││││     0x00007f057b19c371:   mov    %r10,%rax
          │    │ ││││ ╰││││││     0x00007f057b19c374:   jmp    0x00007f057b19c320
          │    ↘ ││││  ││││││     0x00007f057b19c376:   movabs $0x7fed34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
          │      ││││  ││││││     0x00007f057b19c380:   mov    %r10,%rax
          │      ││││  ╰│││││     0x00007f057b19c383:   jmp    0x00007f057b19c320
   0.15%  │      ↘│││   │││││     0x00007f057b19c385:   movabs $0x7fed34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
          │       │││   │││││     0x00007f057b19c38f:   mov    %r10,%rax
   0.00%  │       │││   ╰││││     0x00007f057b19c392:   jmp    0x00007f057b19c320
          │       ↘││    ││││     0x00007f057b19c394:   movabs $0x7fed34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
          │        ││    ││││     0x00007f057b19c39e:   mov    %r10,%rax
          │        ││    ╰│││     0x00007f057b19c3a1:   jmp    0x00007f057b19c320
          ↘        ││     │││     0x00007f057b19c3a6:   mov    %rbp,0x10(%rsp)
                   ││     │││     0x00007f057b19c3ab:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                   ││     ╰││     0x00007f057b19c3b0:   jmp    0x00007f057b19c2ba
                   ││      ││     0x00007f057b19c3b5:   hlt    
                   ↘│      ╰│     0x00007f057b19c3b6:   lea    -0x94(%rip),%rcx        # 0x00007f057b19c329
                    │       │     0x00007f057b19c3bd:   mov    %rcx,0x468(%r15)
                    │       │     0x00007f057b19c3c4:   jmp    0x00007f057ab00000           ;   {runtime_call SafepointBlob}
                    │       │     0x00007f057b19c3c9:   hlt    
                    ↘       ╰     0x00007f057b19c3ca:   lea    -0x87(%rip),%rcx        # 0x00007f057b19c34a
                                  0x00007f057b19c3d1:   mov    %rcx,0x468(%r15)
                                  0x00007f057b19c3d8:   jmp    0x00007f057ab00000           ;   {runtime_call SafepointBlob}
                                  0x00007f057b19c3dd:   hlt    
                                  0x00007f057b19c3de:   xchg   %ax,%ax
                                [Exception Handler]
                                  0x00007f057b19c3e0:   call   0x00007f057ad0b080           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
                                  0x00007f057b19c3e5:   nop
                                [Deopt Handler Code]
                                  0x00007f057b19c3e6:   call   0x00007f057aafef20           ;   {runtime_call DeoptimizationBlob}
                                  0x00007f057b19c3eb:   nop
                                  0x00007f057b19c3ec:   hlt    
                                  0x00007f057b19c3ed:   hlt    
                                  0x00007f057b19c3ee:   hlt    
                                  0x00007f057b19c3ef:   hlt    
                                [Stub Code]
                                  0x00007f057b19c3f0:   movabs $0x0,%rbx                    ;   {no_reloc}
                             ╰    0x00007f057b19c3fa:   jmp    0x00007f057b19c3fa           ;   {runtime_call}
                                  0x00007f057b19c3ff:   hlt    
                                --------------------------------------------------------------------------------
                                [/Disassembly]
                                </print_nmethod>
                                <task_queued compile_id='1061' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark class_static_method ()Ljava/lang/Object;' bytes='8' count='7436' iicount='7436' stamp='30,291' comment='tiered' hot_count='7436'/>
                                <nmethod compile_id='1061' compiler='jvmci' level='4' entry='0x00007f057b19c6a0' size='1064' address='0x00007f057b19c510' relocation_offset='344' insts_offset='400' stub_offset='728' scopes_data_offset='768' scopes_pcs_offset='888' dependencies_offset='1032' oops_offset='744' metadata_offset='752' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark class_static_method ()Ljava/lang/Object;' bytes='8' count='24022' iicount='24024' stamp='30,300'/>
                                <make_not_entrant thread='8094' compile_id='1056' compiler='c1' level='3' stamp='30,300'/>
                                <print_nmethod compile_id='1061' compiler='jvmci' level='4' stamp='30,300'>
                                =========================== JVMCI-compiled nmethod =============================
                                ----------------------------------- Assembly -----------------------------------
                                Compiled method (JVMCI)   30300 1061       4       com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method (8 bytes)
                                 total in heap  [0x00007f057b19c510,0x00007f057b19c938] = 1064
                                 relocation     [0x00007f057b19c668,0x00007f057b19c690] = 40
                                 main code      [0x00007f057b19c6a0,0x00007f057b19c7e8] = 328
                                 stub code      [0x00007f057b19c7e8,0x00007f057b19c7f8] = 16
                                 oops           [0x00007f057b19c7f8,0x00007f057b19c800] = 8
                                 metadata       [0x00007f057b19c800,0x00007f057b19c810] = 16
                                 scopes data    [0x00007f057b19c810,0x00007f057b19c888] = 120
                                 scopes pcs     [0x00007f057b19c888,0x00007f057b19c918] = 144
                                 dependencies   [0x00007f057b19c918,0x00007f057b19c920] = 8
                                 JVMCI data     [0x00007f057b19c920,0x00007f057b19c938] = 24
                                [Disassembly]
                                --------------------------------------------------------------------------------
                                [Constant Pool (empty)]
                                --------------------------------------------------------------------------------
                                [Entry Point]
                                  # {method} {0x00007f04f347b8c8} &apos;class_static_method&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
                                  #           [sp+0x20]  (sp of caller)
                                  0x00007f057b19c6a0:   mov    0x8(%rsi),%r10d
                                  0x00007f057b19c6a4:   movabs $0x7f04f7000000,%r12
                                  0x00007f057b19c6ae:   add    %r12,%r10
                                  0x00007f057b19c6b1:   xor    %r12,%r12
                                  0x00007f057b19c6b4:   cmp    %r10,%rax
                                  0x00007f057b19c6b7:   jne    0x00007f057aaf9080           ;   {runtime_call ic_miss_stub}
                                  0x00007f057b19c6bd:   data16 xchg %ax,%ax
                                [Verified Entry Point]
   0.10%                          0x00007f057b19c6c0:   mov    %eax,-0x14000(%rsp)
   0.21%                          0x00007f057b19c6c7:   sub    $0x18,%rsp
   0.10%                          0x00007f057b19c6cb:   nop
                                  0x00007f057b19c6cc:   cmpl   $0x1,0x20(%r15)
   0.21%                          0x00007f057b19c6d4:   jne    0x00007f057b19c7b5
                                  0x00007f057b19c6da:   mov    %rbp,0x10(%rsp)
   0.08%                          0x00007f057b19c6df:   mov    0xc(%rsi),%esi               ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method@1 (line 90)
                                  0x00007f057b19c6e2:   test   %esi,%esi
                                  0x00007f057b19c6e4:   je     0x00007f057b19c75b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method@4 (line 90)
   0.20%                          0x00007f057b19c6ea:   cmp    $0x1,%esi
                                  0x00007f057b19c6ed:   je     0x00007f057b19c76a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method@4 (line 90)
   0.00%                          0x00007f057b19c6f3:   lea    -0x2(%rsi),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method@4 (line 90)
   0.11%                          0x00007f057b19c6f7:   cmp    $0x2,%r10d
                                  0x00007f057b19c6fb:   nopl   0x0(%rax,%rax,1)
   0.21%                      ╭   0x00007f057b19c700:   jge    0x00007f057b19c71f
                              │   0x00007f057b19c706:   cmp    $0x0,%r10d
                              │   0x00007f057b19c70a:   je     0x00007f057b19c779
                              │   0x00007f057b19c710:   cmp    $0x1,%r10d
                              │   0x00007f057b19c714:   je     0x00007f057b19c788
                              │╭  0x00007f057b19c71a:   jmp    0x00007f057b19c733
   0.00%                      ↘│  0x00007f057b19c71f:   cmp    $0x2,%r10d
                               │  0x00007f057b19c723:   je     0x00007f057b19c797
   0.07%                       │  0x00007f057b19c729:   cmp    $0x3,%r10d
                               │  0x00007f057b19c72d:   je     0x00007f057b19c7a6           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
                               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method@4 (line 90)
   0.00%                       ↘  0x00007f057b19c733:   lea    -0x6(%rsi),%esi              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method@4 (line 90)
   0.19%                          0x00007f057b19c736:   nop
                                  0x00007f057b19c737:   call   0x00007f057b19c2a0           ; ImmutableOopMap {}
                                                                                            ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=1}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method@4 (line 90)
                                                                                            ;   {static_call}
   3.94%                          0x00007f057b19c73c:   nopl   0x22c(%rax,%rax,1)           ;   {other}
   0.29%                          0x00007f057b19c744:   mov    0x10(%rsp),%rbp
   3.13%                          0x00007f057b19c749:   add    $0x18,%rsp
   0.00%                          0x00007f057b19c74d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  93.07%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 1059 
   2.57%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 6, compile id 1086 
   0.53%                kernel  [unknown] 
   0.30%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   2.01%  <...other 377 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 1059 
   3.55%                kernel  [unknown] 
   2.57%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 6, compile id 1086 
   0.20%                        <unknown> 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%             libc.so.6  _IO_setb 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libjvm.so  ElfSymbolTable::lookup 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  outputStream::print 
   0.01%             libc.so.6  _IO_old_init 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.32%  <...other 108 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.64%        jvmci, level 4
   3.55%                kernel
   0.30%             libjvm.so
   0.22%             libc.so.6
   0.20%                      
   0.04%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%         perf-8072.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method
# Parameters: (depth = 256)

# Run progress: 33.33% complete, ETA 00:09:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 410.056 ns/op
# Warmup Iteration   2: 401.853 ns/op
# Warmup Iteration   3: 397.451 ns/op
# Warmup Iteration   4: 399.947 ns/op
# Warmup Iteration   5: 392.477 ns/op
Iteration   1: 401.029 ns/op
Iteration   2: 399.374 ns/op
Iteration   3: 397.610 ns/op
Iteration   4: 398.577 ns/op
Iteration   5: 401.897 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method":
  399.698 ±(99.9%) 6.761 ns/op [Average]
  (min, avg, max) = (397.610, 399.698, 401.897), stdev = 1.756
  CI (99.9%): [392.937, 406.459] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method:asm":
PrintAssembly processed: 224490 total address lines.
Perf output processed (skipped 82.245 seconds):
 Column 1: cycles (51130 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 1063 

                          # parm0:    rdx       = int
                          #           [sp+0x20]  (sp of caller)
                          0x00007fc6bb1951a0:   mov    0x8(%rsi),%r10d
                          0x00007fc6bb1951a4:   movabs $0x7fc637000000,%r12
                          0x00007fc6bb1951ae:   add    %r12,%r10
                          0x00007fc6bb1951b1:   xor    %r12,%r12
                          0x00007fc6bb1951b4:   cmp    %r10,%rax
                          0x00007fc6bb1951b7:   jne    0x00007fc6baaf9080           ;   {runtime_call ic_miss_stub}
                          0x00007fc6bb1951bd:   data16 xchg %ax,%ax
                        [Verified Entry Point]
   9.51%                  0x00007fc6bb1951c0:   mov    %eax,-0x14000(%rsp)
   8.64%                  0x00007fc6bb1951c7:   sub    $0x18,%rsp
   1.98%                  0x00007fc6bb1951cb:   nop
   0.12%                  0x00007fc6bb1951cc:   cmpl   $0x0,0x20(%r15)
   2.03%                  0x00007fc6bb1951d4:   jne    0x00007fc6bb195300
   6.16%                  0x00007fc6bb1951da:   mov    %rbp,0x10(%rsp)
   2.04%                  0x00007fc6bb1951df:   nop
   0.15%                  0x00007fc6bb1951e0:   test   %edx,%edx
          ╭               0x00007fc6bb1951e2:   je     0x00007fc6bb19526e
   2.19%  │               0x00007fc6bb1951e8:   cmpl   $0x102b398,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$1&apos;)}
   5.93%  │╭              0x00007fc6bb1951ef:   jne    0x00007fc6bb1952dd           ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   1.96%  ││              0x00007fc6bb1951f5:   cmp    $0x1,%edx
          ││╭             0x00007fc6bb1951f8:   je     0x00007fc6bb19528f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 122)
          │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.65%  │││             0x00007fc6bb1951fe:   lea    -0x2(%rdx),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 125)
          │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   2.00%  │││             0x00007fc6bb195202:   cmp    $0x2,%r10d
          │││╭            0x00007fc6bb195206:   jge    0x00007fc6bb195225
          ││││            0x00007fc6bb19520c:   cmp    $0x0,%r10d
          ││││╭           0x00007fc6bb195210:   je     0x00007fc6bb19529e
          │││││           0x00007fc6bb195216:   cmp    $0x1,%r10d
          │││││╭          0x00007fc6bb19521a:   je     0x00007fc6bb1952ad
          ││││││╭         0x00007fc6bb195220:   jmp    0x00007fc6bb195239
   6.11%  │││↘│││         0x00007fc6bb195225:   cmp    $0x2,%r10d
          │││ │││╭        0x00007fc6bb195229:   je     0x00007fc6bb1952bc
   2.24%  │││ ││││        0x00007fc6bb19522f:   cmp    $0x3,%r10d
          │││ ││││╭       0x00007fc6bb195233:   je     0x00007fc6bb1952cb           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 122)
          │││ │││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││ │││││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.65%  │││ ││↘││       0x00007fc6bb195239:   lea    -0x6(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 125)
          │││ ││ ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││ ││ ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││ ││ ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││ ││ ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││ ││ ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   2.01%  │││ ││ ││       0x00007fc6bb19523c:   data16 xchg %ax,%ax
   5.62%  │││ ││ ││       0x00007fc6bb19523f:   nop
   2.11%  │││ ││ ││       0x00007fc6bb195240:   data16 xchg %ax,%ax
   0.66%  │││ ││ ││       0x00007fc6bb195243:   call   0x00007fc6baaf9380           ; ImmutableOopMap {}
          │││ ││ ││                                                                 ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=1}
          │││ ││ ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││ ││ ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││ ││ ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││ ││ ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││ ││ ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││ ││ ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          │││ ││ ││                                                                 ;   {optimized virtual_call}
   7.70%  │││ ││ ││       0x00007fc6bb195248:   nopl   0x238(%rax,%rax,1)           ;   {other}
   1.84%  │││ ││ ││↗↗↗↗↗  0x00007fc6bb195250:   mov    0x10(%rsp),%rbp
   3.49%  │││ ││ │││││││  0x00007fc6bb195255:   add    $0x18,%rsp
   5.70%  │││ ││ │││││││  0x00007fc6bb195259:   nopl   0x0(%rax)
   1.50%  │││ ││ │││││││  0x00007fc6bb195260:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││ ││ │││││││  0x00007fc6bb195267:   ja     0x00007fc6bb195310
   1.75%  │││ ││ │││││││  0x00007fc6bb19526d:   ret    
          ↘││ ││ │││││││  0x00007fc6bb19526e:   movabs $0x7fef34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef34d58})}
           ││ ││ │││││││  0x00007fc6bb195278:   mov    0x10(%rsp),%rbp
           ││ ││ │││││││  0x00007fc6bb19527d:   add    $0x18,%rsp
           ││ ││ │││││││  0x00007fc6bb195281:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           ││ ││ │││││││  0x00007fc6bb195288:   ja     0x00007fc6bb195326
           ││ ││ │││││││  0x00007fc6bb19528e:   ret    
           │↘ ││ │││││││  0x00007fc6bb19528f:   movabs $0x7fef34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef34d58})}
           │  ││ │││││││  0x00007fc6bb195299:   mov    %r10,%rax
           │  ││ ││╰││││  0x00007fc6bb19529c:   jmp    0x00007fc6bb195250
           │  ↘│ ││ ││││  0x00007fc6bb19529e:   movabs $0x7fef34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef34d58})}
           │   │ ││ ││││  0x00007fc6bb1952a8:   mov    %r10,%rax
           │   │ ││ ╰│││  0x00007fc6bb1952ab:   jmp    0x00007fc6bb195250
           │   ↘ ││  │││  0x00007fc6bb1952ad:   movabs $0x7fef34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef34d58})}
           │     ││  │││  0x00007fc6bb1952b7:   mov    %r10,%rax
           │     ││  ╰││  0x00007fc6bb1952ba:   jmp    0x00007fc6bb195250
   0.26%   │     ↘│   ││  0x00007fc6bb1952bc:   movabs $0x7fef34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef34d58})}
           │      │   ││  0x00007fc6bb1952c6:   mov    %r10,%rax
           │      │   ╰│  0x00007fc6bb1952c9:   jmp    0x00007fc6bb195250
           │      ↘    │  0x00007fc6bb1952cb:   movabs $0x7fef34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef34d58})}
           │           │  0x00007fc6bb1952d5:   mov    %r10,%rax
           │           ╰  0x00007fc6bb1952d8:   jmp    0x00007fc6bb195250           ;*areturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@17 (line 125)
           ↘              0x00007fc6bb1952dd:   movl   $0xffffffc4,0x484(%r15)      ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                          0x00007fc6bb1952e8:   movq   $0x0,0x490(%r15)
                          0x00007fc6bb1952f3:   call   0x00007fc6baaff17a           ; ImmutableOopMap {rsi=Oop }
....................................................................................................
  84.99%  <total for region 1>

....[Hottest Regions]...............................................................................
  84.99%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 1063 
   8.06%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 1065 
   2.60%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 6, compile id 1088 
   0.59%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   1.79%  <...other 293 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  84.99%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 1063 
   8.06%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 1065 
   3.67%                kernel  [unknown] 
   2.60%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 6, compile id 1088 
   0.09%                        <unknown> 
   0.04%             libjvm.so  fileStream::flush 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  _IO_setb 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%             libc.so.6  _IO_str_init_static_internal 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.28%  <...other 90 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.65%        jvmci, level 4
   3.67%                kernel
   0.25%             libjvm.so
   0.23%             libc.so.6
   0.09%                      
   0.05%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.01%                [vdso]
   0.00%            libjava.so
   0.00%         perf-8171.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method
# Parameters: (depth = 256)

# Run progress: 50.00% complete, ETA 00:06:57
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 362.567 ns/op
# Warmup Iteration   2: 352.305 ns/op
# Warmup Iteration   3: 356.193 ns/op
# Warmup Iteration   4: 353.782 ns/op
# Warmup Iteration   5: 356.037 ns/op
Iteration   1: 351.170 ns/op
Iteration   2: 359.152 ns/op
Iteration   3: 359.619 ns/op
Iteration   4: 441.234 ns/op
Iteration   5: 430.191 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method":
  388.273 ±(99.9%) 167.930 ns/op [Average]
  (min, avg, max) = (351.170, 388.273, 441.234), stdev = 43.611
  CI (99.9%): [220.343, 556.204] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method:asm":
PrintAssembly processed: 215590 total address lines.
Perf output processed (skipped 81.156 seconds):
 Column 1: cycles (51513 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 1072 

                            dependencies   [0x00007f2653196d50,0x00007f2653196d58] = 8
                            JVMCI data     [0x00007f2653196d58,0x00007f2653196d70] = 24
                           [Disassembly]
                           --------------------------------------------------------------------------------
                           [Constant Pool (empty)]
                           --------------------------------------------------------------------------------
                           [Verified Entry Point]
                             # {method} {0x00007f25cb4e4ff8} &apos;itf_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$RInterface&apos;
                             # parm0:    rsi       = int
                             #           [sp+0x20]  (sp of caller)
   8.23%                     0x00007f2653196b20:   mov    %eax,-0x14000(%rsp)
   7.08%                     0x00007f2653196b27:   sub    $0x18,%rsp
   2.68%                     0x00007f2653196b2b:   nop
   2.30%                     0x00007f2653196b2c:   cmpl   $0x1,0x20(%r15)
   3.33%  ╭                  0x00007f2653196b34:   jne    0x00007f2653196c26
   3.08%  │              ↗   0x00007f2653196b3a:   mov    %rbp,0x10(%rsp)
   2.95%  │              │   0x00007f2653196b3f:   nop
   2.42%  │              │   0x00007f2653196b40:   test   %esi,%esi
          │╭             │   0x00007f2653196b42:   je     0x00007f2653196bb7           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 129)
   3.12%  ││             │   0x00007f2653196b48:   cmp    $0x1,%esi
          ││╭            │   0x00007f2653196b4b:   je     0x00007f2653196bd8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 129)
          │││            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   3.06%  │││            │   0x00007f2653196b51:   lea    -0x2(%rsi),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@10 (line 132)
          │││            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   2.81%  │││            │   0x00007f2653196b55:   cmp    $0x2,%r10d
          │││╭           │   0x00007f2653196b59:   jge    0x00007f2653196b78
          ││││           │   0x00007f2653196b5f:   cmp    $0x0,%r10d
          ││││╭          │   0x00007f2653196b63:   je     0x00007f2653196be7
          │││││          │   0x00007f2653196b69:   cmp    $0x1,%r10d
          │││││╭         │   0x00007f2653196b6d:   je     0x00007f2653196bf6
          ││││││╭        │   0x00007f2653196b73:   jmp    0x00007f2653196b90
   3.25%  │││↘│││        │   0x00007f2653196b78:   cmp    $0x2,%r10d
   2.56%  │││ │││        │   0x00007f2653196b7c:   nopl   0x0(%rax)
   3.05%  │││ │││╭       │   0x00007f2653196b80:   je     0x00007f2653196c05
   2.62%  │││ ││││       │   0x00007f2653196b86:   cmp    $0x3,%r10d
          │││ ││││╭      │   0x00007f2653196b8a:   je     0x00007f2653196c14           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 129)
          │││ │││││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││ │││││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   3.31%  │││ ││↘││      │   0x00007f2653196b90:   lea    -0x6(%rsi),%esi
   2.67%  │││ ││ ││      │   0x00007f2653196b93:   call   0x00007f2653196b20           ; ImmutableOopMap {}
          │││ ││ ││      │                                                             ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=1}
          │││ ││ ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││ ││ ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││ ││ ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││ ││ ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││ ││ ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││ ││ ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │││ ││ ││      │                                                             ;   {static_call}
  11.80%  │││ ││ ││      │   0x00007f2653196b98:   nopl   0x208(%rax,%rax,1)           ;   {other}
   0.41%  │││ ││ ││ ↗↗↗↗↗│   0x00007f2653196ba0:   mov    0x10(%rsp),%rbp
   4.17%  │││ ││ ││ ││││││   0x00007f2653196ba5:   add    $0x18,%rsp
   7.89%  │││ ││ ││ ││││││↗  0x00007f2653196ba9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││ ││ ││╭│││││││  0x00007f2653196bb0:   ja     0x00007f2653196c36
   0.30%  │││ ││ ││││││││││  0x00007f2653196bb6:   ret    
          │↘│ ││ ││││││││││  0x00007f2653196bb7:   movabs $0x7fed34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
          │ │ ││ ││││││││││  0x00007f2653196bc1:   mov    0x10(%rsp),%rbp
          │ │ ││ ││││││││││  0x00007f2653196bc6:   add    $0x18,%rsp
          │ │ ││ ││││││││││  0x00007f2653196bca:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │ ││ ││││││││││  0x00007f2653196bd1:   ja     0x00007f2653196c4a
          │ │ ││ ││││││││││  0x00007f2653196bd7:   ret    
          │ ↘ ││ ││││││││││  0x00007f2653196bd8:   movabs $0x7fed34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
          │   ││ ││││││││││  0x00007f2653196be2:   mov    %r10,%rax
          │   ││ │││╰││││││  0x00007f2653196be5:   jmp    0x00007f2653196ba0
          │   ↘│ │││ ││││││  0x00007f2653196be7:   movabs $0x7fed34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
          │    │ │││ ││││││  0x00007f2653196bf1:   mov    %r10,%rax
          │    │ │││ ╰│││││  0x00007f2653196bf4:   jmp    0x00007f2653196ba0
          │    ↘ │││  │││││  0x00007f2653196bf6:   movabs $0x7fed34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
          │      │││  │││││  0x00007f2653196c00:   mov    %r10,%rax
          │      │││  ╰││││  0x00007f2653196c03:   jmp    0x00007f2653196ba0
   0.25%  │      ↘││   ││││  0x00007f2653196c05:   movabs $0x7fed34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
   0.00%  │       ││   ││││  0x00007f2653196c0f:   mov    %r10,%rax
   0.00%  │       ││   ╰│││  0x00007f2653196c12:   jmp    0x00007f2653196ba0
          │       ↘│    │││  0x00007f2653196c14:   movabs $0x7fed34d58,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
          │        │    │││  0x00007f2653196c1e:   mov    %r10,%rax
          │        │    ╰││  0x00007f2653196c21:   jmp    0x00007f2653196ba0
          ↘        │     ││  0x00007f2653196c26:   mov    %rbp,0x10(%rsp)
                   │     ││  0x00007f2653196c2b:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                   │     ╰│  0x00007f2653196c30:   jmp    0x00007f2653196b3a
                   │      │  0x00007f2653196c35:   hlt    
                   ↘      ╰  0x00007f2653196c36:   lea    -0x94(%rip),%rcx        # 0x00007f2653196ba9
                             0x00007f2653196c3d:   mov    %rcx,0x468(%r15)
                             0x00007f2653196c44:   jmp    0x00007f2652b00000           ;   {runtime_call SafepointBlob}
....................................................................................................
  83.36%  <total for region 1>

....[Hottest Regions]...............................................................................
  83.36%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 1072 
   8.98%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 1074 
   2.59%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 6, compile id 1098 
   0.71%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%             libc.so.6  __strchr_avx2 
   0.05%                kernel  [unknown] 
   2.51%  <...other 422 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  83.36%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 1072 
   8.98%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 1074 
   3.99%                kernel  [unknown] 
   2.59%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 6, compile id 1098 
   0.05%             libc.so.6  __strchr_avx2 
   0.04%             libc.so.6  __vfprintf_internal 
   0.04%             libjvm.so  fileStream::write 
   0.04%             libjvm.so  defaultStream::hold 
   0.04%        hsdis-amd64.so  print_insn 
   0.04%             libc.so.6  _IO_fwrite 
   0.03%             libc.so.6  __GI___libc_write 
   0.03%             libjvm.so  xmlTextStream::flush 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libc.so.6  _IO_setb 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libc.so.6  __vsnprintf_internal 
   0.01%             libc.so.6  _IO_fflush 
   0.01%   libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.58%  <...other 188 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.94%        jvmci, level 4
   3.99%                kernel
   0.43%             libjvm.so
   0.38%             libc.so.6
   0.15%   libjvmcicompiler.so
   0.06%        hsdis-amd64.so
   0.03%           interpreter
   0.01%                      
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%             libzip.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static
# Parameters: (depth = 256)

# Run progress: 66.67% complete, ETA 00:04:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11.535 ns/op
# Warmup Iteration   2: 11.561 ns/op
# Warmup Iteration   3: 11.332 ns/op
# Warmup Iteration   4: 11.273 ns/op
# Warmup Iteration   5: 11.204 ns/op
Iteration   1: 11.310 ns/op
Iteration   2: 11.353 ns/op
Iteration   3: 11.365 ns/op
Iteration   4: 11.356 ns/op
Iteration   5: 11.418 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static":
  11.360 ±(99.9%) 0.149 ns/op [Average]
  (min, avg, max) = (11.310, 11.360, 11.418), stdev = 0.039
  CI (99.9%): [11.212, 11.509] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static:asm":
PrintAssembly processed: 224091 total address lines.
Perf output processed (skipped 85.918 seconds):
 Column 1: cycles (51263 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 1070 

             # {method} {0x00007f514f47b9a0} &apos;lambda_non_static&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f51d71980a0:   mov    0x8(%rsi),%r10d
             0x00007f51d71980a4:   movabs $0x7f5153000000,%r12
             0x00007f51d71980ae:   add    %r12,%r10
             0x00007f51d71980b1:   xor    %r12,%r12
             0x00007f51d71980b4:   cmp    %r10,%rax
             0x00007f51d71980b7:   jne    0x00007f51d6af9080           ;   {runtime_call ic_miss_stub}
             0x00007f51d71980bd:   data16 xchg %ax,%ax
           [Verified Entry Point]
   4.25%     0x00007f51d71980c0:   mov    %eax,-0x14000(%rsp)
   5.19%     0x00007f51d71980c7:   sub    $0x18,%rsp
   4.30%     0x00007f51d71980cb:   nop
   0.01%     0x00007f51d71980cc:   cmpl   $0x1,0x20(%r15)
   5.11%     0x00007f51d71980d4:   jne    0x00007f51d7198172
   0.19%     0x00007f51d71980da:   mov    %rbp,0x10(%rsp)
   4.36%     0x00007f51d71980df:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
   0.02%     0x00007f51d71980e2:   cmpl   $0x102b158,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f51d719819a
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$$Lambda+0x00007f515402b158&apos;)}
   5.72%  ╭  0x00007f51d71980ed:   jne    0x00007f51d719813b           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
   4.59%  │  0x00007f51d71980f3:   mov    0x14(%rsi),%r10d             ;*getfield wrapper {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@5 (line 96)
   0.02%  │  0x00007f51d71980f7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
   4.88%  │  0x00007f51d7198100:   cmpl   $0x0,0xc(,%r10,8)            ; implicit exception: dispatches to 0x00007f51d71981bd
   4.47%  │  0x00007f51d7198109:   jne    0x00007f51d7198163           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$new$0@4 (line 138)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f515402b158::apply@8
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
   0.16%  │  0x00007f51d719810f:   mov    0xc(,%rax,8),%eax            ; ImmutableOopMap {rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
   5.19%  │  0x00007f51d7198116:   test   %eax,(%r12,%rax,8)           ; implicit exception: dispatches to 0x00007f51d71981e0
   7.08%  │  0x00007f51d719811a:   movabs $0x7fed34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
   0.06%  │  0x00007f51d7198124:   mov    0x10(%rsp),%rbp
   4.18%  │  0x00007f51d7198129:   add    $0x18,%rsp
   0.02%  │  0x00007f51d719812d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
   0.00%  │  0x00007f51d7198134:   ja     0x00007f51d7198186
   5.42%  │  0x00007f51d719813a:   ret    
          ↘  0x00007f51d719813b:   mov    $0x14,%r11
             0x00007f51d7198142:   mov    $0xffffffcd,%r10d
             0x00007f51d7198148:   mov    %r10d,0x484(%r15)            ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
             0x00007f51d719814f:   mov    %r11,0x490(%r15)
             0x00007f51d7198156:   call   0x00007f51d6aff17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f51d719815b:   nopl   0x0(%rax,%rax,1)             ;*areturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  65.23%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 5, compile id 1093 

              0x00007f51d719d210:   mov    0x18(%rsp),%rsi
              0x00007f51d719d215:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f51d719d220:   cmpb   $0x0,0x94(%rsi)
              0x00007f51d719d227:   jne    0x00007f51d719d2ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
              0x00007f51d719d22d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f51d719d236:   jmp    0x00007f51d719d24f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@13 (line 236)
          │   0x00007f51d719d23b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
   5.13%  │↗  0x00007f51d719d240:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
   0.17%  ││  0x00007f51d719d247:   test   %eax,(%r11)                  ;   {poll}
   4.15%  ││  0x00007f51d719d24a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@13 (line 236)
   0.01%  ↘│  0x00007f51d719d24f:   mov    0x8(%rsp),%r10
   5.16%   │  0x00007f51d719d254:   mov    %r10,%rsi
   0.15%   │  0x00007f51d719d257:   call   0x00007f51d6af9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual lambda_non_static {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   0.77%   │  0x00007f51d719d25c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   4.15%   │  0x00007f51d719d264:   mov    0x20(%rsp),%r10
   5.17%   │  0x00007f51d719d269:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@26 (line 237)
   0.26%   │  0x00007f51d719d26c:   mov    0x18(%rsp),%rsi
   4.22%   │  0x00007f51d719d271:   cmpb   $0x0,0x94(%rsi)
   0.30%   ╰  0x00007f51d719d278:   je     0x00007f51d719d240           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
              0x00007f51d719d27a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@36 (line 239)
              0x00007f51d719d27f:   nop
              0x00007f51d719d280:   call   0x00007f51eecd32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f51d719d285:   nop
              0x00007f51d719d286:   mov    0x10(%rsp),%rdx
              0x00007f51d719d28b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@40 (line 239)
              0x00007f51d719d28f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  29.62%  <total for region 2>

....[Hottest Regions]...............................................................................
  65.23%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 1070 
  29.62%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 5, compile id 1093 
   0.62%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   2.18%  <...other 399 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.23%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 1070 
  29.62%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 5, compile id 1093 
   4.21%                kernel  [unknown] 
   0.19%                        <unknown> 
   0.04%             libjvm.so  fileStream::write 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libjvm.so  xmlStream::write_text 
   0.02%             libc.so.6  read 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libjvm.so  Mutex::lock 
   0.38%  <...other 130 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.85%        jvmci, level 4
   4.21%                kernel
   0.39%             libjvm.so
   0.24%             libc.so.6
   0.19%                      
   0.04%           interpreter
   0.04%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%           c1, level 3
   0.00%         perf-8411.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static
# Parameters: (depth = 256)

# Run progress: 83.33% complete, ETA 00:02:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.296 ns/op
# Warmup Iteration   2: 9.124 ns/op
# Warmup Iteration   3: 9.005 ns/op
# Warmup Iteration   4: 8.950 ns/op
# Warmup Iteration   5: 8.991 ns/op
Iteration   1: 8.971 ns/op
Iteration   2: 8.998 ns/op
Iteration   3: 8.938 ns/op
Iteration   4: 9.141 ns/op
Iteration   5: 9.076 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static":
  9.025 ±(99.9%) 0.318 ns/op [Average]
  (min, avg, max) = (8.938, 9.025, 9.141), stdev = 0.083
  CI (99.9%): [8.706, 9.343] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static:asm":
PrintAssembly processed: 222876 total address lines.
Perf output processed (skipped 85.454 seconds):
 Column 1: cycles (51295 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 1089 

             # {method} {0x00007f153447ba70} &apos;lambda_static&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f15c319cd00:   mov    0x8(%rsi),%r10d
             0x00007f15c319cd04:   movabs $0x7f153f000000,%r12
             0x00007f15c319cd0e:   add    %r12,%r10
             0x00007f15c319cd11:   xor    %r12,%r12
             0x00007f15c319cd14:   cmp    %r10,%rax
             0x00007f15c319cd17:   jne    0x00007f15c2af9080           ;   {runtime_call ic_miss_stub}
             0x00007f15c319cd1d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   5.45%     0x00007f15c319cd20:   mov    %eax,-0x14000(%rsp)
   6.78%     0x00007f15c319cd27:   sub    $0x18,%rsp
   5.40%     0x00007f15c319cd2b:   nop
   0.11%     0x00007f15c319cd2c:   cmpl   $0x0,0x20(%r15)
   6.34%     0x00007f15c319cd34:   jne    0x00007f15c319cd94
   0.34%     0x00007f15c319cd3a:   mov    %rbp,0x10(%rsp)
   5.33%     0x00007f15c319cd3f:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*getstatic LAMBDA_STATIC {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@0 (line 102)
   0.16%     0x00007f15c319cd42:   cmpl   $0x0,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f15c319cdb5
   8.80%  ╭  0x00007f15c319cd4a:   jne    0x00007f15c319cd71
   6.53%  │  0x00007f15c319cd50:   movabs $0x7fed34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
   0.10%  │  0x00007f15c319cd5a:   mov    0x10(%rsp),%rbp
   5.35%  │  0x00007f15c319cd5f:   add    $0x18,%rsp
   0.15%  │  0x00007f15c319cd63:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f15c319cd6a:   ja     0x00007f15c319cda1
   6.53%  │  0x00007f15c319cd70:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@12 (line 102)
          ↘  0x00007f15c319cd71:   movl   $0xffffffed,0x484(%r15)      ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$static$1@1 (line 146)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f154002af20::apply@4
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@7 (line 102)
             0x00007f15c319cd7c:   movq   $0x14,0x490(%r15)
             0x00007f15c319cd87:   call   0x00007f15c2aff17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*getstatic LAMBDA_STATIC {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@0 (line 102)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  57.38%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 5, compile id 1113 

              0x00007f15c31a0f90:   mov    0x18(%rsp),%rsi
              0x00007f15c31a0f95:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f15c31a0fa0:   cmpb   $0x0,0x94(%rsi)
              0x00007f15c31a0fa7:   jne    0x00007f15c31a103a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
              0x00007f15c31a0fad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f15c31a0fb6:   jmp    0x00007f15c31a0fcf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@13 (line 236)
          │   0x00007f15c31a0fbb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
   6.29%  │↗  0x00007f15c31a0fc0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
   0.20%  ││  0x00007f15c31a0fc7:   test   %eax,(%r11)                  ;   {poll}
   5.53%  ││  0x00007f15c31a0fca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@13 (line 236)
   0.12%  ↘│  0x00007f15c31a0fcf:   mov    0x8(%rsp),%r10
   6.47%   │  0x00007f15c31a0fd4:   mov    %r10,%rsi
   0.26%   │  0x00007f15c31a0fd7:   call   0x00007f15c2af9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual lambda_static {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   0.99%   │  0x00007f15c31a0fdc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   5.28%   │  0x00007f15c31a0fe4:   mov    0x20(%rsp),%r10
   6.59%   │  0x00007f15c31a0fe9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@26 (line 237)
   0.37%   │  0x00007f15c31a0fec:   mov    0x18(%rsp),%rsi
   5.36%   │  0x00007f15c31a0ff1:   cmpb   $0x0,0x94(%rsi)
   0.62%   ╰  0x00007f15c31a0ff8:   je     0x00007f15c31a0fc0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
              0x00007f15c31a0ffa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@36 (line 239)
              0x00007f15c31a0fff:   nop
              0x00007f15c31a1000:   call   0x00007f15d98d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f15c31a1005:   nop
              0x00007f15c31a1006:   mov    0x10(%rsp),%rdx
              0x00007f15c31a100b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@40 (line 239)
              0x00007f15c31a100f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  38.08%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.38%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 1089 
  38.08%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 5, compile id 1113 
   0.59%                kernel  [unknown] 
   0.34%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   1.92%  <...other 342 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.38%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 1089 
  38.08%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 5, compile id 1113 
   3.74%                kernel  [unknown] 
   0.16%                        <unknown> 
   0.04%             libc.so.6  __vfprintf_internal 
   0.04%             libc.so.6  __strchr_avx2 
   0.04%             libjvm.so  xmlStream::write 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  defaultStream::has_log_file 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  _IO_setb 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libjvm.so  nmethod::has_code_comment 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.27%  <...other 90 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.46%        jvmci, level 4
   3.74%                kernel
   0.32%             libjvm.so
   0.23%             libc.so.6
   0.16%                      
   0.04%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.00%                [vdso]
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:02

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

Benchmark                                                     (depth)  Mode  Cnt    Score     Error  Units
RecursiveMethodCallBenchmark.class_non_static_method              256  avgt    5  393.963 ±  26.156  ns/op
RecursiveMethodCallBenchmark.class_non_static_method:asm          256  avgt           NaN              ---
RecursiveMethodCallBenchmark.class_static_method                  256  avgt    5  359.330 ±   7.381  ns/op
RecursiveMethodCallBenchmark.class_static_method:asm              256  avgt           NaN              ---
RecursiveMethodCallBenchmark.interface_non_static_method          256  avgt    5  399.698 ±   6.761  ns/op
RecursiveMethodCallBenchmark.interface_non_static_method:asm      256  avgt           NaN              ---
RecursiveMethodCallBenchmark.interface_static_method              256  avgt    5  388.273 ± 167.930  ns/op
RecursiveMethodCallBenchmark.interface_static_method:asm          256  avgt           NaN              ---
RecursiveMethodCallBenchmark.lambda_non_static                    256  avgt    5   11.360 ±   0.149  ns/op
RecursiveMethodCallBenchmark.lambda_non_static:asm                256  avgt           NaN              ---
RecursiveMethodCallBenchmark.lambda_static                        256  avgt    5    9.025 ±   0.318  ns/op
RecursiveMethodCallBenchmark.lambda_static:asm                    256  avgt           NaN              ---
