# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
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
# Warmup Iteration   1: 475.540 ns/op
# Warmup Iteration   2: 474.900 ns/op
# Warmup Iteration   3: 473.155 ns/op
# Warmup Iteration   4: 473.170 ns/op
# Warmup Iteration   5: 473.180 ns/op
Iteration   1: 473.152 ns/op
Iteration   2: 473.159 ns/op
Iteration   3: 473.180 ns/op
Iteration   4: 473.141 ns/op
Iteration   5: 473.153 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method":
  473.157 ±(99.9%) 0.056 ns/op [Average]
  (min, avg, max) = (473.141, 473.157, 473.180), stdev = 0.014
  CI (99.9%): [473.101, 473.213] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method:asm":
PrintAssembly processed: 219968 total address lines.
Perf output processed (skipped 60.436 seconds):
 Column 1: cycles (51049 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 968 

   1.31%       0x00007fb03f23f9f1:   lea    -0x2(%rdx),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@11 (line 109)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   1.30%       0x00007fb03f23f9f5:   cmp    $0x2,%r10d
          ╭    0x00007fb03f23f9f9:   jge    0x00007fb03f23fa18
          │    0x00007fb03f23f9ff:   cmp    $0x0,%r10d
          │    0x00007fb03f23fa03:   je     0x00007fb03f23fa87
          │    0x00007fb03f23fa09:   cmp    $0x1,%r10d
          │    0x00007fb03f23fa0d:   je     0x00007fb03f23fa96
          │╭   0x00007fb03f23fa13:   jmp    0x00007fb03f23fa30
   1.18%  ↘│   0x00007fb03f23fa18:   cmp    $0x2,%r10d
   0.95%   │   0x00007fb03f23fa1c:   nopl   0x0(%rax)
   1.27%   │   0x00007fb03f23fa20:   je     0x00007fb03f23faa5
   1.16%   │   0x00007fb03f23fa26:   cmp    $0x3,%r10d
           │   0x00007fb03f23fa2a:   je     0x00007fb03f23fab4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 106)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   1.03%   ↘   0x00007fb03f23fa30:   lea    -0x6(%rdx),%edx
   0.92%       0x00007fb03f23fa33:   call   0x00007fb03f23f9c0           ; ImmutableOopMap {}
                                                                         ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=1}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                         ;   {optimized virtual_call}
  24.77%       0x00007fb03f23fa38:   nopl   0x228(%rax,%rax,1)           ;   {other}
   1.67%    ↗  0x00007fb03f23fa40:   mov    0x10(%rsp),%rbp
  38.26%    │  0x00007fb03f23fa45:   add    $0x18,%rsp
   0.01%    │  0x00007fb03f23fa49:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007fb03f23fa50:   ja     0x00007fb03f23fad6
   3.58%    │  0x00007fb03f23fa56:   ret    
            │  0x00007fb03f23fa57:   movabs $0x7fec34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
            │  0x00007fb03f23fa61:   mov    0x10(%rsp),%rbp
            │  0x00007fb03f23fa66:   add    $0x18,%rsp
            │  0x00007fb03f23fa6a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007fb03f23fa71:   ja     0x00007fb03f23faea
            │  0x00007fb03f23fa77:   ret    
            │  0x00007fb03f23fa78:   movabs $0x7fec34c48,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
            │  0x00007fb03f23fa82:   mov    %r10,%rax
            ╰  0x00007fb03f23fa85:   jmp    0x00007fb03f23fa40
               0x00007fb03f23fa87:   movabs $0x7fec34c48,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
