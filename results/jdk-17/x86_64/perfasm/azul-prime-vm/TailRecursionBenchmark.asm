# WARNING: JMH lock is ignored by user request, make sure no other JMH instances are running
# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative
# Parameters: (n = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 301.046 us/op
# Warmup Iteration   2: 299.411 us/op
# Warmup Iteration   3: 299.456 us/op
# Warmup Iteration   4: 299.394 us/op
# Warmup Iteration   5: 299.453 us/op
Iteration   1: 300.401 us/op
Iteration   2: 300.921 us/op
Iteration   3: 300.898 us/op
Iteration   4: 300.924 us/op
Iteration   5: 300.900 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative":
  300.809 ±(99.9%) 0.879 us/op [Average]
  (min, avg, max) = (300.401, 300.809, 300.924), stdev = 0.228
  CI (99.9%): [299.930, 301.688] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative:·asm":
PrintAssembly processed: 134377 total address lines.
Perf output processed (skipped 56.529 seconds):
 Column 1: cycles (51470 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f710:0x3002f83d] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative[Falcon]

         0x3002f710: 4e 63 4c 88 10                    movslq    16(%rax,%r9,4), %r9         
         0x3002f715: 4c 01 ca                          addq    %r9, %rdx                     
         0x3002f718: ff cf                             decl    %edi                          
         0x3002f71a: 41 ff ca                          decl    %r10d                         
         0x3002f71d: 75 cb                             jne    -53                            ; 0x3002f6ea
         0x3002f71f: 90                                nop                                   
         0x3002f720: 41 83 f8 04                       cmpl    $4, %r8d                      
         0x3002f724: 0f 82 ef 00 00 00                 jb    239                             ; 0x3002f819
         0x3002f72a: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x3002f739: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
  2.03%  0x3002f740: 44 8d 87 ff 03 00 00              leal    1023(%rdi), %r8d              
  2.09%  0x3002f747: 85 ff                             testl    %edi, %edi                   
  1.96%  0x3002f749: 44 0f 49 c7                       cmovnsl    %edi, %r8d                 
  2.13%  0x3002f74d: 41 81 e0 00 fc ff ff              andl    $4294966272, %r8d             
  2.07%  0x3002f754: 41 89 f9                          movl    %edi, %r9d                    
  1.87%  0x3002f757: 2e 2e 2e 2e 2e 2e 45 29 c1        subl    %r8d, %r9d                    
  2.00%  0x3002f760: 41 39 f1                          cmpl    %esi, %r9d                    
         0x3002f763: 0f 83 b5 00 00 00                 jae    181                            ; 0x3002f81e
  2.16%  0x3002f769: 45 89 c8                          movl    %r9d, %r8d                    
  1.98%  0x3002f76c: 4e 63 44 80 10                    movslq    16(%rax,%r8,4), %r8         
  1.96%  0x3002f771: 4c 01 c2                          addq    %r8, %rdx                     
  1.88%  0x3002f774: 44 8d 47 ff                       leal    -1(%rdi), %r8d                
  2.11%  0x3002f778: 44 8d 8f fe 03 00 00              leal    1022(%rdi), %r9d              
  2.05%  0x3002f77f: 45 85 c0                          testl    %r8d, %r8d                   
  2.10%  0x3002f782: 45 0f 49 c8                       cmovnsl    %r8d, %r9d                 
  1.96%  0x3002f786: 41 81 e1 00 fc ff ff              andl    $4294966272, %r9d             
  2.06%  0x3002f78d: 41 f7 d9                          negl    %r9d                          
  2.06%  0x3002f790: 41 01 f9                          addl    %edi, %r9d                    
  1.95%  0x3002f793: 41 ff c9                          decl    %r9d                          
  1.89%  0x3002f796: 41 39 f1                          cmpl    %esi, %r9d                    
         0x3002f799: 0f 83 82 00 00 00                 jae    130                            ; 0x3002f821
  2.21%  0x3002f79f: 45 89 c8                          movl    %r9d, %r8d                    
  2.02%  0x3002f7a2: 4e 63 44 80 10                    movslq    16(%rax,%r8,4), %r8         
  2.03%  0x3002f7a7: 4c 01 c2                          addq    %r8, %rdx                     
  2.07%  0x3002f7aa: 44 8d 47 fe                       leal    -2(%rdi), %r8d                
  2.10%  0x3002f7ae: 44 8d 8f fd 03 00 00              leal    1021(%rdi), %r9d              
  2.11%  0x3002f7b5: 45 85 c0                          testl    %r8d, %r8d                   
  1.98%  0x3002f7b8: 45 0f 49 c8                       cmovnsl    %r8d, %r9d                 
  2.07%  0x3002f7bc: 41 81 e1 00 fc ff ff              andl    $4294966272, %r9d             
  2.28%  0x3002f7c3: 41 f7 d9                          negl    %r9d                          
  2.04%  0x3002f7c6: 41 01 f9                          addl    %edi, %r9d                    
  1.94%  0x3002f7c9: 41 83 c1 fe                       addl    $-2, %r9d                     
  1.95%  0x3002f7cd: 41 39 f1                          cmpl    %esi, %r9d                    
         0x3002f7d0: 73 4f                             jae    79                             ; 0x3002f821
  2.14%  0x3002f7d2: 45 89 c8                          movl    %r9d, %r8d                    
  2.00%  0x3002f7d5: 4e 63 44 80 10                    movslq    16(%rax,%r8,4), %r8         
  2.17%  0x3002f7da: 4c 01 c2                          addq    %r8, %rdx                     
  2.22%  0x3002f7dd: 44 8d 47 fd                       leal    -3(%rdi), %r8d                
  2.02%  0x3002f7e1: 44 8d 8f fc 03 00 00              leal    1020(%rdi), %r9d              
  2.06%  0x3002f7e8: 45 85 c0                          testl    %r8d, %r8d                   
  1.83%  0x3002f7eb: 45 0f 49 c8                       cmovnsl    %r8d, %r9d                 
  2.07%  0x3002f7ef: 41 81 e1 00 fc ff ff              andl    $4294966272, %r9d             
  2.04%  0x3002f7f6: 41 f7 d9                          negl    %r9d                          
  2.04%  0x3002f7f9: 41 01 f9                          addl    %edi, %r9d                    
  1.94%  0x3002f7fc: 41 83 c1 fd                       addl    $-3, %r9d                     
  2.06%  0x3002f800: 41 39 f1                          cmpl    %esi, %r9d                    
         0x3002f803: 73 1c                             jae    28                             ; 0x3002f821
  1.93%  0x3002f805: 45 89 c8                          movl    %r9d, %r8d                    
  1.91%  0x3002f808: 4e 63 44 80 10                    movslq    16(%rax,%r8,4), %r8         
  2.09%  0x3002f80d: 4c 01 c2                          addq    %r8, %rdx                     
  2.04%  0x3002f810: 83 c7 fc                          addl    $-4, %edi                     
         0x3002f813: 0f 85 27 ff ff ff                 jne    -217                           ; 0x3002f740
         0x3002f819: 48 89 d0                          movq    %rdx, %rax                    
         0x3002f81c: 59                                popq    %rcx                          
         0x3002f81d: c3                                retq                                  
         0x3002f81e: 41 89 f8                          movl    %edi, %r8d                    
         0x3002f821: 48 be 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rsi           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f82b: 41 bb 0d 00 00 00                 movl    $13, %r11d                    
         0x3002f831: ff d6                             callq    *%rsi                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f833: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f83d: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
