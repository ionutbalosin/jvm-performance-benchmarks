# WARNING: JMH lock is ignored by user request, make sure no other JMH instances are running
# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
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
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.260 ns/op
# Warmup Iteration   2: 6.232 ns/op
# Warmup Iteration   3: 6.235 ns/op
# Warmup Iteration   4: 6.220 ns/op
# Warmup Iteration   5: 6.220 ns/op
Iteration   1: 6.219 ns/op
Iteration   2: 6.220 ns/op
Iteration   3: 6.199 ns/op
Iteration   4: 6.189 ns/op
Iteration   5: 6.189 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  6.203 ±(99.9%) 0.060 ns/op [Average]
  (min, avg, max) = (6.189, 6.203, 6.220), stdev = 0.016
  CI (99.9%): [6.143, 6.263] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 136256 total address lines.
Perf output processed (skipped 56.530 seconds):
 Column 1: cycles (51446 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f4a0:0x3002f5a2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]

         0x3002f594: 4c 89 cf                          movq    %r9, %rdi                     
         0x3002f597: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f599: 49 89 c1                          movq    %rax, %r9                     
         0x3002f59c: eb 96                             jmp    -106                           ; 0x3002f534
         0x3002f59e: 00 00                             addb    %al, (%rax)                   
         0x3002f5a0: 00 00                             addb    %al, (%rax)                   
         0x3002f5a2: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x20002662988} instanceof_type_check[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark
         Decoding CodeBlob 0x3002f400
 12.11%  0x3002f4a0: eb f9                             pushq    %rax                         
  5.85%  0x3002f4a2: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002f4a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 11.94%  0x3002f4ae: 75 2d                             jne    45                             ; 0x3002f4dd
  5.97%  0x3002f4b0: 48 8b 4e 10                       movq    16(%rsi), %rcx                
         0x3002f4b4: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002f4b9: 2e 2e 2e 2e 4c 8b 00              movq    %cs:(%rax), %r8               
         0x3002f4c0: 49 85 c8                          testq    %rcx, %r8                    
         0x3002f4c3: 75 26                             jne    38                             ; 0x3002f4eb
  6.30%  0x3002f4c5: 44 8b 51 04                       movl    4(%rcx), %r10d                
         0x3002f4c9: 41 81 e2 ff ff ff 01              andl    $33554431, %r10d              
  5.97%  0x3002f4d0: 41 81 fa f3 06 00 00              cmpl    $1779, %r10d                  
         0x3002f4d7: 75 3c                             jne    60                             ; 0x3002f515
  6.10%  0x3002f4d9: 31 c0                             xorl    %eax, %eax                    
         0x3002f4db: 59                                popq    %rcx                          
         0x3002f4dc: c3                                retq                                  
         0x3002f4dd: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4e7: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4e9: eb c5                             jmp    -59                            ; 0x3002f4b0
         0x3002f4eb: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002f4ef: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f4f9: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002f4fc: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f4fe: 48 89 c1                          movq    %rax, %rcx                    
....................................................................................................
 54.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300320dc:0x30032141] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]

         0x300320dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300320e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300320e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003216f
         0x300320e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300320ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30032181
         0x300320f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300320f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003219f
         0x300320fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300320fd: 0f 1f 00                          nopl    (%rax)                        
         0x30032100: 4c 89 f7                          movq    %r14, %rdi                    
  6.09%  0x30032103: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30032108: e8 f3 b7 fd ff                    callq    -149517                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003210d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 35.52%  0x30032111: 48 ff c5                          incq    %rbp                          
         0x30032114: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30032120: 84 c0                             testb    %al, %al                     
         0x30032122: 74 dc                             je    -36                             ; 0x30032100
         0x30032124: 41 ff d5                          callq    *%r13                        
         0x30032127: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003212b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30032133: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30032138: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003213d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30032141: 5b                                popq    %rbx                          
....................................................................................................
 41.61%  <total for region 2>