....................................................................................................
  74.80%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 968 

             # parm0:    rdx       = int
             #           [sp+0x20]  (sp of caller)
             0x00007fb03f23f9a0:   mov    0x8(%rsi),%r10d
             0x00007fb03f23f9a4:   movabs $0x7fafc3000000,%r12
             0x00007fb03f23f9ae:   add    %r12,%r10
             0x00007fb03f23f9b1:   xor    %r12,%r12
             0x00007fb03f23f9b4:   cmp    %r10,%rax
             0x00007fb03f23f9b7:   jne    0x00007fb03ec2f080           ;   {runtime_call ic_miss_stub}
             0x00007fb03f23f9bd:   data16 xchg %ax,%ax
           [Verified Entry Point]
   3.26%     0x00007fb03f23f9c0:   mov    %eax,-0x14000(%rsp)
   2.34%     0x00007fb03f23f9c7:   sub    $0x18,%rsp
   1.29%     0x00007fb03f23f9cb:   nop
   1.21%     0x00007fb03f23f9cc:   cmpl   $0x1,0x20(%r15)
   1.65%     0x00007fb03f23f9d4:   jne    0x00007fb03f23fac6
   1.26%     0x00007fb03f23f9da:   mov    %rbp,0x10(%rsp)
   1.23%     0x00007fb03f23f9df:   nop
   1.20%     0x00007fb03f23f9e0:   test   %edx,%edx
             0x00007fb03f23f9e2:   je     0x00007fb03f23fa57           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 106)
   1.00%     0x00007fb03f23f9e8:   cmp    $0x1,%edx
             0x00007fb03f23f9eb:   je     0x00007fb03f23fa78           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 106)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   1.31%     0x00007fb03f23f9f1:   lea    -0x2(%rdx),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@11 (line 109)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   1.30%     0x00007fb03f23f9f5:   cmp    $0x2,%r10d
          ╭  0x00007fb03f23f9f9:   jge    0x00007fb03f23fa18
          │  0x00007fb03f23f9ff:   cmp    $0x0,%r10d
          │  0x00007fb03f23fa03:   je     0x00007fb03f23fa87
          │  0x00007fb03f23fa09:   cmp    $0x1,%r10d
          │  0x00007fb03f23fa0d:   je     0x00007fb03f23fa96
          │  0x00007fb03f23fa13:   jmp    0x00007fb03f23fa30
   1.18%  ↘  0x00007fb03f23fa18:   cmp    $0x2,%r10d
   0.95%     0x00007fb03f23fa1c:   nopl   0x0(%rax)
....................................................................................................
  17.04%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.80%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 968 
  17.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 968 
   2.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 969 
   2.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 5, compile id 997 
   1.26%              kernel  [unknown] 
   0.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 969 
   0.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 968 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.83%  <...other 275 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 968 
   2.89%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 969 
   2.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 5, compile id 997 
   2.26%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.02%      hsdis-amd64.so  print_insn 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.12%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.38%      jvmci, level 4
   2.26%              kernel
   0.11%                    
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method
# Parameters: (depth = 256)

# Run progress: 16.67% complete, ETA 00:09:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 477.222 ns/op
# Warmup Iteration   2: 475.151 ns/op
# Warmup Iteration   3: 476.530 ns/op
# Warmup Iteration   4: 474.883 ns/op
# Warmup Iteration   5: 474.888 ns/op
Iteration   1: 474.883 ns/op
Iteration   2: 474.911 ns/op
Iteration   3: 474.881 ns/op
Iteration   4: 474.888 ns/op
Iteration   5: 474.890 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method":
  474.891 ±(99.9%) 0.047 ns/op [Average]
  (min, avg, max) = (474.881, 474.891, 474.911), stdev = 0.012
  CI (99.9%): [474.844, 474.937] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method:asm":
PrintAssembly processed: 217069 total address lines.
Perf output processed (skipped 60.375 seconds):
 Column 1: cycles (50676 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 971 

   0.72%       0x00007f651323f1d1:   lea    -0x2(%rsi),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 116)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   0.84%       0x00007f651323f1d5:   cmp    $0x2,%r10d
          ╭    0x00007f651323f1d9:   jge    0x00007f651323f1f8
          │    0x00007f651323f1df:   cmp    $0x0,%r10d
          │    0x00007f651323f1e3:   je     0x00007f651323f267
          │    0x00007f651323f1e9:   cmp    $0x1,%r10d
          │    0x00007f651323f1ed:   je     0x00007f651323f276
          │╭   0x00007f651323f1f3:   jmp    0x00007f651323f210
   0.70%  ↘│   0x00007f651323f1f8:   cmp    $0x2,%r10d
   0.67%   │   0x00007f651323f1fc:   nopl   0x0(%rax)
   0.72%   │   0x00007f651323f200:   je     0x00007f651323f285
   0.64%   │   0x00007f651323f206:   cmp    $0x3,%r10d
           │   0x00007f651323f20a:   je     0x00007f651323f294           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   0.67%   ↘   0x00007f651323f210:   lea    -0x6(%rsi),%esi
   0.71%       0x00007f651323f213:   call   0x00007f6512c2f980           ; ImmutableOopMap {}
                                                                         ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=1}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                         ;   {static_call}
  32.44%       0x00007f651323f218:   nopl   0x208(%rax,%rax,1)           ;   {other}
   2.19%    ↗  0x00007f651323f220:   mov    0x10(%rsp),%rbp
  39.85%    │  0x00007f651323f225:   add    $0x18,%rsp
            │  0x00007f651323f229:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f651323f230:   ja     0x00007f651323f2b6
   3.75%    │  0x00007f651323f236:   ret    
            │  0x00007f651323f237:   movabs $0x7fec34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
            │  0x00007f651323f241:   mov    0x10(%rsp),%rbp
            │  0x00007f651323f246:   add    $0x18,%rsp
            │  0x00007f651323f24a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f651323f251:   ja     0x00007f651323f2ca
            │  0x00007f651323f257:   ret    
            │  0x00007f651323f258:   movabs $0x7fec34c48,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
            │  0x00007f651323f262:   mov    %r10,%rax
            ╰  0x00007f651323f265:   jmp    0x00007f651323f220
               0x00007f651323f267:   movabs $0x7fec34c48,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
