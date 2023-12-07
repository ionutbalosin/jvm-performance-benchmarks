# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 84.735 ns/op
# Warmup Iteration   2: 66.506 ns/op
# Warmup Iteration   3: 69.152 ns/op
# Warmup Iteration   4: 59.824 ns/op
# Warmup Iteration   5: 59.924 ns/op
Iteration   1: 59.961 ns/op
Iteration   2: 60.282 ns/op
Iteration   3: 59.818 ns/op
Iteration   4: 59.788 ns/op
Iteration   5: 60.536 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline":
  60.077 ±(99.9%) 1.243 ns/op [Average]
  (min, avg, max) = (59.788, 60.077, 60.536), stdev = 0.323
  CI (99.9%): [58.834, 61.320] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline:asm":
PrintAssembly processed: 121330 total address lines.
Perf output processed (skipped 75.258 seconds):
 Column 1: cycles (50997 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 648 

                                 # {method} {0x00007f7f78477ba8} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
                                 #           [sp+0x40]  (sp of caller)
                                 0x00007f80044f6120:   mov    0x8(%rsi),%r10d
                                 0x00007f80044f6124:   movabs $0x7f7f83000000,%r11
                                 0x00007f80044f612e:   add    %r11,%r10
                                 0x00007f80044f6131:   cmp    %r10,%rax
                                 0x00007f80044f6134:   jne    0x00007f8003f85080           ;   {runtime_call ic_miss_stub}
                                 0x00007f80044f613a:   xchg   %ax,%ax
                                 0x00007f80044f613c:   nopl   0x0(%rax)
                               [Verified Entry Point]
   0.01%                         0x00007f80044f6140:   mov    %eax,-0x14000(%rsp)
   1.34%                         0x00007f80044f6147:   push   %rbp
                                 0x00007f80044f6148:   sub    $0x30,%rsp
   0.00%                         0x00007f80044f614c:   cmpl   $0x1,0x20(%r15)
   1.36%                         0x00007f80044f6154:   jne    0x00007f80044f62e1           ;*synchronization entry
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@-1 (line 208)
   0.00%                         0x00007f80044f615a:   mov    %rsi,(%rsp)
   0.00%                         0x00007f80044f615e:   mov    0x10(%rsi),%ebp
                                 0x00007f80044f6161:   shl    %ebp                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@5 (line 208)
   1.34%                         0x00007f80044f6163:   lea    0x20(%rsp),%rbx
                                 0x00007f80044f6168:   mov    (%rsi),%rax
   2.76%                         0x00007f80044f616b:   test   $0x2,%al
          ╭                      0x00007f80044f616d:   jne    0x00007f80044f6196
   1.42%  │                      0x00007f80044f6173:   or     $0x1,%rax
   0.00%  │                      0x00007f80044f6177:   mov    %rax,(%rbx)
   2.84%  │                      0x00007f80044f617a:   lock cmpxchg %rbx,(%rsi)
  31.34%  │╭                     0x00007f80044f617f:   je     0x00007f80044f61bc
          ││                     0x00007f80044f6185:   sub    %rsp,%rax
          ││                     0x00007f80044f6188:   and    $0xfffffffffffff007,%rax
          ││                     0x00007f80044f618e:   mov    %rax,(%rbx)
          ││╭                    0x00007f80044f6191:   jmp    0x00007f80044f61ba
          ↘││                    0x00007f80044f6196:   mov    %rax,%r10
           ││                    0x00007f80044f6199:   xor    %rax,%rax
           ││                    0x00007f80044f619c:   lock cmpxchg %r15,0x3e(%r10)
           ││                    0x00007f80044f61a2:   movq   $0x3,(%rbx)
           ││╭                   0x00007f80044f61a9:   je     0x00007f80044f61bc
           │││                   0x00007f80044f61ab:   cmp    %rax,%r15
           │││╭                  0x00007f80044f61ae:   jne    0x00007f80044f61c5
           ││││                  0x00007f80044f61b0:   incq   0x86(%r10)
           ││││                  0x00007f80044f61b7:   xor    %rax,%rax
           │↘││╭                 0x00007f80044f61ba:   jne    0x00007f80044f61c5
   0.03%   ↘ ↘││                 0x00007f80044f61bc:   incq   0x550(%r15)
   1.37%      ││                 0x00007f80044f61c3:   xor    %eax,%eax
              ↘↘╭                0x00007f80044f61c5:   jne    0x00007f80044f6290           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
   1.39%        │             ↗  0x00007f80044f61cb:   mov    (%rsp),%r10
                │             │  0x00007f80044f61cf:   mov    0x14(%r10),%ebx              ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
                │             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
   0.00%        │             │  0x00007f80044f61d3:   lea    0x20(%rsp),%rax
                │             │  0x00007f80044f61d8:   mov    (%rsp),%r11
   1.43%        │             │  0x00007f80044f61dc:   cmpq   $0x0,(%rax)
   0.00%        │╭            │  0x00007f80044f61e0:   je     0x00007f80044f625f
                ││            │  0x00007f80044f61e6:   mov    (%r11),%r10
  13.74%        ││            │  0x00007f80044f61e9:   test   $0x2,%r10b
                ││╭           │  0x00007f80044f61ed:   je     0x00007f80044f6255
                │││           │  0x00007f80044f61f3:   cmpq   $0x0,0x86(%r10)
                │││╭          │  0x00007f80044f61fb:   je     0x00007f80044f6206
                ││││          │  0x00007f80044f61fd:   decq   0x86(%r10)
                ││││╭         │  0x00007f80044f6204:   jmp    0x00007f80044f6251
                │││↘│         │  0x00007f80044f6206:   mov    0x96(%r10),%rax
                │││ │         │  0x00007f80044f620d:   or     0x8e(%r10),%rax
                │││ │╭        │  0x00007f80044f6214:   jne    0x00007f80044f6220
                │││ ││        │  0x00007f80044f6216:   movq   $0x0,0x3e(%r10)
                │││ ││╭       │  0x00007f80044f621e:   jmp    0x00007f80044f625d
                │││ │↘│       │  0x00007f80044f6220:   cmpq   $0x0,0x9e(%r10)
                │││ │ │╭      │  0x00007f80044f6228:   je     0x00007f80044f624c
                │││ │ ││      │  0x00007f80044f622a:   xor    %rax,%rax
                │││ │ ││      │  0x00007f80044f622d:   movq   $0x0,0x3e(%r10)              ;   {no_reloc}
                │││ │ ││      │  0x00007f80044f6235:   lock addl $0x0,(%rsp)
                │││ │ ││      │  0x00007f80044f623a:   cmpq   $0x0,0x9e(%r10)
                │││ │ ││╭     │  0x00007f80044f6242:   jne    0x00007f80044f6251
                │││ │ │││     │  0x00007f80044f6244:   lock cmpxchg %r15,0x3e(%r10)
                │││ │ │││╭    │  0x00007f80044f624a:   jne    0x00007f80044f6251
                │││ │ │↘││    │  0x00007f80044f624c:   or     $0x1,%eax
                │││ │ │ ││╭   │  0x00007f80044f624f:   jmp    0x00007f80044f625d
                │││ ↘ │ ↘↘│   │  0x00007f80044f6251:   test   $0x0,%al
                │││   │   │╭  │  0x00007f80044f6253:   jmp    0x00007f80044f625d
   1.40%        ││↘   │   ││  │  0x00007f80044f6255:   mov    (%rax),%r10
                ││    │   ││  │  0x00007f80044f6258:   lock cmpxchg %r10,(%r11)
  23.21%        ││    ↘   ↘↘╭ │  0x00007f80044f625d:   jne    0x00007f80044f6269
   0.04%        │↘          │ │  0x00007f80044f625f:   decq   0x550(%r15)
   1.42%        │           │ │  0x00007f80044f6266:   xor    %r10d,%r10d
                │           ↘╭│  0x00007f80044f6269:   jne    0x00007f80044f62a9           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                │            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
   1.42%        │            ││  0x00007f80044f626b:   add    %ebx,%ebp
   0.00%        │            ││  0x00007f80044f626d:   add    %ebx,%ebp
                │            ││  0x00007f80044f626f:   add    %ebx,%ebp
                │            ││  0x00007f80044f6271:   add    %ebx,%ebp
   1.41%        │            ││  0x00007f80044f6273:   add    %ebx,%ebp
                │            ││  0x00007f80044f6275:   add    %ebx,%ebp
                │            ││  0x00007f80044f6277:   add    %ebx,%ebp
                │            ││  0x00007f80044f6279:   add    %ebx,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                │            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@65 (line 218)
   1.39%        │            ││  0x00007f80044f627b:   mov    %ebp,%eax
   0.00%        │            ││  0x00007f80044f627d:   add    $0x30,%rsp
                │            ││  0x00007f80044f6281:   pop    %rbp
                │            ││  0x00007f80044f6282:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                │            ││  0x00007f80044f6289:   ja     0x00007f80044f62cb
   1.31%        │            ││  0x00007f80044f628f:   ret    
                ↘            ││  0x00007f80044f6290:   lea    0x20(%rsp),%rdx
                             ││  0x00007f80044f6295:   xchg   %ax,%ax
                             ││  0x00007f80044f6297:   call   0x00007f8004060c80           ; ImmutableOopMap {[0]=Oop }
                             ││                                                            ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
                             ││                                                            ;   {runtime_call _complete_monitor_locking_Java}
                             ││  0x00007f80044f629c:   nopl   0x30c(%rax,%rax,1)           ;   {other}
                             │╰  0x00007f80044f62a4:   jmp    0x00007f80044f61cb
                             ↘   0x00007f80044f62a9:   mov    %r11,%rdi
                                 0x00007f80044f62ac:   lea    0x20(%rsp),%rsi              ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  91.96%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.96%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 648 
   4.08%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 681 
   0.61%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   1.79%  <...other 285 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.96%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 648 
   4.08%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 681 
   3.25%                kernel  [unknown] 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   0.04%        hsdis-amd64.so  print_insn 
   0.04%             libc.so.6  __vfprintf_internal 
   0.04%             libjvm.so  defaultStream::hold 
   0.04%             libc.so.6  __strchr_avx2 
   0.03%             libjvm.so  RelocIterator::initialize 
   0.02%             libjvm.so  stringStream::~stringStream 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  _IO_default_xsputn 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.02%             libc.so.6  syscall 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%        hsdis-amd64.so  putop 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.30%  <...other 111 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.04%           c2, level 4
   3.25%                kernel
   0.34%             libjvm.so
   0.25%             libc.so.6
   0.06%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%                      
   0.01%           c1, level 3
   0.00%        libz.so.1.2.11
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:10:57
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 60.780 ns/op
# Warmup Iteration   2: 60.105 ns/op
# Warmup Iteration   3: 60.227 ns/op
# Warmup Iteration   4: 59.903 ns/op
# Warmup Iteration   5: 59.977 ns/op
Iteration   1: 59.863 ns/op
Iteration   2: 60.241 ns/op
Iteration   3: 59.805 ns/op
Iteration   4: 59.943 ns/op
Iteration   5: 60.246 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls":
  60.020 ±(99.9%) 0.809 ns/op [Average]
  (min, avg, max) = (59.805, 60.020, 60.246), stdev = 0.210
  CI (99.9%): [59.211, 60.829] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls:asm":
PrintAssembly processed: 122566 total address lines.
Perf output processed (skipped 65.842 seconds):
 Column 1: cycles (51285 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 613 

                               # {method} {0x00007f15344777a0} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
                               #           [sp+0x40]  (sp of caller)
                               0x00007f15c04f5e20:   mov    0x8(%rsi),%r10d
                               0x00007f15c04f5e24:   movabs $0x7f153f000000,%r11
                               0x00007f15c04f5e2e:   add    %r11,%r10
                               0x00007f15c04f5e31:   cmp    %r10,%rax
                               0x00007f15c04f5e34:   jne    0x00007f15bff85080           ;   {runtime_call ic_miss_stub}
                               0x00007f15c04f5e3a:   xchg   %ax,%ax
                               0x00007f15c04f5e3c:   nopl   0x0(%rax)
                             [Verified Entry Point]
   0.00%                       0x00007f15c04f5e40:   mov    %eax,-0x14000(%rsp)
   1.36%                       0x00007f15c04f5e47:   push   %rbp
                               0x00007f15c04f5e48:   sub    $0x30,%rsp
                               0x00007f15c04f5e4c:   cmpl   $0x1,0x20(%r15)
   1.38%                       0x00007f15c04f5e54:   jne    0x00007f15c04f5fe1           ;*synchronization entry
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@-1 (line 123)
                               0x00007f15c04f5e5a:   mov    %rsi,(%rsp)
                               0x00007f15c04f5e5e:   mov    0x10(%rsi),%ebp
                               0x00007f15c04f5e61:   shl    %ebp                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@5 (line 123)
   1.38%                       0x00007f15c04f5e63:   lea    0x20(%rsp),%rbx
   0.00%                       0x00007f15c04f5e68:   mov    (%rsi),%rax
   2.69%                       0x00007f15c04f5e6b:   test   $0x2,%al
          ╭                    0x00007f15c04f5e6d:   jne    0x00007f15c04f5e96
   1.34%  │                    0x00007f15c04f5e73:   or     $0x1,%rax
   0.00%  │                    0x00007f15c04f5e77:   mov    %rax,(%rbx)
   2.71%  │                    0x00007f15c04f5e7a:   lock cmpxchg %rbx,(%rsi)
  31.85%  │╭                   0x00007f15c04f5e7f:   je     0x00007f15c04f5ebc
          ││                   0x00007f15c04f5e85:   sub    %rsp,%rax
          ││                   0x00007f15c04f5e88:   and    $0xfffffffffffff007,%rax
          ││                   0x00007f15c04f5e8e:   mov    %rax,(%rbx)
          ││╭                  0x00007f15c04f5e91:   jmp    0x00007f15c04f5eba
          ↘││                  0x00007f15c04f5e96:   mov    %rax,%r10
           ││                  0x00007f15c04f5e99:   xor    %rax,%rax
           ││                  0x00007f15c04f5e9c:   lock cmpxchg %r15,0x3e(%r10)
           ││                  0x00007f15c04f5ea2:   movq   $0x3,(%rbx)
           ││╭                 0x00007f15c04f5ea9:   je     0x00007f15c04f5ebc
           │││                 0x00007f15c04f5eab:   cmp    %rax,%r15
           │││╭                0x00007f15c04f5eae:   jne    0x00007f15c04f5ec5
           ││││                0x00007f15c04f5eb0:   incq   0x86(%r10)
           ││││                0x00007f15c04f5eb7:   xor    %rax,%rax
           │↘││╭               0x00007f15c04f5eba:   jne    0x00007f15c04f5ec5
   0.03%   ↘ ↘││               0x00007f15c04f5ebc:   incq   0x550(%r15)
   1.26%      ││               0x00007f15c04f5ec3:   xor    %eax,%eax
   0.01%      ↘↘╭              0x00007f15c04f5ec5:   jne    0x00007f15c04f5f90           ;*synchronization entry
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
   1.32%        │              0x00007f15c04f5ecb:   mov    (%rsp),%r10
   0.00%        │              0x00007f15c04f5ecf:   mov    0x14(%r10),%ebx              ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
                │              0x00007f15c04f5ed3:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
                │              0x00007f15c04f5ed8:   mov    (%rsp),%r11
   1.37%        │              0x00007f15c04f5edc:   cmpq   $0x0,(%rax)
                │╭             0x00007f15c04f5ee0:   je     0x00007f15c04f5f5f
                ││             0x00007f15c04f5ee6:   mov    (%r11),%r10
  13.49%        ││             0x00007f15c04f5ee9:   test   $0x2,%r10b
                ││╭            0x00007f15c04f5eed:   je     0x00007f15c04f5f55
                │││            0x00007f15c04f5ef3:   cmpq   $0x0,0x86(%r10)
                │││╭           0x00007f15c04f5efb:   je     0x00007f15c04f5f06
                ││││           0x00007f15c04f5efd:   decq   0x86(%r10)
                ││││╭          0x00007f15c04f5f04:   jmp    0x00007f15c04f5f51
                │││↘│          0x00007f15c04f5f06:   mov    0x96(%r10),%rax
                │││ │          0x00007f15c04f5f0d:   or     0x8e(%r10),%rax
                │││ │╭         0x00007f15c04f5f14:   jne    0x00007f15c04f5f20
                │││ ││         0x00007f15c04f5f16:   movq   $0x0,0x3e(%r10)
                │││ ││╭        0x00007f15c04f5f1e:   jmp    0x00007f15c04f5f5d
                │││ │↘│        0x00007f15c04f5f20:   cmpq   $0x0,0x9e(%r10)
                │││ │ │╭       0x00007f15c04f5f28:   je     0x00007f15c04f5f4c
                │││ │ ││       0x00007f15c04f5f2a:   xor    %rax,%rax
                │││ │ ││       0x00007f15c04f5f2d:   movq   $0x0,0x3e(%r10)              ;   {no_reloc}
                │││ │ ││       0x00007f15c04f5f35:   lock addl $0x0,(%rsp)
                │││ │ ││       0x00007f15c04f5f3a:   cmpq   $0x0,0x9e(%r10)
                │││ │ ││╭      0x00007f15c04f5f42:   jne    0x00007f15c04f5f51
                │││ │ │││      0x00007f15c04f5f44:   lock cmpxchg %r15,0x3e(%r10)
                │││ │ │││╭     0x00007f15c04f5f4a:   jne    0x00007f15c04f5f51
                │││ │ │↘││     0x00007f15c04f5f4c:   or     $0x1,%eax
                │││ │ │ ││╭    0x00007f15c04f5f4f:   jmp    0x00007f15c04f5f5d
                │││ ↘ │ ↘↘│    0x00007f15c04f5f51:   test   $0x0,%al
                │││   │   │╭   0x00007f15c04f5f53:   jmp    0x00007f15c04f5f5d
   1.40%        ││↘   │   ││   0x00007f15c04f5f55:   mov    (%rax),%r10
                ││    │   ││   0x00007f15c04f5f58:   lock cmpxchg %r10,(%r11)
  23.05%        ││    ↘   ↘↘╭  0x00007f15c04f5f5d:   jne    0x00007f15c04f5f69
   0.03%        │↘          │  0x00007f15c04f5f5f:   decq   0x550(%r15)
   1.34%        │           │  0x00007f15c04f5f66:   xor    %r10d,%r10d
   0.00%        │           ↘  0x00007f15c04f5f69:   jne    0x00007f15c04f5fa9           ;*synchronization entry
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
   1.34%        │              0x00007f15c04f5f6b:   add    %ebx,%ebp
                │              0x00007f15c04f5f6d:   add    %ebx,%ebp
                │              0x00007f15c04f5f6f:   add    %ebx,%ebp
                │              0x00007f15c04f5f71:   add    %ebx,%ebp
   1.45%        │              0x00007f15c04f5f73:   add    %ebx,%ebp
                │              0x00007f15c04f5f75:   add    %ebx,%ebp
                │              0x00007f15c04f5f77:   add    %ebx,%ebp
   0.00%        │              0x00007f15c04f5f79:   add    %ebx,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.40%        │              0x00007f15c04f5f7b:   mov    %ebp,%eax
                │              0x00007f15c04f5f7d:   add    $0x30,%rsp
                │              0x00007f15c04f5f81:   pop    %rbp
                │              0x00007f15c04f5f82:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                │              0x00007f15c04f5f89:   ja     0x00007f15c04f5fcb
   1.35%        │              0x00007f15c04f5f8f:   ret    
                ↘              0x00007f15c04f5f90:   lea    0x20(%rsp),%rdx
                               0x00007f15c04f5f95:   xchg   %ax,%ax
                               0x00007f15c04f5f97:   call   0x00007f15c005da80           ; ImmutableOopMap {[0]=Oop }
                                                                                         ;*synchronization entry
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
                                                                                         ;   {runtime_call _complete_monitor_locking_Java}
                               0x00007f15c04f5f9c:   nopl   0x30c(%rax,%rax,1)           ;*synchronization entry
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
....................................................................................................
  91.54%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.54%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 613 
   4.13%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 645 
   0.63%                kernel  [unknown] 
   0.48%                kernel  [unknown] 
   0.33%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.81%  <...other 281 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.54%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 613 
   4.13%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 645 
   3.63%                kernel  [unknown] 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%             libc.so.6  _IO_old_init 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  __GI___pthread_disable_asynccancel 
   0.31%  <...other 98 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.67%           c2, level 4
   3.63%                kernel
   0.36%             libjvm.so
   0.25%             libc.so.6
   0.03%        hsdis-amd64.so
   0.03%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%                [vdso]
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:08:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 474.458 ns/op
# Warmup Iteration   2: 466.878 ns/op
# Warmup Iteration   3: 469.209 ns/op
# Warmup Iteration   4: 465.886 ns/op
# Warmup Iteration   5: 469.836 ns/op
Iteration   1: 466.650 ns/op
Iteration   2: 500.300 ns/op
Iteration   3: 553.069 ns/op
Iteration   4: 465.207 ns/op
Iteration   5: 468.660 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  490.777 ±(99.9%) 145.309 ns/op [Average]
  (min, avg, max) = (465.207, 490.777, 553.069), stdev = 37.736
  CI (99.9%): [345.469, 636.086] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 128563 total address lines.
Perf output processed (skipped 66.526 seconds):
 Column 1: cycles (51520 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 622 

                                                                                                                                                             # {method} {0x00007f7808481878} &apos;conditional_chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
                                                                                                                                                             #           [sp+0x40]  (sp of caller)
                                                                                                                                                             0x00007f78984f8f60:   mov    0x8(%rsi),%r10d
                                                                                                                                                             0x00007f78984f8f64:   movabs $0x7f7813000000,%r11
                                                                                                                                                             0x00007f78984f8f6e:   add    %r11,%r10
                                                                                                                                                             0x00007f78984f8f71:   cmp    %r10,%rax
                                                                                                                                                             0x00007f78984f8f74:   jne    0x00007f7897f85080           ;   {runtime_call ic_miss_stub}
                                                                                                                                                             0x00007f78984f8f7a:   xchg   %ax,%ax
                                                                                                                                                             0x00007f78984f8f7c:   nopl   0x0(%rax)
                                                                                                                                                           [Verified Entry Point]
   0.12%                                                                                                                                                     0x00007f78984f8f80:   mov    %eax,-0x14000(%rsp)
                                                                                                                                                             0x00007f78984f8f87:   push   %rbp
                                                                                                                                                             0x00007f78984f8f88:   sub    $0x30,%rsp
   0.16%                                                                                                                                                     0x00007f78984f8f8c:   cmpl   $0x1,0x20(%r15)
                                                                                                                                                             0x00007f78984f8f94:   jne    0x00007f78984f9b8e           ;*synchronization entry
                                                                                                                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@-1 (line 140)
                                                                                                                                                             0x00007f78984f8f9a:   mov    %rsi,%rbp
   0.18%                                                                                                                                                     0x00007f78984f8f9d:   mov    0x10(%rsi),%r13d
                                                                                                                                                             0x00007f78984f8fa1:   shl    %r13d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@5 (line 140)
                                                                                                                                                             0x00007f78984f8fa4:   cmp    $0x20,%r13d
                                                                                                                                                             0x00007f78984f8fa8:   jle    0x00007f78984f9ab7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@10 (line 143)
                                                                                                                                                             0x00007f78984f8fae:   lea    0x20(%rsp),%rbx
   0.17%                                                                                                                                                     0x00007f78984f8fb3:   mov    (%rsi),%rax
   0.54%                                                                                                                                                     0x00007f78984f8fb6:   test   $0x2,%al
          ╭                                                                                                                                                  0x00007f78984f8fb8:   jne    0x00007f78984f8fe1
   0.22%  │                                                                                                                                                  0x00007f78984f8fbe:   or     $0x1,%rax
          │                                                                                                                                                  0x00007f78984f8fc2:   mov    %rax,(%rbx)
   0.31%  │                                                                                                                                                  0x00007f78984f8fc5:   lock cmpxchg %rbx,(%rsi)
   3.15%  │╭                                                                                                                                                 0x00007f78984f8fca:   je     0x00007f78984f9007
          ││                                                                                                                                                 0x00007f78984f8fd0:   sub    %rsp,%rax
          ││                                                                                                                                                 0x00007f78984f8fd3:   and    $0xfffffffffffff007,%rax
          ││                                                                                                                                                 0x00007f78984f8fd9:   mov    %rax,(%rbx)
          ││╭                                                                                                                                                0x00007f78984f8fdc:   jmp    0x00007f78984f9005
          ↘││                                                                                                                                                0x00007f78984f8fe1:   mov    %rax,%r10
           ││                                                                                                                                                0x00007f78984f8fe4:   xor    %rax,%rax
           ││                                                                                                                                                0x00007f78984f8fe7:   lock cmpxchg %r15,0x3e(%r10)
           ││                                                                                                                                                0x00007f78984f8fed:   movq   $0x3,(%rbx)
           ││╭                                                                                                                                               0x00007f78984f8ff4:   je     0x00007f78984f9007
           │││                                                                                                                                               0x00007f78984f8ff6:   cmp    %rax,%r15
           │││╭                                                                                                                                              0x00007f78984f8ff9:   jne    0x00007f78984f9010
           ││││                                                                                                                                              0x00007f78984f8ffb:   incq   0x86(%r10)
           ││││                                                                                                                                              0x00007f78984f9002:   xor    %rax,%rax
           │↘││╭                                                                                                                                             0x00007f78984f9005:   jne    0x00007f78984f9010
   0.00%   ↘ ↘││                                                                                                                                             0x00007f78984f9007:   incq   0x550(%r15)
   0.19%      ││                                                                                                                                             0x00007f78984f900e:   xor    %eax,%eax
              ↘↘╭                                                                                                                                            0x00007f78984f9010:   jne    0x00007f78984f985c           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
   0.18%        │                                                                                                                                            0x00007f78984f9016:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
                │                                                                                                                                            0x00007f78984f901a:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
                │                                                                                                                                            0x00007f78984f901f:   cmpq   $0x0,(%rax)
                │╭                                                                                                                                           0x00007f78984f9023:   je     0x00007f78984f90a4
   0.17%        ││                                                                                                                                           0x00007f78984f9029:   mov    0x0(%rbp),%r10
   1.75%        ││                                                                                                                                           0x00007f78984f902d:   test   $0x2,%r10b
                ││╭                                                                                                                                          0x00007f78984f9031:   je     0x00007f78984f9099
                │││                                                                                                                                          0x00007f78984f9037:   cmpq   $0x0,0x86(%r10)
                │││╭                                                                                                                                         0x00007f78984f903f:   je     0x00007f78984f904a
                ││││                                                                                                                                         0x00007f78984f9041:   decq   0x86(%r10)
                ││││╭                                                                                                                                        0x00007f78984f9048:   jmp    0x00007f78984f9095
                │││↘│                                                                                                                                        0x00007f78984f904a:   mov    0x96(%r10),%rax
                │││ │                                                                                                                                        0x00007f78984f9051:   or     0x8e(%r10),%rax
                │││ │╭                                                                                                                                       0x00007f78984f9058:   jne    0x00007f78984f9064
                │││ ││                                                                                                                                       0x00007f78984f905a:   movq   $0x0,0x3e(%r10)
                │││ ││╭                                                                                                                                      0x00007f78984f9062:   jmp    0x00007f78984f90a2
                │││ │↘│                                                                                                                                      0x00007f78984f9064:   cmpq   $0x0,0x9e(%r10)
                │││ │ │╭                                                                                                                                     0x00007f78984f906c:   je     0x00007f78984f9090
                │││ │ ││                                                                                                                                     0x00007f78984f906e:   xor    %rax,%rax
                │││ │ ││                                                                                                                                     0x00007f78984f9071:   movq   $0x0,0x3e(%r10)              ;   {no_reloc}
                │││ │ ││                                                                                                                                     0x00007f78984f9079:   lock addl $0x0,(%rsp)
                │││ │ ││                                                                                                                                     0x00007f78984f907e:   cmpq   $0x0,0x9e(%r10)
                │││ │ ││╭                                                                                                                                    0x00007f78984f9086:   jne    0x00007f78984f9095
                │││ │ │││                                                                                                                                    0x00007f78984f9088:   lock cmpxchg %r15,0x3e(%r10)
                │││ │ │││╭                                                                                                                                   0x00007f78984f908e:   jne    0x00007f78984f9095
                │││ │ │↘││                                                                                                                                   0x00007f78984f9090:   or     $0x1,%eax
                │││ │ │ ││╭                                                                                                                                  0x00007f78984f9093:   jmp    0x00007f78984f90a2
                │││ ↘ │ ↘↘│                                                                                                                                  0x00007f78984f9095:   test   $0x0,%al
                │││   │   │╭                                                                                                                                 0x00007f78984f9097:   jmp    0x00007f78984f90a2
   0.18%        ││↘   │   ││                                                                                                                                 0x00007f78984f9099:   mov    (%rax),%r10
                ││    │   ││                                                                                                                                 0x00007f78984f909c:   lock cmpxchg %r10,0x0(%rbp)
   3.00%        ││    ↘   ↘↘╭                                                                                                                                0x00007f78984f90a2:   jne    0x00007f78984f90ae
   0.00%        │↘          │                                                                                                                                0x00007f78984f90a4:   decq   0x550(%r15)
   0.17%        │           │                                                                                                                                0x00007f78984f90ab:   xor    %r10d,%r10d
                │           ↘                                                                                                                                0x00007f78984f90ae:   jne    0x00007f78984f987e           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
   0.14%        │                                                                                                                                            0x00007f78984f90b4:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007f78984f90b8:   jle    0x00007f78984f9ad0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@22 (line 146)
                │                                                                                                                                            0x00007f78984f90be:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007f78984f90c3:   mov    0x0(%rbp),%rax
   1.88%        │                                                                                                                                            0x00007f78984f90c7:   test   $0x2,%al
                │            ╭                                                                                                                               0x00007f78984f90c9:   jne    0x00007f78984f90f3
   0.14%        │            │                                                                                                                               0x00007f78984f90cf:   or     $0x1,%rax
   0.00%        │            │                                                                                                                               0x00007f78984f90d3:   mov    %rax,(%rbx)
   0.30%        │            │                                                                                                                               0x00007f78984f90d6:   lock cmpxchg %rbx,0x0(%rbp)
   4.01%        │            │╭                                                                                                                              0x00007f78984f90dc:   je     0x00007f78984f9119
                │            ││                                                                                                                              0x00007f78984f90e2:   sub    %rsp,%rax
                │            ││                                                                                                                              0x00007f78984f90e5:   and    $0xfffffffffffff007,%rax
                │            ││                                                                                                                              0x00007f78984f90eb:   mov    %rax,(%rbx)
                │            ││╭                                                                                                                             0x00007f78984f90ee:   jmp    0x00007f78984f9117
                │            ↘││                                                                                                                             0x00007f78984f90f3:   mov    %rax,%r10
                │             ││                                                                                                                             0x00007f78984f90f6:   xor    %rax,%rax
                │             ││                                                                                                                             0x00007f78984f90f9:   lock cmpxchg %r15,0x3e(%r10)
                │             ││                                                                                                                             0x00007f78984f90ff:   movq   $0x3,(%rbx)
                │             ││╭                                                                                                                            0x00007f78984f9106:   je     0x00007f78984f9119
                │             │││                                                                                                                            0x00007f78984f9108:   cmp    %rax,%r15
                │             │││╭                                                                                                                           0x00007f78984f910b:   jne    0x00007f78984f9122
                │             ││││                                                                                                                           0x00007f78984f910d:   incq   0x86(%r10)
                │             ││││                                                                                                                           0x00007f78984f9114:   xor    %rax,%rax
                │             │↘││╭                                                                                                                          0x00007f78984f9117:   jne    0x00007f78984f9122
   0.01%        │             ↘ ↘││                                                                                                                          0x00007f78984f9119:   incq   0x550(%r15)
   0.17%        │                ││                                                                                                                          0x00007f78984f9120:   xor    %eax,%eax
                │                ↘↘                                                                                                                          0x00007f78984f9122:   jne    0x00007f78984f98a5           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 147)
   0.19%        │                                                                                                                                            0x00007f78984f9128:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 147)
                │                                                                                                                                            0x00007f78984f912c:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 147)
                │                                                                                                                                            0x00007f78984f9131:   cmpq   $0x0,(%rax)
                │                  ╭                                                                                                                         0x00007f78984f9135:   je     0x00007f78984f91b6
   0.18%        │                  │                                                                                                                         0x00007f78984f913b:   mov    0x0(%rbp),%r10
   1.76%        │                  │                                                                                                                         0x00007f78984f913f:   test   $0x2,%r10b
                │                  │╭                                                                                                                        0x00007f78984f9143:   je     0x00007f78984f91ab
                │                  ││                                                                                                                        0x00007f78984f9149:   cmpq   $0x0,0x86(%r10)
                │                  ││╭                                                                                                                       0x00007f78984f9151:   je     0x00007f78984f915c
                │                  │││                                                                                                                       0x00007f78984f9153:   decq   0x86(%r10)
                │                  │││╭                                                                                                                      0x00007f78984f915a:   jmp    0x00007f78984f91a7
                │                  ││↘│                                                                                                                      0x00007f78984f915c:   mov    0x96(%r10),%rax
                │                  ││ │                                                                                                                      0x00007f78984f9163:   or     0x8e(%r10),%rax
                │                  ││ │╭                                                                                                                     0x00007f78984f916a:   jne    0x00007f78984f9176
                │                  ││ ││                                                                                                                     0x00007f78984f916c:   movq   $0x0,0x3e(%r10)              ;   {no_reloc}
                │                  ││ ││╭                                                                                                                    0x00007f78984f9174:   jmp    0x00007f78984f91b4
                │                  ││ │↘│                                                                                                                    0x00007f78984f9176:   cmpq   $0x0,0x9e(%r10)
                │                  ││ │ │╭                                                                                                                   0x00007f78984f917e:   je     0x00007f78984f91a2
                │                  ││ │ ││                                                                                                                   0x00007f78984f9180:   xor    %rax,%rax
                │                  ││ │ ││                                                                                                                   0x00007f78984f9183:   movq   $0x0,0x3e(%r10)
                │                  ││ │ ││                                                                                                                   0x00007f78984f918b:   lock addl $0x0,(%rsp)
                │                  ││ │ ││                                                                                                                   0x00007f78984f9190:   cmpq   $0x0,0x9e(%r10)
                │                  ││ │ ││╭                                                                                                                  0x00007f78984f9198:   jne    0x00007f78984f91a7
                │                  ││ │ │││                                                                                                                  0x00007f78984f919a:   lock cmpxchg %r15,0x3e(%r10)
                │                  ││ │ │││╭                                                                                                                 0x00007f78984f91a0:   jne    0x00007f78984f91a7
                │                  ││ │ │↘││                                                                                                                 0x00007f78984f91a2:   or     $0x1,%eax
                │                  ││ │ │ ││╭                                                                                                                0x00007f78984f91a5:   jmp    0x00007f78984f91b4
                │                  ││ ↘ │ ↘↘│                                                                                                                0x00007f78984f91a7:   test   $0x0,%al
                │                  ││   │   │╭                                                                                                               0x00007f78984f91a9:   jmp    0x00007f78984f91b4
   0.17%        │                  │↘   │   ││                                                                                                               0x00007f78984f91ab:   mov    (%rax),%r10
                │                  │    │   ││                                                                                                               0x00007f78984f91ae:   lock cmpxchg %r10,0x0(%rbp)
   2.99%        │                  │    ↘   ↘↘╭                                                                                                              0x00007f78984f91b4:   jne    0x00007f78984f91c0
   0.01%        │                  ↘          │                                                                                                              0x00007f78984f91b6:   decq   0x550(%r15)
   0.22%        │                             │                                                                                                              0x00007f78984f91bd:   xor    %r10d,%r10d
                │                             ↘                                                                                                              0x00007f78984f91c0:   jne    0x00007f78984f98ca           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 147)
   0.16%        │                                                                                                                                            0x00007f78984f91c6:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007f78984f91ca:   jle    0x00007f78984f9ae8           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@34 (line 149)
                │                                                                                                                                            0x00007f78984f91d0:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007f78984f91d5:   mov    0x0(%rbp),%rax
   2.03%        │                                                                                                                                            0x00007f78984f91d9:   test   $0x2,%al
                │                              ╭                                                                                                             0x00007f78984f91db:   jne    0x00007f78984f9205
   0.18%        │                              │                                                                                                             0x00007f78984f91e1:   or     $0x1,%rax
   0.00%        │                              │                                                                                                             0x00007f78984f91e5:   mov    %rax,(%rbx)
   0.32%        │                              │                                                                                                             0x00007f78984f91e8:   lock cmpxchg %rbx,0x0(%rbp)
   3.91%        │                              │╭                                                                                                            0x00007f78984f91ee:   je     0x00007f78984f922b
                │                              ││                                                                                                            0x00007f78984f91f4:   sub    %rsp,%rax
                │                              ││                                                                                                            0x00007f78984f91f7:   and    $0xfffffffffffff007,%rax
                │                              ││                                                                                                            0x00007f78984f91fd:   mov    %rax,(%rbx)
                │                              ││╭                                                                                                           0x00007f78984f9200:   jmp    0x00007f78984f9229
                │                              ↘││                                                                                                           0x00007f78984f9205:   mov    %rax,%r10
                │                               ││                                                                                                           0x00007f78984f9208:   xor    %rax,%rax
                │                               ││                                                                                                           0x00007f78984f920b:   lock cmpxchg %r15,0x3e(%r10)
                │                               ││                                                                                                           0x00007f78984f9211:   movq   $0x3,(%rbx)
                │                               ││╭                                                                                                          0x00007f78984f9218:   je     0x00007f78984f922b
                │                               │││                                                                                                          0x00007f78984f921a:   cmp    %rax,%r15
                │                               │││╭                                                                                                         0x00007f78984f921d:   jne    0x00007f78984f9234
                │                               ││││                                                                                                         0x00007f78984f921f:   incq   0x86(%r10)
                │                               ││││                                                                                                         0x00007f78984f9226:   xor    %rax,%rax
                │                               │↘││╭                                                                                                        0x00007f78984f9229:   jne    0x00007f78984f9234
   0.01%        │                               ↘ ↘││                                                                                                        0x00007f78984f922b:   incq   0x550(%r15)
   0.19%        │                                  ││                                                                                                        0x00007f78984f9232:   xor    %eax,%eax
                │                                  ↘↘                                                                                                        0x00007f78984f9234:   jne    0x00007f78984f98ef           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 150)
   0.20%        │                                                                                                                                            0x00007f78984f923a:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 150)
                │                                                                                                                                            0x00007f78984f923e:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 150)
                │                                                                                                                                            0x00007f78984f9243:   cmpq   $0x0,(%rax)
                │                                    ╭                                                                                                       0x00007f78984f9247:   je     0x00007f78984f92c8
   0.16%        │                                    │                                                                                                       0x00007f78984f924d:   mov    0x0(%rbp),%r10
   1.64%        │                                    │                                                                                                       0x00007f78984f9251:   test   $0x2,%r10b
                │                                    │╭                                                                                                      0x00007f78984f9255:   je     0x00007f78984f92bd
                │                                    ││                                                                                                      0x00007f78984f925b:   cmpq   $0x0,0x86(%r10)
                │                                    ││╭                                                                                                     0x00007f78984f9263:   je     0x00007f78984f926e
                │                                    │││                                                                                                     0x00007f78984f9265:   decq   0x86(%r10)
                │                                    │││╭                                                                                                    0x00007f78984f926c:   jmp    0x00007f78984f92b9
                │                                    ││↘│                                                                                                    0x00007f78984f926e:   mov    0x96(%r10),%rax              ;   {no_reloc}
                │                                    ││ │                                                                                                    0x00007f78984f9275:   or     0x8e(%r10),%rax
                │                                    ││ │╭                                                                                                   0x00007f78984f927c:   jne    0x00007f78984f9288
                │                                    ││ ││                                                                                                   0x00007f78984f927e:   movq   $0x0,0x3e(%r10)
                │                                    ││ ││╭                                                                                                  0x00007f78984f9286:   jmp    0x00007f78984f92c6
                │                                    ││ │↘│                                                                                                  0x00007f78984f9288:   cmpq   $0x0,0x9e(%r10)
                │                                    ││ │ │╭                                                                                                 0x00007f78984f9290:   je     0x00007f78984f92b4
                │                                    ││ │ ││                                                                                                 0x00007f78984f9292:   xor    %rax,%rax
                │                                    ││ │ ││                                                                                                 0x00007f78984f9295:   movq   $0x0,0x3e(%r10)
                │                                    ││ │ ││                                                                                                 0x00007f78984f929d:   lock addl $0x0,(%rsp)
                │                                    ││ │ ││                                                                                                 0x00007f78984f92a2:   cmpq   $0x0,0x9e(%r10)
                │                                    ││ │ ││╭                                                                                                0x00007f78984f92aa:   jne    0x00007f78984f92b9
                │                                    ││ │ │││                                                                                                0x00007f78984f92ac:   lock cmpxchg %r15,0x3e(%r10)
                │                                    ││ │ │││╭                                                                                               0x00007f78984f92b2:   jne    0x00007f78984f92b9
                │                                    ││ │ │↘││                                                                                               0x00007f78984f92b4:   or     $0x1,%eax
                │                                    ││ │ │ ││╭                                                                                              0x00007f78984f92b7:   jmp    0x00007f78984f92c6
                │                                    ││ ↘ │ ↘↘│                                                                                              0x00007f78984f92b9:   test   $0x0,%al
                │                                    ││   │   │╭                                                                                             0x00007f78984f92bb:   jmp    0x00007f78984f92c6
   0.18%        │                                    │↘   │   ││                                                                                             0x00007f78984f92bd:   mov    (%rax),%r10
                │                                    │    │   ││                                                                                             0x00007f78984f92c0:   lock cmpxchg %r10,0x0(%rbp)
   3.04%        │                                    │    ↘   ↘↘╭                                                                                            0x00007f78984f92c6:   jne    0x00007f78984f92d2
   0.01%        │                                    ↘          │                                                                                            0x00007f78984f92c8:   decq   0x550(%r15)
   0.18%        │                                               │                                                                                            0x00007f78984f92cf:   xor    %r10d,%r10d
                │                                               ↘                                                                                            0x00007f78984f92d2:   jne    0x00007f78984f9916           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 150)
   0.19%        │                                                                                                                                            0x00007f78984f92d8:   nopl   0x0(%rax,%rax,1)
                │                                                                                                                                            0x00007f78984f92e0:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007f78984f92e4:   jle    0x00007f78984f9b00           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@46 (line 152)
                │                                                                                                                                            0x00007f78984f92ea:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007f78984f92ef:   mov    0x0(%rbp),%rax
   2.00%        │                                                                                                                                            0x00007f78984f92f3:   test   $0x2,%al
                │                                                ╭                                                                                           0x00007f78984f92f5:   jne    0x00007f78984f931f
   0.20%        │                                                │                                                                                           0x00007f78984f92fb:   or     $0x1,%rax
                │                                                │                                                                                           0x00007f78984f92ff:   mov    %rax,(%rbx)
   0.33%        │                                                │                                                                                           0x00007f78984f9302:   lock cmpxchg %rbx,0x0(%rbp)
   3.09%        │                                                │╭                                                                                          0x00007f78984f9308:   je     0x00007f78984f9345
                │                                                ││                                                                                          0x00007f78984f930e:   sub    %rsp,%rax
                │                                                ││                                                                                          0x00007f78984f9311:   and    $0xfffffffffffff007,%rax
                │                                                ││                                                                                          0x00007f78984f9317:   mov    %rax,(%rbx)
                │                                                ││╭                                                                                         0x00007f78984f931a:   jmp    0x00007f78984f9343
                │                                                ↘││                                                                                         0x00007f78984f931f:   mov    %rax,%r10
                │                                                 ││                                                                                         0x00007f78984f9322:   xor    %rax,%rax
                │                                                 ││                                                                                         0x00007f78984f9325:   lock cmpxchg %r15,0x3e(%r10)
                │                                                 ││                                                                                         0x00007f78984f932b:   movq   $0x3,(%rbx)
                │                                                 ││╭                                                                                        0x00007f78984f9332:   je     0x00007f78984f9345
                │                                                 │││                                                                                        0x00007f78984f9334:   cmp    %rax,%r15
                │                                                 │││╭                                                                                       0x00007f78984f9337:   jne    0x00007f78984f934e
                │                                                 ││││                                                                                       0x00007f78984f9339:   incq   0x86(%r10)
                │                                                 ││││                                                                                       0x00007f78984f9340:   xor    %rax,%rax
                │                                                 │↘││╭                                                                                      0x00007f78984f9343:   jne    0x00007f78984f934e
   0.01%        │                                                 ↘ ↘││                                                                                      0x00007f78984f9345:   incq   0x550(%r15)
   0.18%        │                                                    ││                                                                                      0x00007f78984f934c:   xor    %eax,%eax
                │                                                    ↘↘                                                                                      0x00007f78984f934e:   jne    0x00007f78984f993b           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 153)
   0.18%        │                                                                                                                                            0x00007f78984f9354:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 153)
                │                                                                                                                                            0x00007f78984f9358:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 153)
                │                                                                                                                                            0x00007f78984f935d:   cmpq   $0x0,(%rax)
                │                                                      ╭                                                                                     0x00007f78984f9361:   je     0x00007f78984f93e2
   0.15%        │                                                      │                                                                                     0x00007f78984f9367:   mov    0x0(%rbp),%r10
   1.81%        │                                                      │                                                                                     0x00007f78984f936b:   test   $0x2,%r10b
                │                                                      │╭                                                                                    0x00007f78984f936f:   je     0x00007f78984f93d7           ;   {no_reloc}
                │                                                      ││                                                                                    0x00007f78984f9375:   cmpq   $0x0,0x86(%r10)
                │                                                      ││╭                                                                                   0x00007f78984f937d:   je     0x00007f78984f9388
                │                                                      │││                                                                                   0x00007f78984f937f:   decq   0x86(%r10)
                │                                                      │││╭                                                                                  0x00007f78984f9386:   jmp    0x00007f78984f93d3
                │                                                      ││↘│                                                                                  0x00007f78984f9388:   mov    0x96(%r10),%rax
                │                                                      ││ │                                                                                  0x00007f78984f938f:   or     0x8e(%r10),%rax
                │                                                      ││ │╭                                                                                 0x00007f78984f9396:   jne    0x00007f78984f93a2
                │                                                      ││ ││                                                                                 0x00007f78984f9398:   movq   $0x0,0x3e(%r10)
                │                                                      ││ ││╭                                                                                0x00007f78984f93a0:   jmp    0x00007f78984f93e0
                │                                                      ││ │↘│                                                                                0x00007f78984f93a2:   cmpq   $0x0,0x9e(%r10)
                │                                                      ││ │ │╭                                                                               0x00007f78984f93aa:   je     0x00007f78984f93ce
                │                                                      ││ │ ││                                                                               0x00007f78984f93ac:   xor    %rax,%rax
                │                                                      ││ │ ││                                                                               0x00007f78984f93af:   movq   $0x0,0x3e(%r10)
                │                                                      ││ │ ││                                                                               0x00007f78984f93b7:   lock addl $0x0,(%rsp)
                │                                                      ││ │ ││                                                                               0x00007f78984f93bc:   cmpq   $0x0,0x9e(%r10)
                │                                                      ││ │ ││╭                                                                              0x00007f78984f93c4:   jne    0x00007f78984f93d3
                │                                                      ││ │ │││                                                                              0x00007f78984f93c6:   lock cmpxchg %r15,0x3e(%r10)
                │                                                      ││ │ │││╭                                                                             0x00007f78984f93cc:   jne    0x00007f78984f93d3
                │                                                      ││ │ │↘││                                                                             0x00007f78984f93ce:   or     $0x1,%eax
                │                                                      ││ │ │ ││╭                                                                            0x00007f78984f93d1:   jmp    0x00007f78984f93e0
                │                                                      ││ ↘ │ ↘↘│                                                                            0x00007f78984f93d3:   test   $0x0,%al
                │                                                      ││   │   │╭                                                                           0x00007f78984f93d5:   jmp    0x00007f78984f93e0
   0.16%        │                                                      │↘   │   ││                                                                           0x00007f78984f93d7:   mov    (%rax),%r10
                │                                                      │    │   ││                                                                           0x00007f78984f93da:   lock cmpxchg %r10,0x0(%rbp)
   3.03%        │                                                      │    ↘   ↘↘╭                                                                          0x00007f78984f93e0:   jne    0x00007f78984f93ec
   0.01%        │                                                      ↘          │                                                                          0x00007f78984f93e2:   decq   0x550(%r15)
   0.16%        │                                                                 │                                                                          0x00007f78984f93e9:   xor    %r10d,%r10d
                │                                                                 ↘                                                                          0x00007f78984f93ec:   jne    0x00007f78984f9965           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 153)
   0.20%        │                                                                                                                                            0x00007f78984f93f2:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007f78984f93f6:   jle    0x00007f78984f9b18           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@58 (line 155)
                │                                                                                                                                            0x00007f78984f93fc:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007f78984f9401:   mov    0x0(%rbp),%rax
   1.96%        │                                                                                                                                            0x00007f78984f9405:   test   $0x2,%al
                │                                                                  ╭                                                                         0x00007f78984f9407:   jne    0x00007f78984f9431
   0.17%        │                                                                  │                                                                         0x00007f78984f940d:   or     $0x1,%rax
   0.00%        │                                                                  │                                                                         0x00007f78984f9411:   mov    %rax,(%rbx)
   0.33%        │                                                                  │                                                                         0x00007f78984f9414:   lock cmpxchg %rbx,0x0(%rbp)
   4.06%        │                                                                  │╭                                                                        0x00007f78984f941a:   je     0x00007f78984f9457
                │                                                                  ││                                                                        0x00007f78984f9420:   sub    %rsp,%rax
                │                                                                  ││                                                                        0x00007f78984f9423:   and    $0xfffffffffffff007,%rax
                │                                                                  ││                                                                        0x00007f78984f9429:   mov    %rax,(%rbx)
                │                                                                  ││╭                                                                       0x00007f78984f942c:   jmp    0x00007f78984f9455
                │                                                                  ↘││                                                                       0x00007f78984f9431:   mov    %rax,%r10
                │                                                                   ││                                                                       0x00007f78984f9434:   xor    %rax,%rax
                │                                                                   ││                                                                       0x00007f78984f9437:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                   ││                                                                       0x00007f78984f943d:   movq   $0x3,(%rbx)
                │                                                                   ││╭                                                                      0x00007f78984f9444:   je     0x00007f78984f9457
                │                                                                   │││                                                                      0x00007f78984f9446:   cmp    %rax,%r15
                │                                                                   │││╭                                                                     0x00007f78984f9449:   jne    0x00007f78984f9460
                │                                                                   ││││                                                                     0x00007f78984f944b:   incq   0x86(%r10)
                │                                                                   ││││                                                                     0x00007f78984f9452:   xor    %rax,%rax
                │                                                                   │↘││╭                                                                    0x00007f78984f9455:   jne    0x00007f78984f9460
   0.01%        │                                                                   ↘ ↘││                                                                    0x00007f78984f9457:   incq   0x550(%r15)
   0.20%        │                                                                      ││                                                                    0x00007f78984f945e:   xor    %eax,%eax
                │                                                                      ↘↘                                                                    0x00007f78984f9460:   jne    0x00007f78984f998a           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 156)
   0.20%        │                                                                                                                                            0x00007f78984f9466:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 156)
                │                                                                                                                                            0x00007f78984f946a:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 156)
                │                                                                                                                                            0x00007f78984f946f:   cmpq   $0x0,(%rax)                  ;   {no_reloc}
                │                                                                        ╭                                                                   0x00007f78984f9473:   je     0x00007f78984f94f4
   0.18%        │                                                                        │                                                                   0x00007f78984f9479:   mov    0x0(%rbp),%r10
   1.74%        │                                                                        │                                                                   0x00007f78984f947d:   test   $0x2,%r10b
                │                                                                        │╭                                                                  0x00007f78984f9481:   je     0x00007f78984f94e9
                │                                                                        ││                                                                  0x00007f78984f9487:   cmpq   $0x0,0x86(%r10)
                │                                                                        ││╭                                                                 0x00007f78984f948f:   je     0x00007f78984f949a
                │                                                                        │││                                                                 0x00007f78984f9491:   decq   0x86(%r10)
                │                                                                        │││╭                                                                0x00007f78984f9498:   jmp    0x00007f78984f94e5
                │                                                                        ││↘│                                                                0x00007f78984f949a:   mov    0x96(%r10),%rax
                │                                                                        ││ │                                                                0x00007f78984f94a1:   or     0x8e(%r10),%rax
                │                                                                        ││ │╭                                                               0x00007f78984f94a8:   jne    0x00007f78984f94b4
                │                                                                        ││ ││                                                               0x00007f78984f94aa:   movq   $0x0,0x3e(%r10)
                │                                                                        ││ ││╭                                                              0x00007f78984f94b2:   jmp    0x00007f78984f94f2
                │                                                                        ││ │↘│                                                              0x00007f78984f94b4:   cmpq   $0x0,0x9e(%r10)
                │                                                                        ││ │ │╭                                                             0x00007f78984f94bc:   je     0x00007f78984f94e0
                │                                                                        ││ │ ││                                                             0x00007f78984f94be:   xor    %rax,%rax
                │                                                                        ││ │ ││                                                             0x00007f78984f94c1:   movq   $0x0,0x3e(%r10)
                │                                                                        ││ │ ││                                                             0x00007f78984f94c9:   lock addl $0x0,(%rsp)
                │                                                                        ││ │ ││                                                             0x00007f78984f94ce:   cmpq   $0x0,0x9e(%r10)
                │                                                                        ││ │ ││╭                                                            0x00007f78984f94d6:   jne    0x00007f78984f94e5
                │                                                                        ││ │ │││                                                            0x00007f78984f94d8:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                        ││ │ │││╭                                                           0x00007f78984f94de:   jne    0x00007f78984f94e5
                │                                                                        ││ │ │↘││                                                           0x00007f78984f94e0:   or     $0x1,%eax
                │                                                                        ││ │ │ ││╭                                                          0x00007f78984f94e3:   jmp    0x00007f78984f94f2
                │                                                                        ││ ↘ │ ↘↘│                                                          0x00007f78984f94e5:   test   $0x0,%al
                │                                                                        ││   │   │╭                                                         0x00007f78984f94e7:   jmp    0x00007f78984f94f2
   0.21%        │                                                                        │↘   │   ││                                                         0x00007f78984f94e9:   mov    (%rax),%r10
   0.00%        │                                                                        │    │   ││                                                         0x00007f78984f94ec:   lock cmpxchg %r10,0x0(%rbp)
   2.93%        │                                                                        │    ↘   ↘↘╭                                                        0x00007f78984f94f2:   jne    0x00007f78984f94fe
   0.01%        │                                                                        ↘          │                                                        0x00007f78984f94f4:   decq   0x550(%r15)
   0.15%        │                                                                                   │                                                        0x00007f78984f94fb:   xor    %r10d,%r10d
                │                                                                                   ↘                                                        0x00007f78984f94fe:   xchg   %ax,%ax
   0.17%        │                                                                                                                                            0x00007f78984f9500:   jne    0x00007f78984f99ae           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 156)
                │                                                                                                                                            0x00007f78984f9506:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007f78984f950a:   jle    0x00007f78984f9b30           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@70 (line 158)
                │                                                                                                                                            0x00007f78984f9510:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007f78984f9515:   mov    0x0(%rbp),%rax
   2.07%        │                                                                                                                                            0x00007f78984f9519:   test   $0x2,%al
                │                                                                                    ╭                                                       0x00007f78984f951b:   jne    0x00007f78984f9545
   0.18%        │                                                                                    │                                                       0x00007f78984f9521:   or     $0x1,%rax
                │                                                                                    │                                                       0x00007f78984f9525:   mov    %rax,(%rbx)
   0.35%        │                                                                                    │                                                       0x00007f78984f9528:   lock cmpxchg %rbx,0x0(%rbp)
   4.02%        │                                                                                    │╭                                                      0x00007f78984f952e:   je     0x00007f78984f956b
                │                                                                                    ││                                                      0x00007f78984f9534:   sub    %rsp,%rax
                │                                                                                    ││                                                      0x00007f78984f9537:   and    $0xfffffffffffff007,%rax
                │                                                                                    ││                                                      0x00007f78984f953d:   mov    %rax,(%rbx)
                │                                                                                    ││╭                                                     0x00007f78984f9540:   jmp    0x00007f78984f9569
                │                                                                                    ↘││                                                     0x00007f78984f9545:   mov    %rax,%r10
                │                                                                                     ││                                                     0x00007f78984f9548:   xor    %rax,%rax
                │                                                                                     ││                                                     0x00007f78984f954b:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                                     ││                                                     0x00007f78984f9551:   movq   $0x3,(%rbx)
                │                                                                                     ││╭                                                    0x00007f78984f9558:   je     0x00007f78984f956b
                │                                                                                     │││                                                    0x00007f78984f955a:   cmp    %rax,%r15
                │                                                                                     │││╭                                                   0x00007f78984f955d:   jne    0x00007f78984f9574
                │                                                                                     ││││                                                   0x00007f78984f955f:   incq   0x86(%r10)
                │                                                                                     ││││                                                   0x00007f78984f9566:   xor    %rax,%rax
                │                                                                                     │↘││╭                                                  0x00007f78984f9569:   jne    0x00007f78984f9574
   0.01%        │                                                                                     ↘ ↘││                                                  0x00007f78984f956b:   incq   0x550(%r15)                  ;   {no_reloc}
   0.18%        │                                                                                        ││                                                  0x00007f78984f9572:   xor    %eax,%eax
   0.00%        │                                                                                        ↘↘                                                  0x00007f78984f9574:   jne    0x00007f78984f99d3           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 159)
   0.17%        │                                                                                                                                            0x00007f78984f957a:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 159)
                │                                                                                                                                            0x00007f78984f957e:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 159)
                │                                                                                                                                            0x00007f78984f9583:   cmpq   $0x0,(%rax)
                │                                                                                          ╭                                                 0x00007f78984f9587:   je     0x00007f78984f9608
   0.18%        │                                                                                          │                                                 0x00007f78984f958d:   mov    0x0(%rbp),%r10
   1.74%        │                                                                                          │                                                 0x00007f78984f9591:   test   $0x2,%r10b
                │                                                                                          │╭                                                0x00007f78984f9595:   je     0x00007f78984f95fd
                │                                                                                          ││                                                0x00007f78984f959b:   cmpq   $0x0,0x86(%r10)
                │                                                                                          ││╭                                               0x00007f78984f95a3:   je     0x00007f78984f95ae
                │                                                                                          │││                                               0x00007f78984f95a5:   decq   0x86(%r10)
                │                                                                                          │││╭                                              0x00007f78984f95ac:   jmp    0x00007f78984f95f9
                │                                                                                          ││↘│                                              0x00007f78984f95ae:   mov    0x96(%r10),%rax
                │                                                                                          ││ │                                              0x00007f78984f95b5:   or     0x8e(%r10),%rax
                │                                                                                          ││ │╭                                             0x00007f78984f95bc:   jne    0x00007f78984f95c8
                │                                                                                          ││ ││                                             0x00007f78984f95be:   movq   $0x0,0x3e(%r10)
                │                                                                                          ││ ││╭                                            0x00007f78984f95c6:   jmp    0x00007f78984f9606
                │                                                                                          ││ │↘│                                            0x00007f78984f95c8:   cmpq   $0x0,0x9e(%r10)
                │                                                                                          ││ │ │╭                                           0x00007f78984f95d0:   je     0x00007f78984f95f4
                │                                                                                          ││ │ ││                                           0x00007f78984f95d2:   xor    %rax,%rax
                │                                                                                          ││ │ ││                                           0x00007f78984f95d5:   movq   $0x0,0x3e(%r10)
                │                                                                                          ││ │ ││                                           0x00007f78984f95dd:   lock addl $0x0,(%rsp)
                │                                                                                          ││ │ ││                                           0x00007f78984f95e2:   cmpq   $0x0,0x9e(%r10)
                │                                                                                          ││ │ ││╭                                          0x00007f78984f95ea:   jne    0x00007f78984f95f9
                │                                                                                          ││ │ │││                                          0x00007f78984f95ec:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                                          ││ │ │││╭                                         0x00007f78984f95f2:   jne    0x00007f78984f95f9
                │                                                                                          ││ │ │↘││                                         0x00007f78984f95f4:   or     $0x1,%eax
                │                                                                                          ││ │ │ ││╭                                        0x00007f78984f95f7:   jmp    0x00007f78984f9606
                │                                                                                          ││ ↘ │ ↘↘│                                        0x00007f78984f95f9:   test   $0x0,%al
                │                                                                                          ││   │   │╭                                       0x00007f78984f95fb:   jmp    0x00007f78984f9606
   0.15%        │                                                                                          │↘   │   ││                                       0x00007f78984f95fd:   mov    (%rax),%r10
                │                                                                                          │    │   ││                                       0x00007f78984f9600:   lock cmpxchg %r10,0x0(%rbp)
   2.88%        │                                                                                          │    ↘   ↘↘╭                                      0x00007f78984f9606:   jne    0x00007f78984f9612
   0.01%        │                                                                                          ↘          │                                      0x00007f78984f9608:   decq   0x550(%r15)
   0.17%        │                                                                                                     │                                      0x00007f78984f960f:   xor    %r10d,%r10d
   0.00%        │                                                                                                     ↘                                      0x00007f78984f9612:   jne    0x00007f78984f99fa           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 159)
   0.16%        │                                                                                                                                            0x00007f78984f9618:   nopl   0x0(%rax,%rax,1)
                │                                                                                                                                            0x00007f78984f9620:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007f78984f9624:   jle    0x00007f78984f9b48           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@82 (line 161)
                │                                                                                                                                            0x00007f78984f962a:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007f78984f962f:   mov    0x0(%rbp),%rax
   1.94%        │                                                                                                                                            0x00007f78984f9633:   test   $0x2,%al
                │                                                                                                      ╭                                     0x00007f78984f9635:   jne    0x00007f78984f965f
   0.19%        │                                                                                                      │                                     0x00007f78984f963b:   or     $0x1,%rax
                │                                                                                                      │                                     0x00007f78984f963f:   mov    %rax,(%rbx)
   0.33%        │                                                                                                      │                                     0x00007f78984f9642:   lock cmpxchg %rbx,0x0(%rbp)
   2.95%        │                                                                                                      │╭                                    0x00007f78984f9648:   je     0x00007f78984f9685
                │                                                                                                      ││                                    0x00007f78984f964e:   sub    %rsp,%rax
                │                                                                                                      ││                                    0x00007f78984f9651:   and    $0xfffffffffffff007,%rax
                │                                                                                                      ││                                    0x00007f78984f9657:   mov    %rax,(%rbx)
                │                                                                                                      ││╭                                   0x00007f78984f965a:   jmp    0x00007f78984f9683
                │                                                                                                      ↘││                                   0x00007f78984f965f:   mov    %rax,%r10
                │                                                                                                       ││                                   0x00007f78984f9662:   xor    %rax,%rax
                │                                                                                                       ││                                   0x00007f78984f9665:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                                                       ││                                   0x00007f78984f966b:   movq   $0x3,(%rbx)                  ;   {no_reloc}
                │                                                                                                       ││╭                                  0x00007f78984f9672:   je     0x00007f78984f9685
                │                                                                                                       │││                                  0x00007f78984f9674:   cmp    %rax,%r15
                │                                                                                                       │││╭                                 0x00007f78984f9677:   jne    0x00007f78984f968e
                │                                                                                                       ││││                                 0x00007f78984f9679:   incq   0x86(%r10)
                │                                                                                                       ││││                                 0x00007f78984f9680:   xor    %rax,%rax
                │                                                                                                       │↘││╭                                0x00007f78984f9683:   jne    0x00007f78984f968e
   0.01%        │                                                                                                       ↘ ↘││                                0x00007f78984f9685:   incq   0x550(%r15)
   0.17%        │                                                                                                          ││                                0x00007f78984f968c:   xor    %eax,%eax
                │                                                                                                          ↘↘                                0x00007f78984f968e:   jne    0x00007f78984f9a1f           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 162)
   0.16%        │                                                                                                                                            0x00007f78984f9694:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 162)
                │                                                                                                                                            0x00007f78984f9698:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 162)
                │                                                                                                                                            0x00007f78984f969d:   cmpq   $0x0,(%rax)
                │                                                                                                            ╭                               0x00007f78984f96a1:   je     0x00007f78984f9722
   0.16%        │                                                                                                            │                               0x00007f78984f96a7:   mov    0x0(%rbp),%r10
   1.72%        │                                                                                                            │                               0x00007f78984f96ab:   test   $0x2,%r10b
                │                                                                                                            │╭                              0x00007f78984f96af:   je     0x00007f78984f9717
                │                                                                                                            ││                              0x00007f78984f96b5:   cmpq   $0x0,0x86(%r10)
                │                                                                                                            ││╭                             0x00007f78984f96bd:   je     0x00007f78984f96c8
                │                                                                                                            │││                             0x00007f78984f96bf:   decq   0x86(%r10)
                │                                                                                                            │││╭                            0x00007f78984f96c6:   jmp    0x00007f78984f9713
                │                                                                                                            ││↘│                            0x00007f78984f96c8:   mov    0x96(%r10),%rax
                │                                                                                                            ││ │                            0x00007f78984f96cf:   or     0x8e(%r10),%rax
                │                                                                                                            ││ │╭                           0x00007f78984f96d6:   jne    0x00007f78984f96e2
                │                                                                                                            ││ ││                           0x00007f78984f96d8:   movq   $0x0,0x3e(%r10)
                │                                                                                                            ││ ││╭                          0x00007f78984f96e0:   jmp    0x00007f78984f9720
                │                                                                                                            ││ │↘│                          0x00007f78984f96e2:   cmpq   $0x0,0x9e(%r10)
                │                                                                                                            ││ │ │╭                         0x00007f78984f96ea:   je     0x00007f78984f970e
                │                                                                                                            ││ │ ││                         0x00007f78984f96ec:   xor    %rax,%rax
                │                                                                                                            ││ │ ││                         0x00007f78984f96ef:   movq   $0x0,0x3e(%r10)
                │                                                                                                            ││ │ ││                         0x00007f78984f96f7:   lock addl $0x0,(%rsp)
                │                                                                                                            ││ │ ││                         0x00007f78984f96fc:   cmpq   $0x0,0x9e(%r10)
                │                                                                                                            ││ │ ││╭                        0x00007f78984f9704:   jne    0x00007f78984f9713
                │                                                                                                            ││ │ │││                        0x00007f78984f9706:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                                                            ││ │ │││╭                       0x00007f78984f970c:   jne    0x00007f78984f9713
                │                                                                                                            ││ │ │↘││                       0x00007f78984f970e:   or     $0x1,%eax
                │                                                                                                            ││ │ │ ││╭                      0x00007f78984f9711:   jmp    0x00007f78984f9720
                │                                                                                                            ││ ↘ │ ↘↘│                      0x00007f78984f9713:   test   $0x0,%al
                │                                                                                                            ││   │   │╭                     0x00007f78984f9715:   jmp    0x00007f78984f9720
   0.17%        │                                                                                                            │↘   │   ││                     0x00007f78984f9717:   mov    (%rax),%r10
                │                                                                                                            │    │   ││                     0x00007f78984f971a:   lock cmpxchg %r10,0x0(%rbp)
   2.96%        │                                                                                                            │    ↘   ↘↘╭                    0x00007f78984f9720:   jne    0x00007f78984f972c
   0.01%        │                                                                                                            ↘          │                    0x00007f78984f9722:   decq   0x550(%r15)
   0.18%        │                                                                                                                       │                    0x00007f78984f9729:   xor    %r10d,%r10d
                │                                                                                                                       ↘                    0x00007f78984f972c:   jne    0x00007f78984f9a46           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 162)
   0.19%        │                                                                                                                                            0x00007f78984f9732:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007f78984f9736:   jle    0x00007f78984f9b60           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@94 (line 164)
                │                                                                                                                                            0x00007f78984f973c:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007f78984f9741:   mov    0x0(%rbp),%rax
   1.85%        │                                                                                                                                            0x00007f78984f9745:   test   $0x2,%al
                │                                                                                                                        ╭                   0x00007f78984f9747:   jne    0x00007f78984f9771
   0.17%        │                                                                                                                        │                   0x00007f78984f974d:   or     $0x1,%rax
                │                                                                                                                        │                   0x00007f78984f9751:   mov    %rax,(%rbx)
   0.34%        │                                                                                                                        │                   0x00007f78984f9754:   lock cmpxchg %rbx,0x0(%rbp)
   4.09%        │                                                                                                                        │╭                  0x00007f78984f975a:   je     0x00007f78984f9797
                │                                                                                                                        ││                  0x00007f78984f9760:   sub    %rsp,%rax
                │                                                                                                                        ││                  0x00007f78984f9763:   and    $0xfffffffffffff007,%rax
                │                                                                                                                        ││                  0x00007f78984f9769:   mov    %rax,(%rbx)
                │                                                                                                                        ││╭                 0x00007f78984f976c:   jmp    0x00007f78984f9795           ;   {no_reloc}
                │                                                                                                                        ↘││                 0x00007f78984f9771:   mov    %rax,%r10
                │                                                                                                                         ││                 0x00007f78984f9774:   xor    %rax,%rax
                │                                                                                                                         ││                 0x00007f78984f9777:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                                                                         ││                 0x00007f78984f977d:   movq   $0x3,(%rbx)
                │                                                                                                                         ││╭                0x00007f78984f9784:   je     0x00007f78984f9797
                │                                                                                                                         │││                0x00007f78984f9786:   cmp    %rax,%r15
                │                                                                                                                         │││╭               0x00007f78984f9789:   jne    0x00007f78984f97a0
                │                                                                                                                         ││││               0x00007f78984f978b:   incq   0x86(%r10)
                │                                                                                                                         ││││               0x00007f78984f9792:   xor    %rax,%rax
                │                                                                                                                         │↘││╭              0x00007f78984f9795:   jne    0x00007f78984f97a0
   0.00%        │                                                                                                                         ↘ ↘││              0x00007f78984f9797:   incq   0x550(%r15)
   0.21%        │                                                                                                                            ││              0x00007f78984f979e:   xor    %eax,%eax
                │                                                                                                                            ↘↘              0x00007f78984f97a0:   jne    0x00007f78984f9a6b           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
   0.18%        │                                                                                                                                            0x00007f78984f97a6:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
   0.00%        │                                                                                                                                            0x00007f78984f97aa:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
                │                                                                                                                                            0x00007f78984f97af:   cmpq   $0x0,(%rax)
                │                                                                                                                              ╭             0x00007f78984f97b3:   je     0x00007f78984f9834
   0.19%        │                                                                                                                              │             0x00007f78984f97b9:   mov    0x0(%rbp),%r10
   1.71%        │                                                                                                                              │             0x00007f78984f97bd:   test   $0x2,%r10b
                │                                                                                                                              │╭            0x00007f78984f97c1:   je     0x00007f78984f9829
                │                                                                                                                              ││            0x00007f78984f97c7:   cmpq   $0x0,0x86(%r10)
                │                                                                                                                              ││╭           0x00007f78984f97cf:   je     0x00007f78984f97da
                │                                                                                                                              │││           0x00007f78984f97d1:   decq   0x86(%r10)
                │                                                                                                                              │││╭          0x00007f78984f97d8:   jmp    0x00007f78984f9825
                │                                                                                                                              ││↘│          0x00007f78984f97da:   mov    0x96(%r10),%rax
                │                                                                                                                              ││ │          0x00007f78984f97e1:   or     0x8e(%r10),%rax
                │                                                                                                                              ││ │╭         0x00007f78984f97e8:   jne    0x00007f78984f97f4
                │                                                                                                                              ││ ││         0x00007f78984f97ea:   movq   $0x0,0x3e(%r10)
                │                                                                                                                              ││ ││╭        0x00007f78984f97f2:   jmp    0x00007f78984f9832
                │                                                                                                                              ││ │↘│        0x00007f78984f97f4:   cmpq   $0x0,0x9e(%r10)
                │                                                                                                                              ││ │ │╭       0x00007f78984f97fc:   je     0x00007f78984f9820
                │                                                                                                                              ││ │ ││       0x00007f78984f97fe:   xor    %rax,%rax
                │                                                                                                                              ││ │ ││       0x00007f78984f9801:   movq   $0x0,0x3e(%r10)
                │                                                                                                                              ││ │ ││       0x00007f78984f9809:   lock addl $0x0,(%rsp)
                │                                                                                                                              ││ │ ││       0x00007f78984f980e:   cmpq   $0x0,0x9e(%r10)
                │                                                                                                                              ││ │ ││╭      0x00007f78984f9816:   jne    0x00007f78984f9825
                │                                                                                                                              ││ │ │││      0x00007f78984f9818:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                                                                              ││ │ │││╭     0x00007f78984f981e:   jne    0x00007f78984f9825
                │                                                                                                                              ││ │ │↘││     0x00007f78984f9820:   or     $0x1,%eax
                │                                                                                                                              ││ │ │ ││╭    0x00007f78984f9823:   jmp    0x00007f78984f9832
                │                                                                                                                              ││ ↘ │ ↘↘│    0x00007f78984f9825:   test   $0x0,%al
                │                                                                                                                              ││   │   │╭   0x00007f78984f9827:   jmp    0x00007f78984f9832
   0.17%        │                                                                                                                              │↘   │   ││   0x00007f78984f9829:   mov    (%rax),%r10
                │                                                                                                                              │    │   ││   0x00007f78984f982c:   lock cmpxchg %r10,0x0(%rbp)
   2.91%        │                                                                                                                              │    ↘   ↘↘╭  0x00007f78984f9832:   jne    0x00007f78984f983e
   0.00%        │                                                                                                                              ↘          │  0x00007f78984f9834:   decq   0x550(%r15)
   0.16%        │                                                                                                                                         │  0x00007f78984f983b:   xor    %r10d,%r10d
                │                                                                                                                                         ↘  0x00007f78984f983e:   xchg   %ax,%ax
   0.16%        │                                                                                                                                            0x00007f78984f9840:   jne    0x00007f78984f9a92           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@-1 (line 140)
                │                                                                                                                                            0x00007f78984f9846:   mov    %r13d,%eax
                │                                                                                                                                            0x00007f78984f9849:   add    $0x30,%rsp
                │                                                                                                                                            0x00007f78984f984d:   pop    %rbp
   0.17%        │                                                                                                                                            0x00007f78984f984e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                │                                                                                                                                            0x00007f78984f9855:   ja     0x00007f78984f9b78
                │                                                                                                                                            0x00007f78984f985b:   ret    
                ↘                                                                                                                                            0x00007f78984f985c:   lea    0x20(%rsp),%rdx
                                                                                                                                                             0x00007f78984f9861:   mov    %r13d,0xc(%rsp)
                                                                                                                                                             0x00007f78984f9866:   nop
                                                                                                                                                             0x00007f78984f9867:   call   0x00007f789805da80           ; ImmutableOopMap {rbp=Oop }
                                                                                                                                                                                                                       ;*synchronization entry
                                                                                                                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                                                                                                                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
                                                                                                                                                                                                                       ;   {runtime_call _complete_monitor_locking_Java}
