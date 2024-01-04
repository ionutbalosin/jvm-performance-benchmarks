# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 3 iterations, 10 s each
# Measurement: 3 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls

# Run progress: 0.00% complete, ETA 00:03:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.183 ns/op
# Warmup Iteration   2: 8.369 ns/op
# Warmup Iteration   3: 7.620 ns/op
Iteration   1: 8.126 ns/op
Iteration   2: 7.812 ns/op
Iteration   3: 7.954 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls":
  7.964 ±(99.9%) 2.864 ns/op [Average]
  (min, avg, max) = (7.812, 7.964, 8.126), stdev = 0.157
  CI (99.9%): [5.100, 10.828] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls:asm":
PrintAssembly processed: 205927 total address lines.
Perf output processed (skipped 71.433 seconds):
 Column 1: cycles (30485 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1140 

              0x00007fd60f196210:   mov    0x18(%rsp),%rsi
              0x00007fd60f196215:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fd60f196220:   cmpb   $0x0,0x94(%rsi)
              0x00007fd60f196227:   jne    0x00007fd60f1962ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
              0x00007fd60f19622d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fd60f196236:   jmp    0x00007fd60f19624f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 190)
          │   0x00007fd60f19623b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
   2.70%  │↗  0x00007fd60f196240:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
   7.92%  ││  0x00007fd60f196247:   test   %eax,(%r11)                  ;   {poll}
   0.58%  ││  0x00007fd60f19624a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 190)
   2.90%  ↘│  0x00007fd60f19624f:   mov    0x8(%rsp),%r10
   2.52%   │  0x00007fd60f196254:   mov    %r10,%rsi
   7.67%   │  0x00007fd60f196257:   call   0x00007fd60eaf9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  15.99%   │  0x00007fd60f19625c:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
   0.70%   │  0x00007fd60f196264:   mov    0x20(%rsp),%r10
   5.11%   │  0x00007fd60f196269:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 191)
   8.68%   │  0x00007fd60f19626c:   mov    0x18(%rsp),%rsi
   0.43%   │  0x00007fd60f196271:   cmpb   $0x0,0x94(%rsi)
   3.86%   ╰  0x00007fd60f196278:   je     0x00007fd60f196240           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
              0x00007fd60f19627a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@36 (line 193)
              0x00007fd60f19627f:   nop
              0x00007fd60f196280:   call   0x00007fd6284d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fd60f196285:   nop
              0x00007fd60f196286:   mov    0x10(%rsp),%rdx
              0x00007fd60f19628b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 193)
              0x00007fd60f19628f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  59.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls, version 2, compile id 1101 

                # {method} {0x00007fd587479750} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadArgumentEliminationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fd60f18e400:   mov    0x8(%rsi),%r10d
                0x00007fd60f18e404:   movabs $0x7fd58b000000,%r12
                0x00007fd60f18e40e:   add    %r12,%r10
                0x00007fd60f18e411:   xor    %r12,%r12
                0x00007fd60f18e414:   cmp    %r10,%rax
                0x00007fd60f18e417:   jne    0x00007fd60eaf9080           ;   {runtime_call ic_miss_stub}
                0x00007fd60f18e41d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   3.50%        0x00007fd60f18e420:   mov    %eax,-0x14000(%rsp)
  10.61%        0x00007fd60f18e427:   sub    $0x18,%rsp
   0.57%        0x00007fd60f18e42b:   nop
   2.82%        0x00007fd60f18e42c:   cmpl   $0x0,0x20(%r15)
   2.67%  ╭     0x00007fd60f18e434:   jne    0x00007fd60f18e44f
   7.80%  │ ↗   0x00007fd60f18e43a:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls@71 (line 95)
   0.76%  │ │   0x00007fd60f18e43d:   add    $0x18,%rsp
   2.81%  │ │↗  0x00007fd60f18e441:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fd60f18e448:   ja     0x00007fd60f18e45c
   2.71%  ││││  0x00007fd60f18e44e:   ret    
          ↘│││  0x00007fd60f18e44f:   mov    %rbp,0x10(%rsp)
           │││  0x00007fd60f18e454:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fd60f18e459:   jmp    0x00007fd60f18e43a
           │ │  0x00007fd60f18e45b:   hlt    
           ↘ ╰  0x00007fd60f18e45c:   lea    -0x22(%rip),%rcx        # 0x00007fd60f18e441
                0x00007fd60f18e463:   mov    %rcx,0x468(%r15)
                0x00007fd60f18e46a:   jmp    0x00007fd60eb00000           ;   {runtime_call SafepointBlob}
                0x00007fd60f18e46f:   hlt    
              [Exception Handler]
                0x00007fd60f18e470:   call   0x00007fd60ed0ba00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  34.26%  <total for region 2>