....................................................................................................
  82.36%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 971 

            dependencies   [0x00007f651323f3d0,0x00007f651323f3d8] = 8
            JVMCI data     [0x00007f651323f3d8,0x00007f651323f3f0] = 24
           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Verified Entry Point]
             # {method} {0x00007f649347e000} &apos;cls_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
             # parm0:    rsi       = int
             #           [sp+0x20]  (sp of caller)
   2.20%     0x00007f651323f1a0:   mov    %eax,-0x14000(%rsp)
   1.66%     0x00007f651323f1a7:   sub    $0x18,%rsp
   0.80%     0x00007f651323f1ab:   nop
   0.66%     0x00007f651323f1ac:   cmpl   $0x0,0x20(%r15)
   0.65%     0x00007f651323f1b4:   jne    0x00007f651323f2a6
   0.78%     0x00007f651323f1ba:   mov    %rbp,0x10(%rsp)
   0.66%     0x00007f651323f1bf:   nop
   0.65%     0x00007f651323f1c0:   test   %esi,%esi
             0x00007f651323f1c2:   je     0x00007f651323f237           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
   0.64%     0x00007f651323f1c8:   cmp    $0x1,%esi
             0x00007f651323f1cb:   je     0x00007f651323f258           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   0.72%     0x00007f651323f1d1:   lea    -0x2(%rsi),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 116)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   0.84%     0x00007f651323f1d5:   cmp    $0x2,%r10d
          ╭  0x00007f651323f1d9:   jge    0x00007f651323f1f8
          │  0x00007f651323f1df:   cmp    $0x0,%r10d
          │  0x00007f651323f1e3:   je     0x00007f651323f267
          │  0x00007f651323f1e9:   cmp    $0x1,%r10d
          │  0x00007f651323f1ed:   je     0x00007f651323f276
          │  0x00007f651323f1f3:   jmp    0x00007f651323f210
   0.70%  ↘  0x00007f651323f1f8:   cmp    $0x2,%r10d
   0.67%     0x00007f651323f1fc:   nopl   0x0(%rax)
....................................................................................................
  10.26%  <total for region 2>

....[Hottest Regions]...............................................................................
  82.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 971 
  10.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 971 
   2.43%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 972 
   2.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 7, compile id 1007 
   0.41%              kernel  [unknown] 
   0.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 972 
   0.19%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 971 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.22%  <...other 346 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.73%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 971 
   2.66%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 972 
   2.25%              kernel  [unknown] 
   2.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 7, compile id 1007 
   0.04%                      <unknown> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_fflush 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%           libjvm.so  InstanceKlass::find_local_field 
   0.12%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.46%      jvmci, level 4
   2.25%              kernel
   0.11%           libjvm.so
   0.10%        libc-2.31.so
   0.04%                    
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%          ld-2.31.so
   0.00%    Unknown, level 0
   0.00%         c1, level 3
   0.00%    perf-2127761.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method
# Parameters: (depth = 256)

# Run progress: 33.33% complete, ETA 00:07:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 494.276 ns/op
# Warmup Iteration   2: 492.161 ns/op
# Warmup Iteration   3: 490.351 ns/op
# Warmup Iteration   4: 490.345 ns/op
# Warmup Iteration   5: 490.356 ns/op
Iteration   1: 490.359 ns/op
Iteration   2: 490.348 ns/op
Iteration   3: 490.337 ns/op
Iteration   4: 490.362 ns/op
Iteration   5: 490.353 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method":
  490.352 ±(99.9%) 0.038 ns/op [Average]
  (min, avg, max) = (490.337, 490.352, 490.362), stdev = 0.010
  CI (99.9%): [490.314, 490.390] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method:asm":
