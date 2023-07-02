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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.arg_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.454 ns/op
# Warmup Iteration   2: 5.415 ns/op
# Warmup Iteration   3: 5.430 ns/op
# Warmup Iteration   4: 5.416 ns/op
# Warmup Iteration   5: 5.414 ns/op
Iteration   1: 5.415 ns/op
Iteration   2: 5.414 ns/op
Iteration   3: 5.416 ns/op
Iteration   4: 5.415 ns/op
Iteration   5: 5.417 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.arg_escape_obj":
  5.416 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (5.414, 5.416, 5.417), stdev = 0.001
  CI (99.9%): [5.412, 5.419] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.arg_escape_obj:·asm":
PrintAssembly processed: 134201 total address lines.
Perf output processed (skipped 56.434 seconds):
 Column 1: cycles (51575 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002ecc2:0x3002eee5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj[Falcon]

         0x3002ecc2: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002ecc6: e9 35 f5 fd ff                    jmp    -133835                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002eccb: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual final void org.openjdk.jmh.infra.Blackhole.consume(jboolean)
         Encoded locations size: 3
         offset: 0 length: 34 scope: 0 bci: 0
         <nmethodAdapter compile_id='241' level='2' size='40' address='0x00007f49c04c6860' dependencies_offset='32' stamp='91277.826'/>
           # {method}{0x200026580e0} arg_escape_obj[Falcon] ()Z in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarReplacementBenchmark
         Decoding CodeBlob 0x3002ee00
 13.42%  0x3002eea0: eb f9                             pushq    %rax                         
  6.98%  0x3002eea2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 13.70%  0x3002eeab: 75 0e                             jne    14                             ; 0x3002eebb
  6.86%  0x3002eead: 8b 47 0c                          movl    12(%rdi), %eax                
         0x3002eeb0: 85 c0                             testl    %eax, %eax                   
         0x3002eeb2: 78 15                             js    21                              ; 0x3002eec9
         0x3002eeb4: b8 01 00 00 00                    movl    $1, %eax                      
         0x3002eeb9: 59                                popq    %rcx                          
 13.70%  0x3002eeba: c3                                retq                                  
         0x3002eebb: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eec5: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002eec7: eb e4                             jmp    -28                            ; 0x3002eead
         0x3002eec9: 8b 4f 08                          movl    8(%rdi), %ecx                 
         0x3002eecc: 8d 14 09                          leal    (%rcx,%rcx), %edx             
         0x3002eecf: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002eed9: 41 bb 10 00 00 00                 movl    $16, %r11d                    
         0x3002eedf: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002eee1: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002eee5: e9 16 f3 fd ff                    jmp    -134378                        ; 0x3000e200 = StubRoutines::deoptimize
....................................................................................................
 54.65%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub[Falcon]

         0x300316dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300316e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300316e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003176f
         0x300316e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300316ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031781
         0x300316f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300316f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003179f
         0x300316fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300316fd: 0f 1f 00                          nopl    (%rax)                        
         0x30031700: 4c 89 f7                          movq    %r14, %rdi                    
  6.75%  0x30031703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031708: e8 f3 c1 fd ff                    callq    -146957                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003170d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 34.29%  0x30031711: 48 ff c5                          incq    %rbp                          
         0x30031714: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031720: 84 c0                             testb    %al, %al                     
         0x30031722: 74 dc                             je    -36                             ; 0x30031700
         0x30031724: 41 ff d5                          callq    *%r13                        
         0x30031727: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003172b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031733: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031738: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003173d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031741: 5b                                popq    %rbx                          
....................................................................................................
 41.04%  <total for region 2>

....[Hottest Regions]...............................................................................
 54.65%  [0x3002ecc2:0x3002eee5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj[Falcon]
 41.04%  [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub[Falcon]
  0.41%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.29%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f69606:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4aa] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9da97a0:0xffffffffa9da9802] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  1.97%  <...other 299 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.65%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::arg_escape_obj[Falcon]
 41.04%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_arg_escape_obj_jmhTest::arg_escape_obj_avgt_jmhStub[Falcon]
  4.04%  [unknown] ([kernel.kallsyms])
  0.18%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  thread_stack_region_start@plt (libazsys3.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  <stub: aload  25 aload>
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  <stub: return  177 return>
  0.00%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  <stub: method entry point (kind = accessor)>
  0.01%  <...other 6 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.70%  <generated code>
  4.04%  <native code in ([kernel.kallsyms])>
  0.18%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.02%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.branch_escape_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 25.00% complete, ETA 00:05:37
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.006 ns/op
# Warmup Iteration   2: 6.963 ns/op
# Warmup Iteration   3: 6.604 ns/op
# Warmup Iteration   4: 6.581 ns/op
# Warmup Iteration   5: 6.602 ns/op
Iteration   1: 6.585 ns/op
Iteration   2: 6.580 ns/op
Iteration   3: 6.577 ns/op
Iteration   4: 6.576 ns/op
Iteration   5: 6.577 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.branch_escape_obj":
  6.579 ±(99.9%) 0.015 ns/op [Average]
  (min, avg, max) = (6.576, 6.579, 6.585), stdev = 0.004
  CI (99.9%): [6.564, 6.594] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.branch_escape_obj:·asm":
PrintAssembly processed: 134058 total address lines.
Perf output processed (skipped 56.860 seconds):
 Column 1: cycles (51420 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub[Falcon]

         0x300316dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300316e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300316e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003176f
         0x300316e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300316ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031781
         0x300316f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300316f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003179f
         0x300316fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300316fd: 0f 1f 00                          nopl    (%rax)                        
         0x30031700: 4c 89 f7                          movq    %r14, %rdi                    
  5.46%  0x30031703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031708: e8 f3 c1 fd ff                    callq    -146957                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003170d: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
 48.80%  0x30031712: 48 ff c5                          incq    %rbp                          
         0x30031715: 2e 2e 41 0f b6 84 24 94 00 00     movzbl    %cs:148(%r12), %eax         
         0x30031720: 84 c0                             testb    %al, %al                     
         0x30031722: 74 dc                             je    -36                             ; 0x30031700
         0x30031724: 41 ff d5                          callq    *%r13                        
         0x30031727: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003172b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031733: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031738: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003173d: 48 83 c4 48                       addq    $72, %rsp                     
         0x30031741: 5b                                popq    %rbx                          
....................................................................................................
 54.26%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f4a0:0x3002f4f5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj[Falcon]

         offset: 210 length: 39 scope: 0 bci: 0
         <nmethodAdapter compile_id='243' level='2' size='40' address='0x00007f29e45b7540' dependencies_offset='32' stamp='91390.856'/>
         6.176:  243         3 inlining into com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/ScalarReplacementBenchmark_jmhType;)V (tid 153194) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O2) (score -3) (score_updated 2ms; orig 0; promoted 3) (rank 0, time-between-promotions 1ms) (wait 2ms)
         6.215:              @ 7   java.lang.System::nanoTime (0 bytes)   cost=always, frequency=1.000000, reason=always inline attribute [intrinsic]
         6.215:            - @ 17   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj (35 bytes)   3 call sites, cost=never, reason=noinline [method excluded by CompileCommand]
         6.215:              @ 20   org.openjdk.jmh.infra.Blackhole::consume (19 bytes)   cost=always, frequency=536870911.578125, reason=always inline attribute [forced by CompileCommand]
         6.218:  243         3 installed at 0x3002f2a0 with size 0x103. com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/ScalarReplacementBenchmark_jmhType;)V (tid 153194) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O2) (score -3) (score_updated 1ms; orig 0; promoted 35) (rank 0, time-between-promotions 0ms) (wait 2ms) (compile 32ms/42ms)
         -----------
           # {method}{0x20002657ef8} branch_escape_obj[Falcon] ()Lcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarReplacementBenchmark$HeavyWrapper; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarReplacementBenchmark
         Decoding CodeBlob 0x3002f400
  7.86%  0x3002f4a0: eb f9                             pushq    %rax                         
  5.60%  0x3002f4a2: 48 89 fe                          movq    %rdi, %rsi                    
         0x3002f4a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 11.25%  0x3002f4ae: 75 26                             jne    38                             ; 0x3002f4d6
  5.64%  0x3002f4b0: 8b 46 08                          movl    8(%rsi), %eax                 
         0x3002f4b3: 8b 4e 0c                          movl    12(%rsi), %ecx                
         0x3002f4b6: 8d 14 00                          leal    (%rax,%rax), %edx             
         0x3002f4b9: 85 c9                             testl    %ecx, %ecx                   
         0x3002f4bb: 78 3c                             js    60                              ; 0x3002f4f9
  5.76%  0x3002f4bd: 0f b6 7e 10                       movzbl    16(%rsi), %edi              
         0x3002f4c1: 40 84 ff                          testb    %dil, %dil                   
         0x3002f4c4: 75 45                             jne    69                             ; 0x3002f50b
         0x3002f4c6: 48 8b 46 18                       movq    24(%rsi), %rax                
         0x3002f4ca: b9 48 00 f8 2f                    movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
  5.64%  0x3002f4cf: 48 85 01                          testq    %rax, (%rcx)                 
         0x3002f4d2: 75 10                             jne    16                             ; 0x3002f4e4
         0x3002f4d4: 59                                popq    %rcx                          
         0x3002f4d5: c3                                retq                                  
         0x3002f4d6: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4e0: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f4e2: eb cc                             jmp    -52                            ; 0x3002f4b0
         0x3002f4e4: 48 83 c6 18                       addq    $24, %rsi                     
         0x3002f4e8: 48 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %rcx           ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f4f2: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f4f5: ff d1                             callq    *%rcx                        ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