....................................................................................................
  94.65%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.65%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 622 
   0.88%                kernel  [unknown] 
   0.59%                kernel  [unknown] 
   0.55%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 660 
   0.29%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   1.75%  <...other 276 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.65%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 622 
   4.11%                kernel  [unknown] 
   0.55%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 660 
   0.08%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libjvm.so  defaultStream::hold 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  _IO_fwrite 
   0.03%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libjvm.so  outputStream::print 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  PcDescContainer::find_pc_desc_internal 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.30%  <...other 103 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.20%           c2, level 4
   4.11%                kernel
   0.37%             libjvm.so
   0.22%             libc.so.6
   0.04%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.00%                      
   0.00%           c1, level 3
   0.00%            libjava.so
   0.00%                [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:06:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 473.061 ns/op
# Warmup Iteration   2: 463.906 ns/op
# Warmup Iteration   3: 466.801 ns/op
# Warmup Iteration   4: 463.664 ns/op
# Warmup Iteration   5: 463.879 ns/op
Iteration   1: 463.689 ns/op
Iteration   2: 466.144 ns/op
Iteration   3: 463.149 ns/op
Iteration   4: 463.891 ns/op
Iteration   5: 467.891 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  464.953 ±(99.9%) 7.708 ns/op [Average]
  (min, avg, max) = (463.149, 464.953, 467.891), stdev = 2.002
  CI (99.9%): [457.245, 472.660] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 127394 total address lines.
Perf output processed (skipped 66.776 seconds):
 Column 1: cycles (50889 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 651 

                                                                                                                                                             # {method} {0x00007fd2f44819d0} &apos;conditional_nested_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
                                                                                                                                                             #           [sp+0x40]  (sp of caller)
                                                                                                                                                             0x00007fd3804f93e0:   mov    0x8(%rsi),%r10d
                                                                                                                                                             0x00007fd3804f93e4:   movabs $0x7fd2ff000000,%r11
                                                                                                                                                             0x00007fd3804f93ee:   add    %r11,%r10
                                                                                                                                                             0x00007fd3804f93f1:   cmp    %r10,%rax
                                                                                                                                                             0x00007fd3804f93f4:   jne    0x00007fd37ff85080           ;   {runtime_call ic_miss_stub}
                                                                                                                                                             0x00007fd3804f93fa:   xchg   %ax,%ax
                                                                                                                                                             0x00007fd3804f93fc:   nopl   0x0(%rax)
                                                                                                                                                           [Verified Entry Point]
   0.21%                                                                                                                                                     0x00007fd3804f9400:   mov    %eax,-0x14000(%rsp)
                                                                                                                                                             0x00007fd3804f9407:   push   %rbp
                                                                                                                                                             0x00007fd3804f9408:   sub    $0x30,%rsp
   0.19%                                                                                                                                                     0x00007fd3804f940c:   cmpl   $0x1,0x20(%r15)
                                                                                                                                                             0x00007fd3804f9414:   jne    0x00007fd3804fa00e           ;*synchronization entry
                                                                                                                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@-1 (line 174)
                                                                                                                                                             0x00007fd3804f941a:   mov    %rsi,%rbp
   0.16%                                                                                                                                                     0x00007fd3804f941d:   mov    0x10(%rsi),%r13d
                                                                                                                                                             0x00007fd3804f9421:   shl    %r13d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@5 (line 174)
                                                                                                                                                             0x00007fd3804f9424:   cmp    $0x20,%r13d
                                                                                                                                                             0x00007fd3804f9428:   jle    0x00007fd3804f9f37           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@10 (line 177)
                                                                                                                                                             0x00007fd3804f942e:   lea    0x20(%rsp),%rbx
   0.18%                                                                                                                                                     0x00007fd3804f9433:   mov    (%rsi),%rax
   0.54%                                                                                                                                                     0x00007fd3804f9436:   test   $0x2,%al
          ╭                                                                                                                                                  0x00007fd3804f9438:   jne    0x00007fd3804f9461
   0.16%  │                                                                                                                                                  0x00007fd3804f943e:   or     $0x1,%rax
          │                                                                                                                                                  0x00007fd3804f9442:   mov    %rax,(%rbx)
   0.39%  │                                                                                                                                                  0x00007fd3804f9445:   lock cmpxchg %rbx,(%rsi)
   3.32%  │╭                                                                                                                                                 0x00007fd3804f944a:   je     0x00007fd3804f9487
          ││                                                                                                                                                 0x00007fd3804f9450:   sub    %rsp,%rax
          ││                                                                                                                                                 0x00007fd3804f9453:   and    $0xfffffffffffff007,%rax
          ││                                                                                                                                                 0x00007fd3804f9459:   mov    %rax,(%rbx)
          ││╭                                                                                                                                                0x00007fd3804f945c:   jmp    0x00007fd3804f9485
          ↘││                                                                                                                                                0x00007fd3804f9461:   mov    %rax,%r10
           ││                                                                                                                                                0x00007fd3804f9464:   xor    %rax,%rax
           ││                                                                                                                                                0x00007fd3804f9467:   lock cmpxchg %r15,0x3e(%r10)
           ││                                                                                                                                                0x00007fd3804f946d:   movq   $0x3,(%rbx)
           ││╭                                                                                                                                               0x00007fd3804f9474:   je     0x00007fd3804f9487
           │││                                                                                                                                               0x00007fd3804f9476:   cmp    %rax,%r15
           │││╭                                                                                                                                              0x00007fd3804f9479:   jne    0x00007fd3804f9490
           ││││                                                                                                                                              0x00007fd3804f947b:   incq   0x86(%r10)
           ││││                                                                                                                                              0x00007fd3804f9482:   xor    %rax,%rax
           │↘││╭                                                                                                                                             0x00007fd3804f9485:   jne    0x00007fd3804f9490
   0.00%   ↘ ↘││                                                                                                                                             0x00007fd3804f9487:   incq   0x550(%r15)
   0.17%      ││                                                                                                                                             0x00007fd3804f948e:   xor    %eax,%eax
              ↘↘╭                                                                                                                                            0x00007fd3804f9490:   jne    0x00007fd3804f9cdc           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
   0.16%        │                                                                                                                                            0x00007fd3804f9496:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
                │                                                                                                                                            0x00007fd3804f949a:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
                │                                                                                                                                            0x00007fd3804f949f:   cmpq   $0x0,(%rax)
   0.00%        │╭                                                                                                                                           0x00007fd3804f94a3:   je     0x00007fd3804f9524
   0.21%        ││                                                                                                                                           0x00007fd3804f94a9:   mov    0x0(%rbp),%r10
   1.68%        ││                                                                                                                                           0x00007fd3804f94ad:   test   $0x2,%r10b
                ││╭                                                                                                                                          0x00007fd3804f94b1:   je     0x00007fd3804f9519
                │││                                                                                                                                          0x00007fd3804f94b7:   cmpq   $0x0,0x86(%r10)
                │││╭                                                                                                                                         0x00007fd3804f94bf:   je     0x00007fd3804f94ca
                ││││                                                                                                                                         0x00007fd3804f94c1:   decq   0x86(%r10)
                ││││╭                                                                                                                                        0x00007fd3804f94c8:   jmp    0x00007fd3804f9515
                │││↘│                                                                                                                                        0x00007fd3804f94ca:   mov    0x96(%r10),%rax
                │││ │                                                                                                                                        0x00007fd3804f94d1:   or     0x8e(%r10),%rax
                │││ │╭                                                                                                                                       0x00007fd3804f94d8:   jne    0x00007fd3804f94e4
                │││ ││                                                                                                                                       0x00007fd3804f94da:   movq   $0x0,0x3e(%r10)
                │││ ││╭                                                                                                                                      0x00007fd3804f94e2:   jmp    0x00007fd3804f9522
                │││ │↘│                                                                                                                                      0x00007fd3804f94e4:   cmpq   $0x0,0x9e(%r10)
                │││ │ │╭                                                                                                                                     0x00007fd3804f94ec:   je     0x00007fd3804f9510
                │││ │ ││                                                                                                                                     0x00007fd3804f94ee:   xor    %rax,%rax
                │││ │ ││                                                                                                                                     0x00007fd3804f94f1:   movq   $0x0,0x3e(%r10)              ;   {no_reloc}
                │││ │ ││                                                                                                                                     0x00007fd3804f94f9:   lock addl $0x0,(%rsp)
                │││ │ ││                                                                                                                                     0x00007fd3804f94fe:   cmpq   $0x0,0x9e(%r10)
                │││ │ ││╭                                                                                                                                    0x00007fd3804f9506:   jne    0x00007fd3804f9515
                │││ │ │││                                                                                                                                    0x00007fd3804f9508:   lock cmpxchg %r15,0x3e(%r10)
                │││ │ │││╭                                                                                                                                   0x00007fd3804f950e:   jne    0x00007fd3804f9515
                │││ │ │↘││                                                                                                                                   0x00007fd3804f9510:   or     $0x1,%eax
                │││ │ │ ││╭                                                                                                                                  0x00007fd3804f9513:   jmp    0x00007fd3804f9522
                │││ ↘ │ ↘↘│                                                                                                                                  0x00007fd3804f9515:   test   $0x0,%al
                │││   │   │╭                                                                                                                                 0x00007fd3804f9517:   jmp    0x00007fd3804f9522
   0.18%        ││↘   │   ││                                                                                                                                 0x00007fd3804f9519:   mov    (%rax),%r10
                ││    │   ││                                                                                                                                 0x00007fd3804f951c:   lock cmpxchg %r10,0x0(%rbp)
   3.13%        ││    ↘   ↘↘╭                                                                                                                                0x00007fd3804f9522:   jne    0x00007fd3804f952e
                │↘          │                                                                                                                                0x00007fd3804f9524:   decq   0x550(%r15)
   0.21%        │           │                                                                                                                                0x00007fd3804f952b:   xor    %r10d,%r10d
                │           ↘                                                                                                                                0x00007fd3804f952e:   jne    0x00007fd3804f9cfe           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
   0.18%        │                                                                                                                                            0x00007fd3804f9534:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007fd3804f9538:   jle    0x00007fd3804f9f50           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@22 (line 179)
                │                                                                                                                                            0x00007fd3804f953e:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007fd3804f9543:   mov    0x0(%rbp),%rax
   1.96%        │                                                                                                                                            0x00007fd3804f9547:   test   $0x2,%al
                │            ╭                                                                                                                               0x00007fd3804f9549:   jne    0x00007fd3804f9573
   0.18%        │            │                                                                                                                               0x00007fd3804f954f:   or     $0x1,%rax
                │            │                                                                                                                               0x00007fd3804f9553:   mov    %rax,(%rbx)
   0.35%        │            │                                                                                                                               0x00007fd3804f9556:   lock cmpxchg %rbx,0x0(%rbp)
   4.03%        │            │╭                                                                                                                              0x00007fd3804f955c:   je     0x00007fd3804f9599
                │            ││                                                                                                                              0x00007fd3804f9562:   sub    %rsp,%rax
                │            ││                                                                                                                              0x00007fd3804f9565:   and    $0xfffffffffffff007,%rax
                │            ││                                                                                                                              0x00007fd3804f956b:   mov    %rax,(%rbx)
                │            ││╭                                                                                                                             0x00007fd3804f956e:   jmp    0x00007fd3804f9597
                │            ↘││                                                                                                                             0x00007fd3804f9573:   mov    %rax,%r10
                │             ││                                                                                                                             0x00007fd3804f9576:   xor    %rax,%rax
                │             ││                                                                                                                             0x00007fd3804f9579:   lock cmpxchg %r15,0x3e(%r10)
                │             ││                                                                                                                             0x00007fd3804f957f:   movq   $0x3,(%rbx)
                │             ││╭                                                                                                                            0x00007fd3804f9586:   je     0x00007fd3804f9599
                │             │││                                                                                                                            0x00007fd3804f9588:   cmp    %rax,%r15
                │             │││╭                                                                                                                           0x00007fd3804f958b:   jne    0x00007fd3804f95a2
                │             ││││                                                                                                                           0x00007fd3804f958d:   incq   0x86(%r10)
                │             ││││                                                                                                                           0x00007fd3804f9594:   xor    %rax,%rax
                │             │↘││╭                                                                                                                          0x00007fd3804f9597:   jne    0x00007fd3804f95a2
   0.01%        │             ↘ ↘││                                                                                                                          0x00007fd3804f9599:   incq   0x550(%r15)
   0.19%        │                ││                                                                                                                          0x00007fd3804f95a0:   xor    %eax,%eax
                │                ↘↘                                                                                                                          0x00007fd3804f95a2:   jne    0x00007fd3804f9d25           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 180)
   0.18%        │                                                                                                                                            0x00007fd3804f95a8:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 180)
                │                                                                                                                                            0x00007fd3804f95ac:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 180)
                │                                                                                                                                            0x00007fd3804f95b1:   cmpq   $0x0,(%rax)
                │                  ╭                                                                                                                         0x00007fd3804f95b5:   je     0x00007fd3804f9636
   0.18%        │                  │                                                                                                                         0x00007fd3804f95bb:   mov    0x0(%rbp),%r10
   1.78%        │                  │                                                                                                                         0x00007fd3804f95bf:   test   $0x2,%r10b
                │                  │╭                                                                                                                        0x00007fd3804f95c3:   je     0x00007fd3804f962b
                │                  ││                                                                                                                        0x00007fd3804f95c9:   cmpq   $0x0,0x86(%r10)
                │                  ││╭                                                                                                                       0x00007fd3804f95d1:   je     0x00007fd3804f95dc
                │                  │││                                                                                                                       0x00007fd3804f95d3:   decq   0x86(%r10)
                │                  │││╭                                                                                                                      0x00007fd3804f95da:   jmp    0x00007fd3804f9627
                │                  ││↘│                                                                                                                      0x00007fd3804f95dc:   mov    0x96(%r10),%rax
                │                  ││ │                                                                                                                      0x00007fd3804f95e3:   or     0x8e(%r10),%rax
                │                  ││ │╭                                                                                                                     0x00007fd3804f95ea:   jne    0x00007fd3804f95f6
                │                  ││ ││                                                                                                                     0x00007fd3804f95ec:   movq   $0x0,0x3e(%r10)              ;   {no_reloc}
                │                  ││ ││╭                                                                                                                    0x00007fd3804f95f4:   jmp    0x00007fd3804f9634
                │                  ││ │↘│                                                                                                                    0x00007fd3804f95f6:   cmpq   $0x0,0x9e(%r10)
                │                  ││ │ │╭                                                                                                                   0x00007fd3804f95fe:   je     0x00007fd3804f9622
                │                  ││ │ ││                                                                                                                   0x00007fd3804f9600:   xor    %rax,%rax
                │                  ││ │ ││                                                                                                                   0x00007fd3804f9603:   movq   $0x0,0x3e(%r10)
                │                  ││ │ ││                                                                                                                   0x00007fd3804f960b:   lock addl $0x0,(%rsp)
                │                  ││ │ ││                                                                                                                   0x00007fd3804f9610:   cmpq   $0x0,0x9e(%r10)
                │                  ││ │ ││╭                                                                                                                  0x00007fd3804f9618:   jne    0x00007fd3804f9627
                │                  ││ │ │││                                                                                                                  0x00007fd3804f961a:   lock cmpxchg %r15,0x3e(%r10)
                │                  ││ │ │││╭                                                                                                                 0x00007fd3804f9620:   jne    0x00007fd3804f9627
                │                  ││ │ │↘││                                                                                                                 0x00007fd3804f9622:   or     $0x1,%eax
                │                  ││ │ │ ││╭                                                                                                                0x00007fd3804f9625:   jmp    0x00007fd3804f9634
                │                  ││ ↘ │ ↘↘│                                                                                                                0x00007fd3804f9627:   test   $0x0,%al
                │                  ││   │   │╭                                                                                                               0x00007fd3804f9629:   jmp    0x00007fd3804f9634
   0.19%        │                  │↘   │   ││                                                                                                               0x00007fd3804f962b:   mov    (%rax),%r10
                │                  │    │   ││                                                                                                               0x00007fd3804f962e:   lock cmpxchg %r10,0x0(%rbp)
   3.01%        │                  │    ↘   ↘↘╭                                                                                                              0x00007fd3804f9634:   jne    0x00007fd3804f9640
   0.00%        │                  ↘          │                                                                                                              0x00007fd3804f9636:   decq   0x550(%r15)
   0.18%        │                             │                                                                                                              0x00007fd3804f963d:   xor    %r10d,%r10d
                │                             ↘                                                                                                              0x00007fd3804f9640:   jne    0x00007fd3804f9d4a           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 180)
   0.17%        │                                                                                                                                            0x00007fd3804f9646:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007fd3804f964a:   jle    0x00007fd3804f9f68           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@34 (line 181)
                │                                                                                                                                            0x00007fd3804f9650:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007fd3804f9655:   mov    0x0(%rbp),%rax
   1.92%        │                                                                                                                                            0x00007fd3804f9659:   test   $0x2,%al
                │                              ╭                                                                                                             0x00007fd3804f965b:   jne    0x00007fd3804f9685
   0.17%        │                              │                                                                                                             0x00007fd3804f9661:   or     $0x1,%rax
   0.00%        │                              │                                                                                                             0x00007fd3804f9665:   mov    %rax,(%rbx)
   0.34%        │                              │                                                                                                             0x00007fd3804f9668:   lock cmpxchg %rbx,0x0(%rbp)
   4.03%        │                              │╭                                                                                                            0x00007fd3804f966e:   je     0x00007fd3804f96ab
                │                              ││                                                                                                            0x00007fd3804f9674:   sub    %rsp,%rax
                │                              ││                                                                                                            0x00007fd3804f9677:   and    $0xfffffffffffff007,%rax
                │                              ││                                                                                                            0x00007fd3804f967d:   mov    %rax,(%rbx)
                │                              ││╭                                                                                                           0x00007fd3804f9680:   jmp    0x00007fd3804f96a9
                │                              ↘││                                                                                                           0x00007fd3804f9685:   mov    %rax,%r10
                │                               ││                                                                                                           0x00007fd3804f9688:   xor    %rax,%rax
                │                               ││                                                                                                           0x00007fd3804f968b:   lock cmpxchg %r15,0x3e(%r10)
                │                               ││                                                                                                           0x00007fd3804f9691:   movq   $0x3,(%rbx)
                │                               ││╭                                                                                                          0x00007fd3804f9698:   je     0x00007fd3804f96ab
                │                               │││                                                                                                          0x00007fd3804f969a:   cmp    %rax,%r15
                │                               │││╭                                                                                                         0x00007fd3804f969d:   jne    0x00007fd3804f96b4
                │                               ││││                                                                                                         0x00007fd3804f969f:   incq   0x86(%r10)
                │                               ││││                                                                                                         0x00007fd3804f96a6:   xor    %rax,%rax
                │                               │↘││╭                                                                                                        0x00007fd3804f96a9:   jne    0x00007fd3804f96b4
   0.00%        │                               ↘ ↘││                                                                                                        0x00007fd3804f96ab:   incq   0x550(%r15)
   0.18%        │                                  ││                                                                                                        0x00007fd3804f96b2:   xor    %eax,%eax
                │                                  ↘↘                                                                                                        0x00007fd3804f96b4:   jne    0x00007fd3804f9d6f           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 182)
   0.16%        │                                                                                                                                            0x00007fd3804f96ba:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 182)
                │                                                                                                                                            0x00007fd3804f96be:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 182)
                │                                                                                                                                            0x00007fd3804f96c3:   cmpq   $0x0,(%rax)
                │                                    ╭                                                                                                       0x00007fd3804f96c7:   je     0x00007fd3804f9748
   0.17%        │                                    │                                                                                                       0x00007fd3804f96cd:   mov    0x0(%rbp),%r10
   1.68%        │                                    │                                                                                                       0x00007fd3804f96d1:   test   $0x2,%r10b
                │                                    │╭                                                                                                      0x00007fd3804f96d5:   je     0x00007fd3804f973d
                │                                    ││                                                                                                      0x00007fd3804f96db:   cmpq   $0x0,0x86(%r10)
                │                                    ││╭                                                                                                     0x00007fd3804f96e3:   je     0x00007fd3804f96ee
                │                                    │││                                                                                                     0x00007fd3804f96e5:   decq   0x86(%r10)
                │                                    │││╭                                                                                                    0x00007fd3804f96ec:   jmp    0x00007fd3804f9739
                │                                    ││↘│                                                                                                    0x00007fd3804f96ee:   mov    0x96(%r10),%rax              ;   {no_reloc}
                │                                    ││ │                                                                                                    0x00007fd3804f96f5:   or     0x8e(%r10),%rax
                │                                    ││ │╭                                                                                                   0x00007fd3804f96fc:   jne    0x00007fd3804f9708
                │                                    ││ ││                                                                                                   0x00007fd3804f96fe:   movq   $0x0,0x3e(%r10)
                │                                    ││ ││╭                                                                                                  0x00007fd3804f9706:   jmp    0x00007fd3804f9746
                │                                    ││ │↘│                                                                                                  0x00007fd3804f9708:   cmpq   $0x0,0x9e(%r10)
                │                                    ││ │ │╭                                                                                                 0x00007fd3804f9710:   je     0x00007fd3804f9734
                │                                    ││ │ ││                                                                                                 0x00007fd3804f9712:   xor    %rax,%rax
                │                                    ││ │ ││                                                                                                 0x00007fd3804f9715:   movq   $0x0,0x3e(%r10)
                │                                    ││ │ ││                                                                                                 0x00007fd3804f971d:   lock addl $0x0,(%rsp)
                │                                    ││ │ ││                                                                                                 0x00007fd3804f9722:   cmpq   $0x0,0x9e(%r10)
                │                                    ││ │ ││╭                                                                                                0x00007fd3804f972a:   jne    0x00007fd3804f9739
                │                                    ││ │ │││                                                                                                0x00007fd3804f972c:   lock cmpxchg %r15,0x3e(%r10)
                │                                    ││ │ │││╭                                                                                               0x00007fd3804f9732:   jne    0x00007fd3804f9739
                │                                    ││ │ │↘││                                                                                               0x00007fd3804f9734:   or     $0x1,%eax
                │                                    ││ │ │ ││╭                                                                                              0x00007fd3804f9737:   jmp    0x00007fd3804f9746
                │                                    ││ ↘ │ ↘↘│                                                                                              0x00007fd3804f9739:   test   $0x0,%al
                │                                    ││   │   │╭                                                                                             0x00007fd3804f973b:   jmp    0x00007fd3804f9746
   0.19%        │                                    │↘   │   ││                                                                                             0x00007fd3804f973d:   mov    (%rax),%r10
                │                                    │    │   ││                                                                                             0x00007fd3804f9740:   lock cmpxchg %r10,0x0(%rbp)
   3.10%        │                                    │    ↘   ↘↘╭                                                                                            0x00007fd3804f9746:   jne    0x00007fd3804f9752
                │                                    ↘          │                                                                                            0x00007fd3804f9748:   decq   0x550(%r15)
   0.18%        │                                               │                                                                                            0x00007fd3804f974f:   xor    %r10d,%r10d
                │                                               ↘                                                                                            0x00007fd3804f9752:   jne    0x00007fd3804f9d96           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 182)
   0.18%        │                                                                                                                                            0x00007fd3804f9758:   nopl   0x0(%rax,%rax,1)
                │                                                                                                                                            0x00007fd3804f9760:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007fd3804f9764:   jle    0x00007fd3804f9f80           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@46 (line 183)
                │                                                                                                                                            0x00007fd3804f976a:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007fd3804f976f:   mov    0x0(%rbp),%rax
   1.95%        │                                                                                                                                            0x00007fd3804f9773:   test   $0x2,%al
                │                                                ╭                                                                                           0x00007fd3804f9775:   jne    0x00007fd3804f979f
   0.16%        │                                                │                                                                                           0x00007fd3804f977b:   or     $0x1,%rax
                │                                                │                                                                                           0x00007fd3804f977f:   mov    %rax,(%rbx)
   0.36%        │                                                │                                                                                           0x00007fd3804f9782:   lock cmpxchg %rbx,0x0(%rbp)
   2.94%        │                                                │╭                                                                                          0x00007fd3804f9788:   je     0x00007fd3804f97c5
                │                                                ││                                                                                          0x00007fd3804f978e:   sub    %rsp,%rax
                │                                                ││                                                                                          0x00007fd3804f9791:   and    $0xfffffffffffff007,%rax
                │                                                ││                                                                                          0x00007fd3804f9797:   mov    %rax,(%rbx)
                │                                                ││╭                                                                                         0x00007fd3804f979a:   jmp    0x00007fd3804f97c3
                │                                                ↘││                                                                                         0x00007fd3804f979f:   mov    %rax,%r10
                │                                                 ││                                                                                         0x00007fd3804f97a2:   xor    %rax,%rax
                │                                                 ││                                                                                         0x00007fd3804f97a5:   lock cmpxchg %r15,0x3e(%r10)
                │                                                 ││                                                                                         0x00007fd3804f97ab:   movq   $0x3,(%rbx)
                │                                                 ││╭                                                                                        0x00007fd3804f97b2:   je     0x00007fd3804f97c5
                │                                                 │││                                                                                        0x00007fd3804f97b4:   cmp    %rax,%r15
                │                                                 │││╭                                                                                       0x00007fd3804f97b7:   jne    0x00007fd3804f97ce
                │                                                 ││││                                                                                       0x00007fd3804f97b9:   incq   0x86(%r10)
                │                                                 ││││                                                                                       0x00007fd3804f97c0:   xor    %rax,%rax
                │                                                 │↘││╭                                                                                      0x00007fd3804f97c3:   jne    0x00007fd3804f97ce
   0.00%        │                                                 ↘ ↘││                                                                                      0x00007fd3804f97c5:   incq   0x550(%r15)
   0.17%        │                                                    ││                                                                                      0x00007fd3804f97cc:   xor    %eax,%eax
                │                                                    ↘↘                                                                                      0x00007fd3804f97ce:   jne    0x00007fd3804f9dbb           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 184)
   0.22%        │                                                                                                                                            0x00007fd3804f97d4:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 184)
                │                                                                                                                                            0x00007fd3804f97d8:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 184)
                │                                                                                                                                            0x00007fd3804f97dd:   cmpq   $0x0,(%rax)
                │                                                      ╭                                                                                     0x00007fd3804f97e1:   je     0x00007fd3804f9862
   0.20%        │                                                      │                                                                                     0x00007fd3804f97e7:   mov    0x0(%rbp),%r10
   1.79%        │                                                      │                                                                                     0x00007fd3804f97eb:   test   $0x2,%r10b
                │                                                      │╭                                                                                    0x00007fd3804f97ef:   je     0x00007fd3804f9857           ;   {no_reloc}
                │                                                      ││                                                                                    0x00007fd3804f97f5:   cmpq   $0x0,0x86(%r10)
                │                                                      ││╭                                                                                   0x00007fd3804f97fd:   je     0x00007fd3804f9808
                │                                                      │││                                                                                   0x00007fd3804f97ff:   decq   0x86(%r10)
                │                                                      │││╭                                                                                  0x00007fd3804f9806:   jmp    0x00007fd3804f9853
                │                                                      ││↘│                                                                                  0x00007fd3804f9808:   mov    0x96(%r10),%rax
                │                                                      ││ │                                                                                  0x00007fd3804f980f:   or     0x8e(%r10),%rax
                │                                                      ││ │╭                                                                                 0x00007fd3804f9816:   jne    0x00007fd3804f9822
                │                                                      ││ ││                                                                                 0x00007fd3804f9818:   movq   $0x0,0x3e(%r10)
                │                                                      ││ ││╭                                                                                0x00007fd3804f9820:   jmp    0x00007fd3804f9860
                │                                                      ││ │↘│                                                                                0x00007fd3804f9822:   cmpq   $0x0,0x9e(%r10)
                │                                                      ││ │ │╭                                                                               0x00007fd3804f982a:   je     0x00007fd3804f984e
                │                                                      ││ │ ││                                                                               0x00007fd3804f982c:   xor    %rax,%rax
                │                                                      ││ │ ││                                                                               0x00007fd3804f982f:   movq   $0x0,0x3e(%r10)
                │                                                      ││ │ ││                                                                               0x00007fd3804f9837:   lock addl $0x0,(%rsp)
                │                                                      ││ │ ││                                                                               0x00007fd3804f983c:   cmpq   $0x0,0x9e(%r10)
                │                                                      ││ │ ││╭                                                                              0x00007fd3804f9844:   jne    0x00007fd3804f9853
                │                                                      ││ │ │││                                                                              0x00007fd3804f9846:   lock cmpxchg %r15,0x3e(%r10)
                │                                                      ││ │ │││╭                                                                             0x00007fd3804f984c:   jne    0x00007fd3804f9853
                │                                                      ││ │ │↘││                                                                             0x00007fd3804f984e:   or     $0x1,%eax
                │                                                      ││ │ │ ││╭                                                                            0x00007fd3804f9851:   jmp    0x00007fd3804f9860
                │                                                      ││ ↘ │ ↘↘│                                                                            0x00007fd3804f9853:   test   $0x0,%al
                │                                                      ││   │   │╭                                                                           0x00007fd3804f9855:   jmp    0x00007fd3804f9860
   0.16%        │                                                      │↘   │   ││                                                                           0x00007fd3804f9857:   mov    (%rax),%r10
                │                                                      │    │   ││                                                                           0x00007fd3804f985a:   lock cmpxchg %r10,0x0(%rbp)
   3.00%        │                                                      │    ↘   ↘↘╭                                                                          0x00007fd3804f9860:   jne    0x00007fd3804f986c
   0.00%        │                                                      ↘          │                                                                          0x00007fd3804f9862:   decq   0x550(%r15)
   0.17%        │                                                                 │                                                                          0x00007fd3804f9869:   xor    %r10d,%r10d
                │                                                                 ↘                                                                          0x00007fd3804f986c:   jne    0x00007fd3804f9de5           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 184)
   0.15%        │                                                                                                                                            0x00007fd3804f9872:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007fd3804f9876:   jle    0x00007fd3804f9f98           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@58 (line 185)
                │                                                                                                                                            0x00007fd3804f987c:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007fd3804f9881:   mov    0x0(%rbp),%rax
   1.99%        │                                                                                                                                            0x00007fd3804f9885:   test   $0x2,%al
                │                                                                  ╭                                                                         0x00007fd3804f9887:   jne    0x00007fd3804f98b1
   0.19%        │                                                                  │                                                                         0x00007fd3804f988d:   or     $0x1,%rax
                │                                                                  │                                                                         0x00007fd3804f9891:   mov    %rax,(%rbx)
   0.39%        │                                                                  │                                                                         0x00007fd3804f9894:   lock cmpxchg %rbx,0x0(%rbp)
   4.12%        │                                                                  │╭                                                                        0x00007fd3804f989a:   je     0x00007fd3804f98d7
                │                                                                  ││                                                                        0x00007fd3804f98a0:   sub    %rsp,%rax
                │                                                                  ││                                                                        0x00007fd3804f98a3:   and    $0xfffffffffffff007,%rax
                │                                                                  ││                                                                        0x00007fd3804f98a9:   mov    %rax,(%rbx)
                │                                                                  ││╭                                                                       0x00007fd3804f98ac:   jmp    0x00007fd3804f98d5
                │                                                                  ↘││                                                                       0x00007fd3804f98b1:   mov    %rax,%r10
                │                                                                   ││                                                                       0x00007fd3804f98b4:   xor    %rax,%rax
                │                                                                   ││                                                                       0x00007fd3804f98b7:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                   ││                                                                       0x00007fd3804f98bd:   movq   $0x3,(%rbx)
                │                                                                   ││╭                                                                      0x00007fd3804f98c4:   je     0x00007fd3804f98d7
                │                                                                   │││                                                                      0x00007fd3804f98c6:   cmp    %rax,%r15
                │                                                                   │││╭                                                                     0x00007fd3804f98c9:   jne    0x00007fd3804f98e0
                │                                                                   ││││                                                                     0x00007fd3804f98cb:   incq   0x86(%r10)
                │                                                                   ││││                                                                     0x00007fd3804f98d2:   xor    %rax,%rax
                │                                                                   │↘││╭                                                                    0x00007fd3804f98d5:   jne    0x00007fd3804f98e0
                │                                                                   ↘ ↘││                                                                    0x00007fd3804f98d7:   incq   0x550(%r15)
   0.19%        │                                                                      ││                                                                    0x00007fd3804f98de:   xor    %eax,%eax
                │                                                                      ↘↘                                                                    0x00007fd3804f98e0:   jne    0x00007fd3804f9e0a           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 186)
   0.17%        │                                                                                                                                            0x00007fd3804f98e6:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 186)
                │                                                                                                                                            0x00007fd3804f98ea:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 186)
                │                                                                                                                                            0x00007fd3804f98ef:   cmpq   $0x0,(%rax)                  ;   {no_reloc}
                │                                                                        ╭                                                                   0x00007fd3804f98f3:   je     0x00007fd3804f9974
   0.17%        │                                                                        │                                                                   0x00007fd3804f98f9:   mov    0x0(%rbp),%r10
   1.83%        │                                                                        │                                                                   0x00007fd3804f98fd:   test   $0x2,%r10b
                │                                                                        │╭                                                                  0x00007fd3804f9901:   je     0x00007fd3804f9969
                │                                                                        ││                                                                  0x00007fd3804f9907:   cmpq   $0x0,0x86(%r10)
                │                                                                        ││╭                                                                 0x00007fd3804f990f:   je     0x00007fd3804f991a
                │                                                                        │││                                                                 0x00007fd3804f9911:   decq   0x86(%r10)
                │                                                                        │││╭                                                                0x00007fd3804f9918:   jmp    0x00007fd3804f9965
                │                                                                        ││↘│                                                                0x00007fd3804f991a:   mov    0x96(%r10),%rax
                │                                                                        ││ │                                                                0x00007fd3804f9921:   or     0x8e(%r10),%rax
                │                                                                        ││ │╭                                                               0x00007fd3804f9928:   jne    0x00007fd3804f9934
                │                                                                        ││ ││                                                               0x00007fd3804f992a:   movq   $0x0,0x3e(%r10)
                │                                                                        ││ ││╭                                                              0x00007fd3804f9932:   jmp    0x00007fd3804f9972
                │                                                                        ││ │↘│                                                              0x00007fd3804f9934:   cmpq   $0x0,0x9e(%r10)
                │                                                                        ││ │ │╭                                                             0x00007fd3804f993c:   je     0x00007fd3804f9960
                │                                                                        ││ │ ││                                                             0x00007fd3804f993e:   xor    %rax,%rax
                │                                                                        ││ │ ││                                                             0x00007fd3804f9941:   movq   $0x0,0x3e(%r10)
                │                                                                        ││ │ ││                                                             0x00007fd3804f9949:   lock addl $0x0,(%rsp)
                │                                                                        ││ │ ││                                                             0x00007fd3804f994e:   cmpq   $0x0,0x9e(%r10)
                │                                                                        ││ │ ││╭                                                            0x00007fd3804f9956:   jne    0x00007fd3804f9965
                │                                                                        ││ │ │││                                                            0x00007fd3804f9958:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                        ││ │ │││╭                                                           0x00007fd3804f995e:   jne    0x00007fd3804f9965
                │                                                                        ││ │ │↘││                                                           0x00007fd3804f9960:   or     $0x1,%eax
                │                                                                        ││ │ │ ││╭                                                          0x00007fd3804f9963:   jmp    0x00007fd3804f9972
                │                                                                        ││ ↘ │ ↘↘│                                                          0x00007fd3804f9965:   test   $0x0,%al
                │                                                                        ││   │   │╭                                                         0x00007fd3804f9967:   jmp    0x00007fd3804f9972
   0.17%        │                                                                        │↘   │   ││                                                         0x00007fd3804f9969:   mov    (%rax),%r10
   0.00%        │                                                                        │    │   ││                                                         0x00007fd3804f996c:   lock cmpxchg %r10,0x0(%rbp)
   2.92%        │                                                                        │    ↘   ↘↘╭                                                        0x00007fd3804f9972:   jne    0x00007fd3804f997e
   0.01%        │                                                                        ↘          │                                                        0x00007fd3804f9974:   decq   0x550(%r15)
   0.20%        │                                                                                   │                                                        0x00007fd3804f997b:   xor    %r10d,%r10d
                │                                                                                   ↘                                                        0x00007fd3804f997e:   xchg   %ax,%ax
   0.19%        │                                                                                                                                            0x00007fd3804f9980:   jne    0x00007fd3804f9e2e           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 186)
                │                                                                                                                                            0x00007fd3804f9986:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007fd3804f998a:   jle    0x00007fd3804f9fb0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@70 (line 187)
                │                                                                                                                                            0x00007fd3804f9990:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007fd3804f9995:   mov    0x0(%rbp),%rax
   1.96%        │                                                                                                                                            0x00007fd3804f9999:   test   $0x2,%al
                │                                                                                    ╭                                                       0x00007fd3804f999b:   jne    0x00007fd3804f99c5
   0.17%        │                                                                                    │                                                       0x00007fd3804f99a1:   or     $0x1,%rax
                │                                                                                    │                                                       0x00007fd3804f99a5:   mov    %rax,(%rbx)
   0.32%        │                                                                                    │                                                       0x00007fd3804f99a8:   lock cmpxchg %rbx,0x0(%rbp)
   4.14%        │                                                                                    │╭                                                      0x00007fd3804f99ae:   je     0x00007fd3804f99eb
                │                                                                                    ││                                                      0x00007fd3804f99b4:   sub    %rsp,%rax
                │                                                                                    ││                                                      0x00007fd3804f99b7:   and    $0xfffffffffffff007,%rax
                │                                                                                    ││                                                      0x00007fd3804f99bd:   mov    %rax,(%rbx)
                │                                                                                    ││╭                                                     0x00007fd3804f99c0:   jmp    0x00007fd3804f99e9
                │                                                                                    ↘││                                                     0x00007fd3804f99c5:   mov    %rax,%r10
                │                                                                                     ││                                                     0x00007fd3804f99c8:   xor    %rax,%rax
                │                                                                                     ││                                                     0x00007fd3804f99cb:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                                     ││                                                     0x00007fd3804f99d1:   movq   $0x3,(%rbx)
                │                                                                                     ││╭                                                    0x00007fd3804f99d8:   je     0x00007fd3804f99eb
                │                                                                                     │││                                                    0x00007fd3804f99da:   cmp    %rax,%r15
                │                                                                                     │││╭                                                   0x00007fd3804f99dd:   jne    0x00007fd3804f99f4
                │                                                                                     ││││                                                   0x00007fd3804f99df:   incq   0x86(%r10)
                │                                                                                     ││││                                                   0x00007fd3804f99e6:   xor    %rax,%rax
                │                                                                                     │↘││╭                                                  0x00007fd3804f99e9:   jne    0x00007fd3804f99f4
   0.00%        │                                                                                     ↘ ↘││                                                  0x00007fd3804f99eb:   incq   0x550(%r15)                  ;   {no_reloc}
   0.18%        │                                                                                        ││                                                  0x00007fd3804f99f2:   xor    %eax,%eax
                │                                                                                        ↘↘                                                  0x00007fd3804f99f4:   jne    0x00007fd3804f9e53           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 188)
   0.19%        │                                                                                                                                            0x00007fd3804f99fa:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 188)
                │                                                                                                                                            0x00007fd3804f99fe:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 188)
                │                                                                                                                                            0x00007fd3804f9a03:   cmpq   $0x0,(%rax)
                │                                                                                          ╭                                                 0x00007fd3804f9a07:   je     0x00007fd3804f9a88
   0.18%        │                                                                                          │                                                 0x00007fd3804f9a0d:   mov    0x0(%rbp),%r10
   1.68%        │                                                                                          │                                                 0x00007fd3804f9a11:   test   $0x2,%r10b
                │                                                                                          │╭                                                0x00007fd3804f9a15:   je     0x00007fd3804f9a7d
                │                                                                                          ││                                                0x00007fd3804f9a1b:   cmpq   $0x0,0x86(%r10)
                │                                                                                          ││╭                                               0x00007fd3804f9a23:   je     0x00007fd3804f9a2e
                │                                                                                          │││                                               0x00007fd3804f9a25:   decq   0x86(%r10)
                │                                                                                          │││╭                                              0x00007fd3804f9a2c:   jmp    0x00007fd3804f9a79
                │                                                                                          ││↘│                                              0x00007fd3804f9a2e:   mov    0x96(%r10),%rax
                │                                                                                          ││ │                                              0x00007fd3804f9a35:   or     0x8e(%r10),%rax
                │                                                                                          ││ │╭                                             0x00007fd3804f9a3c:   jne    0x00007fd3804f9a48
                │                                                                                          ││ ││                                             0x00007fd3804f9a3e:   movq   $0x0,0x3e(%r10)
                │                                                                                          ││ ││╭                                            0x00007fd3804f9a46:   jmp    0x00007fd3804f9a86
                │                                                                                          ││ │↘│                                            0x00007fd3804f9a48:   cmpq   $0x0,0x9e(%r10)
                │                                                                                          ││ │ │╭                                           0x00007fd3804f9a50:   je     0x00007fd3804f9a74
                │                                                                                          ││ │ ││                                           0x00007fd3804f9a52:   xor    %rax,%rax
                │                                                                                          ││ │ ││                                           0x00007fd3804f9a55:   movq   $0x0,0x3e(%r10)
                │                                                                                          ││ │ ││                                           0x00007fd3804f9a5d:   lock addl $0x0,(%rsp)
                │                                                                                          ││ │ ││                                           0x00007fd3804f9a62:   cmpq   $0x0,0x9e(%r10)
                │                                                                                          ││ │ ││╭                                          0x00007fd3804f9a6a:   jne    0x00007fd3804f9a79
                │                                                                                          ││ │ │││                                          0x00007fd3804f9a6c:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                                          ││ │ │││╭                                         0x00007fd3804f9a72:   jne    0x00007fd3804f9a79
                │                                                                                          ││ │ │↘││                                         0x00007fd3804f9a74:   or     $0x1,%eax
                │                                                                                          ││ │ │ ││╭                                        0x00007fd3804f9a77:   jmp    0x00007fd3804f9a86
                │                                                                                          ││ ↘ │ ↘↘│                                        0x00007fd3804f9a79:   test   $0x0,%al
                │                                                                                          ││   │   │╭                                       0x00007fd3804f9a7b:   jmp    0x00007fd3804f9a86
   0.18%        │                                                                                          │↘   │   ││                                       0x00007fd3804f9a7d:   mov    (%rax),%r10
                │                                                                                          │    │   ││                                       0x00007fd3804f9a80:   lock cmpxchg %r10,0x0(%rbp)
   3.03%        │                                                                                          │    ↘   ↘↘╭                                      0x00007fd3804f9a86:   jne    0x00007fd3804f9a92
   0.00%        │                                                                                          ↘          │                                      0x00007fd3804f9a88:   decq   0x550(%r15)
   0.16%        │                                                                                                     │                                      0x00007fd3804f9a8f:   xor    %r10d,%r10d
                │                                                                                                     ↘                                      0x00007fd3804f9a92:   jne    0x00007fd3804f9e7a           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 188)
   0.20%        │                                                                                                                                            0x00007fd3804f9a98:   nopl   0x0(%rax,%rax,1)
                │                                                                                                                                            0x00007fd3804f9aa0:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007fd3804f9aa4:   jle    0x00007fd3804f9fc8           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@82 (line 189)
                │                                                                                                                                            0x00007fd3804f9aaa:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007fd3804f9aaf:   mov    0x0(%rbp),%rax
   1.84%        │                                                                                                                                            0x00007fd3804f9ab3:   test   $0x2,%al
                │                                                                                                      ╭                                     0x00007fd3804f9ab5:   jne    0x00007fd3804f9adf
   0.17%        │                                                                                                      │                                     0x00007fd3804f9abb:   or     $0x1,%rax
   0.00%        │                                                                                                      │                                     0x00007fd3804f9abf:   mov    %rax,(%rbx)
   0.37%        │                                                                                                      │                                     0x00007fd3804f9ac2:   lock cmpxchg %rbx,0x0(%rbp)
   2.94%        │                                                                                                      │╭                                    0x00007fd3804f9ac8:   je     0x00007fd3804f9b05
                │                                                                                                      ││                                    0x00007fd3804f9ace:   sub    %rsp,%rax
                │                                                                                                      ││                                    0x00007fd3804f9ad1:   and    $0xfffffffffffff007,%rax
                │                                                                                                      ││                                    0x00007fd3804f9ad7:   mov    %rax,(%rbx)
                │                                                                                                      ││╭                                   0x00007fd3804f9ada:   jmp    0x00007fd3804f9b03
                │                                                                                                      ↘││                                   0x00007fd3804f9adf:   mov    %rax,%r10
                │                                                                                                       ││                                   0x00007fd3804f9ae2:   xor    %rax,%rax
                │                                                                                                       ││                                   0x00007fd3804f9ae5:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                                                       ││                                   0x00007fd3804f9aeb:   movq   $0x3,(%rbx)                  ;   {no_reloc}
                │                                                                                                       ││╭                                  0x00007fd3804f9af2:   je     0x00007fd3804f9b05
                │                                                                                                       │││                                  0x00007fd3804f9af4:   cmp    %rax,%r15
                │                                                                                                       │││╭                                 0x00007fd3804f9af7:   jne    0x00007fd3804f9b0e
                │                                                                                                       ││││                                 0x00007fd3804f9af9:   incq   0x86(%r10)
                │                                                                                                       ││││                                 0x00007fd3804f9b00:   xor    %rax,%rax
                │                                                                                                       │↘││╭                                0x00007fd3804f9b03:   jne    0x00007fd3804f9b0e
   0.01%        │                                                                                                       ↘ ↘││                                0x00007fd3804f9b05:   incq   0x550(%r15)
   0.18%        │                                                                                                          ││                                0x00007fd3804f9b0c:   xor    %eax,%eax
                │                                                                                                          ↘↘                                0x00007fd3804f9b0e:   jne    0x00007fd3804f9e9f           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 190)
   0.17%        │                                                                                                                                            0x00007fd3804f9b14:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 190)
                │                                                                                                                                            0x00007fd3804f9b18:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 190)
                │                                                                                                                                            0x00007fd3804f9b1d:   cmpq   $0x0,(%rax)
                │                                                                                                            ╭                               0x00007fd3804f9b21:   je     0x00007fd3804f9ba2
   0.16%        │                                                                                                            │                               0x00007fd3804f9b27:   mov    0x0(%rbp),%r10
   1.81%        │                                                                                                            │                               0x00007fd3804f9b2b:   test   $0x2,%r10b
                │                                                                                                            │╭                              0x00007fd3804f9b2f:   je     0x00007fd3804f9b97
                │                                                                                                            ││                              0x00007fd3804f9b35:   cmpq   $0x0,0x86(%r10)
                │                                                                                                            ││╭                             0x00007fd3804f9b3d:   je     0x00007fd3804f9b48
                │                                                                                                            │││                             0x00007fd3804f9b3f:   decq   0x86(%r10)
                │                                                                                                            │││╭                            0x00007fd3804f9b46:   jmp    0x00007fd3804f9b93
                │                                                                                                            ││↘│                            0x00007fd3804f9b48:   mov    0x96(%r10),%rax
                │                                                                                                            ││ │                            0x00007fd3804f9b4f:   or     0x8e(%r10),%rax
                │                                                                                                            ││ │╭                           0x00007fd3804f9b56:   jne    0x00007fd3804f9b62
                │                                                                                                            ││ ││                           0x00007fd3804f9b58:   movq   $0x0,0x3e(%r10)
                │                                                                                                            ││ ││╭                          0x00007fd3804f9b60:   jmp    0x00007fd3804f9ba0
                │                                                                                                            ││ │↘│                          0x00007fd3804f9b62:   cmpq   $0x0,0x9e(%r10)
                │                                                                                                            ││ │ │╭                         0x00007fd3804f9b6a:   je     0x00007fd3804f9b8e
                │                                                                                                            ││ │ ││                         0x00007fd3804f9b6c:   xor    %rax,%rax
                │                                                                                                            ││ │ ││                         0x00007fd3804f9b6f:   movq   $0x0,0x3e(%r10)
                │                                                                                                            ││ │ ││                         0x00007fd3804f9b77:   lock addl $0x0,(%rsp)
                │                                                                                                            ││ │ ││                         0x00007fd3804f9b7c:   cmpq   $0x0,0x9e(%r10)
                │                                                                                                            ││ │ ││╭                        0x00007fd3804f9b84:   jne    0x00007fd3804f9b93
                │                                                                                                            ││ │ │││                        0x00007fd3804f9b86:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                                                            ││ │ │││╭                       0x00007fd3804f9b8c:   jne    0x00007fd3804f9b93
                │                                                                                                            ││ │ │↘││                       0x00007fd3804f9b8e:   or     $0x1,%eax
                │                                                                                                            ││ │ │ ││╭                      0x00007fd3804f9b91:   jmp    0x00007fd3804f9ba0
                │                                                                                                            ││ ↘ │ ↘↘│                      0x00007fd3804f9b93:   test   $0x0,%al
                │                                                                                                            ││   │   │╭                     0x00007fd3804f9b95:   jmp    0x00007fd3804f9ba0
   0.16%        │                                                                                                            │↘   │   ││                     0x00007fd3804f9b97:   mov    (%rax),%r10
   0.00%        │                                                                                                            │    │   ││                     0x00007fd3804f9b9a:   lock cmpxchg %r10,0x0(%rbp)
   3.06%        │                                                                                                            │    ↘   ↘↘╭                    0x00007fd3804f9ba0:   jne    0x00007fd3804f9bac
   0.00%        │                                                                                                            ↘          │                    0x00007fd3804f9ba2:   decq   0x550(%r15)
   0.18%        │                                                                                                                       │                    0x00007fd3804f9ba9:   xor    %r10d,%r10d
                │                                                                                                                       ↘                    0x00007fd3804f9bac:   jne    0x00007fd3804f9ec6           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 190)
   0.17%        │                                                                                                                                            0x00007fd3804f9bb2:   cmp    $0x20,%r13d
                │                                                                                                                                            0x00007fd3804f9bb6:   jle    0x00007fd3804f9fe0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@94 (line 191)
                │                                                                                                                                            0x00007fd3804f9bbc:   lea    0x20(%rsp),%rbx
                │                                                                                                                                            0x00007fd3804f9bc1:   mov    0x0(%rbp),%rax
   1.87%        │                                                                                                                                            0x00007fd3804f9bc5:   test   $0x2,%al
                │                                                                                                                        ╭                   0x00007fd3804f9bc7:   jne    0x00007fd3804f9bf1
   0.20%        │                                                                                                                        │                   0x00007fd3804f9bcd:   or     $0x1,%rax
                │                                                                                                                        │                   0x00007fd3804f9bd1:   mov    %rax,(%rbx)
   0.38%        │                                                                                                                        │                   0x00007fd3804f9bd4:   lock cmpxchg %rbx,0x0(%rbp)
   4.10%        │                                                                                                                        │╭                  0x00007fd3804f9bda:   je     0x00007fd3804f9c17
                │                                                                                                                        ││                  0x00007fd3804f9be0:   sub    %rsp,%rax
                │                                                                                                                        ││                  0x00007fd3804f9be3:   and    $0xfffffffffffff007,%rax
                │                                                                                                                        ││                  0x00007fd3804f9be9:   mov    %rax,(%rbx)
                │                                                                                                                        ││╭                 0x00007fd3804f9bec:   jmp    0x00007fd3804f9c15           ;   {no_reloc}
                │                                                                                                                        ↘││                 0x00007fd3804f9bf1:   mov    %rax,%r10
                │                                                                                                                         ││                 0x00007fd3804f9bf4:   xor    %rax,%rax
                │                                                                                                                         ││                 0x00007fd3804f9bf7:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                                                                         ││                 0x00007fd3804f9bfd:   movq   $0x3,(%rbx)
                │                                                                                                                         ││╭                0x00007fd3804f9c04:   je     0x00007fd3804f9c17
                │                                                                                                                         │││                0x00007fd3804f9c06:   cmp    %rax,%r15
                │                                                                                                                         │││╭               0x00007fd3804f9c09:   jne    0x00007fd3804f9c20
                │                                                                                                                         ││││               0x00007fd3804f9c0b:   incq   0x86(%r10)
                │                                                                                                                         ││││               0x00007fd3804f9c12:   xor    %rax,%rax
                │                                                                                                                         │↘││╭              0x00007fd3804f9c15:   jne    0x00007fd3804f9c20
   0.01%        │                                                                                                                         ↘ ↘││              0x00007fd3804f9c17:   incq   0x550(%r15)
   0.18%        │                                                                                                                            ││              0x00007fd3804f9c1e:   xor    %eax,%eax
                │                                                                                                                            ↘↘              0x00007fd3804f9c20:   jne    0x00007fd3804f9eeb           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
   0.16%        │                                                                                                                                            0x00007fd3804f9c26:   add    0x14(%rbp),%r13d             ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
                │                                                                                                                                            0x00007fd3804f9c2a:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
                │                                                                                                                                            0x00007fd3804f9c2f:   cmpq   $0x0,(%rax)
                │                                                                                                                              ╭             0x00007fd3804f9c33:   je     0x00007fd3804f9cb4
   0.15%        │                                                                                                                              │             0x00007fd3804f9c39:   mov    0x0(%rbp),%r10
   1.82%        │                                                                                                                              │             0x00007fd3804f9c3d:   test   $0x2,%r10b
                │                                                                                                                              │╭            0x00007fd3804f9c41:   je     0x00007fd3804f9ca9
                │                                                                                                                              ││            0x00007fd3804f9c47:   cmpq   $0x0,0x86(%r10)
                │                                                                                                                              ││╭           0x00007fd3804f9c4f:   je     0x00007fd3804f9c5a
                │                                                                                                                              │││           0x00007fd3804f9c51:   decq   0x86(%r10)
                │                                                                                                                              │││╭          0x00007fd3804f9c58:   jmp    0x00007fd3804f9ca5
                │                                                                                                                              ││↘│          0x00007fd3804f9c5a:   mov    0x96(%r10),%rax
                │                                                                                                                              ││ │          0x00007fd3804f9c61:   or     0x8e(%r10),%rax
                │                                                                                                                              ││ │╭         0x00007fd3804f9c68:   jne    0x00007fd3804f9c74
                │                                                                                                                              ││ ││         0x00007fd3804f9c6a:   movq   $0x0,0x3e(%r10)
                │                                                                                                                              ││ ││╭        0x00007fd3804f9c72:   jmp    0x00007fd3804f9cb2
                │                                                                                                                              ││ │↘│        0x00007fd3804f9c74:   cmpq   $0x0,0x9e(%r10)
                │                                                                                                                              ││ │ │╭       0x00007fd3804f9c7c:   je     0x00007fd3804f9ca0
                │                                                                                                                              ││ │ ││       0x00007fd3804f9c7e:   xor    %rax,%rax
                │                                                                                                                              ││ │ ││       0x00007fd3804f9c81:   movq   $0x0,0x3e(%r10)
                │                                                                                                                              ││ │ ││       0x00007fd3804f9c89:   lock addl $0x0,(%rsp)
                │                                                                                                                              ││ │ ││       0x00007fd3804f9c8e:   cmpq   $0x0,0x9e(%r10)
                │                                                                                                                              ││ │ ││╭      0x00007fd3804f9c96:   jne    0x00007fd3804f9ca5
                │                                                                                                                              ││ │ │││      0x00007fd3804f9c98:   lock cmpxchg %r15,0x3e(%r10)
                │                                                                                                                              ││ │ │││╭     0x00007fd3804f9c9e:   jne    0x00007fd3804f9ca5
                │                                                                                                                              ││ │ │↘││     0x00007fd3804f9ca0:   or     $0x1,%eax
                │                                                                                                                              ││ │ │ ││╭    0x00007fd3804f9ca3:   jmp    0x00007fd3804f9cb2
                │                                                                                                                              ││ ↘ │ ↘↘│    0x00007fd3804f9ca5:   test   $0x0,%al
                │                                                                                                                              ││   │   │╭   0x00007fd3804f9ca7:   jmp    0x00007fd3804f9cb2
   0.19%        │                                                                                                                              │↘   │   ││   0x00007fd3804f9ca9:   mov    (%rax),%r10
                │                                                                                                                              │    │   ││   0x00007fd3804f9cac:   lock cmpxchg %r10,0x0(%rbp)
   2.97%        │                                                                                                                              │    ↘   ↘↘╭  0x00007fd3804f9cb2:   jne    0x00007fd3804f9cbe
                │                                                                                                                              ↘          │  0x00007fd3804f9cb4:   decq   0x550(%r15)
   0.18%        │                                                                                                                                         │  0x00007fd3804f9cbb:   xor    %r10d,%r10d
                │                                                                                                                                         ↘  0x00007fd3804f9cbe:   xchg   %ax,%ax
   0.21%        │                                                                                                                                            0x00007fd3804f9cc0:   jne    0x00007fd3804f9f12           ;*synchronization entry
                │                                                                                                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@-1 (line 174)
                │                                                                                                                                            0x00007fd3804f9cc6:   mov    %r13d,%eax
                │                                                                                                                                            0x00007fd3804f9cc9:   add    $0x30,%rsp
                │                                                                                                                                            0x00007fd3804f9ccd:   pop    %rbp
   0.17%        │                                                                                                                                            0x00007fd3804f9cce:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                │                                                                                                                                            0x00007fd3804f9cd5:   ja     0x00007fd3804f9ff8
                │                                                                                                                                            0x00007fd3804f9cdb:   ret    
                ↘                                                                                                                                            0x00007fd3804f9cdc:   lea    0x20(%rsp),%rdx
                                                                                                                                                             0x00007fd3804f9ce1:   mov    %r13d,0xc(%rsp)
                                                                                                                                                             0x00007fd3804f9ce6:   nop
                                                                                                                                                             0x00007fd3804f9ce7:   call   0x00007fd38005dc00           ; ImmutableOopMap {rbp=Oop }
                                                                                                                                                                                                                       ;*synchronization entry
                                                                                                                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                                                                                                                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
                                                                                                                                                                                                                       ;   {runtime_call _complete_monitor_locking_Java}