PrintAssembly processed: 217203 total address lines.
Perf output processed (skipped 60.322 seconds):
 Column 1: cycles (51055 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 965 

   0.67%       0x00007f60eb24347e:   lea    -0x2(%rdx),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 125)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.25%       0x00007f60eb243482:   cmp    $0x2,%r10d
          ╭    0x00007f60eb243486:   jge    0x00007f60eb2434a5
          │    0x00007f60eb24348c:   cmp    $0x0,%r10d
          │    0x00007f60eb243490:   je     0x00007f60eb24351e
          │    0x00007f60eb243496:   cmp    $0x1,%r10d
          │    0x00007f60eb24349a:   je     0x00007f60eb24352d
          │╭   0x00007f60eb2434a0:   jmp    0x00007f60eb2434b9
   2.04%  ↘│   0x00007f60eb2434a5:   cmp    $0x2,%r10d
           │   0x00007f60eb2434a9:   je     0x00007f60eb24353c
   0.43%   │   0x00007f60eb2434af:   cmp    $0x3,%r10d
           │   0x00007f60eb2434b3:   je     0x00007f60eb24354b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 122)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.60%   ↘   0x00007f60eb2434b9:   lea    -0x6(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 125)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.30%       0x00007f60eb2434bc:   data16 xchg %ax,%ax
   1.83%       0x00007f60eb2434bf:   nop
   0.31%       0x00007f60eb2434c0:   data16 xchg %ax,%ax
   0.65%       0x00007f60eb2434c3:   call   0x00007f60eb243440           ; ImmutableOopMap {}
                                                                         ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=1}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                                                                         ;   {optimized virtual_call}
  33.45%       0x00007f60eb2434c8:   nopl   0x238(%rax,%rax,1)           ;   {other}
   2.12%    ↗  0x00007f60eb2434d0:   mov    0x10(%rsp),%rbp
  32.66%    │  0x00007f60eb2434d5:   add    $0x18,%rsp
   0.01%    │  0x00007f60eb2434d9:   nopl   0x0(%rax)
            │  0x00007f60eb2434e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f60eb2434e7:   ja     0x00007f60eb243590
   0.04%    │  0x00007f60eb2434ed:   ret    
            │  0x00007f60eb2434ee:   movabs $0x7fec34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
            │  0x00007f60eb2434f8:   mov    0x10(%rsp),%rbp
            │  0x00007f60eb2434fd:   add    $0x18,%rsp
            │  0x00007f60eb243501:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f60eb243508:   ja     0x00007f60eb2435a6
            │  0x00007f60eb24350e:   ret    
            │  0x00007f60eb24350f:   movabs $0x7fec34c48,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
            │  0x00007f60eb243519:   mov    %r10,%rax
            ╰  0x00007f60eb24351c:   jmp    0x00007f60eb2434d0
               0x00007f60eb24351e:   movabs $0x7fec34c48,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34c48})}
....................................................................................................
  74.44%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 965 

             # parm0:    rdx       = int
             #           [sp+0x20]  (sp of caller)
             0x00007f60eb243420:   mov    0x8(%rsi),%r10d
             0x00007f60eb243424:   movabs $0x7f606f000000,%r12
             0x00007f60eb24342e:   add    %r12,%r10
             0x00007f60eb243431:   xor    %r12,%r12
             0x00007f60eb243434:   cmp    %r10,%rax
             0x00007f60eb243437:   jne    0x00007f60eac2f080           ;   {runtime_call ic_miss_stub}
             0x00007f60eb24343d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   2.22%     0x00007f60eb243440:   mov    %eax,-0x14000(%rsp)
   2.51%     0x00007f60eb243447:   sub    $0x18,%rsp
   0.25%     0x00007f60eb24344b:   nop
   0.43%     0x00007f60eb24344c:   cmpl   $0x1,0x20(%r15)
   0.60%     0x00007f60eb243454:   jne    0x00007f60eb243580
   2.07%     0x00007f60eb24345a:   mov    %rbp,0x10(%rsp)
   0.35%     0x00007f60eb24345f:   nop
   0.43%     0x00007f60eb243460:   test   %edx,%edx
             0x00007f60eb243462:   je     0x00007f60eb2434ee
   0.33%     0x00007f60eb243468:   cmpl   $0x1084000,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$1&apos;)}
   1.90%     0x00007f60eb24346f:   jne    0x00007f60eb24355d           ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.32%     0x00007f60eb243475:   cmp    $0x1,%edx
             0x00007f60eb243478:   je     0x00007f60eb24350f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 122)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.67%     0x00007f60eb24347e:   lea    -0x2(%rdx),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 125)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.25%     0x00007f60eb243482:   cmp    $0x2,%r10d
          ╭  0x00007f60eb243486:   jge    0x00007f60eb2434a5
          │  0x00007f60eb24348c:   cmp    $0x0,%r10d
          │  0x00007f60eb243490:   je     0x00007f60eb24351e
          │  0x00007f60eb243496:   cmp    $0x1,%r10d
          │  0x00007f60eb24349a:   je     0x00007f60eb24352d
          │  0x00007f60eb2434a0:   jmp    0x00007f60eb2434b9
   2.04%  ↘  0x00007f60eb2434a5:   cmp    $0x2,%r10d
             0x00007f60eb2434a9:   je     0x00007f60eb24353c