....[Hottest Regions]...............................................................................
  59.05%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1140 
  34.26%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls, version 2, compile id 1101 
   0.33%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.24%                kernel  [unknown] 
   0.24%                kernel  [unknown] 
   0.23%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   3.34%  <...other 385 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.05%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1140 
  34.26%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls, version 2, compile id 1101 
   5.55%                kernel  [unknown] 
   0.55%                        <unknown> 
   0.06%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%        hsdis-amd64.so  print_insn 
   0.01%             libjvm.so  outputStream::print 
   0.01%             libjvm.so  methodHandle::~methodHandle 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libc.so.6  __strncmp_avx2 
   0.29%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.31%        jvmci, level 4
   5.55%                kernel
   0.55%                      
   0.30%             libjvm.so
   0.18%             libc.so.6
   0.05%           interpreter
   0.02%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%        perf-12876.map
   0.01%           c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 3 iterations, 10 s each
# Measurement: 3 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink

# Run progress: 33.33% complete, ETA 00:03:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
<forked VM failed with exit code 134>
<stdout last='20 lines'>
  0x00007f50f770d667:   call   0x00007f50feaf9380           ; ImmutableOopMap {[80]=Oop [88]=Oop }
                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - java.lang.PublicMethods$Key::matches@5 (line 107)
                                                            ;   {optimized virtual_call}
  0x00007f50f770d66c:   nopl   0x25c(%rax,%rax,1)           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - java.lang.PublicMethods$Key::matches@5 (line 107)
                                                            ;   {other}
  0x00007f50f770d674:   cmp    $0x0,%eax
  0x00007f50f770d677:   movabs $0x7f507021f630,%rsi         ;   {metadata(method data for {method} {0x00007f507b3d8ad8} 'matches' '(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z' in 'java/lang/PublicMethods$Key')}
  0x00007f50f770d681:   movabs $0x268,%rdx
  0x00007f50f770d68b:   je     0x00007f50f770d69b
  0x00007f50f770d691:   movabs $0x278,%rdx
  0x00007f50f770d69b:   mov    (%rsi,%rdx,1),%rdi
  0x00007f50f770d69f:   lea    0x1(%rdi),%rdi
  0x00007f50f770d6a3:   mov    %rdi,(%rsi,%rdx,1)
  0x00007f50f770d6a7:   je     0x00007f50f770d7cd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - java.lang.PublicMethods$Key::matches@8 (line 107)
  0x00007f50f770d6ad:   mov    0x58(%rsp),%rcx
  0x00007f50f770d6b2:   mov    0x50(%rsp),%rsi
  0x00007f50f770d6b7:   movabs $0x7ffc01680
</stdout>
<stderr last='20 lines'>
WARNING: Kernel address maps (/proc/{kallsyms,modules}) are restricted,
check /proc/sys/kernel/kptr_restrict and /proc/sys/kernel/perf_event_paranoid.

Samples in kernel functions may not be resolved if a suitable vmlinux
file is not found in the buildid cache or in the vmlinux path.

Samples in kernel modules won't be resolved at all.

If some relocation was applied (e.g. kexec) symbols may be misresolved
even with a suitable vmlinux or kallsyms file.

Couldn't record kernel reference relocation symbol
Symbol resolution may be skewed if relocation was used (e.g. kexec).
Check /proc/kallsyms permission or run as root.
OpenJDK 64-Bit Server VM warning: PrintAssembly is enabled; turning on DebugNonSafepoints to gain additional output
OpenJDK 64-Bit Server VM warning: -XX:ThreadPriorityPolicy=1 may require system level permission, e.g., being the root user. If the necessary permission is not possessed, changes to priority will be silently ignored.
[ perf record: Woken up 5 times to write data ]
[ perf record: Captured and wrote 1,994 MB /tmp/jmh14746763967975542882perfbin (52054 samples) ]
</stderr>

# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 3 iterations, 10 s each
# Measurement: 3 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls

# Run progress: 33.33% complete, ETA 00:03:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 76.865 ns/op
# Warmup Iteration   2: 74.527 ns/op
# Warmup Iteration   3: 73.195 ns/op
Iteration   1: 76.122 ns/op
Iteration   2: 75.718 ns/op
Iteration   3: 73.459 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls":
  75.100 ±(99.9%) 26.178 ns/op [Average]
  (min, avg, max) = (73.459, 75.100, 76.122), stdev = 1.435
  CI (99.9%): [48.921, 101.278] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 207492 total address lines.