....................................................................................................
  95.78%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.78%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 651 
   0.62%                kernel  [unknown] 
   0.52%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 683 
   0.33%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%                kernel  [unknown] 
   1.50%  <...other 257 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.78%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 651 
   3.15%                kernel  [unknown] 
   0.52%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 683 
   0.05%             libc.so.6  __vfprintf_internal 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libjvm.so  defaultStream::hold 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libjvm.so  outputStream::print 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libjvm.so  xmlTextStream::flush 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  _IO_fflush 
   0.01%        hsdis-amd64.so  print_insn 
   0.24%  <...other 89 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.31%           c2, level 4
   3.15%                kernel
   0.27%             libjvm.so
   0.23%             libc.so.6
   0.02%           interpreter
   0.01%        hsdis-amd64.so
   0.00%                      
   0.00%          libjimage.so
   0.00%         perf-6923.map
   0.00%           c1, level 3
   0.00%  ld-linux-x86-64.so.2
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:04:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 640.886 ns/op
# Warmup Iteration   2: 635.492 ns/op
# Warmup Iteration   3: 897.025 ns/op
# Warmup Iteration   4: 687.036 ns/op
# Warmup Iteration   5: 633.507 ns/op
Iteration   1: 630.552 ns/op
Iteration   2: 662.677 ns/op
Iteration   3: 829.023 ns/op
Iteration   4: 703.336 ns/op
Iteration   5: 630.041 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized":
  691.126 ±(99.9%) 318.550 ns/op [Average]
  (min, avg, max) = (630.041, 691.126, 829.023), stdev = 82.727
  CI (99.9%): [372.575, 1009.676] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized:asm":