....................................................................................................
  12.32%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 965 
  12.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 965 
   4.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 966 
   4.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 5, compile id 990 
   1.11%               kernel  [unknown] 
   1.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 966 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 965 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.01%  <...other 343 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  86.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 965 
   5.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 966 
   4.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 5, compile id 990 
   2.28%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.00%  libjvmcicompiler.so  java.lang.AbstractStringBuilder::append 
   0.18%  <...other 89 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.37%       jvmci, level 4
   2.28%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.00%          c1, level 3
   0.00%          interpreter
   0.00%     perf-2127829.map
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method
# Parameters: (depth = 256)

# Run progress: 50.00% complete, ETA 00:05:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 477.426 ns/op
# Warmup Iteration   2: 474.927 ns/op
# Warmup Iteration   3: 475.950 ns/op
# Warmup Iteration   4: 474.926 ns/op
# Warmup Iteration   5: 474.935 ns/op
Iteration   1: 474.924 ns/op
Iteration   2: 474.931 ns/op
Iteration   3: 474.929 ns/op
Iteration   4: 474.921 ns/op
Iteration   5: 474.931 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method":
  474.927 ±(99.9%) 0.017 ns/op [Average]
  (min, avg, max) = (474.921, 474.927, 474.931), stdev = 0.004
  CI (99.9%): [474.910, 474.944] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method:asm":
PrintAssembly processed: 223497 total address lines.
Perf output processed (skipped 60.512 seconds):
 Column 1: cycles (50831 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 960 

   0.85%       0x00007f85af242951:   lea    -0x2(%rsi),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@10 (line 132)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   0.83%       0x00007f85af242955:   cmp    $0x2,%r10d
          ╭    0x00007f85af242959:   jge    0x00007f85af242978
          │    0x00007f85af24295f:   cmp    $0x0,%r10d
          │    0x00007f85af242963:   je     0x00007f85af2429e7
          │    0x00007f85af242969:   cmp    $0x1,%r10d
          │    0x00007f85af24296d:   je     0x00007f85af2429f6
          │╭   0x00007f85af242973:   jmp    0x00007f85af242990
   0.77%  ↘│   0x00007f85af242978:   cmp    $0x2,%r10d
   0.77%   │   0x00007f85af24297c:   nopl   0x0(%rax)
   0.87%   │   0x00007f85af242980:   je     0x00007f85af242a05
   0.77%   │   0x00007f85af242986:   cmp    $0x3,%r10d
           │   0x00007f85af24298a:   je     0x00007f85af242a14           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 129)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   0.77%   ↘   0x00007f85af242990:   lea    -0x6(%rsi),%esi
   0.82%       0x00007f85af242993:   call   0x00007f85af242920           ; ImmutableOopMap {}
                                                                         ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=1}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                         ;   {static_call}
  31.29%       0x00007f85af242998:   nopl   0x208(%rax,%rax,1)           ;   {other}
   2.25%    ↗  0x00007f85af2429a0:   mov    0x10(%rsp),%rbp
  39.77%    │  0x00007f85af2429a5:   add    $0x18,%rsp
            │  0x00007f85af2429a9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f85af2429b0:   ja     0x00007f85af242a36
   3.69%    │  0x00007f85af2429b6:   ret    
            │  0x00007f85af2429b7:   movabs $0x7fef34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef34c48})}
            │  0x00007f85af2429c1:   mov    0x10(%rsp),%rbp
            │  0x00007f85af2429c6:   add    $0x18,%rsp
            │  0x00007f85af2429ca:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f85af2429d1:   ja     0x00007f85af242a4a
            │  0x00007f85af2429d7:   ret    
            │  0x00007f85af2429d8:   movabs $0x7fef34c48,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef34c48})}
            │  0x00007f85af2429e2:   mov    %r10,%rax
            ╰  0x00007f85af2429e5:   jmp    0x00007f85af2429a0
               0x00007f85af2429e7:   movabs $0x7fef34c48,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef34c48})}
....................................................................................................
  81.77%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 960 

            dependencies   [0x00007f85af242b50,0x00007f85af242b58] = 8
            JVMCI data     [0x00007f85af242b58,0x00007f85af242b70] = 24
           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Verified Entry Point]
             # {method} {0x00007f852f4e4578} &apos;itf_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$RInterface&apos;
             # parm0:    rsi       = int
             #           [sp+0x20]  (sp of caller)
   2.51%     0x00007f85af242920:   mov    %eax,-0x14000(%rsp)
   1.79%     0x00007f85af242927:   sub    $0x18,%rsp
   0.80%     0x00007f85af24292b:   nop
   0.71%     0x00007f85af24292c:   cmpl   $0x1,0x20(%r15)
   0.79%     0x00007f85af242934:   jne    0x00007f85af242a26
   0.92%     0x00007f85af24293a:   mov    %rbp,0x10(%rsp)
   0.79%     0x00007f85af24293f:   nop
   0.79%     0x00007f85af242940:   test   %esi,%esi
             0x00007f85af242942:   je     0x00007f85af2429b7           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 129)
   0.78%     0x00007f85af242948:   cmp    $0x1,%esi
             0x00007f85af24294b:   je     0x00007f85af2429d8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 129)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   0.85%     0x00007f85af242951:   lea    -0x2(%rsi),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@10 (line 132)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   0.83%     0x00007f85af242955:   cmp    $0x2,%r10d
          ╭  0x00007f85af242959:   jge    0x00007f85af242978
          │  0x00007f85af24295f:   cmp    $0x0,%r10d
          │  0x00007f85af242963:   je     0x00007f85af2429e7
          │  0x00007f85af242969:   cmp    $0x1,%r10d
          │  0x00007f85af24296d:   je     0x00007f85af2429f6
          │  0x00007f85af242973:   jmp    0x00007f85af242990
   0.77%  ↘  0x00007f85af242978:   cmp    $0x2,%r10d
   0.77%     0x00007f85af24297c:   nopl   0x0(%rax)