....[Hottest Regions]...............................................................................
 54.24%  [0x3002f4a0:0x3002f5a2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]
 41.61%  [0x300320dc:0x30032141] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]
  0.28%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.21%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb9473] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711f:0xffffffffa9f0715c] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef3e5:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef30c:0xffffffffa9eef3c1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef44f:0xffffffffa9eef4b0] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f6961f:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f070ab:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0x7f84c62535f8:0x7f84c6253621] in [unknown] (libjvm.so)
  2.03%  <...other 304 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.24%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]
 41.61%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]
  3.86%  [unknown] ([kernel.kallsyms])
  0.17%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  [unknown] (libstdc++.so.6)
  0.01%  [unknown] ([vdso])
  0.01%  _dl_addr (libc-2.31.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  <stub: method entry point (kind = zerolocals)>
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  PMEM::get_account_usage (libaztall.so)
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  sprintf (libc-2.31.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  <stub: checkcast  192 checkcast>
  0.02%  <...other 12 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.86%  <generated code>
  3.86%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libstdc++.so.6)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (libpthread-2.31.so)>
....................................................................................................
100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 32)

# Run progress: 20.00% complete, ETA 00:07:29
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.274 ns/op
# Warmup Iteration   2: 6.244 ns/op
# Warmup Iteration   3: 6.212 ns/op
# Warmup Iteration   4: 6.192 ns/op
# Warmup Iteration   5: 6.193 ns/op
Iteration   1: 6.193 ns/op
Iteration   2: 6.218 ns/op
Iteration   3: 6.198 ns/op
Iteration   4: 6.194 ns/op
Iteration   5: 6.189 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  6.198 ±(99.9%) 0.045 ns/op [Average]
  (min, avg, max) = (6.189, 6.198, 6.218), stdev = 0.012
  CI (99.9%): [6.154, 6.243] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 137242 total address lines.
Perf output processed (skipped 56.972 seconds):
 Column 1: cycles (51404 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002fca0:0x3002fcfe] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]

         6.220:  242         3 inlining into sun.net.www.ParseUtil::firstEncodeIndex (Ljava/lang/String;)I (tid 156999) (kid 423 pkid/prev 399/NA) (mid 433167 pmid 7538) (bytes 86) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 1542ms) (wait 0ms)
         6.302:              @ 1   java.lang.String::length (11 bytes)   cost=always, frequency=1.000000, reason=always inline attribute [forced by FalconForceStringLengthInlining]
         6.302:                @ 6   java.lang.String::coder (15 bytes)   cost=-30, threshold=45
         6.302:              @ 14   java.lang.String::charAt (25 bytes)   cost=40, threshold=193, frequency=47.999999
         6.302:                @ 1   java.lang.String::isLatin1 (19 bytes)   cost=-20, threshold=45
         6.302:                @ 12   java.lang.StringLatin1::charAt (28 bytes)   cost=10, threshold=45
         6.302:              @ 70   sun.net.www.ParseUtil::match (50 bytes)   cost=20, threshold=175, frequency=0.281604
         6.310:  242         3 installed at 0x3002f8a0 with size 0x14e. sun.net.www.ParseUtil::firstEncodeIndex (Ljava/lang/String;)I (tid 156999) (kid 423 pkid/prev 399/NA) (mid 433167 pmid 7538) (bytes 86) (generation 0) (lvl O2) (score 0) (score_updated 89ms; orig 0; promoted 0) (rank 0, time-between-promotions 1542ms) (wait 0ms) (compile 46ms/89ms)
           # {method}{0x20002662920} instanceof_type_check[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark
         Decoding CodeBlob 0x3002fc00
 11.96%  0x3002fca0: eb f9                             pushq    %rax                         
  6.04%  0x3002fca2: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002fca5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 12.22%  0x3002fcae: 75 2d                             jne    45                             ; 0x3002fcdd
  6.02%  0x3002fcb0: 48 8b 4e 10                       movq    16(%rsi), %rcx                
         0x3002fcb4: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002fcb9: 2e 2e 2e 2e 4c 8b 00              movq    %cs:(%rax), %r8               
         0x3002fcc0: 49 85 c8                          testq    %rcx, %r8                    
         0x3002fcc3: 75 26                             jne    38                             ; 0x3002fceb
  5.94%  0x3002fcc5: 44 8b 51 04                       movl    4(%rcx), %r10d                
         0x3002fcc9: 41 81 e2 ff ff ff 01              andl    $33554431, %r10d              
  5.99%  0x3002fcd0: 41 81 fa 03 07 00 00              cmpl    $1795, %r10d                  
         0x3002fcd7: 75 3c                             jne    60                             ; 0x3002fd15
  5.99%  0x3002fcd9: 31 c0                             xorl    %eax, %eax                    
         0x3002fcdb: 59                                popq    %rcx                          
         0x3002fcdc: c3                                retq                                  
         0x3002fcdd: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fce7: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fce9: eb c5                             jmp    -59                            ; 0x3002fcb0
         0x3002fceb: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002fcef: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fcf9: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002fcfc: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fcfe: 48 89 c1                          movq    %rax, %rcx                    