Perf output processed (skipped 68.463 seconds):
 Column 1: cycles (30775 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls, version 2, compile id 1056 

                       # {method} {0x00007fb0884795c8} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadArgumentEliminationBenchmark&apos;
                       #           [sp+0x40]  (sp of caller)
                       0x00007fb11718e780:   mov    0x8(%rsi),%r10d
                       0x00007fb11718e784:   movabs $0x7fb093000000,%r12
                       0x00007fb11718e78e:   add    %r12,%r10
                       0x00007fb11718e791:   xor    %r12,%r12
                       0x00007fb11718e794:   cmp    %r10,%rax
                       0x00007fb11718e797:   jne    0x00007fb116af9080           ;   {runtime_call ic_miss_stub}
                       0x00007fb11718e79d:   data16 xchg %ax,%ax
                     [Verified Entry Point]
   0.10%               0x00007fb11718e7a0:   mov    %eax,-0x14000(%rsp)
   1.36%               0x00007fb11718e7a7:   sub    $0x38,%rsp
   0.09%               0x00007fb11718e7ab:   nop
   0.00%               0x00007fb11718e7ac:   cmpl   $0x1,0x20(%r15)
   0.35%               0x00007fb11718e7b4:   jne    0x00007fb11718eb20
   1.02%               0x00007fb11718e7ba:   mov    %rbp,0x30(%rsp)
   0.10%               0x00007fb11718e7bf:   mov    %rsi,%r10
   0.01%               0x00007fb11718e7c2:   mov    0x1b8(%r15),%rsi
   0.35%               0x00007fb11718e7c9:   lea    0x10(%rsi),%rdx
   0.92%               0x00007fb11718e7cd:   cmp    0x1c8(%r15),%rdx
          ╭            0x00007fb11718e7d4:   ja     0x00007fb11718ea11
   0.09%  │            0x00007fb11718e7da:   mov    %rdx,0x1b8(%r15)
   0.11%  │            0x00007fb11718e7e1:   prefetchw 0xd0(%rsi)
   0.40%  │            0x00007fb11718e7e8:   movq   $0x1,(%rsi)
   1.08%  │            0x00007fb11718e7ef:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.22%  │            0x00007fb11718e7f6:   movl   $0x0,0xc(%rsi)
   0.12%  │            0x00007fb11718e7fd:   mov    %rsi,%r11                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
   0.26%  │     ↗      0x00007fb11718e800:   mov    0x1b8(%r15),%rsi
   1.29%  │     │      0x00007fb11718e807:   lea    0x10(%rsi),%rdx
   0.11%  │     │      0x00007fb11718e80b:   cmp    0x1c8(%r15),%rdx
          │     │      0x00007fb11718e812:   ja     0x00007fb11718eade
   0.16%  │     │      0x00007fb11718e818:   mov    %rdx,0x1b8(%r15)
   0.35%  │     │      0x00007fb11718e81f:   prefetchw 0xd0(%rsi)
   1.18%  │     │      0x00007fb11718e826:   movq   $0x1,(%rsi)
   0.32%  │     │      0x00007fb11718e82d:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.37%  │     │      0x00007fb11718e834:   movl   $0x0,0xc(%rsi)
   0.40%  │     │      0x00007fb11718e83b:   mov    %rsi,%r9                     ;*new {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@8 (line 72)
   1.03%  │     │      0x00007fb11718e83e:   mov    0x1b8(%r15),%rsi
   0.39%  │     │      0x00007fb11718e845:   lea    0x10(%rsi),%rdx
   0.12%  │     │      0x00007fb11718e849:   cmp    0x1c8(%r15),%rdx
          │╭    │      0x00007fb11718e850:   ja     0x00007fb11718ea32
   0.41%  ││    │      0x00007fb11718e856:   mov    %rdx,0x1b8(%r15)
   1.10%  ││    │      0x00007fb11718e85d:   prefetchw 0xd0(%rsi)
   0.37%  ││    │      0x00007fb11718e864:   movq   $0x1,(%rsi)
   0.53%  ││    │      0x00007fb11718e86b:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   0.91%  ││    │      0x00007fb11718e872:   movl   $0x0,0xc(%rsi)
   1.01%  ││    │      0x00007fb11718e879:   mov    %rsi,%rbx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││    │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@16 (line 73)
   0.03%  ││    │↗     0x00007fb11718e87c:   mov    0x1b8(%r15),%rsi
   0.42%  ││    ││     0x00007fb11718e883:   lea    0x10(%rsi),%rdx
   0.45%  ││    ││     0x00007fb11718e887:   cmp    0x1c8(%r15),%rdx
          ││    ││     0x00007fb11718e88e:   ja     0x00007fb11718eaff
   1.04%  ││    ││     0x00007fb11718e894:   mov    %rdx,0x1b8(%r15)
   0.09%  ││    ││     0x00007fb11718e89b:   prefetchw 0xd0(%rsi)
   0.93%  ││    ││     0x00007fb11718e8a2:   movq   $0x1,(%rsi)
   1.48%  ││    ││     0x00007fb11718e8a9:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.43%  ││    ││     0x00007fb11718e8b0:   movl   $0x0,0xc(%rsi)
   0.40%  ││    ││     0x00007fb11718e8b7:   mov    %rsi,%rbp                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@24 (line 74)
   0.05%  ││    ││     0x00007fb11718e8ba:   mov    0x1b8(%r15),%rsi
   1.11%  ││    ││     0x00007fb11718e8c1:   lea    0x10(%rsi),%rdx
   0.83%  ││    ││     0x00007fb11718e8c5:   cmp    0x1c8(%r15),%rdx
   0.00%  ││╭   ││     0x00007fb11718e8cc:   ja     0x00007fb11718eabd
   0.37%  │││   ││     0x00007fb11718e8d2:   mov    %rdx,0x1b8(%r15)
   0.24%  │││   ││     0x00007fb11718e8d9:   prefetchw 0xd0(%rsi)
   1.58%  │││   ││     0x00007fb11718e8e0:   movq   $0x1,(%rsi)
   3.09%  │││   ││     0x00007fb11718e8e7:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.86%  │││   ││     0x00007fb11718e8ee:   movl   $0x0,0xc(%rsi)
   0.92%  │││   ││     0x00007fb11718e8f5:   mov    %rsi,%r13                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││   ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@33 (line 75)
   0.06%  │││   ││     0x00007fb11718e8f8:   mov    0x1b8(%r15),%rsi
   0.44%  │││   ││     0x00007fb11718e8ff:   lea    0x10(%rsi),%rdx
   0.47%  │││   ││     0x00007fb11718e903:   cmp    0x1c8(%r15),%rdx
          │││╭  ││     0x00007fb11718e90a:   ja     0x00007fb11718ea78
   0.85%  ││││  ││     0x00007fb11718e910:   mov    %rdx,0x1b8(%r15)
   0.23%  ││││  ││     0x00007fb11718e917:   prefetchw 0xd0(%rsi)
   4.11%  ││││  ││     0x00007fb11718e91e:   movq   $0x1,(%rsi)
   3.46%  ││││  ││     0x00007fb11718e925:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.57%  ││││  ││     0x00007fb11718e92c:   movl   $0x0,0xc(%rsi)
   0.95%  ││││  ││     0x00007fb11718e933:   mov    %rsi,%r14                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@42 (line 76)
   0.30%  ││││  ││ ↗   0x00007fb11718e936:   mov    0x1b8(%r15),%rsi
   0.74%  ││││  ││ │   0x00007fb11718e93d:   lea    0x10(%rsi),%rdx
   0.29%  ││││  ││ │   0x00007fb11718e941:   cmp    0x1c8(%r15),%rdx
          ││││╭ ││ │   0x00007fb11718e948:   ja     0x00007fb11718ea57
   0.73%  │││││ ││ │   0x00007fb11718e94e:   mov    %rdx,0x1b8(%r15)
   0.37%  │││││ ││ │   0x00007fb11718e955:   prefetchw 0xd0(%rsi)
   2.58%  │││││ ││ │   0x00007fb11718e95c:   movq   $0x1,(%rsi)
   2.85%  │││││ ││ │   0x00007fb11718e963:   movl   $0xe80,0x8(%rsi)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.98%  │││││ ││ │   0x00007fb11718e96a:   movl   $0x0,0xc(%rsi)               ;*new {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@51 (line 77)
   0.73%  │││││ ││↗│   0x00007fb11718e971:   mov    0x1b8(%r15),%rdx
   1.29%  │││││ ││││   0x00007fb11718e978:   lea    0x10(%rdx),%rcx
   0.27%  │││││ ││││   0x00007fb11718e97c:   nopl   0x0(%rax)
   0.41%  │││││ ││││   0x00007fb11718e980:   cmp    0x1c8(%r15),%rcx
          │││││╭││││   0x00007fb11718e987:   ja     0x00007fb11718ea99
   0.77%  ││││││││││   0x00007fb11718e98d:   mov    %rcx,0x1b8(%r15)
   0.21%  ││││││││││   0x00007fb11718e994:   prefetchw 0xd0(%rdx)
   2.36%  ││││││││││   0x00007fb11718e99b:   movq   $0x1,(%rdx)
   3.91%  ││││││││││   0x00007fb11718e9a2:   movl   $0xe80,0x8(%rdx)             ;   {metadata(&apos;java/lang/Object&apos;)}
   1.30%  ││││││││││   0x00007fb11718e9a9:   movl   $0x0,0xc(%rdx)
   1.01%  ││││││││││   0x00007fb11718e9b0:   mov    %rdx,%rax                    ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@60 (line 78)
   0.05%  ││││││││││↗  0x00007fb11718e9b3:   mov    0x10(%r10),%ecx              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@73 (line 80)
   0.46%  │││││││││││  0x00007fb11718e9b7:   mov    %rsi,%rdi
   0.28%  │││││││││││  0x00007fb11718e9ba:   mov    %r10,%rsi
   0.69%  │││││││││││  0x00007fb11718e9bd:   mov    $0x2,%edx
   0.07%  │││││││││││  0x00007fb11718e9c2:   mov    %r11,%r8
   0.42%  │││││││││││  0x00007fb11718e9c5:   mov    %rdi,%r10
   0.31%  │││││││││││  0x00007fb11718e9c8:   mov    %rbx,%rdi
   0.69%  │││││││││││  0x00007fb11718e9cb:   mov    %rbp,(%rsp)
   0.08%  │││││││││││  0x00007fb11718e9cf:   mov    %r13,0x8(%rsp)
   0.41%  │││││││││││  0x00007fb11718e9d4:   mov    %r14,0x10(%rsp)
   0.29%  │││││││││││  0x00007fb11718e9d9:   mov    %r10,0x18(%rsp)              ;*invokevirtual recursiveMethod {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@89 (line 80)
   0.80%  │││││││││││  0x00007fb11718e9de:   mov    %rax,0x20(%rsp)
   0.10%  │││││││││││  0x00007fb11718e9e3:   call   0x00007fb11718e240           ; ImmutableOopMap {}
          │││││││││││                                                            ;*invokevirtual recursiveMethod {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@89 (line 80)
          │││││││││││                                                            ;   {optimized virtual_call}
   0.46%  │││││││││││  0x00007fb11718e9e8:   nopl   0x458(%rax,%rax,1)           ;   {other}
   0.01%  │││││││││││  0x00007fb11718e9f0:   mov    0x30(%rsp),%rbp
   1.37%  │││││││││││  0x00007fb11718e9f5:   add    $0x38,%rsp
   0.10%  │││││││││││  0x00007fb11718e9f9:   nopl   0x0(%rax)
   0.01%  │││││││││││  0x00007fb11718ea00:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││││││││││  0x00007fb11718ea07:   ja     0x00007fb11718eb30
   0.27%  │││││││││││  0x00007fb11718ea0d:   vzeroupper 
   1.33%  │││││││││││  0x00007fb11718ea10:   ret    
          ↘││││││││││  0x00007fb11718ea11:   movabs $0x7fb093000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
           ││││││││││  0x00007fb11718ea1b:   call   0x00007fb116d12480           ; ImmutableOopMap {r10=Oop }
           ││││││││││                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
           ││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
           ││││││││││                                                            ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
           ││││││││││  0x00007fb11718ea20:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop r10=Oop }
           ││││││││││                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
           ││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
           ││││││││││  0x00007fb11718ea28:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007fb11718eb46
           ││││││││││  0x00007fb11718ea2a:   mov    %rax,%r11
           │││││╰││││  0x00007fb11718ea2d:   jmp    0x00007fb11718e800
           ↘││││ ││││  0x00007fb11718ea32:   movabs $0x7fb093000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
            ││││ ││││  0x00007fb11718ea3c:   nopl   0x0(%rax)
            ││││ ││││  0x00007fb11718ea40:   call   0x00007fb116d12480           ; ImmutableOopMap {r9=Oop r10=Oop r11=Oop }
            ││││ ││││                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
            ││││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
            ││││ ││││                                                            ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
            ││││ ││││  0x00007fb11718ea45:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop r9=Oop r10=Oop r11=Oop }
            ││││ ││││                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
            ││││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
            ││││ ││││  0x00007fb11718ea4d:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007fb11718eb6d
            ││││ ││││  0x00007fb11718ea4f:   mov    %rax,%rbx
            ││││ ╰│││  0x00007fb11718ea52:   jmp    0x00007fb11718e87c
            ││↘│  │││  0x00007fb11718ea57:   movabs $0x7fb093000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
            ││ │  │││  0x00007fb11718ea61:   call   0x00007fb116d12480           ; ImmutableOopMap {rbx=Oop rbp=Oop r9=Oop r10=Oop r11=Oop r13=Oop r14=Oop }
            ││ │  │││                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
            ││ │  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
            ││ │  │││                                                            ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
            ││ │  │││  0x00007fb11718ea66:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rbx=Oop rbp=Oop r9=Oop r10=Oop r11=Oop r13=Oop r14=Oop }
            ││ │  │││                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
            ││ │  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
            ││ │  │││  0x00007fb11718ea6e:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007fb11718eb90
            ││ │  │││  0x00007fb11718ea70:   mov    %rax,%rsi
            ││ │  ╰││  0x00007fb11718ea73:   jmp    0x00007fb11718e971
            │↘ │   ││  0x00007fb11718ea78:   movabs $0x7fb093000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
            │  │   ││  0x00007fb11718ea82:   call   0x00007fb116d12480           ; ImmutableOopMap {rbx=Oop rbp=Oop r9=Oop r10=Oop r11=Oop r13=Oop }
            │  │   ││                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
            │  │   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
            │  │   ││                                                            ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
            │  │   ││  0x00007fb11718ea87:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rbx=Oop rbp=Oop r9=Oop r10=Oop r11=Oop r13=Oop }
            │  │   ││                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
            │  │   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
            │  │   ││  0x00007fb11718ea8f:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007fb11718ebb3
            │  │   ││  0x00007fb11718ea91:   mov    %rax,%r14
            │  │   ╰│  0x00007fb11718ea94:   jmp    0x00007fb11718e936           ;*new {reexecute=0 rethrow=0 return_oop=0}
            │  │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@42 (line 76)
            │  ↘    │  0x00007fb11718ea99:   mov    %rsi,%r8
            │       │  0x00007fb11718ea9c:   movabs $0x7fb093000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
            │       │  0x00007fb11718eaa6:   call   0x00007fb116d12480           ; ImmutableOopMap {rbx=Oop rbp=Oop r8=Oop r9=Oop r10=Oop r11=Oop r13=Oop r14=Oop }
            │       │                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
            │       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
            │       │                                                            ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
            │       │  0x00007fb11718eaab:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rbx=Oop rbp=Oop r8=Oop r9=Oop r10=Oop r11=Oop r13=Oop r14=Oop }
            │       │                                                            ;*new {reexecute=1 rethrow=0 return_oop=0}
            │       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
            │       │  0x00007fb11718eab3:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007fb11718ebd6
            │       │  0x00007fb11718eab5:   mov    %r8,%rsi
            │       ╰  0x00007fb11718eab8:   jmp    0x00007fb11718e9b3
   0.01%    ↘          0x00007fb11718eabd:   movabs $0x7fb093000e80,%rsi         ;   {metadata(&apos;java/lang/Object&apos;)}
                       0x00007fb11718eac7:   call   0x00007fb116d12480           ; ImmutableOopMap {rbx=Oop rbp=Oop r9=Oop r10=Oop r11=Oop }
                                                                                 ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
                                                                                 ;   {runtime_call Stub&lt;new_instance_or_null(KlassPointer)Object&gt;}
                       0x00007fb11718eacc:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rbx=Oop rbp=Oop r9=Oop r10=Oop r11=Oop }
                                                                                 ;*new {reexecute=1 rethrow=0 return_oop=0}
                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@0 (line 71)
                       0x00007fb11718ead4:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007fb11718ebf9
                       0x00007fb11718ead6:   mov    %rax,%r13
                       0x00007fb11718ead9:   jmp    0x00007fb11718e8f8