....................................................................................................
  11.55%  <total for region 2>

....[Hottest Regions]...............................................................................
  81.77%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 960 
  11.55%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 960 
   1.98%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 961 
   1.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 7, compile id 992 
   0.44%              kernel  [unknown] 
   0.26%              kernel  [unknown] 
   0.24%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 961 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 960 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.23%  <...other 357 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 960 
   2.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 961 
   2.10%              kernel  [unknown] 
   1.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 7, compile id 992 
   0.09%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __strchrnul_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.15%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.49%      jvmci, level 4
   2.10%              kernel
   0.15%           libjvm.so
   0.10%        libc-2.31.so
   0.09%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static
# Parameters: (depth = 256)

# Run progress: 66.67% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.150 ns/op
# Warmup Iteration   2: 8.067 ns/op
# Warmup Iteration   3: 8.058 ns/op
# Warmup Iteration   4: 7.943 ns/op
# Warmup Iteration   5: 7.958 ns/op
Iteration   1: 7.936 ns/op
Iteration   2: 7.938 ns/op
Iteration   3: 7.944 ns/op
Iteration   4: 7.941 ns/op
Iteration   5: 7.941 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static":
  7.940 ±(99.9%) 0.012 ns/op [Average]
  (min, avg, max) = (7.936, 7.940, 7.944), stdev = 0.003
  CI (99.9%): [7.928, 7.952] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static:asm":