....................................................................................................
 54.17%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300326dc:0x30032741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]

         0x300326dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300326e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300326e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003276f
         0x300326e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300326ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30032781
         0x300326f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300326f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003279f
         0x300326fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300326fd: 0f 1f 00                          nopl    (%rax)                        
         0x30032700: 4c 89 f7                          movq    %r14, %rdi                    
  5.83%  0x30032703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30032708: e8 f3 b1 fd ff                    callq    -151053                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003270d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 35.97%  0x30032711: 48 ff c5                          incq    %rbp                          
         0x30032714: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30032720: 84 c0                             testb    %al, %al                     
         0x30032722: 74 dc                             je    -36                             ; 0x30032700
         0x30032724: 41 ff d5                          callq    *%r13                        
         0x30032727: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003272b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30032733: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30032738: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003273d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30032741: 5b                                popq    %rbx                          
....................................................................................................
 41.80%  <total for region 2>

....[Hottest Regions]...............................................................................
 54.17%  [0x3002fca0:0x3002fcfe] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]
 41.80%  [0x300326dc:0x30032741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]
  0.26%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eef3a2:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f07060:0xffffffffa9f070d1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9da97a0:0xffffffffa9da9801] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed07c7] in [unknown] ([kernel.kallsyms])
  2.03%  <...other 285 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.17%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]
 41.80%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]
  3.77%  [unknown] ([kernel.kallsyms])
  0.14%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  [unknown] ([vdso])
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  <stub: i2b  145 i2b>
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  java.net.URL::<init>[C1]
  0.00%  _IO_fwrite (libc-2.31.so)
  0.01%  <...other 7 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.98%  <generated code>
  3.77%  <native code in ([kernel.kallsyms])>
  0.14%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in ([vdso])>
....................................................................................................
100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 64)

# Run progress: 40.00% complete, ETA 00:05:36
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.285 ns/op
# Warmup Iteration   2: 6.216 ns/op
# Warmup Iteration   3: 6.205 ns/op
# Warmup Iteration   4: 6.188 ns/op
# Warmup Iteration   5: 6.188 ns/op
Iteration   1: 6.189 ns/op
Iteration   2: 6.188 ns/op
Iteration   3: 6.192 ns/op
Iteration   4: 6.188 ns/op
Iteration   5: 6.188 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  6.189 ±(99.9%) 0.006 ns/op [Average]
  (min, avg, max) = (6.188, 6.189, 6.192), stdev = 0.002
  CI (99.9%): [6.183, 6.195] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 137439 total address lines.
