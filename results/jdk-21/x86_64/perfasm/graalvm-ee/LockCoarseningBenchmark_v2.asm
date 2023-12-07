# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 55.894 ns/op
# Warmup Iteration   2: 55.452 ns/op
# Warmup Iteration   3: 55.033 ns/op
# Warmup Iteration   4: 54.775 ns/op
# Warmup Iteration   5: 54.654 ns/op
Iteration   1: 54.525 ns/op
Iteration   2: 54.468 ns/op
Iteration   3: 54.902 ns/op
Iteration   4: 54.756 ns/op
Iteration   5: 55.503 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline":
  54.831 ±(99.9%) 1.597 ns/op [Average]
  (min, avg, max) = (54.468, 54.831, 55.503), stdev = 0.415
  CI (99.9%): [53.234, 56.428] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline:asm":
PrintAssembly processed: 221289 total address lines.
Perf output processed (skipped 80.796 seconds):
 Column 1: cycles (51035 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 1046 

               # {method} {0x00007fc55f47a3f0} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007fc5e6d9f180:   mov    0x8(%rsi),%r10d
               0x00007fc5e6d9f184:   movabs $0x7fc563000000,%r12
               0x00007fc5e6d9f18e:   add    %r12,%r10
               0x00007fc5e6d9f191:   xor    %r12,%r12
               0x00007fc5e6d9f194:   cmp    %r10,%rax
               0x00007fc5e6d9f197:   jne    0x00007fc5e66f9080           ;   {runtime_call ic_miss_stub}
               0x00007fc5e6d9f19d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.54%       0x00007fc5e6d9f1a0:   mov    %eax,-0x14000(%rsp)
               0x00007fc5e6d9f1a7:   sub    $0x18,%rsp
               0x00007fc5e6d9f1ab:   nop
   1.50%       0x00007fc5e6d9f1ac:   cmpl   $0x1,0x20(%r15)
               0x00007fc5e6d9f1b4:   jne    0x00007fc5e6d9f3e7
   0.00%       0x00007fc5e6d9f1ba:   mov    %rbp,0x10(%rsp)
               0x00007fc5e6d9f1bf:   mov    %rsi,%r11
   1.53%       0x00007fc5e6d9f1c2:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
   4.58%       0x00007fc5e6d9f1c5:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@1 (line 208)
   0.00%       0x00007fc5e6d9f1c9:   lea    (%rsp),%r8                   ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
               0x00007fc5e6d9f1cd:   mov    %eax,%r9d
               0x00007fc5e6d9f1d0:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@5 (line 208)
   1.57%       0x00007fc5e6d9f1d3:   test   $0x2,%r10
          ╭    0x00007fc5e6d9f1da:   jne    0x00007fc5e6d9f27a
   0.00%  │    0x00007fc5e6d9f1e0:   or     $0x1,%r10
   0.00%  │    0x00007fc5e6d9f1e4:   mov    %r10,(%r8)
   2.82%  │    0x00007fc5e6d9f1e7:   mov    %r10,%rax
   0.00%  │    0x00007fc5e6d9f1ea:   lock cmpxchg %r8,(%r11)
  26.98%  │    0x00007fc5e6d9f1ef:   cmp    %r10,%rax
          │    0x00007fc5e6d9f1f2:   jne    0x00007fc5e6d9f2b2
   0.03%  │    0x00007fc5e6d9f1f8:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
   1.53%  │    0x00007fc5e6d9f1ff:   lea    (%rsp),%r10
   0.00%  │    0x00007fc5e6d9f203:   mov    (%r10),%rsi                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
   1.42%  │    0x00007fc5e6d9f206:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@13 (line 211)
          │    0x00007fc5e6d9f20a:   test   %rsi,%rsi
          │╭   0x00007fc5e6d9f20d:   je     0x00007fc5e6d9f271
          ││   0x00007fc5e6d9f213:   mov    (%r11),%rcx
  16.46%  ││   0x00007fc5e6d9f216:   data16 nopw 0x0(%rax,%rax,1)
   0.01%  ││   0x00007fc5e6d9f220:   test   $0x2,%rcx
          ││   0x00007fc5e6d9f227:   jne    0x00007fc5e6d9f2dc
   1.45%  ││   0x00007fc5e6d9f22d:   mov    %r10,%rax
          ││   0x00007fc5e6d9f230:   lock cmpxchg %rsi,(%r11)
  24.00%  ││   0x00007fc5e6d9f235:   jne    0x00007fc5e6d9f34a
   0.03%  ││   0x00007fc5e6d9f23b:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
   1.50%  ││↗  0x00007fc5e6d9f242:   shl    $0x3,%r8d
   0.00%  │││  0x00007fc5e6d9f246:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@65 (line 218)
   1.56%  │││  0x00007fc5e6d9f249:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@78 (line 221)
   0.00%  │││  0x00007fc5e6d9f24c:   mov    0x10(%rsp),%rbp
          │││  0x00007fc5e6d9f251:   add    $0x18,%rsp
   0.00%  │││  0x00007fc5e6d9f255:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.53%  │││  0x00007fc5e6d9f260:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007fc5e6d9f267:   ja     0x00007fc5e6d9f3f7
          │││  0x00007fc5e6d9f26d:   vzeroupper 
   1.53%  │││  0x00007fc5e6d9f270:   ret    
          │↘│  0x00007fc5e6d9f271:   decq   0x550(%r15)
          │ ╰  0x00007fc5e6d9f278:   jmp    0x00007fc5e6d9f242           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
          ↘    0x00007fc5e6d9f27a:   movq   $0x3,(%r8)
               0x00007fc5e6d9f281:   mov    0x3e(%r10),%rsi
               0x00007fc5e6d9f285:   test   %rsi,%rsi
               0x00007fc5e6d9f288:   jne    0x00007fc5e6d9f332
               0x00007fc5e6d9f28e:   mov    $0x0,%rax
               0x00007fc5e6d9f295:   lock cmpxchg %r15,0x3e(%r10)
               0x00007fc5e6d9f29b:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  91.58%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.58%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 1046 
   4.45%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1075 
   0.53%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.70%  <...other 297 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.58%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 1046 
   4.45%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1075 
   3.29%                kernel  [unknown] 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libjvm.so  stringStream::~stringStream 
   0.03%             libc.so.6  __vfprintf_internal 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libjvm.so  defaultStream::has_log_file 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  _IO_fflush 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%                        <unknown> 
   0.36%  <...other 130 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.03%        jvmci, level 4
   3.29%                kernel
   0.26%             libjvm.so
   0.24%             libc.so.6
   0.10%   libjvmcicompiler.so
   0.03%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.02%           interpreter
   0.01%                      
   0.00%                [vdso]
   0.00%           c1, level 1
   0.00%            libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:11:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 56.431 ns/op
# Warmup Iteration   2: 55.226 ns/op
# Warmup Iteration   3: 55.227 ns/op
# Warmup Iteration   4: 54.825 ns/op
# Warmup Iteration   5: 54.635 ns/op
Iteration   1: 54.583 ns/op
Iteration   2: 55.618 ns/op
Iteration   3: 54.675 ns/op
Iteration   4: 54.469 ns/op
Iteration   5: 55.341 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls":
  54.937 ±(99.9%) 1.963 ns/op [Average]
  (min, avg, max) = (54.469, 54.937, 55.618), stdev = 0.510
  CI (99.9%): [52.974, 56.900] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls:asm":
PrintAssembly processed: 226070 total address lines.
Perf output processed (skipped 79.116 seconds):
 Column 1: cycles (50935 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 1044 

               # {method} {0x00007fec64479fe8} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007fecf2d9d080:   mov    0x8(%rsi),%r10d
               0x00007fecf2d9d084:   movabs $0x7fec6f000000,%r12
               0x00007fecf2d9d08e:   add    %r12,%r10
               0x00007fecf2d9d091:   xor    %r12,%r12
               0x00007fecf2d9d094:   cmp    %r10,%rax
               0x00007fecf2d9d097:   jne    0x00007fecf26f9080           ;   {runtime_call ic_miss_stub}
               0x00007fecf2d9d09d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.42%       0x00007fecf2d9d0a0:   mov    %eax,-0x14000(%rsp)
   0.00%       0x00007fecf2d9d0a7:   sub    $0x18,%rsp
               0x00007fecf2d9d0ab:   nop
   1.55%       0x00007fecf2d9d0ac:   cmpl   $0x1,0x20(%r15)
   0.00%       0x00007fecf2d9d0b4:   jne    0x00007fecf2d9d2e7
               0x00007fecf2d9d0ba:   mov    %rbp,0x10(%rsp)
               0x00007fecf2d9d0bf:   mov    %rsi,%r11
   1.50%       0x00007fecf2d9d0c2:   mov    (%r11),%r10                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
   4.55%       0x00007fecf2d9d0c5:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@1 (line 123)
   0.00%       0x00007fecf2d9d0c9:   lea    (%rsp),%r8                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
               0x00007fecf2d9d0cd:   mov    %eax,%r9d
               0x00007fecf2d9d0d0:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@5 (line 123)
   1.55%       0x00007fecf2d9d0d3:   test   $0x2,%r10
          ╭    0x00007fecf2d9d0da:   jne    0x00007fecf2d9d17a
          │    0x00007fecf2d9d0e0:   or     $0x1,%r10
          │    0x00007fecf2d9d0e4:   mov    %r10,(%r8)
   2.95%  │    0x00007fecf2d9d0e7:   mov    %r10,%rax
   0.01%  │    0x00007fecf2d9d0ea:   lock cmpxchg %r8,(%r11)
  27.25%  │    0x00007fecf2d9d0ef:   cmp    %r10,%rax
          │    0x00007fecf2d9d0f2:   jne    0x00007fecf2d9d1b2
   0.04%  │    0x00007fecf2d9d0f8:   incq   0x550(%r15)                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
   1.52%  │    0x00007fecf2d9d0ff:   lea    (%rsp),%r10
          │    0x00007fecf2d9d103:   mov    (%r10),%rsi                  ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.51%  │    0x00007fecf2d9d106:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
          │    0x00007fecf2d9d10a:   test   %rsi,%rsi
          │╭   0x00007fecf2d9d10d:   je     0x00007fecf2d9d171
          ││   0x00007fecf2d9d113:   mov    (%r11),%rcx
  16.74%  ││   0x00007fecf2d9d116:   data16 nopw 0x0(%rax,%rax,1)
   0.02%  ││   0x00007fecf2d9d120:   test   $0x2,%rcx
          ││   0x00007fecf2d9d127:   jne    0x00007fecf2d9d1dc
   1.50%  ││   0x00007fecf2d9d12d:   mov    %r10,%rax
          ││   0x00007fecf2d9d130:   lock cmpxchg %rsi,(%r11)
  23.92%  ││   0x00007fecf2d9d135:   jne    0x00007fecf2d9d24a
   0.02%  ││   0x00007fecf2d9d13b:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.51%  ││↗  0x00007fecf2d9d142:   shl    $0x3,%r8d
   0.00%  │││  0x00007fecf2d9d146:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.46%  │││  0x00007fecf2d9d149:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@56 (line 134)
          │││  0x00007fecf2d9d14c:   mov    0x10(%rsp),%rbp
          │││  0x00007fecf2d9d151:   add    $0x18,%rsp
          │││  0x00007fecf2d9d155:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.53%  │││  0x00007fecf2d9d160:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007fecf2d9d167:   ja     0x00007fecf2d9d2f7
   0.00%  │││  0x00007fecf2d9d16d:   vzeroupper 
   1.46%  │││  0x00007fecf2d9d170:   ret    
          │↘│  0x00007fecf2d9d171:   decq   0x550(%r15)
          │ ╰  0x00007fecf2d9d178:   jmp    0x00007fecf2d9d142           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
          ↘    0x00007fecf2d9d17a:   movq   $0x3,(%r8)
               0x00007fecf2d9d181:   mov    0x3e(%r10),%rsi
               0x00007fecf2d9d185:   test   %rsi,%rsi
               0x00007fecf2d9d188:   jne    0x00007fecf2d9d232
               0x00007fecf2d9d18e:   mov    $0x0,%rax
               0x00007fecf2d9d195:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  92.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.03%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 1044 
   4.52%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1074 
   0.50%                kernel  [unknown] 
   0.24%                kernel  [unknown] 
   0.24%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   1.37%  <...other 301 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.03%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 1044 
   4.52%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1074 
   2.78%                kernel  [unknown] 
   0.18%                        <unknown> 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  syscall 
   0.02%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%           interpreter  invokestatic  184 invokestatic  
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  __memmove_avx_unaligned_erms 
   0.01%             libjvm.so  resource_allocate_bytes 
   0.23%  <...other 82 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.55%        jvmci, level 4
   2.78%                kernel
   0.27%             libjvm.so
   0.18%                      
   0.16%             libc.so.6
   0.03%        hsdis-amd64.so
   0.03%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 1
   0.00%           c1, level 3
   0.00%                [vdso]
   0.00%         perf-7982.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:09:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 57.385 ns/op
# Warmup Iteration   2: 55.868 ns/op
# Warmup Iteration   3: 55.940 ns/op
# Warmup Iteration   4: 55.485 ns/op
# Warmup Iteration   5: 55.379 ns/op
Iteration   1: 55.306 ns/op
Iteration   2: 55.608 ns/op
Iteration   3: 55.555 ns/op
Iteration   4: 55.451 ns/op
Iteration   5: 56.363 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  55.657 ±(99.9%) 1.584 ns/op [Average]
  (min, avg, max) = (55.306, 55.657, 56.363), stdev = 0.411
  CI (99.9%): [54.072, 57.241] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 227172 total address lines.
Perf output processed (skipped 79.417 seconds):
 Column 1: cycles (51123 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 1043 

               # {method} {0x00007f89d84840b0} &apos;conditional_chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f8a66d9c900:   mov    0x8(%rsi),%r10d
               0x00007f8a66d9c904:   movabs $0x7f89e3000000,%r12
               0x00007f8a66d9c90e:   add    %r12,%r10
               0x00007f8a66d9c911:   xor    %r12,%r12
               0x00007f8a66d9c914:   cmp    %r10,%rax
               0x00007f8a66d9c917:   jne    0x00007f8a666f9080           ;   {runtime_call ic_miss_stub}
               0x00007f8a66d9c91d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.01%       0x00007f8a66d9c920:   mov    %eax,-0x14000(%rsp)
   1.50%       0x00007f8a66d9c927:   sub    $0x18,%rsp
               0x00007f8a66d9c92b:   nop
               0x00007f8a66d9c92c:   cmpl   $0x1,0x20(%r15)
   0.00%       0x00007f8a66d9c934:   jne    0x00007f8a66d9cc46
   1.47%       0x00007f8a66d9c93a:   mov    %rbp,0x10(%rsp)
               0x00007f8a66d9c93f:   mov    %rsi,%r11
               0x00007f8a66d9c942:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@1 (line 140)
   0.00%       0x00007f8a66d9c946:   mov    %eax,%r8d
   1.44%       0x00007f8a66d9c949:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@5 (line 140)
   0.00%       0x00007f8a66d9c94c:   cmp    $0x21,%r8d
               0x00007f8a66d9c950:   jl     0x00007f8a66d9cc11           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@10 (line 143)
               0x00007f8a66d9c956:   mov    (%r11),%r10
   4.35%       0x00007f8a66d9c959:   lea    (%rsp),%r9
   0.01%       0x00007f8a66d9c95d:   data16 xchg %ax,%ax
               0x00007f8a66d9c960:   test   $0x2,%r10
          ╭    0x00007f8a66d9c967:   jne    0x00007f8a66d9ca6b
   1.46%  │    0x00007f8a66d9c96d:   or     $0x1,%r10
   0.00%  │    0x00007f8a66d9c971:   mov    %r10,(%r9)
   2.94%  │    0x00007f8a66d9c974:   mov    %r10,%rax
   0.01%  │    0x00007f8a66d9c977:   lock cmpxchg %r9,(%r11)
  26.57%  │    0x00007f8a66d9c97c:   nopl   0x0(%rax)
   0.04%  │    0x00007f8a66d9c980:   cmp    %r10,%rax
          │    0x00007f8a66d9c983:   jne    0x00007f8a66d9ca9e
   1.49%  │    0x00007f8a66d9c989:   incq   0x550(%r15)                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
   0.00%  │    0x00007f8a66d9c990:   mov    0x14(%r11),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
   1.47%  │    0x00007f8a66d9c994:   mov    %r8d,%eax
   0.00%  │    0x00007f8a66d9c997:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
          │    0x00007f8a66d9c99a:   nopw   0x0(%rax,%rax,1)
          │    0x00007f8a66d9c9a0:   cmp    $0x21,%eax
          │    0x00007f8a66d9c9a3:   jl     0x00007f8a66d9cc3d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@22 (line 146)
   1.60%  │    0x00007f8a66d9c9a9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 147)
   0.00%  │    0x00007f8a66d9c9ac:   cmp    $0x21,%eax
          │    0x00007f8a66d9c9af:   jl     0x00007f8a66d9cc34           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@34 (line 149)
          │    0x00007f8a66d9c9b5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 150)
   0.00%  │    0x00007f8a66d9c9b8:   nopl   0x0(%rax,%rax,1)
   1.46%  │    0x00007f8a66d9c9c0:   cmp    $0x21,%eax
          │    0x00007f8a66d9c9c3:   jl     0x00007f8a66d9cbff           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@46 (line 152)
   0.00%  │    0x00007f8a66d9c9c9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 153)
          │    0x00007f8a66d9c9cc:   cmp    $0x21,%eax
          │    0x00007f8a66d9c9cf:   jl     0x00007f8a66d9cbc7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@58 (line 155)
          │    0x00007f8a66d9c9d5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 156)
   1.43%  │    0x00007f8a66d9c9d8:   nopl   0x0(%rax,%rax,1)
          │    0x00007f8a66d9c9e0:   cmp    $0x21,%eax
          │    0x00007f8a66d9c9e3:   jl     0x00007f8a66d9cc08           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@70 (line 158)
          │    0x00007f8a66d9c9e9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 159)
          │    0x00007f8a66d9c9ec:   cmp    $0x21,%eax
          │    0x00007f8a66d9c9ef:   jl     0x00007f8a66d9cbf6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@82 (line 161)
   1.54%  │    0x00007f8a66d9c9f5:   mov    %eax,%r9d
          │    0x00007f8a66d9c9f8:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 162)
          │    0x00007f8a66d9c9fb:   nopl   0x0(%rax,%rax,1)
          │    0x00007f8a66d9ca00:   cmp    $0x21,%r9d
          │    0x00007f8a66d9ca04:   jl     0x00007f8a66d9cbed           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@94 (line 164)
   1.41%  │    0x00007f8a66d9ca0a:   lea    (%rsp),%r8
   0.00%  │    0x00007f8a66d9ca0e:   mov    (%r8),%rsi
   0.00%  │    0x00007f8a66d9ca11:   test   %rsi,%rsi
          │╭   0x00007f8a66d9ca14:   je     0x00007f8a66d9ca62           ;   {no_reloc}
   0.00%  ││   0x00007f8a66d9ca1a:   mov    (%r11),%rcx
   8.56%  ││   0x00007f8a66d9ca1d:   data16 xchg %ax,%ax
   0.01%  ││   0x00007f8a66d9ca20:   test   $0x2,%rcx
          ││   0x00007f8a66d9ca27:   jne    0x00007f8a66d9cabd
   1.44%  ││   0x00007f8a66d9ca2d:   mov    %r8,%rax
          ││   0x00007f8a66d9ca30:   lock cmpxchg %rsi,(%r11)
  24.89%  ││   0x00007f8a66d9ca35:   jne    0x00007f8a66d9cb2a
   0.03%  ││   0x00007f8a66d9ca3b:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
   1.49%  ││↗  0x00007f8a66d9ca42:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
   0.00%  │││  0x00007f8a66d9ca45:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@104 (line 168)
   1.47%  │││  0x00007f8a66d9ca48:   mov    0x10(%rsp),%rbp
   0.00%  │││  0x00007f8a66d9ca4d:   add    $0x18,%rsp
          │││  0x00007f8a66d9ca51:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f8a66d9ca58:   ja     0x00007f8a66d9cc56
          │││  0x00007f8a66d9ca5e:   vzeroupper 
   1.53%  │││  0x00007f8a66d9ca61:   ret    
          │↘│  0x00007f8a66d9ca62:   decq   0x550(%r15)
          │ ╰  0x00007f8a66d9ca69:   jmp    0x00007f8a66d9ca42           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
          ↘    0x00007f8a66d9ca6b:   movq   $0x3,(%r9)
               0x00007f8a66d9ca72:   mov    0x3e(%r10),%rsi
               0x00007f8a66d9ca76:   test   %rsi,%rsi
               0x00007f8a66d9ca79:   jne    0x00007f8a66d9cb12
               0x00007f8a66d9ca7f:   mov    $0x0,%rax
               0x00007f8a66d9ca86:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  89.62%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.62%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 1043 
   6.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1070 
   0.52%                kernel  [unknown] 
   0.40%                kernel  [unknown] 
   0.27%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.78%  <...other 316 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.62%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 1043 
   6.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 1070 
   3.64%                kernel  [unknown] 
   0.09%                        <unknown> 
   0.04%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  _IO_fwrite 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libjvm.so  xmlTextStream::flush 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  syscall 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  decode_env::print_hook_comments 
   0.27%  <...other 92 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.68%        jvmci, level 4
   3.64%                kernel
   0.31%             libjvm.so
   0.22%             libc.so.6
   0.09%                      
   0.03%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:06:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 57.364 ns/op