....................................................................................................
 95.69%  <total for region 1>

....[Hottest Regions]...............................................................................
 95.69%  [0x3002f710:0x3002f83d] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative[Falcon]
  0.28%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.20%  [0xffffffffa9eef304:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f0711c:0xffffffffa9f07167] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee58c1] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f6875b] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0740:0xffffffffa9ed07b2] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f07065:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  0.05%  [0xffffffffaa28ead0:0xffffffffaa28eb1d] in [unknown] ([kernel.kallsyms])
  2.02%  <...other 344 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 95.69%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative[Falcon]
  3.93%  [unknown] ([kernel.kallsyms])
  0.19%  [unknown] (libjvm.so)
  0.02%  PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.01%  syscall (libc-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TailRecursionBenchmark_iterative_jmhTest::iterative_avgt_jmhStub[Falcon]
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.00%  [unknown] (liborca.so.0.0.0.0)
  0.00%  _IO_default_xsputn (libc-2.31.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  az_pmem_get_account_usage (libazsys3.so)
  0.04%  <...other 22 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 95.71%  <generated code>
  3.93%  <native code in ([kernel.kallsyms])>
  0.19%  <native code in (libjvm.so)>
  0.06%  <native code in (libaztall.so)>
  0.04%  <native code in (libc-2.31.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (ld-2.31.so)>
  0.00%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (kvm.ko)>
  0.00%  <native code in (libstdc++.so.6)>
....................................................................................................
 99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.7, Zing 64-Bit Tiered VM, 17.0.7-zing_23.05.0.0-b2-product-linux-X86_64
# *** WARNING: JMH support for this VM is experimental. Be extra careful with the produced data.
# VM invoker: /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M -Djmh.perfasm.libdir=/home/gogu/git/jvm-performance-benchmarks -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive
# Parameters: (n = 262144)

# Run progress: 50.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2357.082 us/op
# Warmup Iteration   2: 2366.420 us/op
# Warmup Iteration   3: 2362.596 us/op
# Warmup Iteration   4: 2360.289 us/op
# Warmup Iteration   5: 2358.986 us/op
Iteration   1: 2361.343 us/op
Iteration   2: 2359.751 us/op
Iteration   3: 2353.268 us/op
Iteration   4: 2354.583 us/op
Iteration   5: 2355.425 us/op
# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive":
  2356.874 ±(99.9%) 13.423 us/op [Average]
  (min, avg, max) = (2353.268, 2356.874, 2361.343), stdev = 3.486
  CI (99.9%): [2343.451, 2370.297] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive:·asm":
PrintAssembly processed: 133826 total address lines.
Perf output processed (skipped 56.971 seconds):
 Column 1: cycles (52390 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f0a0:0x3002f1bf] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive[Falcon]

         0x3002f1bb: 00 00                             addb    %al, (%rax)                   
         0x3002f1bd: 00 00                             addb    %al, (%rax)                   
         0x3002f1bf: 00 00                             addb    %al, (%rax)                   
         -----------
         6.215:  229         3 inlining into java.lang.Class::searchFields ([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field; (tid 155080) (kid 45 pkid/prev 21/NA) (mid 46235 pmid 304) (bytes 43) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 1321ms) (wait 0ms)
         6.300:              @ 22   java.lang.reflect.Field::getName (5 bytes)   cost=-30, threshold=262, frequency=24.062015
         6.300:              @ 26   java.lang.String::equals (56 bytes)   cost=always, frequency=24.062015, reason=always inline attribute [intrinsic]
         6.304:  229         3 installed at 0x3002eaa0 with size 0x3a5. java.lang.Class::searchFields ([Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/reflect/Field; (tid 155080) (kid 45 pkid/prev 21/NA) (mid 46235 pmid 304) (bytes 43) (generation 0) (lvl O2) (score 0) (score_updated 39ms; orig 0; promoted 1) (rank 0, time-between-promotions 49ms) (wait 0ms) (compile 74ms/89ms)
           # {method}{0x20002657dd0} recursive[Falcon] (IJ)J in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/TailRecursionBenchmark
         Decoding CodeBlob 0x3002f000
  1.19%  0x3002f0a0: eb f9 ec 38                       subq    $56, %rsp                     
  1.08%  0x3002f0a4: 41 89 f0                          movl    %esi, %r8d                    
  0.54%  0x3002f0a7: 48 89 f9                          movq    %rdi, %rcx                    
  0.56%  0x3002f0aa: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.56%  0x3002f0b3: 0f 85 9f 00 00 00                 jne    159                            ; 0x3002f158
  0.52%  0x3002f0b9: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
  0.55%  0x3002f0c0: 45 85 c0                          testl    %r8d, %r8d                   
         0x3002f0c3: 0f 84 87 00 00 00                 je    135                             ; 0x3002f150
  0.53%  0x3002f0c9: 48 8b 41 10                       movq    16(%rcx), %rax                
  0.54%  0x3002f0cd: be 48 00 f8 2f                    movl    $804782152, %esi              ; 804782152 = clearable_gc_phase_trap_mask
  0.53%  0x3002f0d2: 48 85 06                          testq    %rax, (%rsi)                 
         0x3002f0d5: 0f 85 8e 00 00 00                 jne    142                            ; 0x3002f169
  0.58%  0x3002f0db: 41 8d b0 ff 03 00 00              leal    1023(%r8), %esi               
  0.54%  0x3002f0e2: 45 85 c0                          testl    %r8d, %r8d                   
  0.57%  0x3002f0e5: 41 0f 49 f0                       cmovnsl    %r8d, %esi                 
  0.52%  0x3002f0e9: 81 e6 00 fc ff ff                 andl    $4294966272, %esi             
  0.55%  0x3002f0ef: 45 89 c1                          movl    %r8d, %r9d                    
  0.51%  0x3002f0f2: 41 29 f1                          subl    %esi, %r9d                    
  0.52%  0x3002f0f5: 8b 78 08                          movl    8(%rax), %edi                 
  0.53%  0x3002f0f8: 2e 2e 2e 2e 41 8d 70 ff           leal    %cs:-1(%r8), %esi             
  0.56%  0x3002f100: 41 39 f9                          cmpl    %edi, %r9d                    
         0x3002f103: 0f 83 8e 00 00 00                 jae    142                            ; 0x3002f197
  0.50%  0x3002f109: 45 89 c9                          movl    %r9d, %r9d                    
  0.60%  0x3002f10c: 4e 63 4c 88 10                    movslq    16(%rax,%r9,4), %r9         
  0.55%  0x3002f111: 4c 01 ca                          addq    %r9, %rdx                     
  0.57%  0x3002f114: 85 f6                             testl    %esi, %esi                   
         0x3002f116: 74 38                             je    56                              ; 0x3002f150
  0.52%  0x3002f118: 41 83 c0 fe                       addl    $-2, %r8d                     
  0.52%  0x3002f11c: 44 8d 8e ff 03 00 00              leal    1023(%rsi), %r9d              
  0.50%  0x3002f123: 85 f6                             testl    %esi, %esi                   
  0.57%  0x3002f125: 44 0f 49 ce                       cmovnsl    %esi, %r9d                 
  0.54%  0x3002f129: 41 81 e1 00 fc ff ff              andl    $4294966272, %r9d             
  0.55%  0x3002f130: 44 29 ce                          subl    %r9d, %esi                    
  0.60%  0x3002f133: 39 fe                             cmpl    %edi, %esi                    
         0x3002f135: 73 72                             jae    114                            ; 0x3002f1a9
  0.57%  0x3002f137: 89 f6                             movl    %esi, %esi                    
  0.54%  0x3002f139: 48 63 44 b0 10                    movslq    16(%rax,%rsi,4), %rax       
  1.02%  0x3002f13e: 48 01 c2                          addq    %rax, %rdx                    
  0.58%  0x3002f141: 48 89 cf                          movq    %rcx, %rdi                    
  0.64%  0x3002f144: 44 89 c6                          movl    %r8d, %esi                    
  0.51%  0x3002f147: 90                                nop                                   
  0.52%  0x3002f148: e8 b3 e7 fd ff                    callq    -137293                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
 53.99%  0x3002f14d: 48 89 c2                          movq    %rax, %rdx                    
  3.05%  0x3002f150: 48 89 d0                          movq    %rdx, %rax                    
  3.36%  0x3002f153: 48 83 c4 38                       addq    $56, %rsp                     
 11.93%  0x3002f157: c3                                retq                                  
         0x3002f158: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f162: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f164: e9 50 ff ff ff                    jmp    -176                           ; 0x3002f0b9
         0x3002f169: 48 8d 71 10                       leaq    16(%rcx), %rsi                
         0x3002f16d: 49 b9 c0 c8 00 30 00 00 00 00     movabsq    $805357760, %r9            ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f177: 48 89 c7                          movq    %rax, %rdi                    
         0x3002f17a: 2e 2e 2e 41 ff d1                 callq    *%r9                         ; 0x3000c8c0 = StubRoutines::lvb_handler_for_call
         0x3002f180: e9 56 ff ff ff                    jmp    -170                           ; 0x3002f0db
         0x3002f185: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f18f: 41 bb 0b 00 00 00                 movl    $11, %r11d                    
....................................................................................................
 94.24%  <total for region 1>

....[Hottest Regions]...............................................................................
 94.24%  [0x3002f0a0:0x3002f1bf] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive[Falcon]
  1.58%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.32%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb93b5:0xffffffffa9eb948a] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef3b4:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eef30c:0xffffffffa9eef390] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42d] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee5876:0xffffffffa9ee58a7] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9f695fc:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9ed0746:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffaa28d0d1:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eb7dda:0xffffffffa9eb7e46] in [unknown] ([kernel.kallsyms])
  0.06%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.06%  [0x7fb0f977c5f8:0x7fb0f977c621] in [unknown] (libjvm.so)
  2.27%  <...other 364 warm regions...>
....................................................................................................
 99.96%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 94.24%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive[Falcon]
  5.29%  [unknown] ([kernel.kallsyms])
  0.29%  [unknown] (libjvm.so)
  0.03%  syscall (libc-2.31.so)
  0.02%  __errno_location (libpthread-2.31.so)
  0.01%  [unknown] (libc-2.31.so)
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  is_thread_initialized (libazsys3.so)
  0.01%  PMEM::get_account_usage (libaztall.so)
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.01%  VMEM::get_account_usage (libaztall.so)
  0.00%  __pthread_mutex_lock (libpthread-2.31.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  _dl_addr (libc-2.31.so)
  0.00%  az_zmd_api_version_tall (libaztall.so)
  0.00%  thread_stack_region_start (libazsys3.so)
  0.00%  <stub: iload_1  27 iload_1>
  0.00%  _IO_fwrite (libc-2.31.so)
  0.00%  <stub: method entry point (kind = zerolocals)>
  0.02%  <...other 10 warm methods...>
....................................................................................................
 99.96%  <totals>

....[Distribution by Area]..........................................................................
 94.25%  <generated code>
  5.29%  <native code in ([kernel.kallsyms])>
  0.29%  <native code in (libjvm.so)>
  0.06%  <native code in (libc-2.31.so)>
  0.03%  <native code in (libaztall.so)>
  0.02%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in (liborca.so.0.0.0.0)>
....................................................................................................
 99.96%  <totals>



# Run complete. Total time: 00:03:44

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

Benchmark                                      (n)  Mode  Cnt     Score    Error  Units
TailRecursionBenchmark.iterative            262144  avgt    5   300.809 ±  0.879  us/op
TailRecursionBenchmark.iterative:·asm       262144  avgt            NaN             ---
TailRecursionBenchmark.tail_recursive       262144  avgt    5  2356.874 ± 13.423  us/op
TailRecursionBenchmark.tail_recursive:·asm  262144  avgt            NaN             ---