Perf output processed (skipped 57.274 seconds):
 Column 1: cycles (51736 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002faa0:0x3002fba2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]

         0x3002fb94: 4c 89 cf                          movq    %r9, %rdi                     
         0x3002fb97: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fb99: 49 89 c1                          movq    %rax, %r9                     
         0x3002fb9c: eb 96                             jmp    -106                           ; 0x3002fb34
         0x3002fb9e: 00 00                             addb    %al, (%rax)                   
         0x3002fba0: 00 00                             addb    %al, (%rax)                   
         0x3002fba2: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x200026629c0} instanceof_type_check[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark
         Decoding CodeBlob 0x3002fa00
 11.81%  0x3002faa0: eb f9                             pushq    %rax                         
  6.19%  0x3002faa2: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002faa5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 11.87%  0x3002faae: 75 2d                             jne    45                             ; 0x3002fadd
  6.01%  0x3002fab0: 48 8b 4e 10                       movq    16(%rsi), %rcx                
         0x3002fab4: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002fab9: 2e 2e 2e 2e 4c 8b 00              movq    %cs:(%rax), %r8               
         0x3002fac0: 49 85 c8                          testq    %rcx, %r8                    
         0x3002fac3: 75 26                             jne    38                             ; 0x3002faeb
  5.95%  0x3002fac5: 44 8b 51 04                       movl    4(%rcx), %r10d                
         0x3002fac9: 41 81 e2 ff ff ff 01              andl    $33554431, %r10d              
  5.91%  0x3002fad0: 41 81 fa 23 07 00 00              cmpl    $1827, %r10d                  
         0x3002fad7: 75 3c                             jne    60                             ; 0x3002fb15
  6.02%  0x3002fad9: 31 c0                             xorl    %eax, %eax                    
         0x3002fadb: 59                                popq    %rcx                          
         0x3002fadc: c3                                retq                                  
         0x3002fadd: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fae7: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fae9: eb c5                             jmp    -59                            ; 0x3002fab0
         0x3002faeb: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002faef: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002faf9: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002fafc: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fafe: 48 89 c1                          movq    %rax, %rcx                    
....................................................................................................
 53.75%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300324dc:0x30032541] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]

         0x300324dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300324e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300324e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003256f
         0x300324e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300324ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30032581
         0x300324f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300324f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003259f
         0x300324fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300324fd: 0f 1f 00                          nopl    (%rax)                        
         0x30032500: 4c 89 f7                          movq    %r14, %rdi                    
  5.85%  0x30032503: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30032508: e8 f3 b3 fd ff                    callq    -150541                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003250d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 35.79%  0x30032511: 48 ff c5                          incq    %rbp                          
         0x30032514: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30032520: 84 c0                             testb    %al, %al                     
         0x30032522: 74 dc                             je    -36                             ; 0x30032500
         0x30032524: 41 ff d5                          callq    *%r13                        
         0x30032527: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003252b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30032533: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30032538: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003253d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30032541: 5b                                popq    %rbx                          
....................................................................................................
 41.64%  <total for region 2>

....[Hottest Regions]...............................................................................
 53.75%  [0x3002faa0:0x3002fba2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]
 41.64%  [0x300324dc:0x30032541] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]
  0.64%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.26%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a3] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93bb:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff441] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f6875b] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0861] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee5876:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffa9ed0745:0xffffffffa9ed078b] in [unknown] ([kernel.kallsyms])
  1.91%  <...other 278 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 53.75%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]
 41.64%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]
  4.31%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  <stub: method entry point (kind = zerolocals)>
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  MutexLocker::~MutexLocker (libaztall.so)
  0.00%  syscall (libc-2.31.so)
  0.00%  [unknown] (perf-157115.map)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  PMEM::account_enabled@plt (libaztall.so)
  0.02%  <...other 8 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.41%  <generated code>
  4.31%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.02%  <native code in (libc-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libazsys3.so)>
  0.00%  <native code in (perf-157115.map)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in ([vdso])>