# Warmup Iteration   2: 55.396 ns/op
# Warmup Iteration   3: 55.893 ns/op
# Warmup Iteration   4: 55.426 ns/op
# Warmup Iteration   5: 55.330 ns/op
Iteration   1: 55.359 ns/op
Iteration   2: 55.233 ns/op
Iteration   3: 55.559 ns/op
Iteration   4: 55.458 ns/op
Iteration   5: 55.789 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  55.479 ±(99.9%) 0.812 ns/op [Average]
  (min, avg, max) = (55.233, 55.479, 55.789), stdev = 0.211
  CI (99.9%): [54.667, 56.292] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 221474 total address lines.
Perf output processed (skipped 79.266 seconds):
 Column 1: cycles (50676 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 1035 

               #           [sp+0x20]  (sp of caller)
               0x00007f941ed9ef00:   mov    0x8(%rsi),%r10d
               0x00007f941ed9ef04:   movabs $0x7f939b000000,%r12
               0x00007f941ed9ef0e:   add    %r12,%r10
               0x00007f941ed9ef11:   xor    %r12,%r12
               0x00007f941ed9ef14:   cmp    %r10,%rax
               0x00007f941ed9ef17:   jne    0x00007f941e6f9080           ;   {runtime_call ic_miss_stub}
               0x00007f941ed9ef1d:   data16 xchg %ax,%ax
             [Verified Entry Point]
               0x00007f941ed9ef20:   mov    %eax,-0x14000(%rsp)
   1.51%       0x00007f941ed9ef27:   sub    $0x18,%rsp
               0x00007f941ed9ef2b:   nop
               0x00007f941ed9ef2c:   cmpl   $0x1,0x20(%r15)
               0x00007f941ed9ef34:   jne    0x00007f941ed9f210
   1.44%       0x00007f941ed9ef3a:   mov    %rbp,0x10(%rsp)
   0.01%       0x00007f941ed9ef3f:   mov    %rsi,%r11
               0x00007f941ed9ef42:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@1 (line 174)
               0x00007f941ed9ef46:   mov    %eax,%r8d
   1.39%       0x00007f941ed9ef49:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@5 (line 174)
               0x00007f941ed9ef4c:   cmp    $0x21,%r8d
               0x00007f941ed9ef50:   jl     0x00007f941ed9f1ed           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@10 (line 177)
   0.00%       0x00007f941ed9ef56:   mov    (%r11),%r10
   4.49%       0x00007f941ed9ef59:   lea    (%rsp),%r9
   0.00%       0x00007f941ed9ef5d:   data16 xchg %ax,%ax
               0x00007f941ed9ef60:   test   $0x2,%r10
          ╭    0x00007f941ed9ef67:   jne    0x00007f941ed9f06b
   1.48%  │    0x00007f941ed9ef6d:   or     $0x1,%r10
   0.00%  │    0x00007f941ed9ef71:   mov    %r10,(%r9)
   2.87%  │    0x00007f941ed9ef74:   mov    %r10,%rax
   0.00%  │    0x00007f941ed9ef77:   lock cmpxchg %r9,(%r11)
  26.91%  │    0x00007f941ed9ef7c:   nopl   0x0(%rax)
   0.02%  │    0x00007f941ed9ef80:   cmp    %r10,%rax
          │    0x00007f941ed9ef83:   jne    0x00007f941ed9f09e
   1.49%  │    0x00007f941ed9ef89:   incq   0x550(%r15)                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
   0.00%  │    0x00007f941ed9ef90:   mov    0x14(%r11),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
   1.46%  │    0x00007f941ed9ef94:   mov    %r8d,%eax
          │    0x00007f941ed9ef97:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
          │    0x00007f941ed9ef9a:   nopw   0x0(%rax,%rax,1)
   0.00%  │    0x00007f941ed9efa0:   cmp    $0x21,%eax
          │    0x00007f941ed9efa3:   jl     0x00007f941ed9f1c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@22 (line 179)
   1.44%  │    0x00007f941ed9efa9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 180)
   0.00%  │    0x00007f941ed9efac:   cmp    $0x21,%eax
          │    0x00007f941ed9efaf:   jl     0x00007f941ed9f1c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@34 (line 181)
          │    0x00007f941ed9efb5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 182)
          │    0x00007f941ed9efb8:   nopl   0x0(%rax,%rax,1)
   1.41%  │    0x00007f941ed9efc0:   cmp    $0x21,%eax
          │    0x00007f941ed9efc3:   jl     0x00007f941ed9f1c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@46 (line 183)
          │    0x00007f941ed9efc9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 184)
          │    0x00007f941ed9efcc:   cmp    $0x21,%eax
          │    0x00007f941ed9efcf:   jl     0x00007f941ed9f1c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@58 (line 185)
          │    0x00007f941ed9efd5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 186)
   1.38%  │    0x00007f941ed9efd8:   nopl   0x0(%rax,%rax,1)
   0.00%  │    0x00007f941ed9efe0:   cmp    $0x21,%eax
          │    0x00007f941ed9efe3:   jl     0x00007f941ed9f1c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@70 (line 187)
          │    0x00007f941ed9efe9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 188)
          │    0x00007f941ed9efec:   cmp    $0x21,%eax
          │    0x00007f941ed9efef:   jl     0x00007f941ed9f1c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@82 (line 189)
   1.38%  │    0x00007f941ed9eff5:   mov    %eax,%r9d
   0.00%  │    0x00007f941ed9eff8:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 190)
          │    0x00007f941ed9effb:   nopl   0x0(%rax,%rax,1)
          │    0x00007f941ed9f000:   cmp    $0x21,%r9d
          │    0x00007f941ed9f004:   jl     0x00007f941ed9f1c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@94 (line 191)
   1.45%  │    0x00007f941ed9f00a:   lea    (%rsp),%r8
          │    0x00007f941ed9f00e:   mov    (%r8),%rsi
   0.00%  │    0x00007f941ed9f011:   test   %rsi,%rsi
          │╭   0x00007f941ed9f014:   je     0x00007f941ed9f062           ;   {no_reloc}
   0.00%  ││   0x00007f941ed9f01a:   mov    (%r11),%rcx
   8.79%  ││   0x00007f941ed9f01d:   data16 xchg %ax,%ax
   0.01%  ││   0x00007f941ed9f020:   test   $0x2,%rcx
          ││   0x00007f941ed9f027:   jne    0x00007f941ed9f0bd
   1.41%  ││   0x00007f941ed9f02d:   mov    %r8,%rax
          ││   0x00007f941ed9f030:   lock cmpxchg %rsi,(%r11)
  25.26%  ││   0x00007f941ed9f035:   jne    0x00007f941ed9f12a
   0.02%  ││   0x00007f941ed9f03b:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
   1.54%  ││↗  0x00007f941ed9f042:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
   0.01%  │││  0x00007f941ed9f045:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@104 (line 202)
   1.42%  │││  0x00007f941ed9f048:   mov    0x10(%rsp),%rbp
   0.00%  │││  0x00007f941ed9f04d:   add    $0x18,%rsp
   0.00%  │││  0x00007f941ed9f051:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f941ed9f058:   ja     0x00007f941ed9f220
   0.00%  │││  0x00007f941ed9f05e:   vzeroupper 
   1.50%  │││  0x00007f941ed9f061:   ret    
          │↘│  0x00007f941ed9f062:   decq   0x550(%r15)
          │ ╰  0x00007f941ed9f069:   jmp    0x00007f941ed9f042           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
          ↘    0x00007f941ed9f06b:   movq   $0x3,(%r9)
               0x00007f941ed9f072:   mov    0x3e(%r10),%rsi
               0x00007f941ed9f076:   test   %rsi,%rsi
               0x00007f941ed9f079:   jne    0x00007f941ed9f112
               0x00007f941ed9f07f:   mov    $0x0,%rax
               0x00007f941ed9f086:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  90.10%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.10%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 1035 
   6.12%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1059 
   0.35%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   1.50%  <...other 300 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.10%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 1035 
   6.12%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1059 
   3.24%                kernel  [unknown] 
   0.12%                        <unknown> 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  xmlStream::write_text 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libc.so.6  syscall 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libjvm.so  PlatformMonitor::wait 
   0.01%             libc.so.6  _itoa_word 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%             libc.so.6  __vfprintf_internal 
   0.01%             libc.so.6  _IO_fflush 
   0.01%             libc.so.6  _IO_setb 
   0.18%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.22%        jvmci, level 4
   3.24%                kernel
   0.23%             libjvm.so
   0.12%                      
   0.12%             libc.so.6
   0.03%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:04:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 55.666 ns/op