....................................................................................................
  75.40%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod, version 2, compile id 1055 

                            # parm8:    [sp+0x58]   = &apos;java/lang/Object&apos;
                            # parm9:    [sp+0x60]   = &apos;java/lang/Object&apos;
                            0x00007fb11718e220:   mov    0x8(%rsi),%r10d
                            0x00007fb11718e224:   movabs $0x7fb093000000,%r12
                            0x00007fb11718e22e:   add    %r12,%r10
                            0x00007fb11718e231:   xor    %r12,%r12
                            0x00007fb11718e234:   cmp    %r10,%rax
                            0x00007fb11718e237:   jne    0x00007fb116af9080           ;   {runtime_call ic_miss_stub}
                            0x00007fb11718e23d:   data16 xchg %ax,%ax
                          [Verified Entry Point]
   0.71%           ↗        0x00007fb11718e240:   mov    %eax,-0x14000(%rsp)
   0.75%           │        0x00007fb11718e247:   sub    $0x38,%rsp
   0.35%           │        0x00007fb11718e24b:   nop
   0.31%           │        0x00007fb11718e24c:   cmpl   $0x1,0x20(%r15)
   0.72%  ╭        │        0x00007fb11718e254:   jne    0x00007fb11718e342
   0.09%  │        │     ↗  0x00007fb11718e25a:   mov    %rbp,0x30(%rsp)
   0.37%  │        │     │  0x00007fb11718e25f:   mov    0x40(%rsp),%r10
   0.44%  │        │     │  0x00007fb11718e264:   mov    0x48(%rsp),%r11
   0.92%  │        │     │  0x00007fb11718e269:   mov    0x50(%rsp),%rbx
   0.15%  │        │     │  0x00007fb11718e26e:   mov    0x58(%rsp),%rax
   0.39%  │        │     │  0x00007fb11718e273:   mov    0x60(%rsp),%rbp
   0.29%  │        │     │  0x00007fb11718e278:   test   %edx,%edx
          │╭       │     │  0x00007fb11718e27a:   je     0x00007fb11718e30e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││       │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@1 (line 126)
   0.66%  ││       │     │  0x00007fb11718e280:   cmp    $0x1,%edx
          ││╭      │     │  0x00007fb11718e283:   je     0x00007fb11718e32e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││      │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@1 (line 126)
          │││      │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
   0.09%  │││      │     │  0x00007fb11718e289:   lea    -0x2(%rdx),%r13d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││      │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@9 (line 129)
          │││      │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
   0.39%  │││      │     │  0x00007fb11718e28d:   cmp    $0x2,%r13d
          │││╭     │     │  0x00007fb11718e291:   jge    0x00007fb11718e2b5
   0.29%  ││││     │     │  0x00007fb11718e297:   cmp    $0x0,%r13d
   0.67%  ││││     │     │  0x00007fb11718e29b:   nopl   0x0(%rax,%rax,1)
   0.09%  ││││╭    │     │  0x00007fb11718e2a0:   je     0x00007fb11718e332
          │││││    │     │  0x00007fb11718e2a6:   cmp    $0x1,%r13d
          │││││╭   │     │  0x00007fb11718e2aa:   je     0x00007fb11718e336
          ││││││╭  │     │  0x00007fb11718e2b0:   jmp    0x00007fb11718e2c9
          │││↘│││  │     │  0x00007fb11718e2b5:   cmp    $0x2,%r13d
          │││ │││╭ │     │  0x00007fb11718e2b9:   je     0x00007fb11718e33a
          │││ ││││ │     │  0x00007fb11718e2bf:   cmp    $0x3,%r13d
          │││ ││││╭│     │  0x00007fb11718e2c3:   je     0x00007fb11718e33e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@1 (line 126)
          │││ ││││││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││││││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││↘│││     │  0x00007fb11718e2c9:   lea    -0x6(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@9 (line 129)
          │││ ││ │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ │││     │  0x00007fb11718e2cc:   mov    %r10,(%rsp)
          │││ ││ │││     │  0x00007fb11718e2d0:   mov    %r11,0x8(%rsp)
          │││ ││ │││     │  0x00007fb11718e2d5:   mov    %rbx,0x10(%rsp)
          │││ ││ │││     │  0x00007fb11718e2da:   mov    %rax,0x18(%rsp)
          │││ ││ │││     │  0x00007fb11718e2df:   mov    %rbp,0x20(%rsp)              ;*invokevirtual recursiveMethod {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ │││     │  0x00007fb11718e2e4:   data16 xchg %ax,%ax
          │││ ││ ││╰     │  0x00007fb11718e2e7:   call   0x00007fb11718e240           ; ImmutableOopMap {}
          │││ ││ ││      │                                                            ;*invokevirtual recursiveMethod {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │││ ││ ││      │                                                            ;   {optimized virtual_call}
          │││ ││ ││      │  0x00007fb11718e2ec:   nopl   0x25c(%rax,%rax,1)           ;   {other}
   1.15%  │││ ││ ││ ↗↗↗↗↗│  0x00007fb11718e2f4:   mov    0x30(%rsp),%rbp
   0.08%  │││ ││ ││ ││││││  0x00007fb11718e2f9:   add    $0x38,%rsp
          │││ ││ ││ ││││││  0x00007fb11718e2fd:   data16 xchg %ax,%ax
   0.26%  │││ ││ ││ ││││││  0x00007fb11718e300:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││ ││ ││ ││││││  0x00007fb11718e307:   ja     0x00007fb11718e352
   1.25%  │││ ││ ││ ││││││  0x00007fb11718e30d:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@1 (line 126)
          │↘│ ││ ││ ││││││  0x00007fb11718e30e:   mov    %ecx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@5 (line 127)
          │ │ ││ ││ ││││││  0x00007fb11718e310:   mov    0x30(%rsp),%rbp
          │ │ ││ ││ ││││││  0x00007fb11718e315:   add    $0x38,%rsp
          │ │ ││ ││ ││││││  0x00007fb11718e319:   nopl   0x0(%rax)
          │ │ ││ ││ ││││││  0x00007fb11718e320:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │ ││ ││ ││││││  0x00007fb11718e327:   ja     0x00007fb11718e366
          │ │ ││ ││ ││││││  0x00007fb11718e32d:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@1 (line 126)
          │ │ ││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │ ↘ ││ ││ ││││││  0x00007fb11718e32e:   mov    %ecx,%eax
          │   ││ ││ ╰│││││  0x00007fb11718e330:   jmp    0x00007fb11718e2f4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │   ││ ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@1 (line 126)
          │   ││ ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
          │   ││ ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
   0.44%  │   ↘│ ││  │││││  0x00007fb11718e332:   mov    %ecx,%eax
   0.31%  │    │ ││  ╰││││  0x00007fb11718e334:   jmp    0x00007fb11718e2f4
          │    ↘ ││   ││││  0x00007fb11718e336:   mov    %ecx,%eax
          │      ││   ╰│││  0x00007fb11718e338:   jmp    0x00007fb11718e2f4
          │      ↘│    │││  0x00007fb11718e33a:   mov    %ecx,%eax
          │       │    ╰││  0x00007fb11718e33c:   jmp    0x00007fb11718e2f4
          │       ↘     ││  0x00007fb11718e33e:   mov    %ecx,%eax
          │             ╰│  0x00007fb11718e340:   jmp    0x00007fb11718e2f4
          ↘              │  0x00007fb11718e342:   mov    %rbp,0x30(%rsp)
                         │  0x00007fb11718e347:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                         ╰  0x00007fb11718e34c:   jmp    0x00007fb11718e25a
                            0x00007fb11718e351:   hlt    
....................................................................................................
  11.18%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.40%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls, version 2, compile id 1056 
  11.18%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod, version 2, compile id 1055 
   5.96%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1099 
   0.38%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.23%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.17%             libjvm.so  G1RemSetScanState::G1ClearCardTableTask::do_work 
   0.16%                kernel  [unknown] 
   0.14%             libc.so.6  __memmove_avx_unaligned_erms 
   0.13%             libjvm.so  HeapRegionManager::par_iterate 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   4.38%  <...other 411 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.40%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls, version 2, compile id 1056 
  11.18%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursiveMethod, version 2, compile id 1055 
   5.96%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1099 
   4.58%                kernel  [unknown] 
   0.17%             libjvm.so  G1RemSetScanState::G1ClearCardTableTask::do_work 
   0.14%             libc.so.6  __memmove_avx_unaligned_erms 
   0.13%             libjvm.so  HeapRegionManager::par_iterate 
   0.11%             libjvm.so  G1CardSet::is_empty 
   0.11%             libjvm.so  ObjAllocator::initialize 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.08%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.06%             libjvm.so  G1FromCardCache::clear 
   0.05%                [vdso]  [unknown] 
   0.05%             libjvm.so  FreeListAllocator::reset 
   0.05%             libjvm.so  G1CollectedHeap::attempt_allocation_slow 
   0.04%             libjvm.so  fileStream::write 
   0.04%             libjvm.so  defaultStream::hold 
   0.04%             libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.04%             libjvm.so  G1CardSetMemoryManager::flush 
   0.04%             libjvm.so  ClassLoaderData::holder 
   1.66%  <...other 219 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.55%        jvmci, level 4
   4.58%                kernel
   2.08%             libjvm.so
   0.36%             libc.so.6
   0.24%   libjvmcicompiler.so
   0.06%           interpreter
   0.05%                [vdso]
   0.03%                      
   0.03%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.00%        libz.so.1.2.11
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:06:40

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
DeadArgumentEliminationBenchmark.chain_method_calls          avgt    3   7.964 ±  2.864  ns/op
DeadArgumentEliminationBenchmark.chain_method_calls:asm      avgt          NaN             ---
DeadArgumentEliminationBenchmark.recursive_method_calls      avgt    3  75.100 ± 26.178  ns/op
DeadArgumentEliminationBenchmark.recursive_method_calls:asm  avgt          NaN             ---