....................................................................................................
 99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
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
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.285 ns/op
# Warmup Iteration   2: 6.219 ns/op
# Warmup Iteration   3: 6.237 ns/op
# Warmup Iteration   4: 6.219 ns/op
# Warmup Iteration   5: 6.219 ns/op
Iteration   1: 6.220 ns/op
Iteration   2: 6.219 ns/op
Iteration   3: 6.221 ns/op
Iteration   4: 6.221 ns/op
Iteration   5: 6.219 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  6.220 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (6.219, 6.220, 6.221), stdev = 0.001
  CI (99.9%): [6.217, 6.223] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 137741 total address lines.
Perf output processed (skipped 56.743 seconds):
 Column 1: cycles (51421 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002faa0:0x3002fba2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]

         0x3002fb99: 49 89 c1                          movq    %rax, %r9                     
         0x3002fb9c: eb 96                             jmp    -106                           ; 0x3002fb34
         0x3002fb9e: 00 00                             addb    %al, (%rax)                   
         0x3002fba0: 00 00                             addb    %al, (%rax)                   
         0x3002fba2: 00 00                             addb    %al, (%rax)                   
         -----------
         6.082:  264         3 enqueued  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/TypeCheckSlowPathBenchmark_jmhType;)V (tid 157270) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 16ms) (wait 0ms)
         6.084:  265    %    3 enqueued  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/TypeCheckSlowPathBenchmark_jmhType;)V @ 13 (tid 157270) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O0) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 16ms) (wait 0ms)
           # {method}{0x20002662730} instanceof_type_check[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark
         Decoding CodeBlob 0x3002fa00
 11.74%  0x3002faa0: eb f9                             pushq    %rax                         
  6.11%  0x3002faa2: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002faa5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 11.96%  0x3002faae: 75 2d                             jne    45                             ; 0x3002fadd
  5.91%  0x3002fab0: 48 8b 4e 10                       movq    16(%rsi), %rcx                
         0x3002fab4: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x3002fab9: 2e 2e 2e 2e 4c 8b 00              movq    %cs:(%rax), %r8               
  0.00%  0x3002fac0: 49 85 c8                          testq    %rcx, %r8                    
         0x3002fac3: 75 26                             jne    38                             ; 0x3002faeb
  6.02%  0x3002fac5: 44 8b 51 04                       movl    4(%rcx), %r10d                
         0x3002fac9: 41 81 e2 ff ff ff 01              andl    $33554431, %r10d              
  6.13%  0x3002fad0: 41 81 fa 63 07 00 00              cmpl    $1891, %r10d                  
         0x3002fad7: 75 3c                             jne    60                             ; 0x3002fb15
  5.99%  0x3002fad9: 31 c0                             xorl    %eax, %eax                    
         0x3002fadb: 59                                popq    %rcx                          
  0.00%  0x3002fadc: c3                                retq                                  
         0x3002fadd: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fae7: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002fae9: eb c5                             jmp    -59                            ; 0x3002fab0
         0x3002faeb: 48 83 c6 10                       addq    $16, %rsi                     
         0x3002faef: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002faf9: 48 89 cf                          movq    %rcx, %rdi                    
         0x3002fafc: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002fafe: 48 89 c1                          movq    %rax, %rcx                    
         0x3002fb01: eb c2                             jmp    -62                            ; 0x3002fac5
         0x3002fb03: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
....................................................................................................
 53.87%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300324dc:0x30032541] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]

         0x300324dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300324e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300324e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003256f
         0x300324e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300324ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30032581
         0x300324f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300324f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003259f
         0x300324fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300324fd: 0f 1f 00                          nopl    (%rax)                        
         0x30032500: 4c 89 f7                          movq    %r14, %rdi                    
  6.03%  0x30032503: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30032508: e8 f3 b3 fd ff                    callq    -150541                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003250d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 35.91%  0x30032511: 48 ff c5                          incq    %rbp                          
         0x30032514: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30032520: 84 c0                             testb    %al, %al                     
         0x30032522: 74 dc                             je    -36                             ; 0x30032500
         0x30032524: 41 ff d5                          callq    *%r13                        
         0x30032527: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003252b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30032533: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30032538: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003253d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30032541: 5b                                popq    %rbx                          