# Warmup Iteration   2: 55.340 ns/op
# Warmup Iteration   3: 60.350 ns/op
# Warmup Iteration   4: 78.829 ns/op
# Warmup Iteration   5: 67.503 ns/op
Iteration   1: 57.742 ns/op
Iteration   2: 66.216 ns/op
Iteration   3: 66.454 ns/op
Iteration   4: 66.257 ns/op
Iteration   5: 66.358 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized":
  64.605 ±(99.9%) 14.777 ns/op [Average]
  (min, avg, max) = (57.742, 64.605, 66.454), stdev = 3.838
  CI (99.9%): [49.828, 79.383] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized:asm":
PrintAssembly processed: 216158 total address lines.
Perf output processed (skipped 79.073 seconds):
 Column 1: cycles (50704 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 1020 

               # {method} {0x00007fa8c3479d80} &apos;nested_synchronized&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007fa94ad9ae80:   mov    0x8(%rsi),%r10d
               0x00007fa94ad9ae84:   movabs $0x7fa8c7000000,%r12
               0x00007fa94ad9ae8e:   add    %r12,%r10
               0x00007fa94ad9ae91:   xor    %r12,%r12
               0x00007fa94ad9ae94:   cmp    %r10,%rax
               0x00007fa94ad9ae97:   jne    0x00007fa94a6f9080           ;   {runtime_call ic_miss_stub}
               0x00007fa94ad9ae9d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.46%       0x00007fa94ad9aea0:   mov    %eax,-0x14000(%rsp)
   0.00%       0x00007fa94ad9aea7:   sub    $0x18,%rsp
   0.00%       0x00007fa94ad9aeab:   nop
   1.54%       0x00007fa94ad9aeac:   cmpl   $0x1,0x20(%r15)
   0.00%       0x00007fa94ad9aeb4:   jne    0x00007fa94ad9b0e7
   0.00%       0x00007fa94ad9aeba:   mov    %rbp,0x10(%rsp)
               0x00007fa94ad9aebf:   mov    %rsi,%r11
   1.43%       0x00007fa94ad9aec2:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
   4.43%       0x00007fa94ad9aec5:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@1 (line 82)
   0.01%       0x00007fa94ad9aec9:   lea    (%rsp),%r8                   ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
   0.00%       0x00007fa94ad9aecd:   mov    %eax,%r9d
               0x00007fa94ad9aed0:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@5 (line 82)
   1.54%       0x00007fa94ad9aed3:   test   $0x2,%r10
          ╭    0x00007fa94ad9aeda:   jne    0x00007fa94ad9af7a
   0.00%  │    0x00007fa94ad9aee0:   or     $0x1,%r10
          │    0x00007fa94ad9aee4:   mov    %r10,(%r8)
   2.99%  │    0x00007fa94ad9aee7:   mov    %r10,%rax
   0.00%  │    0x00007fa94ad9aeea:   lock cmpxchg %r8,(%r11)
  27.56%  │    0x00007fa94ad9aeef:   cmp    %r10,%rax
          │    0x00007fa94ad9aef2:   jne    0x00007fa94ad9afb2
   0.09%  │    0x00007fa94ad9aef8:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
   1.56%  │    0x00007fa94ad9aeff:   lea    (%rsp),%r10
   0.00%  │    0x00007fa94ad9af03:   mov    (%r10),%rsi                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 107)
   1.53%  │    0x00007fa94ad9af06:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@96 (line 99)
   0.00%  │    0x00007fa94ad9af0a:   test   %rsi,%rsi
          │╭   0x00007fa94ad9af0d:   je     0x00007fa94ad9af71
          ││   0x00007fa94ad9af13:   mov    (%r11),%rcx
  16.48%  ││   0x00007fa94ad9af16:   data16 nopw 0x0(%rax,%rax,1)
   0.04%  ││   0x00007fa94ad9af20:   test   $0x2,%rcx
          ││   0x00007fa94ad9af27:   jne    0x00007fa94ad9afdc
   1.46%  ││   0x00007fa94ad9af2d:   mov    %r10,%rax
   0.00%  ││   0x00007fa94ad9af30:   lock cmpxchg %rsi,(%r11)
  23.87%  ││   0x00007fa94ad9af35:   jne    0x00007fa94ad9b04a
   0.07%  ││   0x00007fa94ad9af3b:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 107)
   1.50%  ││↗  0x00007fa94ad9af42:   shl    $0x3,%r8d
   0.00%  │││  0x00007fa94ad9af46:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@99 (line 99)
   1.48%  │││  0x00007fa94ad9af49:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@210 (line 109)
          │││  0x00007fa94ad9af4c:   mov    0x10(%rsp),%rbp
          │││  0x00007fa94ad9af51:   add    $0x18,%rsp
          │││  0x00007fa94ad9af55:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.52%  │││  0x00007fa94ad9af60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007fa94ad9af67:   ja     0x00007fa94ad9b0f7
   0.00%  │││  0x00007fa94ad9af6d:   vzeroupper 
   1.54%  │││  0x00007fa94ad9af70:   ret    
          │↘│  0x00007fa94ad9af71:   decq   0x550(%r15)
          │ ╰  0x00007fa94ad9af78:   jmp    0x00007fa94ad9af42           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 107)
          ↘    0x00007fa94ad9af7a:   movq   $0x3,(%r8)
               0x00007fa94ad9af81:   mov    0x3e(%r10),%rsi
               0x00007fa94ad9af85:   test   %rsi,%rsi
               0x00007fa94ad9af88:   jne    0x00007fa94ad9b032
               0x00007fa94ad9af8e:   mov    $0x0,%rax
               0x00007fa94ad9af95:   lock cmpxchg %r15,0x3e(%r10)
               0x00007fa94ad9af9b:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  92.13%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 1020 
   4.50%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1052 
   0.46%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.29%  <...other 280 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 1020 
   4.50%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 6, compile id 1052 
   2.89%                kernel  [unknown] 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%   libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.01%             libc.so.6  __vfprintf_internal 
   0.01%        hsdis-amd64.so  print_insn 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  syscall 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libjvm.so  os::current_thread_id 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%                        <unknown> 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.24%  <...other 98 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.63%        jvmci, level 4
   2.89%                kernel
   0.22%             libjvm.so
   0.13%             libc.so.6
   0.05%   libjvmcicompiler.so
   0.02%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.01%                [vdso]
   0.00%         perf-8188.map
   0.00%           c1, level 3
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:02:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 67.520 ns/op
# Warmup Iteration   2: 66.385 ns/op
# Warmup Iteration   3: 66.766 ns/op
# Warmup Iteration   4: 66.286 ns/op
# Warmup Iteration   5: 66.167 ns/op
Iteration   1: 66.282 ns/op
Iteration   2: 66.509 ns/op
Iteration   3: 66.341 ns/op
Iteration   4: 66.214 ns/op
Iteration   5: 66.924 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls":
  66.454 ±(99.9%) 1.097 ns/op [Average]
  (min, avg, max) = (66.214, 66.454, 66.924), stdev = 0.285
  CI (99.9%): [65.357, 67.551] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 220653 total address lines.
