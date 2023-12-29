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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1122.591 us/op
# Warmup Iteration   2: 1121.191 us/op
# Warmup Iteration   3: 1110.744 us/op
# Warmup Iteration   4: 1114.919 us/op
# Warmup Iteration   5: 1126.726 us/op
Iteration   1: 1121.490 us/op
Iteration   2: 1117.457 us/op
Iteration   3: 1119.060 us/op
Iteration   4: 1110.654 us/op
Iteration   5: 1113.746 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop":
  1116.482 ±(99.9%) 16.576 us/op [Average]
  (min, avg, max) = (1110.654, 1116.482, 1121.490), stdev = 4.305
  CI (99.9%): [1099.905, 1133.058] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop:asm":
PrintAssembly processed: 126887 total address lines.
Perf output processed (skipped 67.827 seconds):
 Column 1: cycles (50901 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 685 

                0x00007fecc84f8cc4:   jle    0x00007fecc84f8ddb
                0x00007fecc84f8cca:   xor    %r9d,%r9d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@53 (line 88)
                0x00007fecc84f8ccd:   mov    $0x1f40,%r8d
           ↗    0x00007fecc84f8cd3:   mov    %r10d,%ebp
           │    0x00007fecc84f8cd6:   sub    %r11d,%ebp
           │    0x00007fecc84f8cd9:   cmp    %r11d,%r10d
           │    0x00007fecc84f8cdc:   cmovl  %r9d,%ebp
           │    0x00007fecc84f8ce0:   cmp    $0x1f40,%ebp
           │    0x00007fecc84f8ce6:   cmova  %r8d,%ebp
   0.00%   │    0x00007fecc84f8cea:   add    %r11d,%ebp
           │    0x00007fecc84f8ced:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@10 (line 89)
   0.00%  ↗│    0x00007fecc84f8cf0:   mov    0x10(%rsi,%r11,4),%ebx
   2.31%  ││    0x00007fecc84f8cf5:   add    0xc(%rdx,%r11,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   2.16%  ││    0x00007fecc84f8cfa:   mov    %ebx,0x10(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   5.01%  ││    0x00007fecc84f8cff:   add    0x10(%rsi,%r11,4),%ebx
   0.01%  ││    0x00007fecc84f8d04:   mov    %ebx,0x10(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.38%  ││    0x00007fecc84f8d09:   mov    0x14(%rsi,%r11,4),%ecx
   0.00%  ││    0x00007fecc84f8d0e:   add    0x10(%rdx,%r11,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.61%  ││    0x00007fecc84f8d13:   mov    %ecx,0x14(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   5.01%  ││    0x00007fecc84f8d18:   add    0x14(%rsi,%r11,4),%ecx
   0.02%  ││    0x00007fecc84f8d1d:   mov    %ecx,0x14(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.41%  ││    0x00007fecc84f8d22:   mov    0x18(%rsi,%r11,4),%ecx
   0.02%  ││    0x00007fecc84f8d27:   add    0x14(%rdx,%r11,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.74%  ││    0x00007fecc84f8d2c:   mov    %ecx,0x18(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   4.96%  ││    0x00007fecc84f8d31:   add    0x18(%rsi,%r11,4),%ecx
   0.02%  ││    0x00007fecc84f8d36:   mov    %ecx,0x18(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.50%  ││    0x00007fecc84f8d3b:   mov    0x1c(%rsi,%r11,4),%ecx
   0.00%  ││    0x00007fecc84f8d40:   add    0x18(%rdx,%r11,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.41%  ││    0x00007fecc84f8d45:   mov    %ecx,0x1c(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   4.99%  ││    0x00007fecc84f8d4a:   add    0x1c(%rsi,%r11,4),%ecx
   0.03%  ││    0x00007fecc84f8d4f:   mov    %ecx,0x1c(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.49%  ││    0x00007fecc84f8d54:   mov    0x20(%rsi,%r11,4),%ebx
   0.00%  ││    0x00007fecc84f8d59:   add    0x1c(%rdx,%r11,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.23%  ││    0x00007fecc84f8d5e:   mov    %ebx,0x20(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   5.14%  ││    0x00007fecc84f8d63:   add    0x20(%rsi,%r11,4),%ebx
   0.03%  ││    0x00007fecc84f8d68:   mov    %ebx,0x20(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.45%  ││    0x00007fecc84f8d6d:   mov    0x24(%rsi,%r11,4),%ecx
   0.00%  ││    0x00007fecc84f8d72:   add    0x20(%rdx,%r11,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.75%  ││    0x00007fecc84f8d77:   mov    %ecx,0x24(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   4.90%  ││    0x00007fecc84f8d7c:   add    0x24(%rsi,%r11,4),%ecx
   0.02%  ││    0x00007fecc84f8d81:   mov    %ecx,0x24(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.37%  ││    0x00007fecc84f8d86:   mov    0x28(%rsi,%r11,4),%ebx
   0.00%  ││    0x00007fecc84f8d8b:   add    0x24(%rdx,%r11,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.33%  ││    0x00007fecc84f8d90:   mov    %ebx,0x28(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   5.04%  ││    0x00007fecc84f8d95:   add    0x28(%rsi,%r11,4),%ebx
   0.01%  ││    0x00007fecc84f8d9a:   mov    %ebx,0x28(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.39%  ││    0x00007fecc84f8d9f:   mov    0x2c(%rsi,%r11,4),%ecx
   0.00%  ││    0x00007fecc84f8da4:   add    0x28(%rdx,%r11,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.40%  ││    0x00007fecc84f8da9:   mov    %ecx,0x2c(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   5.01%  ││    0x00007fecc84f8dae:   add    0x2c(%rsi,%r11,4),%ecx       ;   {no_reloc}
   0.01%  ││    0x00007fecc84f8db3:   mov    %ecx,0x2c(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.49%  ││    0x00007fecc84f8db8:   add    $0x8,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@50 (line 88)
   0.01%  ││    0x00007fecc84f8dbc:   nopl   0x0(%rax)
   0.12%  ││    0x00007fecc84f8dc0:   cmp    %ebp,%r11d
          ╰│    0x00007fecc84f8dc3:   jl     0x00007fecc84f8cf0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@53 (line 88)
           │    0x00007fecc84f8dc9:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rdx=Oop rsi=Oop rax=Oop r13=Oop }
           │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@53 (line 88)
           │    0x00007fecc84f8dd0:   test   %eax,(%rbx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@53 (line 88)
           │                                                              ;   {poll}
   0.01%   │    0x00007fecc84f8dd2:   cmp    %r10d,%r11d
           ╰    0x00007fecc84f8dd5:   jl     0x00007fecc84f8cd3
                0x00007fecc84f8ddb:   nopl   0x0(%rax,%rax,1)
                0x00007fecc84f8de0:   cmp    %edi,%r11d
            ╭   0x00007fecc84f8de3:   jge    0x00007fecc84f8e09
            │   0x00007fecc84f8de5:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@10 (line 89)
            │↗  0x00007fecc84f8de8:   mov    0x10(%rsi,%r11,4),%r8d
   0.00%    ││  0x00007fecc84f8ded:   add    0xc(%rdx,%r11,4),%r8d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
            ││  0x00007fecc84f8df2:   mov    %r8d,0x10(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
            ││  0x00007fecc84f8df7:   add    0x10(%rsi,%r11,4),%r8d
   0.00%    ││  0x00007fecc84f8dfc:   mov    %r8d,0x10(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
            ││  0x00007fecc84f8e01:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@50 (line 88)
            ││  0x00007fecc84f8e04:   cmp    %edi,%r11d
            │╰  0x00007fecc84f8e07:   jl     0x00007fecc84f8de8
            ↘   0x00007fecc84f8e09:   add    $0x20,%rsp
                0x00007fecc84f8e0d:   pop    %rbp
   0.00%        0x00007fecc84f8e0e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                0x00007fecc84f8e15:   ja     0x00007fecc84f8e34
                0x00007fecc84f8e1b:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
                0x00007fecc84f8e1c:   mov    $0xffffff76,%esi
                0x00007fecc84f8e21:   mov    %r13,%rbp
                0x00007fecc84f8e24:   mov    %edi,(%rsp)
                0x00007fecc84f8e27:   call   0x00007fecc7f8af00           ; ImmutableOopMap {rbp=Oop }
                                                                          ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
                                                                          ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  95.81%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.81%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 685 
   1.03%                kernel  [unknown] 
   0.34%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.41%  <...other 244 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.81%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 685 
   3.76%                kernel  [unknown] 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  defaultStream::hold 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%           c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopFissionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 2, compile id 741 
   0.01%             libc.so.6  syscall 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  _IO_old_init 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        hsdis-amd64.so  print_insn 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libjvm.so  outputStream::print_cr 
   0.01%                        <unknown> 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.00%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.18%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.81%           c2, level 4
   3.76%                kernel
   0.23%             libjvm.so
   0.11%             libc.so.6
   0.04%           interpreter
   0.02%        hsdis-amd64.so
   0.01%           c1, level 3
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:02:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 530.598 us/op
# Warmup Iteration   2: 532.288 us/op
# Warmup Iteration   3: 543.134 us/op
# Warmup Iteration   4: 540.870 us/op
# Warmup Iteration   5: 537.354 us/op
Iteration   1: 525.268 us/op
Iteration   2: 537.527 us/op
Iteration   3: 545.076 us/op
Iteration   4: 520.551 us/op
Iteration   5: 525.910 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission":
  530.867 ±(99.9%) 38.918 us/op [Average]
  (min, avg, max) = (520.551, 530.867, 545.076), stdev = 10.107
  CI (99.9%): [491.949, 569.785] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission:asm":
PrintAssembly processed: 126534 total address lines.
Perf output processed (skipped 67.217 seconds):
 Column 1: cycles (50776 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 669 

                          0x00007f820c4f9b2e:   add    %r11,%r10
                          0x00007f820c4f9b31:   cmp    %r10,%rax
                          0x00007f820c4f9b34:   jne    0x00007f820bf85080           ;   {runtime_call ic_miss_stub}
                          0x00007f820c4f9b3a:   xchg   %ax,%ax
                          0x00007f820c4f9b3c:   nopl   0x0(%rax)
                        [Verified Entry Point]
                          0x00007f820c4f9b40:   mov    %eax,-0x14000(%rsp)
                          0x00007f820c4f9b47:   push   %rbp
                          0x00007f820c4f9b48:   sub    $0x20,%rsp
                          0x00007f820c4f9b4c:   cmpl   $0x1,0x20(%r15)
   0.00%                  0x00007f820c4f9b54:   jne    0x00007f820c4f9f0e           ;*synchronization entry
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@-1 (line 101)
                          0x00007f820c4f9b5a:   mov    %rsi,%r14
                          0x00007f820c4f9b5d:   mov    0xc(%rsi),%edx               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@4 (line 101)
                          0x00007f820c4f9b60:   cmp    $0x1,%edx
          ╭               0x00007f820c4f9b63:   jle    0x00007f820c4f9e99           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
          │               0x00007f820c4f9b69:   mov    0x10(%rsi),%ecx              ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@11 (line 102)
   0.00%  │               0x00007f820c4f9b6c:   mov    0xc(%r12,%rcx,8),%r8d        ; implicit exception: dispatches to 0x00007f820c4f9eaf
          │                                                                         ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@22 (line 102)
   0.01%  │               0x00007f820c4f9b71:   test   %r8d,%r8d
          │               0x00007f820c4f9b74:   jbe    0x00007f820c4f9eaf
          │               0x00007f820c4f9b7a:   movslq %edx,%r10
          │               0x00007f820c4f9b7d:   movslq %r8d,%r9
          │               0x00007f820c4f9b80:   lea    -0x2(%r10),%r11
          │               0x00007f820c4f9b84:   cmp    %r9,%r11
          │               0x00007f820c4f9b87:   jae    0x00007f820c4f9eaf
          │               0x00007f820c4f9b8d:   mov    0x18(%rsi),%esi              ;*getfield C {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@24 (line 102)
          │               0x00007f820c4f9b90:   mov    0xc(%r12,%rsi,8),%ebx        ; implicit exception: dispatches to 0x00007f820c4f9eaf
          │                                                                         ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │               0x00007f820c4f9b95:   cmp    $0x1,%ebx
          │               0x00007f820c4f9b98:   jbe    0x00007f820c4f9eaf
          │               0x00007f820c4f9b9e:   mov    %r10,%r11
          │               0x00007f820c4f9ba1:   dec    %r11
          │               0x00007f820c4f9ba4:   movslq %ebx,%rbx
          │               0x00007f820c4f9ba7:   cmp    %rbx,%r11
          │               0x00007f820c4f9baa:   jae    0x00007f820c4f9eaf
          │               0x00007f820c4f9bb0:   cmp    $0x1,%r8d
          │               0x00007f820c4f9bb4:   jbe    0x00007f820c4f9eaf
          │               0x00007f820c4f9bba:   nopw   0x0(%rax,%rax,1)
          │               0x00007f820c4f9bc0:   cmp    %r9,%r11
          │               0x00007f820c4f9bc3:   jae    0x00007f820c4f9eaf
          │               0x00007f820c4f9bc9:   mov    0x10(%r12,%rcx,8),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@22 (line 102)
          │               0x00007f820c4f9bce:   add    0x14(%r12,%rsi,8),%r9d
   0.00%  │               0x00007f820c4f9bd3:   mov    %r9d,0x14(%r12,%rcx,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
          │               0x00007f820c4f9bd8:   lea    -0x7(%r10),%rbx
          │               0x00007f820c4f9bdc:   lea    (%r12,%rsi,8),%r8
          │               0x00007f820c4f9be0:   lea    (%r12,%rcx,8),%r9
          │               0x00007f820c4f9be4:   mov    $0x2,%ecx
          │               0x00007f820c4f9be9:   xor    %ebp,%ebp
          │               0x00007f820c4f9beb:   mov    $0xffffffff80000000,%rax
          │               0x00007f820c4f9bf2:   cmp    $0xffffffff80000000,%rbx
          │               0x00007f820c4f9bf9:   cmovl  %rax,%rbx
          │               0x00007f820c4f9bfd:   mov    %ebx,%r13d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@34 (line 101)
          │               0x00007f820c4f9c00:   cmp    $0x2,%r13d
          │               0x00007f820c4f9c04:   jle    0x00007f820c4f9ecc
          │               0x00007f820c4f9c0a:   mov    $0x1f40,%edi
          │               0x00007f820c4f9c0f:   mov    $0x2,%ebx
          │╭              0x00007f820c4f9c14:   jmp    0x00007f820c4f9c1a
          ││ ↗            0x00007f820c4f9c16:   vmovd  %xmm1,%edx
          │↘ │            0x00007f820c4f9c1a:   mov    %r13d,%esi
          │  │            0x00007f820c4f9c1d:   sub    %ebx,%esi
   0.00%  │  │            0x00007f820c4f9c1f:   cmp    %ebx,%r13d
          │  │            0x00007f820c4f9c22:   cmovl  %ebp,%esi
          │  │            0x00007f820c4f9c25:   cmp    $0x1f40,%esi
          │  │            0x00007f820c4f9c2b:   cmova  %edi,%esi
   0.00%  │  │            0x00007f820c4f9c2e:   add    %ebx,%esi
          │  │            0x00007f820c4f9c30:   vmovd  %edx,%xmm1                   ;   {no_reloc}
          │  │            0x00007f820c4f9c34:   nopl   0x0(%rax,%rax,1)
   0.00%  │  │            0x00007f820c4f9c3c:   data16 data16 xchg %ax,%ax          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@10 (line 102)
   0.16%  │ ↗│            0x00007f820c4f9c40:   mov    0x10(%r8,%rbx,4),%edx
   0.01%  │ ││            0x00007f820c4f9c45:   add    0xc(%r9,%rbx,4),%edx         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
  11.34%  │ ││            0x00007f820c4f9c4a:   mov    %edx,0x10(%r9,%rbx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
  11.14%  │ ││            0x00007f820c4f9c4f:   add    0x14(%r8,%rbx,4),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.05%  │ ││            0x00007f820c4f9c54:   mov    %edx,0x14(%r9,%rbx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.48%  │ ││            0x00007f820c4f9c59:   add    0x18(%r8,%rbx,4),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   1.01%  │ ││            0x00007f820c4f9c5e:   mov    %edx,0x18(%r9,%rbx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.23%  │ ││            0x00007f820c4f9c63:   add    0x1c(%r8,%rbx,4),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.07%  │ ││            0x00007f820c4f9c68:   mov    %edx,0x1c(%r9,%rbx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.36%  │ ││            0x00007f820c4f9c6d:   add    0x20(%r8,%rbx,4),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.01%  │ ││            0x00007f820c4f9c72:   mov    %edx,0x20(%r9,%rbx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.24%  │ ││            0x00007f820c4f9c77:   add    0x24(%r8,%rbx,4),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.03%  │ ││            0x00007f820c4f9c7c:   mov    %edx,0x24(%r9,%rbx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.04%  │ ││            0x00007f820c4f9c81:   add    0x28(%r8,%rbx,4),%edx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.02%  │ ││            0x00007f820c4f9c86:   mov    %edx,0x28(%r9,%rbx,4)
   5.24%  │ ││            0x00007f820c4f9c8b:   add    0x2c(%r8,%rbx,4),%edx
   0.01%  │ ││            0x00007f820c4f9c90:   mov    %edx,0x2c(%r9,%rbx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.25%  │ ││            0x00007f820c4f9c95:   add    $0x8,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
          │ ││            0x00007f820c4f9c98:   cmp    %esi,%ebx
          │ ╰│            0x00007f820c4f9c9a:   jl     0x00007f820c4f9c40           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@34 (line 101)
          │  │            0x00007f820c4f9c9c:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {r8=Oop r9=Oop r14=Oop }
          │  │                                                                      ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@34 (line 101)
   0.01%  │  │            0x00007f820c4f9ca3:   test   %eax,(%rdx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@34 (line 101)
          │  │                                                                      ;   {poll}
   0.07%  │  │            0x00007f820c4f9ca5:   cmp    %r13d,%ebx
          │  ╰            0x00007f820c4f9ca8:   jl     0x00007f820c4f9c16
          │               0x00007f820c4f9cae:   vmovd  %xmm1,%edx
          │               0x00007f820c4f9cb2:   cmp    %edx,%ebx
          │   ╭           0x00007f820c4f9cb4:   jge    0x00007f820c4f9ccd
          │   │           0x00007f820c4f9cb6:   xchg   %ax,%ax                      ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@10 (line 102)
          │   │↗          0x00007f820c4f9cb8:   mov    0x10(%r8,%rbx,4),%edi
   0.01%  │   ││          0x00007f820c4f9cbd:   add    0xc(%r9,%rbx,4),%edi
   0.00%  │   ││          0x00007f820c4f9cc2:   mov    %edi,0x10(%r9,%rbx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
          │   ││          0x00007f820c4f9cc7:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
          │   ││          0x00007f820c4f9cc9:   cmp    %edx,%ebx
          │   │╰          0x00007f820c4f9ccb:   jl     0x00007f820c4f9cb8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
          │   ↘           0x00007f820c4f9ccd:   mov    0x14(%r14),%edi              ;*getfield B {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@48 (line 106)
   0.01%  │               0x00007f820c4f9cd1:   mov    0xc(%r12,%rdi,8),%ebx        ; implicit exception: dispatches to 0x00007f820c4f9ed6
          │                                                                         ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   0.02%  │               0x00007f820c4f9cd6:   cmp    $0x1,%ebx
          │               0x00007f820c4f9cd9:   jbe    0x00007f820c4f9ed6
          │               0x00007f820c4f9cdf:   movslq %ebx,%rbx
          │               0x00007f820c4f9ce2:   cmp    %rbx,%r11
          │               0x00007f820c4f9ce5:   jae    0x00007f820c4f9ed6
          │               0x00007f820c4f9ceb:   lea    (%r12,%rdi,8),%r11
          │               0x00007f820c4f9cef:   mov    %r11d,%ebx
          │               0x00007f820c4f9cf2:   shr    $0x2,%ebx
          │               0x00007f820c4f9cf5:   and    $0x7,%ebx
          │               0x00007f820c4f9cf8:   sub    %ebx,%ecx
          │               0x00007f820c4f9cfa:   and    $0x7,%ecx
          │               0x00007f820c4f9cfd:   add    $0x2,%ecx
          │               0x00007f820c4f9d00:   cmp    %edx,%ecx
          │               0x00007f820c4f9d02:   cmovg  %edx,%ecx
          │               0x00007f820c4f9d05:   mov    $0x1,%ebx                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@47 (line 106)
          │      ↗        0x00007f820c4f9d0a:   mov    0x10(%r8,%rbx,4),%edi
          │      │        0x00007f820c4f9d0f:   add    0x10(%r9,%rbx,4),%edi
          │      │        0x00007f820c4f9d14:   mov    %edi,0x10(%r11,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
          │      │        0x00007f820c4f9d19:   mov    %ebx,%edi
          │      │        0x00007f820c4f9d1b:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@66 (line 105)
          │      │        0x00007f820c4f9d1d:   data16 xchg %ax,%ax
          │      │        0x00007f820c4f9d20:   cmp    %ecx,%edi
          │     ╭│        0x00007f820c4f9d22:   jge    0x00007f820c4f9d28           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
          │     ││        0x00007f820c4f9d24:   mov    %edi,%ebx
          │     │╰        0x00007f820c4f9d26:   jmp    0x00007f820c4f9d0a
          │     ↘         0x00007f820c4f9d28:   add    $0xffffffffffffffc1,%r10
          │               0x00007f820c4f9d2c:   cmp    $0xffffffff80000000,%r10
          │               0x00007f820c4f9d33:   cmovl  %rax,%r10
          │               0x00007f820c4f9d37:   mov    %r10d,%esi
          │               0x00007f820c4f9d3a:   cmp    %esi,%edi
          │               0x00007f820c4f9d3c:   nopl   0x0(%rax)
          │               0x00007f820c4f9d40:   jge    0x00007f820c4f9ef4
          │               0x00007f820c4f9d46:   inc    %ebx
          │               0x00007f820c4f9d48:   mov    $0xfa00,%r10d
          │        ↗      0x00007f820c4f9d4e:   mov    %esi,%ecx
          │        │      0x00007f820c4f9d50:   sub    %ebx,%ecx
          │        │      0x00007f820c4f9d52:   cmp    %ebx,%esi
          │        │      0x00007f820c4f9d54:   cmovl  %ebp,%ecx
          │        │      0x00007f820c4f9d57:   cmp    $0xfa00,%ecx
          │        │      0x00007f820c4f9d5d:   cmova  %r10d,%ecx
   0.00%  │        │      0x00007f820c4f9d61:   add    %ebx,%ecx
   0.00%  │        │      0x00007f820c4f9d63:   nopw   0x0(%rax,%rax,1)
          │        │      0x00007f820c4f9d6c:   data16 data16 xchg %ax,%ax          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@47 (line 106)
   0.05%  │       ↗│      0x00007f820c4f9d70:   vmovdqu 0x10(%r8,%rbx,4),%ymm0
   0.28%  │       ││      0x00007f820c4f9d77:   vpaddd 0x10(%r9,%rbx,4),%ymm0,%ymm0
   1.10%  │       ││      0x00007f820c4f9d7e:   vmovdqu %ymm0,0x10(%r11,%rbx,4)
   0.07%  │       ││      0x00007f820c4f9d85:   vmovdqu 0x30(%r8,%rbx,4),%ymm0
   2.90%  │       ││      0x00007f820c4f9d8c:   vpaddd 0x30(%r9,%rbx,4),%ymm0,%ymm0
   4.30%  │       ││      0x00007f820c4f9d93:   vmovdqu %ymm0,0x30(%r11,%rbx,4)
   0.08%  │       ││      0x00007f820c4f9d9a:   vmovdqu 0x50(%r8,%rbx,4),%ymm0
   0.23%  │       ││      0x00007f820c4f9da1:   vpaddd 0x50(%r9,%rbx,4),%ymm0,%ymm0 ;   {no_reloc}
   1.21%  │       ││      0x00007f820c4f9da8:   vmovdqu %ymm0,0x50(%r11,%rbx,4)
   0.08%  │       ││      0x00007f820c4f9daf:   vmovdqu 0x70(%r8,%rbx,4),%ymm0
   2.71%  │       ││      0x00007f820c4f9db6:   vpaddd 0x70(%r9,%rbx,4),%ymm0,%ymm0
   4.04%  │       ││      0x00007f820c4f9dbd:   vmovdqu %ymm0,0x70(%r11,%rbx,4)
   0.15%  │       ││      0x00007f820c4f9dc4:   vmovdqu 0x90(%r8,%rbx,4),%ymm0
   0.14%  │       ││      0x00007f820c4f9dce:   vpaddd 0x90(%r9,%rbx,4),%ymm0,%ymm0
   1.08%  │       ││      0x00007f820c4f9dd8:   vmovdqu %ymm0,0x90(%r11,%rbx,4)
   0.12%  │       ││      0x00007f820c4f9de2:   vmovdqu 0xb0(%r8,%rbx,4),%ymm0
   2.88%  │       ││      0x00007f820c4f9dec:   vpaddd 0xb0(%r9,%rbx,4),%ymm0,%ymm0
   3.98%  │       ││      0x00007f820c4f9df6:   vmovdqu %ymm0,0xb0(%r11,%rbx,4)
   0.15%  │       ││      0x00007f820c4f9e00:   vmovdqu 0xd0(%r8,%rbx,4),%ymm0
   0.15%  │       ││      0x00007f820c4f9e0a:   vpaddd 0xd0(%r9,%rbx,4),%ymm0,%ymm0
   1.22%  │       ││      0x00007f820c4f9e14:   vmovdqu %ymm0,0xd0(%r11,%rbx,4)
   0.14%  │       ││      0x00007f820c4f9e1e:   vmovdqu 0xf0(%r8,%rbx,4),%ymm0
   3.43%  │       ││      0x00007f820c4f9e28:   vpaddd 0xf0(%r9,%rbx,4),%ymm0,%ymm0
   4.66%  │       ││      0x00007f820c4f9e32:   vmovdqu %ymm0,0xf0(%r11,%rbx,4)     ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   0.17%  │       ││      0x00007f820c4f9e3c:   add    $0x40,%ebx                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@66 (line 105)
   0.01%  │       ││      0x00007f820c4f9e3f:   nop
   0.41%  │       ││      0x00007f820c4f9e40:   cmp    %ecx,%ebx
          │       ╰│      0x00007f820c4f9e42:   jl     0x00007f820c4f9d70           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@69 (line 105)
          │        │      0x00007f820c4f9e48:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {r11=Oop r8=Oop r9=Oop r14=Oop }
          │        │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │        │                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@69 (line 105)
   0.02%  │        │      0x00007f820c4f9e4f:   test   %eax,(%rdi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@69 (line 105)
          │        │                                                                ;   {poll}
   0.05%  │        │      0x00007f820c4f9e51:   cmp    %esi,%ebx
          │        ╰      0x00007f820c4f9e53:   jl     0x00007f820c4f9d4e
          │               0x00007f820c4f9e59:   cmp    %r13d,%ebx
          │         ╭     0x00007f820c4f9e5c:   jge    0x00007f820c4f9e7d
          │         │     0x00007f820c4f9e5e:   xchg   %ax,%ax                      ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@47 (line 106)
   0.00%  │         │↗    0x00007f820c4f9e60:   vmovdqu 0x10(%r8,%rbx,4),%ymm0
   0.00%  │         ││    0x00007f820c4f9e67:   vpaddd 0x10(%r9,%rbx,4),%ymm0,%ymm0
   0.00%  │         ││    0x00007f820c4f9e6e:   vmovdqu %ymm0,0x10(%r11,%rbx,4)     ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │         ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
          │         ││    0x00007f820c4f9e75:   add    $0x8,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │         ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@66 (line 105)
          │         ││    0x00007f820c4f9e78:   cmp    %r13d,%ebx
          │         │╰    0x00007f820c4f9e7b:   jl     0x00007f820c4f9e60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
          │         ↘     0x00007f820c4f9e7d:   data16 xchg %ax,%ax
          │               0x00007f820c4f9e80:   cmp    %edx,%ebx
          │           ╭   0x00007f820c4f9e82:   jge    0x00007f820c4f9e99           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@47 (line 106)
          │           │↗  0x00007f820c4f9e84:   mov    0x10(%r8,%rbx,4),%ecx
   0.00%  │           ││  0x00007f820c4f9e89:   add    0x10(%r9,%rbx,4),%ecx
          │           ││  0x00007f820c4f9e8e:   mov    %ecx,0x10(%r11,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
          │           ││  0x00007f820c4f9e93:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@66 (line 105)
          │           ││  0x00007f820c4f9e95:   cmp    %edx,%ebx
          │           │╰  0x00007f820c4f9e97:   jl     0x00007f820c4f9e84           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
          ↘           ↘   0x00007f820c4f9e99:   vzeroupper 
                          0x00007f820c4f9e9c:   add    $0x20,%rsp
                          0x00007f820c4f9ea0:   pop    %rbp
....................................................................................................
  96.68%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.68%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 669 
   0.51%                kernel  [unknown] 
   0.34%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   1.29%  <...other 266 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.68%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 669 
   2.82%                kernel  [unknown] 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%                [vdso]  [unknown] 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%        hsdis-amd64.so  print_insn 
   0.01%                        <unknown> 
   0.01%             libjvm.so  defaultStream::hold 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  _IO_fflush 
   0.01%             libjvm.so  outputStream::print 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libjvm.so  os::javaTimeNanos 
   0.01%             libc.so.6  __GI___pthread_enable_asynccancel 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.22%  <...other 93 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.69%           c2, level 4
   2.82%                kernel
   0.26%             libjvm.so
   0.13%             libc.so.6
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.02%                [vdso]
   0.01%                      
   0.01%  ld-linux-x86-64.so.2
   0.00%         perf-4859.map
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:06

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

Benchmark                                     (size)  Mode  Cnt     Score    Error  Units
LoopFissionBenchmark.initial_loop             262144  avgt    5  1116.482 ± 16.576  us/op
LoopFissionBenchmark.initial_loop:asm         262144  avgt            NaN             ---
LoopFissionBenchmark.manual_loop_fission      262144  avgt    5   530.867 ± 38.918  us/op
LoopFissionBenchmark.manual_loop_fission:asm  262144  avgt            NaN             ---