....................................................................................................
 41.95%  <total for region 2>

....[Hottest Regions]...............................................................................
 53.87%  [0x3002faa0:0x3002fba2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]
 41.95%  [0x300324dc:0x30032541] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]
  0.23%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9eb8dcf:0xffffffffa9eb8e14] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef3b4:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef30c:0xffffffffa9eef390] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ee5876:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0x7fadac9d45f8:0x7fadac9d4621] in [unknown] (libjvm.so)
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  2.15%  <...other 343 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 53.87%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]
 41.95%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]
  3.85%  [unknown] ([kernel.kallsyms])
  0.22%  [unknown] (libjvm.so)
  0.02%  syscall (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] ([vdso])
  0.01%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  memcpy (libc-2.31.so)
  0.00%  java.lang.System::getSecurityManager[C1]
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  <stub: method entry point (kind = zerolocals_synchronized)>
  0.02%  <...other 12 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.83%  <generated code>
  3.85%  <native code in ([kernel.kallsyms])>
  0.22%  <native code in (libjvm.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libaztall.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (ip_tables.ko)>
  0.00%  <native code in (i915.ko)>
....................................................................................................
100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check
# Parameters: (supertypes = 256)

# Run progress: 80.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.290 ns/op
# Warmup Iteration   2: 6.220 ns/op
# Warmup Iteration   3: 6.235 ns/op
# Warmup Iteration   4: 6.217 ns/op
# Warmup Iteration   5: 6.206 ns/op
Iteration   1: 6.208 ns/op
Iteration   2: 6.220 ns/op
Iteration   3: 6.220 ns/op
Iteration   4: 6.219 ns/op
Iteration   5: 6.221 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check":
  6.218 ±(99.9%) 0.020 ns/op [Average]
  (min, avg, max) = (6.208, 6.218, 6.221), stdev = 0.005
  CI (99.9%): [6.197, 6.238] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark.instanceof_type_check:·asm":
PrintAssembly processed: 143522 total address lines.
Perf output processed (skipped 59.616 seconds):
 Column 1: cycles (51676 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300304a0:0x300305a2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]

         0x30030594: 4c 89 cf                          movq    %r9, %rdi                     
         0x30030597: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x30030599: 49 89 c1                          movq    %rax, %r9                     
         0x3003059c: eb 96                             jmp    -106                           ; 0x30030534
         0x3003059e: 00 00                             addb    %al, (%rax)                   
         0x300305a0: 00 00                             addb    %al, (%rax)                   
         0x300305a2: 00 00                             addb    %al, (%rax)                   
         -----------
           # {method}{0x200026628a8} instanceof_type_check[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TypeCheckSlowPathBenchmark
         Decoding CodeBlob 0x30030400
 11.96%  0x300304a0: eb f9                             pushq    %rax                         
  6.04%  0x300304a2: 48 89 fe                          movq    %rdi, %rsi                    
         0x300304a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 11.86%  0x300304ae: 75 2d                             jne    45                             ; 0x300304dd
  5.81%  0x300304b0: 48 8b 4e 10                       movq    16(%rsi), %rcx                
         0x300304b4: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
         0x300304b9: 2e 2e 2e 2e 4c 8b 00              movq    %cs:(%rax), %r8               
         0x300304c0: 49 85 c8                          testq    %rcx, %r8                    
         0x300304c3: 75 26                             jne    38                             ; 0x300304eb
  5.94%  0x300304c5: 44 8b 51 04                       movl    4(%rcx), %r10d                
         0x300304c9: 41 81 e2 ff ff ff 01              andl    $33554431, %r10d              
  6.05%  0x300304d0: 41 81 fa e3 07 00 00              cmpl    $2019, %r10d                  
         0x300304d7: 75 3c                             jne    60                             ; 0x30030515
  5.82%  0x300304d9: 31 c0                             xorl    %eax, %eax                    
         0x300304db: 59                                popq    %rcx                          
         0x300304dc: c3                                retq                                  
         0x300304dd: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x300304e7: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x300304e9: eb c5                             jmp    -59                            ; 0x300304b0
         0x300304eb: 48 83 c6 10                       addq    $16, %rsi                     
         0x300304ef: 48 b8 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rax           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x300304f9: 48 89 cf                          movq    %rcx, %rdi                    
         0x300304fc: ff d0                             callq    *%rax                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x300304fe: 48 89 c1                          movq    %rax, %rcx                    
....................................................................................................
 53.49%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30032edc:0x30032f41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]

         0x30032edc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x30032ee0: 4d 85 f6                          testq    %r14, %r14                   
         0x30032ee3: 0f 84 86 00 00 00                 je    134                             ; 0x30032f6f
         0x30032ee9: 4d 85 ff                          testq    %r15, %r15                   
         0x30032eec: 0f 84 8f 00 00 00                 je    143                             ; 0x30032f81
         0x30032ef2: 4d 85 e4                          testq    %r12, %r12                   
         0x30032ef5: 0f 84 a4 00 00 00                 je    164                             ; 0x30032f9f
         0x30032efb: 31 ed                             xorl    %ebp, %ebp                    
         0x30032efd: 0f 1f 00                          nopl    (%rax)                        
         0x30032f00: 4c 89 f7                          movq    %r14, %rdi                    
  6.00%  0x30032f03: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30032f08: e8 f3 a9 fd ff                    callq    -153101                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x30032f0d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 35.87%  0x30032f11: 48 ff c5                          incq    %rbp                          
         0x30032f14: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30032f20: 84 c0                             testb    %al, %al                     
         0x30032f22: 74 dc                             je    -36                             ; 0x30032f00
         0x30032f24: 41 ff d5                          callq    *%r13                        
         0x30032f27: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x30032f2b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30032f33: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30032f38: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x30032f3d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30032f41: 5b                                popq    %rbx                          