Perf output processed (skipped 81.348 seconds):
 Column 1: cycles (51021 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 1043 

               # {method} {0x00007f80c0479ed0} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f814ed9af80:   mov    0x8(%rsi),%r10d
               0x00007f814ed9af84:   movabs $0x7f80cb000000,%r12
               0x00007f814ed9af8e:   add    %r12,%r10
               0x00007f814ed9af91:   xor    %r12,%r12
               0x00007f814ed9af94:   cmp    %r10,%rax
               0x00007f814ed9af97:   jne    0x00007f814e6f9080           ;   {runtime_call ic_miss_stub}
               0x00007f814ed9af9d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.47%       0x00007f814ed9afa0:   mov    %eax,-0x14000(%rsp)
   0.01%       0x00007f814ed9afa7:   sub    $0x18,%rsp
               0x00007f814ed9afab:   nop
   1.55%       0x00007f814ed9afac:   cmpl   $0x1,0x20(%r15)
   0.01%       0x00007f814ed9afb4:   jne    0x00007f814ed9b1e7
               0x00007f814ed9afba:   mov    %rbp,0x10(%rsp)
   0.00%       0x00007f814ed9afbf:   mov    %rsi,%r11
   1.49%       0x00007f814ed9afc2:   mov    (%r11),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   4.48%       0x00007f814ed9afc5:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@1 (line 115)
   0.02%       0x00007f814ed9afc9:   lea    (%rsp),%r8                   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
               0x00007f814ed9afcd:   mov    %eax,%r9d
               0x00007f814ed9afd0:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@5 (line 115)
   1.49%       0x00007f814ed9afd3:   test   $0x2,%r10
          ╭    0x00007f814ed9afda:   jne    0x00007f814ed9b07a
   0.01%  │    0x00007f814ed9afe0:   or     $0x1,%r10
   0.00%  │    0x00007f814ed9afe4:   mov    %r10,(%r8)
   2.93%  │    0x00007f814ed9afe7:   mov    %r10,%rax
   0.01%  │    0x00007f814ed9afea:   lock cmpxchg %r8,(%r11)
  26.92%  │    0x00007f814ed9afef:   cmp    %r10,%rax
          │    0x00007f814ed9aff2:   jne    0x00007f814ed9b0b2
   0.16%  │    0x00007f814ed9aff8:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   1.45%  │    0x00007f814ed9afff:   lea    (%rsp),%r10
   0.00%  │    0x00007f814ed9b003:   mov    (%r10),%rsi                  ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   1.47%  │    0x00007f814ed9b006:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   0.00%  │    0x00007f814ed9b00a:   test   %rsi,%rsi
          │╭   0x00007f814ed9b00d:   je     0x00007f814ed9b071
          ││   0x00007f814ed9b013:   mov    (%r11),%rcx
  16.48%  ││   0x00007f814ed9b016:   data16 nopw 0x0(%rax,%rax,1)
   0.10%  ││   0x00007f814ed9b020:   test   $0x2,%rcx
          ││   0x00007f814ed9b027:   jne    0x00007f814ed9b0dc
   1.50%  ││   0x00007f814ed9b02d:   mov    %r10,%rax
   0.00%  ││   0x00007f814ed9b030:   lock cmpxchg %rsi,(%r11)
  23.76%  ││   0x00007f814ed9b035:   jne    0x00007f814ed9b14a
   0.11%  ││   0x00007f814ed9b03b:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   1.54%  ││↗  0x00007f814ed9b042:   shl    $0x3,%r8d
   0.01%  │││  0x00007f814ed9b046:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   1.52%  │││  0x00007f814ed9b049:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@16 (line 117)
   0.00%  │││  0x00007f814ed9b04c:   mov    0x10(%rsp),%rbp
          │││  0x00007f814ed9b051:   add    $0x18,%rsp
   0.00%  │││  0x00007f814ed9b055:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.49%  │││  0x00007f814ed9b060:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f814ed9b067:   ja     0x00007f814ed9b1f7
   0.01%  │││  0x00007f814ed9b06d:   vzeroupper 
   1.43%  │││  0x00007f814ed9b070:   ret    
          │↘│  0x00007f814ed9b071:   decq   0x550(%r15)
          │ ╰  0x00007f814ed9b078:   jmp    0x00007f814ed9b042           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
          ↘    0x00007f814ed9b07a:   movq   $0x3,(%r8)
               0x00007f814ed9b081:   mov    0x3e(%r10),%rsi
               0x00007f814ed9b085:   test   %rsi,%rsi
               0x00007f814ed9b088:   jne    0x00007f814ed9b132
               0x00007f814ed9b08e:   mov    $0x0,%rax
               0x00007f814ed9b095:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  91.43%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.43%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 1043 
   4.56%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1076 
   0.38%                kernel  [unknown] 
   0.35%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.69%  <...other 383 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.43%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 1043 
   4.56%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1076 
   3.23%                kernel  [unknown] 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libjvm.so  fileStream::write 
   0.03%   libjvmcicompiler.so  java.nio.Buffer::Buffer 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libjvm.so  defaultStream::write 
   0.01%                [vdso]  [unknown] 
   0.01%             libjvm.so  InstanceKlass::allocate_objArray 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%             libc.so.6  _IO_setb 
   0.49%  <...other 192 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.99%        jvmci, level 4
   3.23%                kernel
   0.28%             libjvm.so
   0.24%   libjvmcicompiler.so
   0.18%             libc.so.6
   0.03%           interpreter
   0.03%        hsdis-amd64.so
   0.01%                [vdso]
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%          libjimage.so
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:13:36

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

Benchmark                                                    Mode  Cnt   Score    Error  Units
LockCoarseningBenchmark.baseline                             avgt    5  54.831 ±  1.597  ns/op
LockCoarseningBenchmark.baseline:asm                         avgt          NaN             ---
LockCoarseningBenchmark.chain_method_calls                   avgt    5  54.937 ±  1.963  ns/op
LockCoarseningBenchmark.chain_method_calls:asm               avgt          NaN             ---
LockCoarseningBenchmark.conditional_chain_method_calls       avgt    5  55.657 ±  1.584  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:asm   avgt          NaN             ---
LockCoarseningBenchmark.conditional_nested_method_calls      avgt    5  55.479 ±  0.812  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:asm  avgt          NaN             ---
LockCoarseningBenchmark.nested_synchronized                  avgt    5  64.605 ± 14.777  ns/op
LockCoarseningBenchmark.nested_synchronized:asm              avgt          NaN             ---
LockCoarseningBenchmark.recursive_method_calls               avgt    5  66.454 ±  1.097  ns/op
LockCoarseningBenchmark.recursive_method_calls:asm           avgt          NaN             ---