PrintAssembly processed: 223307 total address lines.
Perf output processed (skipped 60.668 seconds):
 Column 1: cycles (50744 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 963 

             # {method} {0x00007fd50c47dd88} &apos;lambda_non_static&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fd593242b20:   mov    0x8(%rsi),%r10d
             0x00007fd593242b24:   movabs $0x7fd517000000,%r12
             0x00007fd593242b2e:   add    %r12,%r10
             0x00007fd593242b31:   xor    %r12,%r12
             0x00007fd593242b34:   cmp    %r10,%rax
             0x00007fd593242b37:   jne    0x00007fd592c2f080           ;   {runtime_call ic_miss_stub}
             0x00007fd593242b3d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   2.12%     0x00007fd593242b40:   mov    %eax,-0x14000(%rsp)
   2.62%     0x00007fd593242b47:   sub    $0x18,%rsp
   2.09%     0x00007fd593242b4b:   nop
             0x00007fd593242b4c:   cmpl   $0x1,0x20(%r15)
   2.38%     0x00007fd593242b54:   jne    0x00007fd593242bf2
   2.49%     0x00007fd593242b5a:   mov    %rbp,0x10(%rsp)
   2.32%     0x00007fd593242b5f:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
             0x00007fd593242b62:   cmpl   $0x102b960,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007fd593242c1a
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$$Lambda+0x00007fd51802b960&apos;)}
  16.91%  ╭  0x00007fd593242b6d:   jne    0x00007fd593242bbb           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
   4.73%  │  0x00007fd593242b73:   mov    0x14(%rsi),%r10d             ;*getfield wrapper {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@5 (line 96)
          │  0x00007fd593242b77:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
          │  0x00007fd593242b80:   cmpl   $0x0,0xc(,%r10,8)            ; implicit exception: dispatches to 0x00007fd593242c3d
   4.85%  │  0x00007fd593242b89:   jne    0x00007fd593242be3           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$new$0@4 (line 138)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007fd51802b960::apply@8
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
          │  0x00007fd593242b8f:   mov    0xc(,%rax,8),%eax            ; ImmutableOopMap {rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
          │  0x00007fd593242b96:   test   %eax,(%r12,%rax,8)           ; implicit exception: dispatches to 0x00007fd593242c60
  14.20%  │  0x00007fd593242b9a:   movabs $0x7fec346b0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec346b0})}
          │  0x00007fd593242ba4:   mov    0x10(%rsp),%rbp
          │  0x00007fd593242ba9:   add    $0x18,%rsp
          │  0x00007fd593242bad:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fd593242bb4:   ja     0x00007fd593242c06
   4.87%  │  0x00007fd593242bba:   ret    
          ↘  0x00007fd593242bbb:   mov    $0x14,%r11
             0x00007fd593242bc2:   mov    $0xffffffcd,%r10d
             0x00007fd593242bc8:   mov    %r10d,0x484(%r15)            ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
             0x00007fd593242bcf:   mov    %r11,0x490(%r15)
             0x00007fd593242bd6:   call   0x00007fd592c3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007fd593242bdb:   nopl   0x0(%rax,%rax,1)             ;*areturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  59.58%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 995 

              0x00007fd593247690:   mov    0x18(%rsp),%rsi
              0x00007fd593247695:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fd5932476a0:   cmpb   $0x0,0x94(%rsi)
              0x00007fd5932476a7:   jne    0x00007fd59324773a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
              0x00007fd5932476ad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fd5932476b6:   jmp    0x00007fd5932476cf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@13 (line 236)
          │   0x00007fd5932476bb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
   4.61%  │↗  0x00007fd5932476c0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
   0.08%  ││  0x00007fd5932476c7:   test   %eax,(%r11)                  ;   {poll}
   4.56%  ││  0x00007fd5932476ca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@13 (line 236)
          ↘│  0x00007fd5932476cf:   mov    0x8(%rsp),%r10
   2.52%   │  0x00007fd5932476d4:   mov    %r10,%rsi
   0.07%   │  0x00007fd5932476d7:   call   0x00007fd592c2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual lambda_non_static {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   0.57%   │  0x00007fd5932476dc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007fd5932476e4:   mov    0x20(%rsp),%r10
   4.73%   │  0x00007fd5932476e9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@26 (line 237)
   2.47%   │  0x00007fd5932476ec:   mov    0x18(%rsp),%rsi
           │  0x00007fd5932476f1:   cmpb   $0x0,0x94(%rsi)
  18.75%   ╰  0x00007fd5932476f8:   je     0x00007fd5932476c0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
              0x00007fd5932476fa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@36 (line 239)
              0x00007fd5932476ff:   nop
              0x00007fd593247700:   call   0x00007fd5a98fadf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd593247705:   nop
              0x00007fd593247706:   mov    0x10(%rsp),%rdx
              0x00007fd59324770b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@40 (line 239)
              0x00007fd59324770f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  38.38%  <total for region 2>

....[Hottest Regions]...............................................................................
  59.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 963 
  38.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 995 
   0.46%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
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
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   1.00%  <...other 340 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 963 
  38.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 995 
   1.63%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.15%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.96%      jvmci, level 4
   1.63%              kernel
   0.15%           libjvm.so
   0.10%                    
   0.09%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static
# Parameters: (depth = 256)

# Run progress: 83.33% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.421 ns/op
# Warmup Iteration   2: 7.343 ns/op
# Warmup Iteration   3: 7.412 ns/op
# Warmup Iteration   4: 7.094 ns/op
# Warmup Iteration   5: 7.017 ns/op
Iteration   1: 7.076 ns/op
Iteration   2: 7.071 ns/op
Iteration   3: 7.135 ns/op
Iteration   4: 7.107 ns/op
Iteration   5: 6.991 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static":
  7.076 ±(99.9%) 0.207 ns/op [Average]
  (min, avg, max) = (6.991, 7.076, 7.135), stdev = 0.054
  CI (99.9%): [6.869, 7.283] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static:asm":
PrintAssembly processed: 222647 total address lines.
Perf output processed (skipped 60.475 seconds):
 Column 1: cycles (50567 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 1005 

              0x00007feabf244910:   mov    0x18(%rsp),%rsi
              0x00007feabf244915:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007feabf244920:   cmpb   $0x0,0x94(%rsi)
              0x00007feabf244927:   jne    0x00007feabf2449ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
              0x00007feabf24492d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007feabf244936:   jmp    0x00007feabf24494f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@13 (line 236)
          │   0x00007feabf24493b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
   5.36%  │↗  0x00007feabf244940:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
          ││  0x00007feabf244947:   test   %eax,(%r11)                  ;   {poll}
   3.57%  ││  0x00007feabf24494a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@13 (line 236)
          ↘│  0x00007feabf24494f:   mov    0x8(%rsp),%r10
   2.32%   │  0x00007feabf244954:   mov    %r10,%rsi
           │  0x00007feabf244957:   call   0x00007feabec2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual lambda_static {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   7.19%   │  0x00007feabf24495c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
           │  0x00007feabf244964:   mov    0x20(%rsp),%r10
   5.26%   │  0x00007feabf244969:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@26 (line 237)
   5.43%   │  0x00007feabf24496c:   mov    0x18(%rsp),%rsi
           │  0x00007feabf244971:   cmpb   $0x0,0x94(%rsi)
  24.13%   ╰  0x00007feabf244978:   je     0x00007feabf244940           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
              0x00007feabf24497a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@36 (line 239)
              0x00007feabf24497f:   nop
              0x00007feabf244980:   call   0x00007fead6720df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007feabf244985:   nop
              0x00007feabf244986:   mov    0x10(%rsp),%rdx
              0x00007feabf24498b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@40 (line 239)
              0x00007feabf24498f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  53.26%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 975 

             # {method} {0x00007fea3b47de78} &apos;lambda_static&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007feabf23e300:   mov    0x8(%rsi),%r10d
             0x00007feabf23e304:   movabs $0x7fea3f000000,%r12
             0x00007feabf23e30e:   add    %r12,%r10
             0x00007feabf23e311:   xor    %r12,%r12
             0x00007feabf23e314:   cmp    %r10,%rax
             0x00007feabf23e317:   jne    0x00007feabec2f080           ;   {runtime_call ic_miss_stub}
             0x00007feabf23e31d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   3.04%     0x00007feabf23e320:   mov    %eax,-0x14000(%rsp)
   2.40%     0x00007feabf23e327:   sub    $0x18,%rsp
   2.96%     0x00007feabf23e32b:   nop
             0x00007feabf23e32c:   cmpl   $0x1,0x20(%r15)
   2.39%     0x00007feabf23e334:   jne    0x00007feabf23e394
   3.22%     0x00007feabf23e33a:   mov    %rbp,0x10(%rsp)
   0.64%     0x00007feabf23e33f:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*getstatic LAMBDA_STATIC {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@0 (line 102)
             0x00007feabf23e342:   cmpl   $0x0,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007feabf23e3b5
  19.74%  ╭  0x00007feabf23e34a:   jne    0x00007feabf23e371
   5.47%  │  0x00007feabf23e350:   movabs $0x7fed34c48,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34c48})}
          │  0x00007feabf23e35a:   mov    0x10(%rsp),%rbp
          │  0x00007feabf23e35f:   add    $0x18,%rsp
          │  0x00007feabf23e363:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007feabf23e36a:   ja     0x00007feabf23e3a1
   5.19%  │  0x00007feabf23e370:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@12 (line 102)
          ↘  0x00007feabf23e371:   movl   $0xffffffed,0x484(%r15)      ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$static$1@1 (line 146)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007fea4002b728::apply@4
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@7 (line 102)
             0x00007feabf23e37c:   movq   $0x14,0x490(%r15)
             0x00007feabf23e387:   call   0x00007feabec3517a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*getstatic LAMBDA_STATIC {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@0 (line 102)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  45.05%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 1005 
  45.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 975 
   0.18%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
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
   0.90%  <...other 305 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 1005 
  45.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 975 
   1.38%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  os::vsnprintf 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%        libc-2.31.so  __strncmp_avx2 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  event_to_env 
   0.00%           libjvm.so  outputStream::print 
   0.12%  <...other 62 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.31%      jvmci, level 4
   1.38%              kernel
   0.11%           libjvm.so
   0.08%                    
   0.07%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%              [vdso]
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:11:20

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

Benchmark                                                     (depth)  Mode  Cnt    Score   Error  Units
RecursiveMethodCallBenchmark.class_non_static_method              256  avgt    5  473.157 ± 0.056  ns/op
RecursiveMethodCallBenchmark.class_non_static_method:asm          256  avgt           NaN            ---
RecursiveMethodCallBenchmark.class_static_method                  256  avgt    5  474.891 ± 0.047  ns/op
RecursiveMethodCallBenchmark.class_static_method:asm              256  avgt           NaN            ---
RecursiveMethodCallBenchmark.interface_non_static_method          256  avgt    5  490.352 ± 0.038  ns/op
RecursiveMethodCallBenchmark.interface_non_static_method:asm      256  avgt           NaN            ---
RecursiveMethodCallBenchmark.interface_static_method              256  avgt    5  474.927 ± 0.017  ns/op
RecursiveMethodCallBenchmark.interface_static_method:asm          256  avgt           NaN            ---
RecursiveMethodCallBenchmark.lambda_non_static                    256  avgt    5    7.940 ± 0.012  ns/op
RecursiveMethodCallBenchmark.lambda_non_static:asm                256  avgt           NaN            ---
RecursiveMethodCallBenchmark.lambda_static                        256  avgt    5    7.076 ± 0.207  ns/op
RecursiveMethodCallBenchmark.lambda_static:asm                    256  avgt           NaN            ---