....................................................................................................
 41.75%  <total for region 2>

....[Hottest Regions]...............................................................................
 54.26%  [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub[Falcon]
 41.75%  [0x3002f4a0:0x3002f4f5] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj[Falcon]
  0.28%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9423] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07065:0xffffffffa9f070c8] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ee587e:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eaca37:0xffffffffa9eaca49] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffaa28eb66:0xffffffffaa28eba7] in [unknown] ([kernel.kallsyms])
  1.95%  <...other 300 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.26%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_branch_escape_obj_jmhTest::branch_escape_obj_avgt_jmhStub[Falcon]
 41.75%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::branch_escape_obj[Falcon]
  3.71%  [unknown] ([kernel.kallsyms])
  0.17%  [unknown] (libjvm.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.00%  [unknown] (liborca.so.0.0.0.0)
  0.00%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  <stub: return entry points>
  0.00%  <stub: lload_0  30 lload_0>
  0.00%  <stub: putfield  181 putfield>
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.02%  <...other 11 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 96.03%  <generated code>
  3.71%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (liborca.so.0.0.0.0)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 50.00% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.474 ns/op
# Warmup Iteration   2: 5.415 ns/op
# Warmup Iteration   3: 5.434 ns/op
# Warmup Iteration   4: 5.415 ns/op
# Warmup Iteration   5: 5.415 ns/op
Iteration   1: 5.414 ns/op
Iteration   2: 5.415 ns/op
Iteration   3: 5.414 ns/op
Iteration   4: 5.414 ns/op
Iteration   5: 5.414 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape":
  5.414 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (5.414, 5.414, 5.415), stdev = 0.001
  CI (99.9%): [5.414, 5.415] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape:·asm":
PrintAssembly processed: 133878 total address lines.
Perf output processed (skipped 56.605 seconds):
 Column 1: cycles (51929 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002eca0:0x3002f4cb] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape[Falcon]

         0x3002f4c6: e9 35 ed fd ff                    jmp    -135883                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f4cb: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual final void org.openjdk.jmh.infra.Blackhole.consume(jint)
         Encoded locations size: 3
         offset: 0 length: 34 scope: 0 bci: 0
         -----------
         <nmethodAdapter compile_id='240' level='2' size='40' address='0x00007f011c160cb0' dependencies_offset='32' stamp='91501.671'/>
           # {method}{0x20002657718} no_escape[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarReplacementBenchmark
         Decoding CodeBlob 0x3002ec00
 13.57%  0x3002eca0: eb f9                             pushq    %rax                         
  6.64%  0x3002eca2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 13.33%  0x3002ecab: 75 08                             jne    8                              ; 0x3002ecb5
  6.97%  0x3002ecad: 8b 47 08                          movl    8(%rdi), %eax                 
         0x3002ecb0: 8d 04 40                          leal    (%rax,%rax,2), %eax           
         0x3002ecb3: 59                                popq    %rcx                          
 13.64%  0x3002ecb4: c3                                retq                                  
         0x3002ecb5: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002ecbf: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002ecc1: eb ea                             jmp    -22                            ; 0x3002ecad
         0x3002ecc3: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002ecc7: e9 34 f5 fd ff                    jmp    -133836                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002eccc: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jint com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape()
         Encoded locations size: 3
         offset: 0 length: 35 scope: 0 bci: 0
....................................................................................................
 54.15%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub[Falcon]

         0x300316dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300316e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300316e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003176f
         0x300316e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300316ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031781
         0x300316f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300316f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003179f
         0x300316fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300316fd: 0f 1f 00                          nopl    (%rax)                        
         0x30031700: 4c 89 f7                          movq    %r14, %rdi                    
  6.65%  0x30031703: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031708: e8 f3 c1 fd ff                    callq    -146957                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
         0x3003170d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 34.27%  0x30031711: 48 ff c5                          incq    %rbp                          
         0x30031714: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031720: 84 c0                             testb    %al, %al                     
         0x30031722: 74 dc                             je    -36                             ; 0x30031700
         0x30031724: 41 ff d5                          callq    *%r13                        
         0x30031727: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003172b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031733: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031738: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003173d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031741: 5b                                popq    %rbx                          
....................................................................................................
 40.91%  <total for region 2>

....[Hottest Regions]...............................................................................
 54.15%  [0x3002eca0:0x3002f4cb] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape[Falcon]
 40.91%  [0x300316dc:0x30031741] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub[Falcon]
  1.12%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.25%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef3d6:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef317:0xffffffffa9eef3b4] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0861] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28eadc:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0740:0xffffffffa9ed0790] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d127] in [unknown] ([kernel.kallsyms])
  1.91%  <...other 291 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.15%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape[Falcon]
 40.91%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_jmhTest::no_escape_avgt_jmhStub[Falcon]
  4.68%  [unknown] ([kernel.kallsyms])
  0.17%  [unknown] (libjvm.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.00%  [unknown] (liborca.so.0.0.0.0)
  0.00%  PMEM::account_enabled (libaztall.so)
  0.00%  clock_gettime (libc-2.31.so)
  0.00%  VMEM::get_account_usage (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  pthread_testcancel (libpthread-2.31.so)
  0.00%  <stub: bipush  16 bipush>
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  az_get_elastic (libazsys3.so)
  0.00%  PMEM::account_enabled@plt (libaztall.so)
  0.00%  <stub: fast_linearswitch  228 fast_linearswitch>
  0.02%  <...other 9 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 95.07%  <generated code>
  4.68%  <native code in ([kernel.kallsyms])>
  0.17%  <native code in (libjvm.so)>
  0.03%  <native code in (libaztall.so)>
  0.03%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (liborca.so.0.0.0.0)>
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape_array_obj
# Parameters: (objectEscapes = false, size = 128, value = 3)

# Run progress: 75.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.846 ns/op
# Warmup Iteration   2: 5.805 ns/op
# Warmup Iteration   3: 5.846 ns/op
# Warmup Iteration   4: 5.802 ns/op
# Warmup Iteration   5: 5.803 ns/op
Iteration   1: 5.805 ns/op
Iteration   2: 5.803 ns/op
Iteration   3: 5.803 ns/op
Iteration   4: 5.803 ns/op
Iteration   5: 5.802 ns/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape_array_obj":
  5.803 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (5.802, 5.803, 5.805), stdev = 0.001
  CI (99.9%): [5.799, 5.808] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark.no_escape_array_obj:·asm":
PrintAssembly processed: 134006 total address lines.
Perf output processed (skipped 57.335 seconds):
 Column 1: cycles (51877 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300314dc:0x30031541] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub[Falcon]

         0x300314dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300314e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300314e3: 0f 84 86 00 00 00                 je    134                             ; 0x3003156f
         0x300314e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300314ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30031581
         0x300314f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300314f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3003159f
         0x300314fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300314fd: 0f 1f 00                          nopl    (%rax)                        
         0x30031500: 4c 89 f7                          movq    %r14, %rdi                    
  6.28%  0x30031503: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x30031508: e8 f3 c3 fd ff                    callq    -146445                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  6.42%  0x3003150d: 89 44 24 34                       movl    %eax, 52(%rsp)                
 38.26%  0x30031511: 48 ff c5                          incq    %rbp                          
         0x30031514: 2e 2e 2e 41 0f b6 84 24 94 00     movzbl    %cs:148(%r12), %eax         
         0x30031520: 84 c0                             testb    %al, %al                     
         0x30031522: 74 dc                             je    -36                             ; 0x30031500
         0x30031524: 41 ff d5                          callq    *%r13                        
         0x30031527: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3003152b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30031533: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30031538: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3003153d: 48 83 c4 38                       addq    $56, %rsp                     
         0x30031541: 5b                                popq    %rbx                          
....................................................................................................
 50.96%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f2a0:0x3002f2e0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj[Falcon]

         0x3002f2bf: c3                                retq                                  
         0x3002f2c0: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2ca: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2cc: eb df                             jmp    -33                            ; 0x3002f2ad
         0x3002f2ce: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f2d8: 41 bb 10 00 00 00                 movl    $16, %r11d                    
         0x3002f2de: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         -----------
           # {method}{0x20002657b38} no_escape_array_obj[Falcon] ()I in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/ScalarReplacementBenchmark
         Decoding CodeBlob 0x3002f200
 12.68%  0x3002f2a0: eb f9                             pushq    %rax                         
  6.47%  0x3002f2a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 12.60%  0x3002f2ab: 75 13                             jne    19                             ; 0x3002f2c0
  6.24%  0x3002f2ad: 8b 4f 08                          movl    8(%rdi), %ecx                 
         0x3002f2b0: 8b 47 0c                          movl    12(%rdi), %eax                
         0x3002f2b3: 8d 14 09                          leal    (%rcx,%rcx), %edx             
         0x3002f2b6: 85 c0                             testl    %eax, %eax                   
         0x3002f2b8: 78 14                             js    20                              ; 0x3002f2ce
  6.22%  0x3002f2ba: 01 c8                             addl    %ecx, %eax                    
         0x3002f2bc: 01 d0                             addl    %edx, %eax                    
         0x3002f2be: 59                                popq    %rcx                          
         0x3002f2bf: c3                                retq                                  
         0x3002f2c0: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2ca: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f2cc: eb df                             jmp    -33                            ; 0x3002f2ad
         0x3002f2ce: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f2d8: 41 bb 10 00 00 00                 movl    $16, %r11d                    
         0x3002f2de: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f2e0: 48 83 c4 f8                       addq    $-8, %rsp                     
....................................................................................................
 44.21%  <total for region 2>

....[Hottest Regions]...............................................................................
 50.96%  [0x300314dc:0x30031541] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub[Falcon]
 44.21%  [0x3002f2a0:0x3002f2e0] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj[Falcon]
  0.92%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb93b5:0xffffffffa9eb9499] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711f:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f6964f:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0745:0xffffffffa9ed0790] in [unknown] ([kernel.kallsyms])
  2.00%  <...other 314 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 50.96%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.ScalarReplacementBenchmark_no_escape_array_obj_jmhTest::no_escape_array_obj_avgt_jmhStub[Falcon]
 44.21%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.ScalarReplacementBenchmark::no_escape_array_obj[Falcon]
  4.48%  [unknown] ([kernel.kallsyms])
  0.21%  [unknown] (libjvm.so)
  0.02%  [unknown] (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  syscall (libc-2.31.so)
  0.01%  PMEM::account_enabled (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  az_pmem_get_account_usage_tall (libaztall.so)
  0.01%  az_zmd_api_version_tall (libaztall.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.00%  __errno_location (libpthread-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  PMEM_Account::fetch_stats (libaztall.so)
  0.00%  is_thread_initialized (libazsys3.so)
  0.00%  _IO_file_xsputn (libc-2.31.so)
  0.02%  <...other 8 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.18%  <generated code>
  4.48%  <native code in ([kernel.kallsyms])>
  0.21%  <native code in (libjvm.so)>
  0.04%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in ([vdso])>
  0.00%  <native code in (libm-2.31.so)>
  0.00%  <native code in (libstdc++.so.6)>
....................................................................................................
 99.99%  <totals>



# Run complete. Total time: 00:07:26

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

Benchmark                                            (objectEscapes)  (size)  (value)  Mode  Cnt  Score   Error  Units
ScalarReplacementBenchmark.arg_escape_obj                      false     128        3  avgt    5  5.416 ± 0.003  ns/op
ScalarReplacementBenchmark.arg_escape_obj:·asm                 false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.branch_escape_obj                   false     128        3  avgt    5  6.579 ± 0.015  ns/op
ScalarReplacementBenchmark.branch_escape_obj:·asm              false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape                           false     128        3  avgt    5  5.414 ± 0.001  ns/op
ScalarReplacementBenchmark.no_escape:·asm                      false     128        3  avgt         NaN            ---
ScalarReplacementBenchmark.no_escape_array_obj                 false     128        3  avgt    5  5.803 ± 0.004  ns/op
ScalarReplacementBenchmark.no_escape_array_obj:·asm            false     128        3  avgt         NaN            ---