PrintAssembly processed: 123326 total address lines.
Perf output processed (skipped 66.488 seconds):
 Column 1: cycles (51171 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
interpreter, monitorenter  194 monitorenter  

                                     --------------------------------------------------------------------------------
                                     ----------------------------------------------------------------------
                                     monitorenter  194 monitorenter  [0x00007f83f3f51400, 0x00007f83f3f51540]  320 bytes
                                     --------------------------------------------------------------------------------
   0.31%                               0x00007f83f3f51400:   pop    %rax
   0.03%                               0x00007f83f3f51401:   cmp    (%rax),%rax
   0.76%                               0x00007f83f3f51404:   xor    %esi,%esi
   0.13%                               0x00007f83f3f51406:   mov    -0x48(%rbp),%rcx
   0.12%                               0x00007f83f3f5140a:   lea    -0x48(%rbp),%rdx
          ╭                            0x00007f83f3f5140e:   jmp    0x00007f83f3f51423
   0.90%  │ ↗                          0x00007f83f3f51410:   cmpq   $0x0,0x8(%rcx)
   0.01%  │ │                          0x00007f83f3f51415:   cmove  %rcx,%rsi
   0.00%  │ │                          0x00007f83f3f51419:   cmp    0x8(%rcx),%rax
          │╭│                          0x00007f83f3f5141d:   je     0x00007f83f3f51428
          │││                          0x00007f83f3f5141f:   add    $0x10,%rcx
   0.77%  ↘││                          0x00007f83f3f51423:   cmp    %rdx,%rcx
           │╰                          0x00007f83f3f51426:   jne    0x00007f83f3f51410
   0.98%   ↘                           0x00007f83f3f51428:   test   %rsi,%rsi
             ╭                         0x00007f83f3f5142b:   jne    0x00007f83f3f51459
   0.01%     │                         0x00007f83f3f51431:   mov    -0x48(%rbp),%rsi
             │                         0x00007f83f3f51435:   sub    $0x10,%rsp
   1.03%     │                         0x00007f83f3f51439:   sub    $0x10,%rsi
   0.01%     │                         0x00007f83f3f5143d:   mov    %rsp,%rcx
             │                         0x00007f83f3f51440:   mov    %rsi,-0x48(%rbp)
   0.00%     │╭                        0x00007f83f3f51444:   jmp    0x00007f83f3f51454
             ││↗                       0x00007f83f3f51449:   mov    0x10(%rcx),%rdx
             │││                       0x00007f83f3f5144d:   mov    %rdx,(%rcx)
             │││                       0x00007f83f3f51450:   add    $0x8,%rcx
   1.06%     │↘│                       0x00007f83f3f51454:   cmp    %rsi,%rcx
             │ ╰                       0x00007f83f3f51457:   jne    0x00007f83f3f51449
   0.00%     ↘                         0x00007f83f3f51459:   inc    %r13
                                       0x00007f83f3f5145c:   mov    %rax,0x8(%rsi)
   0.06%                               0x00007f83f3f51460:   mov    0x8(%rsi),%rcx
   0.99%                               0x00007f83f3f51464:   mov    $0x1,%eax
   0.00%                               0x00007f83f3f51469:   or     (%rcx),%rax
   0.48%                               0x00007f83f3f5146c:   mov    %rax,(%rsi)
   0.30%                               0x00007f83f3f5146f:   lock cmpxchg %rsi,(%rcx)
  18.58%        ╭                      0x00007f83f3f51474:   je     0x00007f83f3f5148c
   0.01%        │                      0x00007f83f3f5147a:   sub    %rsp,%rax
   0.90%        │                      0x00007f83f3f5147d:   and    $0xfffffffffffff007,%rax
                │                      0x00007f83f3f51483:   mov    %rax,(%rsi)
   0.89%        │╭                     0x00007f83f3f51486:   jne    0x00007f83f3f51498
   0.01%        ↘│                     0x00007f83f3f5148c:   incq   0x550(%r15)
   0.98%         │╭                    0x00007f83f3f51493:   jmp    0x00007f83f3f51522
                 ↘│╭                   0x00007f83f3f51498:   call   0x00007f83f3f514a2
                  ││╭                  0x00007f83f3f5149d:   jmp    0x00007f83f3f51522
                  │↘│                  0x00007f83f3f514a2:   lea    0x8(%rsp),%rax
                  │ │                  0x00007f83f3f514a7:   mov    %r13,-0x40(%rbp)
                  │ │                  0x00007f83f3f514ab:   mov    %r15,%rdi
                  │ │                  0x00007f83f3f514ae:   vzeroupper 
                  │ │                  0x00007f83f3f514b1:   mov    %rbp,0x3a8(%r15)
                  │ │                  0x00007f83f3f514b8:   mov    %rax,0x398(%r15)
                  │ │                  0x00007f83f3f514bf:   test   $0xf,%spl
                  │ │╭                 0x00007f83f3f514c3:   je     0x00007f83f3f514db
                  │ ││                 0x00007f83f3f514c9:   sub    $0x8,%rsp
                  │ ││                 0x00007f83f3f514cd:   call   0x00007f840aad04a0 = InterpreterRuntime::monitorenter(JavaThread*, BasicObjectLock*)
                  │ ││                 0x00007f83f3f514d2:   add    $0x8,%rsp
                  │ ││╭                0x00007f83f3f514d6:   jmp    0x00007f83f3f514e0
                  │ │↘│                0x00007f83f3f514db:   call   0x00007f840aad04a0 = InterpreterRuntime::monitorenter(JavaThread*, BasicObjectLock*)
                  │ │ ↘                0x00007f83f3f514e0:   movq   $0x0,0x398(%r15)
                  │ │                  0x00007f83f3f514eb:   movq   $0x0,0x3a8(%r15)
                  │ │                  0x00007f83f3f514f6:   movq   $0x0,0x3a0(%r15)
                  │ │                  0x00007f83f3f51501:   vzeroupper 
                  │ │                  0x00007f83f3f51504:   cmpq   $0x0,0x8(%r15)
                  │ │  ╭               0x00007f83f3f51509:   je     0x00007f83f3f51514
                  │ │  │               0x00007f83f3f5150f:   jmp    0x00007f83f3f37c00
                  │ │  ↘               0x00007f83f3f51514:   mov    -0x40(%rbp),%r13
                  │ │                  0x00007f83f3f51518:   mov    -0x38(%rbp),%r14
                  │ │                  0x00007f83f3f5151c:   lea    0x0(%rbp,%r14,8),%r14
                  │ │                  0x00007f83f3f51521:   ret    
   0.00%          ↘ ↘                  0x00007f83f3f51522:   mov    %r13,-0x40(%rbp)
   0.12%                               0x00007f83f3f51526:   mov    %eax,-0x14000(%rsp)
                                       0x00007f83f3f5152d:   movzbl 0x0(%r13),%ebx
   0.88%                               0x00007f83f3f51532:   movabs $0x7f840b657a20,%r10
                                       0x00007f83f3f5153c:   jmp    *(%r10,%rbx,8)
                                     --------------------------------------------------------------------------------
                                     ----------------------------------------------------------------------
                                     monitorexit  195 monitorexit  [0x00007f83f3f51560, 0x00007f83f3f516a0]  320 bytes
                                     --------------------------------------------------------------------------------
                                       0x00007f83f3f51560:   pop    %rax
   0.74%                               0x00007f83f3f51561:   cmp    (%rax),%rax
   0.86%                               0x00007f83f3f51564:   mov    -0x48(%rbp),%rsi
   0.38%                               0x00007f83f3f51568:   lea    -0x48(%rbp),%rdx
                        ╭              0x00007f83f3f5156c:   jmp    0x00007f83f3f5157c
   4.41%                │ ↗            0x00007f83f3f5156e:   cmp    0x8(%rsi),%rax
                        │╭│            0x00007f83f3f51572:   je     0x00007f83f3f5161f
   0.60%                │││            0x00007f83f3f51578:   add    $0x10,%rsi
   0.37%                ↘││            0x00007f83f3f5157c:   cmp    %rdx,%rsi
   0.00%                 │╰            0x00007f83f3f5157f:   jne    0x00007f83f3f5156e
                         │ ╭           0x00007f83f3f51581:   call   0x00007f83f3f5158b
                         │ │╭          0x00007f83f3f51586:   jmp    0x00007f83f3f5160b
                         │ ↘│          0x00007f83f3f5158b:   lea    0x8(%rsp),%rax
                         │  │          0x00007f83f3f51590:   mov    %r13,-0x40(%rbp)
                         │  │          0x00007f83f3f51594:   mov    %r15,%rdi
                         │  │          0x00007f83f3f51597:   vzeroupper 
                         │  │          0x00007f83f3f5159a:   mov    %rbp,0x3a8(%r15)
                         │  │          0x00007f83f3f515a1:   mov    %rax,0x398(%r15)
                         │  │          0x00007f83f3f515a8:   test   $0xf,%spl
                         │  │╭         0x00007f83f3f515ac:   je     0x00007f83f3f515c4
                         │  ││         0x00007f83f3f515b2:   sub    $0x8,%rsp
                         │  ││         0x00007f83f3f515b6:   call   0x00007f840aad0790 = InterpreterRuntime::throw_illegal_monitor_state_exception(JavaThread*)
                         │  ││         0x00007f83f3f515bb:   add    $0x8,%rsp
                         │  ││╭        0x00007f83f3f515bf:   jmp    0x00007f83f3f515c9
                         │  │↘│        0x00007f83f3f515c4:   call   0x00007f840aad0790 = InterpreterRuntime::throw_illegal_monitor_state_exception(JavaThread*)
                         │  │ ↘        0x00007f83f3f515c9:   movq   $0x0,0x398(%r15)
                         │  │          0x00007f83f3f515d4:   movq   $0x0,0x3a8(%r15)
                         │  │          0x00007f83f3f515df:   movq   $0x0,0x3a0(%r15)
                         │  │          0x00007f83f3f515ea:   vzeroupper 
                         │  │          0x00007f83f3f515ed:   cmpq   $0x0,0x8(%r15)
                         │  │  ╭       0x00007f83f3f515f2:   je     0x00007f83f3f515fd
                         │  │  │       0x00007f83f3f515f8:   jmp    0x00007f83f3f37c00
                         │  │  ↘       0x00007f83f3f515fd:   mov    -0x40(%rbp),%r13
                         │  │          0x00007f83f3f51601:   mov    -0x38(%rbp),%r14
                         │  │          0x00007f83f3f51605:   lea    0x0(%rbp,%r14,8),%r14
                         │  │          0x00007f83f3f5160a:   ret    
                         │  ↘          0x00007f83f3f5160b:   movabs $0x7f840b238486,%rdi
                         │             0x00007f83f3f51615:   and    $0xfffffffffffffff0,%rsp
                         │             0x00007f83f3f51619:   call   0x00007f840adbb190 = MacroAssembler::debug64(char*, long, long*)
                         │             0x00007f83f3f5161e:   hlt    
   1.48%                 ↘             0x00007f83f3f5161f:   push   %rax
   0.76%                               0x00007f83f3f51620:   mov    %r13,-0x40(%rbp)
   0.24%                               0x00007f83f3f51624:   lea    (%rsi),%rax
                                       0x00007f83f3f51627:   mov    0x8(%rsi),%rcx
   0.56%                               0x00007f83f3f5162b:   movq   $0x0,0x8(%rsi)
   0.90%                               0x00007f83f3f51633:   mov    (%rax),%rdx
   0.01%                               0x00007f83f3f51636:   test   %rdx,%rdx
                                ╭      0x00007f83f3f51639:   je     0x00007f83f3f5164a
                                │      0x00007f83f3f5163f:   lock cmpxchg %rdx,(%rcx)
   2.38%                        │╭     0x00007f83f3f51644:   jne    0x00007f83f3f51656
   0.01%                        ↘│     0x00007f83f3f5164a:   decq   0x550(%r15)
   1.14%                         │╭    0x00007f83f3f51651:   jmp    0x00007f83f3f5167e
                                 ↘│    0x00007f83f3f51656:   mov    %rcx,0x8(%rsi)
                                  │    0x00007f83f3f5165a:   mov    %rsi,%rdi
                                  │    0x00007f83f3f5165d:   test   $0xf,%spl
                                  │╭   0x00007f83f3f51661:   je     0x00007f83f3f51679
                                  ││   0x00007f83f3f51667:   sub    $0x8,%rsp
                                  ││   0x00007f83f3f5166b:   call   0x00007f840aad0700 = InterpreterRuntime::monitorexit(BasicObjectLock*)
                                  ││   0x00007f83f3f51670:   add    $0x8,%rsp
                                  ││╭  0x00007f83f3f51674:   jmp    0x00007f83f3f5167e
                                  │↘│  0x00007f83f3f51679:   call   0x00007f840aad0700 = InterpreterRuntime::monitorexit(BasicObjectLock*)
                                  ↘ ↘  0x00007f83f3f5167e:   mov    -0x40(%rbp),%r13
   0.67%                               0x00007f83f3f51682:   pop    %rax
   0.28%                               0x00007f83f3f51683:   movzbl 0x1(%r13),%ebx
   0.38%                               0x00007f83f3f51688:   inc    %r13
....................................................................................................
  47.14%  <total for region 1>

....[Hottest Region 2]..............................................................................
interpreter, fast_aload_0  220 fast_aload_0  

                     0x00007f83f3f52f24:   vmovss %xmm0,(%rsp)
          ╭          0x00007f83f3f52f29:   jmp    0x00007f83f3f52f4a
          │          0x00007f83f3f52f2b:   sub    $0x10,%rsp
          │          0x00007f83f3f52f2f:   vmovsd %xmm0,(%rsp)
          │╭         0x00007f83f3f52f34:   jmp    0x00007f83f3f52f4a
          ││         0x00007f83f3f52f36:   sub    $0x10,%rsp
          ││         0x00007f83f3f52f3a:   mov    %rax,(%rsp)
          ││         0x00007f83f3f52f3e:   movq   $0x0,0x8(%rsp)
          ││╭        0x00007f83f3f52f47:   jmp    0x00007f83f3f52f4a
          │││        0x00007f83f3f52f49:   push   %rax
   0.11%  ↘↘↘        0x00007f83f3f52f4a:   mov    (%r14),%rax
   0.20%             0x00007f83f3f52f4d:   movzbl 0x1(%r13),%ebx
   0.85%             0x00007f83f3f52f52:   inc    %r13
   0.00%             0x00007f83f3f52f55:   movabs $0x7f840b657220,%r10
   0.00%             0x00007f83f3f52f5f:   jmp    *(%r10,%rbx,8)
                     0x00007f83f3f52f63:   nopl   0x0(%rax,%rax,1)
                   --------------------------------------------------------------------------------
                   ----------------------------------------------------------------------
                   fast_iaccess_0  221 fast_iaccess_0  [0x00007f83f3f52f80, 0x00007f83f3f52fe8]  104 bytes
                   --------------------------------------------------------------------------------
                     0x00007f83f3f52f80:   sub    $0x8,%rsp
                     0x00007f83f3f52f84:   vmovss %xmm0,(%rsp)
             ╭       0x00007f83f3f52f89:   jmp    0x00007f83f3f52faa
             │       0x00007f83f3f52f8b:   sub    $0x10,%rsp
             │       0x00007f83f3f52f8f:   vmovsd %xmm0,(%rsp)
             │╭      0x00007f83f3f52f94:   jmp    0x00007f83f3f52faa
             ││      0x00007f83f3f52f96:   sub    $0x10,%rsp
             ││      0x00007f83f3f52f9a:   mov    %rax,(%rsp)
             ││      0x00007f83f3f52f9e:   movq   $0x0,0x8(%rsp)
             ││╭     0x00007f83f3f52fa7:   jmp    0x00007f83f3f52faa
   0.95%     │││     0x00007f83f3f52fa9:   push   %rax
   0.32%     ↘↘↘     0x00007f83f3f52faa:   mov    (%r14),%rax
   0.01%             0x00007f83f3f52fad:   movzwl 0x2(%r13),%edx
   0.90%             0x00007f83f3f52fb2:   mov    -0x30(%rbp),%rcx
                     0x00007f83f3f52fb6:   shl    $0x2,%edx
   0.26%             0x00007f83f3f52fb9:   mov    0x48(%rcx,%rdx,8),%rbx
   0.05%             0x00007f83f3f52fbe:   inc    %r13
   0.85%             0x00007f83f3f52fc1:   cmp    (%rax),%rax
   6.50%             0x00007f83f3f52fc4:   mov    (%rax,%rbx,1),%eax
   0.21%             0x00007f83f3f52fc7:   dec    %r13
   0.00%             0x00007f83f3f52fca:   movzbl 0x4(%r13),%ebx
                     0x00007f83f3f52fcf:   add    $0x4,%r13
   1.01%             0x00007f83f3f52fd3:   movabs $0x7f840b655220,%r10
   0.12%             0x00007f83f3f52fdd:   jmp    *(%r10,%rbx,8)
                     0x00007f83f3f52fe1:   nopl   0x0(%rax)
                   --------------------------------------------------------------------------------
                   ----------------------------------------------------------------------
                   fast_aaccess_0  222 fast_aaccess_0  [0x00007f83f3f53000, 0x00007f83f3f53068]  104 bytes
                   --------------------------------------------------------------------------------
                     0x00007f83f3f53000:   sub    $0x8,%rsp
                     0x00007f83f3f53004:   vmovss %xmm0,(%rsp)
                ╭    0x00007f83f3f53009:   jmp    0x00007f83f3f5302a
                │    0x00007f83f3f5300b:   sub    $0x10,%rsp
                │    0x00007f83f3f5300f:   vmovsd %xmm0,(%rsp)
                │╭   0x00007f83f3f53014:   jmp    0x00007f83f3f5302a
                ││   0x00007f83f3f53016:   sub    $0x10,%rsp
                ││   0x00007f83f3f5301a:   mov    %rax,(%rsp)
                ││   0x00007f83f3f5301e:   movq   $0x0,0x8(%rsp)
                ││╭  0x00007f83f3f53027:   jmp    0x00007f83f3f5302a
                │││  0x00007f83f3f53029:   push   %rax
....................................................................................................
  12.35%  <total for region 2>

....[Hottest Regions]...............................................................................
  47.14%           interpreter  monitorenter  194 monitorenter  
  12.35%           interpreter  fast_aload_0  220 fast_aload_0  
   7.76%           interpreter  goto  167 goto  
   4.90%           interpreter  astore  58 astore  
   4.68%           interpreter  aload  25 aload  
   4.47%           interpreter  method entry point (kind = zerolocals)  
   4.42%           interpreter  dup  89 dup  
   2.94%         perf-6990.map  [unknown] 
   2.43%           interpreter  ireturn  172 ireturn  
   1.94%           interpreter  aload_2  44 aload_2  
   0.90%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 658 
   0.65%                kernel  [unknown] 
   0.60%                kernel  [unknown] 
   0.46%           interpreter  astore_2  77 astore_2  
   0.43%           interpreter  ishl  120 ishl  
   0.30%                kernel  [unknown] 
   0.17%           interpreter  iconst_1  4 iconst_1  
   0.16%                kernel  [unknown] 
   0.12%             libjvm.so  CallPredicate::apply 
   0.09%             libjvm.so  CompilationPolicy::create_mdo 
   3.09%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  47.14%           interpreter  monitorenter  194 monitorenter  
  12.35%           interpreter  fast_aload_0  220 fast_aload_0  
   7.76%           interpreter  goto  167 goto  
   4.90%           interpreter  astore  58 astore  
   4.68%           interpreter  aload  25 aload  
   4.47%           interpreter  method entry point (kind = zerolocals)  
   4.42%           interpreter  dup  89 dup  
   3.47%                kernel  [unknown] 
   2.94%         perf-6990.map  [unknown] 
   2.43%           interpreter  ireturn  172 ireturn  
   1.94%           interpreter  aload_2  44 aload_2  
   0.90%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 658 
   0.46%           interpreter  astore_2  77 astore_2  
   0.43%           interpreter  ishl  120 ishl  
   0.17%           interpreter  iconst_1  4 iconst_1  
   0.12%             libjvm.so  CallPredicate::apply 
   0.09%             libjvm.so  CompilationPolicy::create_mdo 
   0.09%             libjvm.so  InterpreterRuntime::frequency_counter_overflow_inner 
   0.08%             libjvm.so  LoopPredicate::apply 
   0.07%             libjvm.so  MethodData::bci_to_dp 
   1.09%  <...other 131 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.17%           interpreter
   3.47%                kernel
   2.94%         perf-6990.map
   1.31%             libjvm.so
   0.90%           c2, level 4
   0.14%             libc.so.6
   0.03%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.01%                      
   0.01%           c1, level 3
   0.00%                [vdso]
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:02:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 189.432 ns/op
# Warmup Iteration   2: 185.284 ns/op
# Warmup Iteration   3: 186.625 ns/op
# Warmup Iteration   4: 185.676 ns/op
# Warmup Iteration   5: 185.319 ns/op
Iteration   1: 184.874 ns/op
Iteration   2: 186.040 ns/op
Iteration   3: 185.194 ns/op
Iteration   4: 185.328 ns/op
Iteration   5: 187.218 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls":
  185.731 ±(99.9%) 3.598 ns/op [Average]
  (min, avg, max) = (184.874, 185.731, 187.218), stdev = 0.934
  CI (99.9%): [182.133, 189.329] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 125017 total address lines.
Perf output processed (skipped 66.335 seconds):
 Column 1: cycles (51113 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 650 

                                                # parm1:    rcx       = int
                                                #           [sp+0x50]  (sp of caller)
                                                0x00007f4b8c4f70a0:   mov    0x8(%rsi),%r10d
                                                0x00007f4b8c4f70a4:   movabs $0x7f4b03000000,%r11
                                                0x00007f4b8c4f70ae:   add    %r11,%r10
                                                0x00007f4b8c4f70b1:   cmp    %r10,%rax
                                                0x00007f4b8c4f70b4:   jne    0x00007f4b8bf85080           ;   {runtime_call ic_miss_stub}
                                                0x00007f4b8c4f70ba:   xchg   %ax,%ax
                                                0x00007f4b8c4f70bc:   nopl   0x0(%rax)
                                              [Verified Entry Point]
   1.25%           ↗                            0x00007f4b8c4f70c0:   mov    %eax,-0x14000(%rsp)
   0.49%           │                            0x00007f4b8c4f70c7:   push   %rbp
   1.25%           │                            0x00007f4b8c4f70c8:   sub    $0x40,%rsp
   0.07%           │                            0x00007f4b8c4f70cc:   cmpl   $0x1,0x20(%r15)
   0.44%           │                            0x00007f4b8c4f70d4:   jne    0x00007f4b8c4f7438
   1.31%           │                            0x00007f4b8c4f70da:   mov    %ecx,%ebp
   0.00%           │                            0x00007f4b8c4f70dc:   mov    %edx,0x8(%rsp)
   0.05%           │                            0x00007f4b8c4f70e0:   mov    %rsi,(%rsp)
   0.46%           │                            0x00007f4b8c4f70e4:   lea    0x20(%rsp),%rbx
   1.12%           │                            0x00007f4b8c4f70e9:   mov    (%rsi),%rax
   6.79%           │                            0x00007f4b8c4f70ec:   test   $0x2,%al
          ╭        │                            0x00007f4b8c4f70ee:   jne    0x00007f4b8c4f7117
   1.78%  │        │                            0x00007f4b8c4f70f4:   or     $0x1,%rax
   0.01%  │        │                            0x00007f4b8c4f70f8:   mov    %rax,(%rbx)
   3.54%  │        │                            0x00007f4b8c4f70fb:   lock cmpxchg %rbx,(%rsi)
  32.00%  │╭       │                            0x00007f4b8c4f7100:   je     0x00007f4b8c4f713d
   0.02%  ││       │                            0x00007f4b8c4f7106:   sub    %rsp,%rax
   1.74%  ││       │                            0x00007f4b8c4f7109:   and    $0xfffffffffffff007,%rax
          ││       │                            0x00007f4b8c4f710f:   mov    %rax,(%rbx)
   1.77%  ││╭      │                            0x00007f4b8c4f7112:   jmp    0x00007f4b8c4f713b
          ↘││      │                            0x00007f4b8c4f7117:   mov    %rax,%r10
           ││      │                            0x00007f4b8c4f711a:   xor    %rax,%rax
           ││      │                            0x00007f4b8c4f711d:   lock cmpxchg %r15,0x3e(%r10)
           ││      │                            0x00007f4b8c4f7123:   movq   $0x3,(%rbx)
           ││╭     │                            0x00007f4b8c4f712a:   je     0x00007f4b8c4f713d
           │││     │                            0x00007f4b8c4f712c:   cmp    %rax,%r15
           │││╭    │                            0x00007f4b8c4f712f:   jne    0x00007f4b8c4f7146
           ││││    │                            0x00007f4b8c4f7131:   incq   0x86(%r10)
           ││││    │                            0x00007f4b8c4f7138:   xor    %rax,%rax
   0.00%   │↘││╭   │                            0x00007f4b8c4f713b:   jne    0x00007f4b8c4f7146
   0.08%   ↘ ↘││   │                            0x00007f4b8c4f713d:   incq   0x550(%r15)
   1.74%      ││   │                            0x00007f4b8c4f7144:   xor    %eax,%eax
   0.05%      ↘↘╭  │                            0x00007f4b8c4f7146:   jne    0x00007f4b8c4f72f8           ;*synchronization entry
                │  │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
   0.00%        │  │                            0x00007f4b8c4f714c:   mov    %ebp,%ecx
   1.65%        │  │                            0x00007f4b8c4f714e:   test   %ecx,%ecx
                │╭ │                            0x00007f4b8c4f7150:   je     0x00007f4b8c4f7249           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                ││ │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
   0.00%        ││ │                            0x00007f4b8c4f7156:   mov    (%rsp),%r10
   0.07%        ││ │                            0x00007f4b8c4f715a:   mov    0x14(%r10),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                ││ │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
                ││ │                            0x00007f4b8c4f715e:   xchg   %ax,%ax
   1.26%        ││ │                            0x00007f4b8c4f7160:   cmp    $0x1,%ecx
                ││╭│                            0x00007f4b8c4f7163:   je     0x00007f4b8c4f72ef           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
                ││││                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                ││││                            0x00007f4b8c4f7169:   mov    %ebp,0x10(%rsp)
   0.08%        ││││                            0x00007f4b8c4f716d:   add    $0xfffffffe,%ecx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                ││││                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@14 (line 232)
                ││││                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                ││││                            0x00007f4b8c4f7170:   lea    0x28(%rsp),%rbp              ;*synchronization entry
                ││││                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
                ││││                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   1.28%        ││││                            0x00007f4b8c4f7175:   mov    %r10,%rsi
                ││││                            0x00007f4b8c4f7178:   mov    0x8(%rsp),%edx
   0.09%        ││││                            0x00007f4b8c4f717c:   data16 xchg %ax,%ax
                │││╰                            0x00007f4b8c4f717f:   call   0x00007f4b8c4f70c0           ; ImmutableOopMap {[0]=Oop }
                │││                                                                                       ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                │││                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                │││                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                │││                                                                                       ;   {optimized virtual_call}
   0.43%        │││                             0x00007f4b8c4f7184:   nopl   0x274(%rax,%rax,1)           ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                │││                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                │││                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                │││                                                                                       ;   {other}
   0.44%        │││                             0x00007f4b8c4f718c:   mov    %eax,%ebx
                │││                             0x00007f4b8c4f718e:   add    0x10(%rsp),%ebx              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                │││                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
                │││                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.89%        │││                             0x00007f4b8c4f7192:   mov    0x10(%rsp),%ebp              ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │││                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@19 (line 232)
   0.43%        │││                          ↗  0x00007f4b8c4f7196:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │││                          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
   0.00%        │││                          │  0x00007f4b8c4f719b:   mov    (%rsp),%r11
   0.40%        │││                          │  0x00007f4b8c4f719f:   cmpq   $0x0,(%rax)
   0.44%        │││ ╭                        │  0x00007f4b8c4f71a3:   je     0x00007f4b8c4f7222
                │││ │                        │  0x00007f4b8c4f71a9:   mov    (%r11),%r10
                │││ │                        │  0x00007f4b8c4f71ac:   test   $0x2,%r10b
                │││ │╭                       │  0x00007f4b8c4f71b0:   je     0x00007f4b8c4f7218
                │││ ││                       │  0x00007f4b8c4f71b6:   cmpq   $0x0,0x86(%r10)
                │││ ││╭                      │  0x00007f4b8c4f71be:   je     0x00007f4b8c4f71c9
                │││ │││                      │  0x00007f4b8c4f71c0:   decq   0x86(%r10)
                │││ │││╭                     │  0x00007f4b8c4f71c7:   jmp    0x00007f4b8c4f7214
                │││ ││↘│                     │  0x00007f4b8c4f71c9:   mov    0x96(%r10),%rax
                │││ ││ │                     │  0x00007f4b8c4f71d0:   or     0x8e(%r10),%rax
                │││ ││ │╭                    │  0x00007f4b8c4f71d7:   jne    0x00007f4b8c4f71e3
                │││ ││ ││                    │  0x00007f4b8c4f71d9:   movq   $0x0,0x3e(%r10)
                │││ ││ ││╭                   │  0x00007f4b8c4f71e1:   jmp    0x00007f4b8c4f7220
                │││ ││ │↘│                   │  0x00007f4b8c4f71e3:   cmpq   $0x0,0x9e(%r10)
                │││ ││ │ │╭                  │  0x00007f4b8c4f71eb:   je     0x00007f4b8c4f720f
                │││ ││ │ ││                  │  0x00007f4b8c4f71ed:   xor    %rax,%rax
                │││ ││ │ ││                  │  0x00007f4b8c4f71f0:   movq   $0x0,0x3e(%r10)
                │││ ││ │ ││                  │  0x00007f4b8c4f71f8:   lock addl $0x0,(%rsp)
                │││ ││ │ ││                  │  0x00007f4b8c4f71fd:   cmpq   $0x0,0x9e(%r10)
                │││ ││ │ ││╭                 │  0x00007f4b8c4f7205:   jne    0x00007f4b8c4f7214
                │││ ││ │ │││                 │  0x00007f4b8c4f7207:   lock cmpxchg %r15,0x3e(%r10)
                │││ ││ │ │││╭                │  0x00007f4b8c4f720d:   jne    0x00007f4b8c4f7214
                │││ ││ │ │↘││                │  0x00007f4b8c4f720f:   or     $0x1,%eax
                │││ ││ │ │ ││╭               │  0x00007f4b8c4f7212:   jmp    0x00007f4b8c4f7220
                │││ ││ ↘ │ ↘↘│               │  0x00007f4b8c4f7214:   test   $0x0,%al
                │││ ││   │   │╭              │  0x00007f4b8c4f7216:   jmp    0x00007f4b8c4f7220
                │││ │↘   │   ││              │  0x00007f4b8c4f7218:   mov    (%rax),%r10
                │││ │    │   ││              │  0x00007f4b8c4f721b:   lock cmpxchg %r10,(%r11)
                │││ │    ↘   ↘↘╭             │  0x00007f4b8c4f7220:   jne    0x00007f4b8c4f722c
   0.45%        │││ ↘          │             │  0x00007f4b8c4f7222:   decq   0x550(%r15)
   0.94%        │││            │             │  0x00007f4b8c4f7229:   xor    %r10d,%r10d
   0.44%        │││            ↘             │  0x00007f4b8c4f722c:   jne    0x00007f4b8c4f7311           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │││                          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@19 (line 232)
                │││                          │  0x00007f4b8c4f7232:   add    %ebp,%ebx                    ;*synchronization entry
                │││                          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
   0.39%        │││                         ↗│  0x00007f4b8c4f7234:   mov    %ebx,%eax
   0.46%        │││                         ││  0x00007f4b8c4f7236:   add    $0x40,%rsp
   0.41%        │││                         ││  0x00007f4b8c4f723a:   pop    %rbp
   0.44%        │││                         ││  0x00007f4b8c4f723b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                │││                         ││  0x00007f4b8c4f7242:   ja     0x00007f4b8c4f7422
   0.90%        │││                         ││  0x00007f4b8c4f7248:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │││                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@5 (line 230)
                │↘│                         ││  0x00007f4b8c4f7249:   lea    0x20(%rsp),%rax              ;*synchronization entry
                │ │                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
   0.00%        │ │                         ││  0x00007f4b8c4f724e:   mov    (%rsp),%r11
                │ │                         ││  0x00007f4b8c4f7252:   cmpq   $0x0,(%rax)
   0.40%        │ │             ╭           ││  0x00007f4b8c4f7256:   je     0x00007f4b8c4f72d5
                │ │             │           ││  0x00007f4b8c4f725c:   mov    (%r11),%r10
                │ │             │           ││  0x00007f4b8c4f725f:   test   $0x2,%r10b
                │ │             │╭          ││  0x00007f4b8c4f7263:   je     0x00007f4b8c4f72cb
                │ │             ││          ││  0x00007f4b8c4f7269:   cmpq   $0x0,0x86(%r10)
                │ │             ││╭         ││  0x00007f4b8c4f7271:   je     0x00007f4b8c4f727c
                │ │             │││         ││  0x00007f4b8c4f7273:   decq   0x86(%r10)
                │ │             │││╭        ││  0x00007f4b8c4f727a:   jmp    0x00007f4b8c4f72c7
                │ │             ││↘│        ││  0x00007f4b8c4f727c:   mov    0x96(%r10),%rax
                │ │             ││ │        ││  0x00007f4b8c4f7283:   or     0x8e(%r10),%rax
                │ │             ││ │╭       ││  0x00007f4b8c4f728a:   jne    0x00007f4b8c4f7296
                │ │             ││ ││       ││  0x00007f4b8c4f728c:   movq   $0x0,0x3e(%r10)
                │ │             ││ ││╭      ││  0x00007f4b8c4f7294:   jmp    0x00007f4b8c4f72d3
                │ │             ││ │↘│      ││  0x00007f4b8c4f7296:   cmpq   $0x0,0x9e(%r10)
                │ │             ││ │ │╭     ││  0x00007f4b8c4f729e:   je     0x00007f4b8c4f72c2
                │ │             ││ │ ││     ││  0x00007f4b8c4f72a0:   xor    %rax,%rax
                │ │             ││ │ ││     ││  0x00007f4b8c4f72a3:   movq   $0x0,0x3e(%r10)
                │ │             ││ │ ││     ││  0x00007f4b8c4f72ab:   lock addl $0x0,(%rsp)
                │ │             ││ │ ││     ││  0x00007f4b8c4f72b0:   cmpq   $0x0,0x9e(%r10)
                │ │             ││ │ ││╭    ││  0x00007f4b8c4f72b8:   jne    0x00007f4b8c4f72c7
                │ │             ││ │ │││    ││  0x00007f4b8c4f72ba:   lock cmpxchg %r15,0x3e(%r10)
                │ │             ││ │ │││╭   ││  0x00007f4b8c4f72c0:   jne    0x00007f4b8c4f72c7
                │ │             ││ │ │↘││   ││  0x00007f4b8c4f72c2:   or     $0x1,%eax
                │ │             ││ │ │ ││╭  ││  0x00007f4b8c4f72c5:   jmp    0x00007f4b8c4f72d3
                │ │             ││ ↘ │ ↘↘│  ││  0x00007f4b8c4f72c7:   test   $0x0,%al
                │ │             ││   │   │╭ ││  0x00007f4b8c4f72c9:   jmp    0x00007f4b8c4f72d3
                │ │             │↘   │   ││ ││  0x00007f4b8c4f72cb:   mov    (%rax),%r10
                │ │             │    │   ││ ││  0x00007f4b8c4f72ce:   lock cmpxchg %r10,(%r11)
                │ │             │    ↘   ↘↘╭││  0x00007f4b8c4f72d3:   jne    0x00007f4b8c4f72df
   0.00%        │ │             ↘          │││  0x00007f4b8c4f72d5:   decq   0x550(%r15)
   0.46%        │ │                        │││  0x00007f4b8c4f72dc:   xor    %r10d,%r10d
                │ │                        ↘││  0x00007f4b8c4f72df:   nop
   0.00%        │ │                         ││  0x00007f4b8c4f72e0:   jne    0x00007f4b8c4f7336           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │ │                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@5 (line 230)
                │ │                         ││  0x00007f4b8c4f72e6:   mov    0x8(%rsp),%ebx
   0.43%        │ │                         ╰│  0x00007f4b8c4f72ea:   jmp    0x00007f4b8c4f7234
                │ ↘                          │  0x00007f4b8c4f72ef:   mov    0x8(%rsp),%ebx
                │                            ╰  0x00007f4b8c4f72f3:   jmp    0x00007f4b8c4f7196
                ↘                               0x00007f4b8c4f72f8:   lea    0x20(%rsp),%rdx
                                                0x00007f4b8c4f72fd:   xchg   %ax,%ax
                                                0x00007f4b8c4f72ff:   call   0x00007f4b8c060c80           ; ImmutableOopMap {[0]=Oop }
                                                                                                          ;*synchronization entry
                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
                                                                                                          ;   {runtime_call _complete_monitor_locking_Java}
                                                0x00007f4b8c4f7304:   nopl   0x10003f4(%rax,%rax,1)       ;   {other}
                                                0x00007f4b8c4f730c:   jmp    0x00007f4b8c4f714c
....................................................................................................
  69.18%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 651 

                               # {method} {0x00007f4aff477688} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
                               #           [sp+0x40]  (sp of caller)
                               0x00007f4b8c4f78a0:   mov    0x8(%rsi),%r10d
                               0x00007f4b8c4f78a4:   movabs $0x7f4b03000000,%r11
                               0x00007f4b8c4f78ae:   add    %r11,%r10
                               0x00007f4b8c4f78b1:   cmp    %r10,%rax
                               0x00007f4b8c4f78b4:   jne    0x00007f4b8bf85080           ;   {runtime_call ic_miss_stub}
                               0x00007f4b8c4f78ba:   xchg   %ax,%ax
                               0x00007f4b8c4f78bc:   nopl   0x0(%rax)
                             [Verified Entry Point]
   0.41%                       0x00007f4b8c4f78c0:   mov    %eax,-0x14000(%rsp)
   0.00%                       0x00007f4b8c4f78c7:   push   %rbp
                               0x00007f4b8c4f78c8:   sub    $0x30,%rsp
   0.48%                       0x00007f4b8c4f78cc:   cmpl   $0x1,0x20(%r15)
                               0x00007f4b8c4f78d4:   jne    0x00007f4b8c4f7b4f           ;*synchronization entry
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@-1 (line 115)
                               0x00007f4b8c4f78da:   mov    %rsi,0x8(%rsp)
   0.45%                       0x00007f4b8c4f78df:   mov    0x10(%rsi),%r9d
                               0x00007f4b8c4f78e3:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@5 (line 115)
                               0x00007f4b8c4f78e6:   lea    0x10(%rsp),%rbx
                               0x00007f4b8c4f78eb:   mov    (%rsi),%rax
   1.74%                       0x00007f4b8c4f78ee:   test   $0x2,%al
          ╭                    0x00007f4b8c4f78f0:   jne    0x00007f4b8c4f7919
   0.46%  │                    0x00007f4b8c4f78f6:   or     $0x1,%rax
          │                    0x00007f4b8c4f78fa:   mov    %rax,(%rbx)
   0.89%  │                    0x00007f4b8c4f78fd:   lock cmpxchg %rbx,(%rsi)
   7.94%  │╭                   0x00007f4b8c4f7902:   je     0x00007f4b8c4f793f
          ││                   0x00007f4b8c4f7908:   sub    %rsp,%rax
          ││                   0x00007f4b8c4f790b:   and    $0xfffffffffffff007,%rax
          ││                   0x00007f4b8c4f7911:   mov    %rax,(%rbx)
          ││╭                  0x00007f4b8c4f7914:   jmp    0x00007f4b8c4f793d
          ↘││                  0x00007f4b8c4f7919:   mov    %rax,%r10
           ││                  0x00007f4b8c4f791c:   xor    %rax,%rax
           ││                  0x00007f4b8c4f791f:   lock cmpxchg %r15,0x3e(%r10)
           ││                  0x00007f4b8c4f7925:   movq   $0x3,(%rbx)
           ││╭                 0x00007f4b8c4f792c:   je     0x00007f4b8c4f793f
           │││                 0x00007f4b8c4f792e:   cmp    %rax,%r15
           │││╭                0x00007f4b8c4f7931:   jne    0x00007f4b8c4f7948
           ││││                0x00007f4b8c4f7933:   incq   0x86(%r10)
           ││││                0x00007f4b8c4f793a:   xor    %rax,%rax
           │↘││╭               0x00007f4b8c4f793d:   jne    0x00007f4b8c4f7948
   0.00%   ↘ ↘││               0x00007f4b8c4f793f:   incq   0x550(%r15)
   0.47%      ││               0x00007f4b8c4f7946:   xor    %eax,%eax
              ↘↘╭              0x00007f4b8c4f7948:   jne    0x00007f4b8c4f7a2e
   0.40%        │              0x00007f4b8c4f794e:   mov    %r9d,0x4(%rsp)               ;*synchronization entry
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
                │              0x00007f4b8c4f7953:   mov    0x8(%rsp),%r10
                │              0x00007f4b8c4f7958:   mov    0x14(%r10),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
                │              0x00007f4b8c4f795c:   mov    $0x6,%ecx
   0.44%        │              0x00007f4b8c4f7961:   mov    %r10,%rsi
                │              0x00007f4b8c4f7964:   mov    0x4(%rsp),%edx
                │              0x00007f4b8c4f7968:   mov    %rsi,(%rsp)
                │              0x00007f4b8c4f796c:   data16 xchg %ax,%ax
   0.47%        │              0x00007f4b8c4f796f:   call   0x00007f4b8c4f70c0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
                │                                                                        ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
                │                                                                        ;   {optimized virtual_call}
   0.00%        │              0x00007f4b8c4f7974:   nopl   0x264(%rax,%rax,1)           ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
                │                                                                        ;   {other}
                │              0x00007f4b8c4f797c:   mov    %eax,%ebx                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@19 (line 232)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   0.46%        │              0x00007f4b8c4f797e:   lea    0x10(%rsp),%rax              ;*synchronization entry
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   0.01%        │              0x00007f4b8c4f7983:   mov    (%rsp),%r11
   0.01%        │              0x00007f4b8c4f7987:   cmpq   $0x0,(%rax)
   0.50%        │╭             0x00007f4b8c4f798b:   je     0x00007f4b8c4f7a0a
   0.00%        ││             0x00007f4b8c4f7991:   mov    (%r11),%r10
   0.01%        ││             0x00007f4b8c4f7994:   test   $0x2,%r10b
                ││╭            0x00007f4b8c4f7998:   je     0x00007f4b8c4f7a00
                │││            0x00007f4b8c4f799e:   cmpq   $0x0,0x86(%r10)
                │││╭           0x00007f4b8c4f79a6:   je     0x00007f4b8c4f79b1
                ││││           0x00007f4b8c4f79a8:   decq   0x86(%r10)
                ││││╭          0x00007f4b8c4f79af:   jmp    0x00007f4b8c4f79fc
                │││↘│          0x00007f4b8c4f79b1:   mov    0x96(%r10),%rax
                │││ │          0x00007f4b8c4f79b8:   or     0x8e(%r10),%rax
                │││ │╭         0x00007f4b8c4f79bf:   jne    0x00007f4b8c4f79cb
                │││ ││         0x00007f4b8c4f79c1:   movq   $0x0,0x3e(%r10)
                │││ ││╭        0x00007f4b8c4f79c9:   jmp    0x00007f4b8c4f7a08
                │││ │↘│        0x00007f4b8c4f79cb:   cmpq   $0x0,0x9e(%r10)
                │││ │ │╭       0x00007f4b8c4f79d3:   je     0x00007f4b8c4f79f7
                │││ │ ││       0x00007f4b8c4f79d5:   xor    %rax,%rax
                │││ │ ││       0x00007f4b8c4f79d8:   movq   $0x0,0x3e(%r10)
                │││ │ ││       0x00007f4b8c4f79e0:   lock addl $0x0,(%rsp)
                │││ │ ││       0x00007f4b8c4f79e5:   cmpq   $0x0,0x9e(%r10)
                │││ │ ││╭      0x00007f4b8c4f79ed:   jne    0x00007f4b8c4f79fc
                │││ │ │││      0x00007f4b8c4f79ef:   lock cmpxchg %r15,0x3e(%r10)
                │││ │ │││╭     0x00007f4b8c4f79f5:   jne    0x00007f4b8c4f79fc
                │││ │ │↘││     0x00007f4b8c4f79f7:   or     $0x1,%eax
                │││ │ │ ││╭    0x00007f4b8c4f79fa:   jmp    0x00007f4b8c4f7a08
                │││ ↘ │ ↘↘│    0x00007f4b8c4f79fc:   test   $0x0,%al
                │││   │   │╭   0x00007f4b8c4f79fe:   jmp    0x00007f4b8c4f7a08
   0.01%        ││↘   │   ││   0x00007f4b8c4f7a00:   mov    (%rax),%r10
   0.46%        ││    │   ││   0x00007f4b8c4f7a03:   lock cmpxchg %r10,(%r11)
   8.96%        ││    ↘   ↘↘╭  0x00007f4b8c4f7a08:   jne    0x00007f4b8c4f7a14
   0.00%        │↘          │  0x00007f4b8c4f7a0a:   decq   0x550(%r15)
   0.44%        │           │  0x00007f4b8c4f7a11:   xor    %r10d,%r10d
                │           ↘  0x00007f4b8c4f7a14:   jne    0x00007f4b8c4f7a4d           ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   0.40%        │              0x00007f4b8c4f7a16:   lea    (%rbx,%rbp,1),%eax
                │              0x00007f4b8c4f7a19:   add    %ebp,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
                │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
                │              0x00007f4b8c4f7a1b:   add    $0x30,%rsp
                │              0x00007f4b8c4f7a1f:   pop    %rbp
   0.46%        │              0x00007f4b8c4f7a20:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                │              0x00007f4b8c4f7a27:   ja     0x00007f4b8c4f7b39
   0.00%        │              0x00007f4b8c4f7a2d:   ret    
                ↘              0x00007f4b8c4f7a2e:   lea    0x10(%rsp),%rdx
                               0x00007f4b8c4f7a33:   mov    %rsi,%rbp
                               0x00007f4b8c4f7a36:   mov    %r9d,0x4(%rsp)
                               0x00007f4b8c4f7a3b:   call   0x00007f4b8c060c80           ; ImmutableOopMap {rbp=Oop [8]=Oop }
                                                                                         ;*synchronization entry
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
                                                                                         ;   {runtime_call _complete_monitor_locking_Java}
                               0x00007f4b8c4f7a40:   nopl   0x1000330(%rax,%rax,1)       ;   {other}
                               0x00007f4b8c4f7a48:   jmp    0x00007f4b8c4f7953
....................................................................................................
  25.89%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.18%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 650 
  25.89%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 651 
   1.20%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 684 
   0.64%                kernel  [unknown] 
   0.36%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%             libjvm.so  fileStream::flush 
   0.04%             libjvm.so  defaultStream::hold 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.48%  <...other 252 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  69.18%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 650 
  25.89%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 651 
   3.07%                kernel  [unknown] 
   1.20%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 684 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.05%             libjvm.so  fileStream::flush 
   0.04%             libjvm.so  defaultStream::hold 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%             libc.so.6  syscall 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  _IO_fflush 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  _IO_str_init_static_internal 
   0.01%             libc.so.6  __stpcpy_avx2 
   0.28%  <...other 104 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.26%           c2, level 4
   3.07%                kernel
   0.36%             libjvm.so
   0.22%             libc.so.6
   0.04%        hsdis-amd64.so
   0.03%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%                [vdso]
   0.00%          libjimage.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:12:16

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

Benchmark                                                    Mode  Cnt    Score     Error  Units
LockCoarseningBenchmark.baseline                             avgt    5   60.077 ±   1.243  ns/op
LockCoarseningBenchmark.baseline:asm                         avgt           NaN              ---
LockCoarseningBenchmark.chain_method_calls                   avgt    5   60.020 ±   0.809  ns/op
LockCoarseningBenchmark.chain_method_calls:asm               avgt           NaN              ---
LockCoarseningBenchmark.conditional_chain_method_calls       avgt    5  490.777 ± 145.309  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:asm   avgt           NaN              ---
LockCoarseningBenchmark.conditional_nested_method_calls      avgt    5  464.953 ±   7.708  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:asm  avgt           NaN              ---
LockCoarseningBenchmark.nested_synchronized                  avgt    5  691.126 ± 318.550  ns/op
LockCoarseningBenchmark.nested_synchronized:asm              avgt           NaN              ---
LockCoarseningBenchmark.recursive_method_calls               avgt    5  185.731 ±   3.598  ns/op
LockCoarseningBenchmark.recursive_method_calls:asm           avgt           NaN              ---