....................................................................................................
 41.88%  <total for region 2>

....[Hottest Regions]...............................................................................
 53.49%  [0x300304a0:0x300305a2] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]
 41.88%  [0x30032edc:0x30032f41] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]
  0.50%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.25%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff441] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed078b] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  2.25%  <...other 360 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 53.49%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TypeCheckSlowPathBenchmark::instanceof_type_check[Falcon]
 41.88%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TypeCheckSlowPathBenchmark_instanceof_type_check_jmhTest::instanceof_type_check_avgt_jmhStub[Falcon]
  4.22%  [unknown] ([kernel.kallsyms])
  0.23%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.02%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.02%  __errno_location (libpthread-2.31.so)
  0.02%  PMEM::account_enabled (libaztall.so)
  0.02%  VMEM::get_account_usage (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  MutexLocker::MutexLocker (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.03%  <...other 15 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.38%  <generated code>
  4.22%  <native code in ([kernel.kallsyms])>
  0.23%  <native code in (libjvm.so)>
  0.08%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (perf-157384.map)>
....................................................................................................
 99.99%  <totals>



# Run complete. Total time: 00:09:21

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

Benchmark                                              (supertypes)  Mode  Cnt  Score   Error  Units
TypeCheckSlowPathBenchmark.instanceof_type_check                 16  avgt    5  6.203 ± 0.060  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm            16  avgt         NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                 32  avgt    5  6.198 ± 0.045  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm            32  avgt         NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                 64  avgt    5  6.189 ± 0.006  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm            64  avgt         NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                128  avgt    5  6.220 ± 0.003  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm           128  avgt         NaN            ---
TypeCheckSlowPathBenchmark.instanceof_type_check                256  avgt    5  6.218 ± 0.020  ns/op
TypeCheckSlowPathBenchmark.instanceof_type_check:·asm           256  avgt         NaN            ---
