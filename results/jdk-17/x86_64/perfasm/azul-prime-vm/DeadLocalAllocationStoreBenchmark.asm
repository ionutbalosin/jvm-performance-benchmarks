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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_baseline
# Parameters: (size = 64)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.574 ns/op
# Warmup Iteration   2: 12.639 ns/op
# Warmup Iteration   3: 12.550 ns/op
# Warmup Iteration   4: 12.558 ns/op
# Warmup Iteration   5: 12.956 ns/op
Iteration   1: 12.526 ns/op
                 ·gc.alloc.rate:      6090.705 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           100.000 counts
                 ·gc.time:            305.000 ms

Iteration   2: 12.510 ns/op
                 ·gc.alloc.rate:      6098.584 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           100.000 counts
                 ·gc.time:            303.000 ms

Iteration   3: 12.519 ns/op
                 ·gc.alloc.rate:      6093.946 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           100.000 counts
                 ·gc.time:            310.000 ms

Iteration   4: 12.497 ns/op
                 ·gc.alloc.rate:      6104.634 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           105.000 counts
                 ·gc.time:            324.000 ms

Iteration   5: 12.493 ns/op
                 ·gc.alloc.rate:      6106.977 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           100.000 counts
                 ·gc.time:            305.000 ms

# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_baseline":
  12.509 ±(99.9%) 0.054 ns/op [Average]
  (min, avg, max) = (12.493, 12.509, 12.526), stdev = 0.014
  CI (99.9%): [12.455, 12.563] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:·asm":
PrintAssembly processed: 142798 total address lines.
Perf output processed (skipped 56.621 seconds):
 Column 1: cycles (52943 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f4a0:0x3002f59b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_baseline[Falcon]

         0x3002f578: eb 8b                             jmp    -117                           ; 0x3002f505
         0x3002f57a: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f584: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f586: e9 30 ff ff ff                    jmp    -208                           ; 0x3002f4bb
         0x3002f58b: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f595: 41 bb 10 00 00 00                 movl    $16, %r11d                    
         0x3002f59b: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         -----------
           # {method}{0x20002658018} array_baseline[Falcon] ()[B in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark
         Decoding CodeBlob 0x3002f400
  1.22%  0x3002f4a0: eb f9                             pushq    %rbp                         
  7.14%  0x3002f4a2: 41 57                             pushq    %r15                         
  2.18%  0x3002f4a4: 41 56                             pushq    %r14                         
  1.08%  0x3002f4a6: 41 55                             pushq    %r13                         
  0.95%  0x3002f4a8: 41 54                             pushq    %r12                         
  2.93%  0x3002f4aa: 53                                pushq    %rbx                         
  1.68%  0x3002f4ab: 50                                pushq    %rax                         
  0.78%  0x3002f4ac: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.32%  0x3002f4b5: 0f 85 bf 00 00 00                 jne    191                            ; 0x3002f57a
  1.28%  0x3002f4bb: 8b 47 08                          movl    8(%rdi), %eax                 
  0.72%  0x3002f4be: 49 89 c0                          movq    %rax, %r8                     
  0.71%  0x3002f4c1: 85 c0                             testl    %eax, %eax                   
         0x3002f4c3: 0f 88 c2 00 00 00                 js    194                             ; 0x3002f58b
  0.18%  0x3002f4c9: 49 8d 48 17                       leaq    23(%r8), %rcx                 
  1.32%  0x3002f4cd: 48 83 e1 f8                       andq    $-8, %rcx                     
  0.73%  0x3002f4d1: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
  1.00%  0x3002f4da: 2e 2e 48 8d 14 08                 leaq    %cs:(%rax,%rcx), %rdx         
  0.24%  0x3002f4e0: 65 48 3b 14 25 c0 00 00 00        cmpq    %gs:192, %rdx                 
         0x3002f4e9: 73 29                             jae    41                             ; 0x3002f514
  1.99%  0x3002f4eb: 65 48 89 14 25 b0 00 00 00        movq    %rdx, %gs:176                 ; thread:[176] = _tlab._top
  1.83%  0x3002f4f4: 48 b9 00 00 00 00 08 00 00 00     movabsq    $34359738368, %rcx         ; 0x800000000 = 
  0.51%  0x3002f4fe: 48 89 08                          movq    %rcx, (%rax)                  
  2.73%  0x3002f501: 4c 89 40 08                       movq    %r8, 8(%rax)                  
  9.07%  0x3002f505: 48 83 c4 08                       addq    $8, %rsp                      
  0.04%  0x3002f509: 5b                                popq    %rbx                          
  2.41%  0x3002f50a: 41 5c                             popq    %r12                          
  2.73%  0x3002f50c: 41 5d                             popq    %r13                          
  0.29%  0x3002f50e: 41 5e                             popq    %r14                          
  0.23%  0x3002f510: 41 5f                             popq    %r15                          
  0.67%  0x3002f512: 5d                                popq    %rbp                          
  2.52%  0x3002f513: c3                                retq                                  
  0.57%  0x3002f514: 48 b8 c0 d3 00 30 00 00 00 00     movabsq    $805360576, %rax           ; 0x3000d3c0 = StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.32%  0x3002f51e: be 08 00 00 00                    movl    $8, %esi                      
  0.13%  0x3002f523: 4c 89 c2                          movq    %r8, %rdx                     
  0.01%  0x3002f526: 31 ff                             xorl    %edi, %edi                    
  0.20%  0x3002f528: ff d0                             callq    *%rax                        ; 0x3000d3c0 = StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.34%  0x3002f52a: 48 85 c0                          testq    %rax, %rax                   
         0x3002f52d: 75 d6                             jne    -42                            ; 0x3002f505
         0x3002f52f: 65 48 c7 04 25 60 06 00 00 00     movq    $0, %gs:1632                  ; thread:[1632] = _anchor.last_Java_pc
         0x3002f53c: 65 48 89 24 25 58 06 00 00        movq    %rsp, %gs:1624                ; thread:[1624] = _anchor.last_Java_sp
         0x3002f545: 65 48 8b 3c 25 40 00 00 00        movq    %gs:64, %rdi                  ; thread:[64] = _current_thread
         0x3002f54e: 48 b8 00 dc 0a 08 6b 7f 00 00     movabsq    $140097673157632, %rax     ; 0x7f6b080adc00 = DolphinRuntime::newarray(JavaThread*, int, BasicType, int)
         0x3002f558: be 08 00 00 00                    movl    $8, %esi                      
         0x3002f55d: ba 08 00 00 00                    movl    $8, %edx                      
         0x3002f562: 4c 89 04 24                       movq    %r8, (%rsp)                   
         0x3002f566: 44 89 c1                          movl    %r8d, %ecx                    
         0x3002f569: ff d0                             callq    *%rax                        ; 0x7f6b080adc00 = DolphinRuntime::newarray(JavaThread*, int, BasicType, int)
....................................................................................................
 51.03%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3000cc7e:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca

         0x3000cc7e: c5 7a 6f 8c 24 c0 00 00 00        vmovdqu    192(%rsp), %xmm9           
         0x3000cc87: c5 7a 6f 94 24 a0 00 00 00        vmovdqu    160(%rsp), %xmm10          
         0x3000cc90: c5 7a 6f 9c 24 80 00 00 00        vmovdqu    128(%rsp), %xmm11          
         0x3000cc99: c5 7a 6f 64 24 60                 vmovdqu    96(%rsp), %xmm12           
         0x3000cc9f: c5 7a 6f 6c 24 40                 vmovdqu    64(%rsp), %xmm13           
         0x3000cca5: c5 7a 6f 74 24 20                 vmovdqu    32(%rsp), %xmm14           
         0x3000ccab: c5 7a 6f 3c 24                    vmovdqu    (%rsp), %xmm15             
         0x3000ccb0: 48 81 c4 88 02 00 00              addq    $648, %rsp                    
         0x3000ccb7: c3                                retq                                  
         StubRoutines::new_stub_dont_check_tls_zero_region_array_orca [0x000000003000d3c0, 0x000000003000d530] (368 bytes)
  1.37%  0x3000d3c0: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
  5.68%  0x3000d3c9: 48 03 c8                          addq    %rax, %rcx                    
  0.45%  0x3000d3cc: 65 48 3b 0c 25 b8 00 00 00        cmpq    %gs:184, %rcx                 ; thread:[184] = _tlab._end
         0x3000d3d5: 0f 83 52 01 00 00                 jae    338                            ; 0x3000d52d
  0.50%  0x3000d3db: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
  0.97%  0x3000d3e4: 48 03 f8                          addq    %rax, %rdi                    
         0x3000d3e7: 48 83 c7 90                       addq    $-112, %rdi                   
         0x3000d3eb: 48 81 e7 00 fe ff ff              andq    $-512, %rdi                   
         0x3000d3f2: 65 48 3b 3c 25 c0 00 00 00        cmpq    %gs:192, %rdi                 
  0.49%  0x3000d3fb: 65 48 0f 42 3c 25 c0 00 00 00     cmovbq    %gs:192, %rdi               
  0.00%  0x3000d405: 48 81 c1 00 02 00 00              addq    $512, %rcx                    
         0x3000d40c: 48 81 e1 00 fe ff ff              andq    $-512, %rcx                   
         0x3000d413: 65 48 89 0c 25 c0 00 00 00        movq    %rcx, %gs:192                 
  2.42%  0x3000d41c: 48 2b cf                          subq    %rdi, %rcx                    
         0x3000d41f: 81 f9 00 10 00 00                 cmpl    $4096, %ecx                   
         0x3000d425: 0f 8d e2 00 00 00                 jge    226                            ; 0x3000d50d
         0x3000d42b: 48 03 cf                          addq    %rdi, %rcx                    
         0x3000d42e: c4 41 00 57 ff                    vxorps    %xmm15, %xmm15, %xmm15      
  0.45%  0x3000d433: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x3000d43c: 66 66 66 90                       nop                                   
  0.00%  0x3000d440: 0f 0d 8f 80 04 00 00              prefetchw    1152(%rdi)               
  0.02%  0x3000d447: 0f 0d 8f c0 04 00 00              prefetchw    1216(%rdi)               
  0.47%  0x3000d44e: 0f 0d 8f 00 05 00 00              prefetchw    1280(%rdi)               
  1.17%  0x3000d455: 0f 0d 8f 40 05 00 00              prefetchw    1344(%rdi)               
  0.09%  0x3000d45c: 0f 0d 8f 80 05 00 00              prefetchw    1408(%rdi)               
  0.15%  0x3000d463: 0f 0d 8f c0 05 00 00              prefetchw    1472(%rdi)               
  0.47%  0x3000d46a: 0f 0d 8f 00 06 00 00              prefetchw    1536(%rdi)               
  1.53%  0x3000d471: 0f 0d 8f 40 06 00 00              prefetchw    1600(%rdi)               
  0.53%  0x3000d478: c5 7d 7f bf 80 00 00 00           vmovdqa    %ymm15, 128(%rdi)          
  0.00%  0x3000d480: c5 7d 7f bf a0 00 00 00           vmovdqa    %ymm15, 160(%rdi)          
  0.32%  0x3000d488: c5 7d 7f bf c0 00 00 00           vmovdqa    %ymm15, 192(%rdi)          
  0.99%  0x3000d490: c5 7d 7f bf e0 00 00 00           vmovdqa    %ymm15, 224(%rdi)          
  0.08%  0x3000d498: c5 7d 7f bf 00 01 00 00           vmovdqa    %ymm15, 256(%rdi)          
  1.01%  0x3000d4a0: c5 7d 7f bf 20 01 00 00           vmovdqa    %ymm15, 288(%rdi)          
  0.00%  0x3000d4a8: c5 7d 7f bf 40 01 00 00           vmovdqa    %ymm15, 320(%rdi)          
  0.38%  0x3000d4b0: c5 7d 7f bf 60 01 00 00           vmovdqa    %ymm15, 352(%rdi)          
  0.06%  0x3000d4b8: c5 7d 7f bf 80 01 00 00           vmovdqa    %ymm15, 384(%rdi)          
  0.38%  0x3000d4c0: c5 7d 7f bf a0 01 00 00           vmovdqa    %ymm15, 416(%rdi)          
  0.08%  0x3000d4c8: c5 7d 7f bf c0 01 00 00           vmovdqa    %ymm15, 448(%rdi)          
  0.14%  0x3000d4d0: c5 7d 7f bf e0 01 00 00           vmovdqa    %ymm15, 480(%rdi)          
  0.41%  0x3000d4d8: c5 7d 7f bf 00 02 00 00           vmovdqa    %ymm15, 512(%rdi)          
  0.22%  0x3000d4e0: c5 7d 7f bf 20 02 00 00           vmovdqa    %ymm15, 544(%rdi)          
  0.30%  0x3000d4e8: c5 7d 7f bf 40 02 00 00           vmovdqa    %ymm15, 576(%rdi)          
  0.33%  0x3000d4f0: c5 7d 7f bf 60 02 00 00           vmovdqa    %ymm15, 608(%rdi)          
  0.47%  0x3000d4f8: 48 81 c7 00 02 00 00              addq    $512, %rdi                    
         0x3000d4ff: 48 3b f9                          cmpq    %rcx, %rdi                    
         0x3000d502: 0f 85 38 ff ff ff                 jne    -200                           ; 0x3000d440
         0x3000d508: c5 f8 77                          vzeroupper                            
  0.45%  0x3000d50b: eb 18                             jmp    24                             ; 0x3000d525
         0x3000d50d: 48 81 c7 80 00 00 00              addq    $128, %rdi                    
         0x3000d514: c4 61 f9 6e f8                    vmovq    %rax, %xmm15                 
         0x3000d519: 33 c0                             xorl    %eax, %eax                    
         0x3000d51b: f3 48 aa                          rep        stosb    %al, %es:(%rdi)   
         0x3000d51e: c4 61 f9 7e f8                    vmovq    %xmm15, %rax                 
         0x3000d523: eb 00                             jmp    0                              ; 0x3000d525
  0.02%  0x3000d525: 89 70 04                          movl    %esi, 4(%rax)                 
  0.44%  0x3000d528: 48 89 50 08                       movq    %rdx, 8(%rax)                 
         0x3000d52c: c3                                retq                                  
  0.01%  0x3000d52d: 33 c0                             xorl    %eax, %eax                    
         0x3000d52f: c3                                retq                                  
         StubRoutines::new_stub_dont_check_tls_zero_region_orca [0x000000003000d240, 0x000000003000d38c] (332 bytes)
         0x3000d240: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
         0x3000d249: 48 03 c8                          addq    %rax, %rcx                    
         0x3000d24c: 65 48 3b 0c 25 b8 00 00 00        cmpq    %gs:184, %rcx                 ; thread:[184] = _tlab._end
         0x3000d255: 0f 83 2e 01 00 00                 jae    302                            ; 0x3000d389
         0x3000d25b: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
         0x3000d264: 65 48 8b 3c 25 c0 00 00 00        movq    %gs:192, %rdi                 
         0x3000d26d: 48 81 c1 00 02 00 00              addq    $512, %rcx                    
         0x3000d274: 48 81 e1 00 fe ff ff              andq    $-512, %rcx                   
....................................................................................................
 22.86%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x30026900:0x30026920] in [unknown] (perf-133556.map)

 <no assembly is recorded, native region>
....................................................................................................
 17.64%  <total for region 3>

....[Hottest Regions]...............................................................................
 51.03%  [0x3002f4a0:0x3002f59b] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_baseline[Falcon]
 22.86%  [0x3000cc7e:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
 17.64%  [0x30026900:0x30026920] in [unknown] (perf-133556.map)
  0.54%  [0x7f6b07d2ea75:0x7f6b07d2ea81] in [unknown] (libjvm.so)
  0.29%  [0x7f6b07f73840:0x7f6b07f7386c] in [unknown] (libjvm.so)
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.20%  [0x7f6b02a34f95:0x7f6b02a3500d] in PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b5:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9c94c80:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b2:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9f686c0:0xffffffffa9f6875d] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eceec5:0xffffffffa9ecef34] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.07%  [0x7f6b07cd60d8:0x7f6b07cd60e7] in [unknown] (libjvm.so)
  0.07%  [0xffffffffa9ed080c:0xffffffffa9ed086e] in [unknown] ([kernel.kallsyms])
  5.58%  <...other 903 warm regions...>
....................................................................................................
 99.87%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 51.03%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_baseline[Falcon]
 22.86%  StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
 17.65%  [unknown] (perf-133556.map)
  4.30%  [unknown] ([kernel.kallsyms])
  2.46%  [unknown] (libjvm.so)
  0.20%  PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.15%  [unknown] (libc-2.31.so)
  0.09%  PMEM_PageInfo::page_info (libaztall.so)
  0.06%  VMEM_PageManager::zone_count; VMEM_PageManager::allowed_zone; VMEM_PageManager::is_premapped_page (libaztall.so)
  0.04%  thread_stack_region_start; thread_stack_region_end (libazsys3.so)
  0.04%  PMEM_PageManager::num_zones (libaztall.so)
  0.03%  __pthread_mutex_lock (libpthread-2.31.so)
  0.03%  VMEM::allocate_within_space (libaztall.so)
  0.03%  __errno_location (libpthread-2.31.so)
  0.03%  PMEM_PageInfo::is_disallowed; PMEM_PageInfo::is_allocatable; PMEM_PageInfo::is_allocated (libaztall.so)
  0.02%  PMEM::allocate_pages (libaztall.so)
  0.02%  PMEM_PageInfo::mark_allocated; PMEM_PageInfo::set_next (libaztall.so)
  0.02%  MutexLocker::~MutexLocker (libaztall.so)
  0.02%  clock_gettime (libc-2.31.so)
  0.02%  MutexLocker::MutexLocker (libaztall.so)
  0.75%  <...other 117 warm methods...>
....................................................................................................
 99.87%  <totals>

....[Distribution by Area]..........................................................................
 73.92%  <generated code>
 17.65%  <native code in (perf-133556.map)>
  4.30%  <native code in ([kernel.kallsyms])>
  2.46%  <native code in (libjvm.so)>
  1.16%  <native code in (libaztall.so)>
  0.19%  <native code in (libc-2.31.so)>
  0.08%  <native code in (libpthread-2.31.so)>
  0.08%  <native code in (libazsys3.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (libstdc++.so.6)>
....................................................................................................
 99.87%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:·gc.alloc.rate":
  6098.969 ±(99.9%) 26.532 MB/sec [Average]
  (min, avg, max) = (6090.705, 6098.969, 6106.977), stdev = 6.890
  CI (99.9%): [6072.437, 6125.501] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:·gc.alloc.rate.norm":
  80.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (80.000, 80.000, 80.000), stdev = 0.001
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:·gc.count":
  505.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (100.000, 101.000, 105.000), stdev = 2.236
  CI (99.9%): [505.000, 505.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_baseline:·gc.time":
  1547.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (303.000, 309.400, 324.000), stdev = 8.562
  CI (99.9%): [1547.000, 1547.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse
# Parameters: (size = 64)

# Run progress: 12.50% complete, ETA 00:13:07
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.658 ns/op
# Warmup Iteration   2: 12.669 ns/op
# Warmup Iteration   3: 12.973 ns/op
# Warmup Iteration   4: 12.539 ns/op
# Warmup Iteration   5: 12.538 ns/op
Iteration   1: 13.268 ns/op
                 ·gc.alloc.rate:      5749.858 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           95.000 counts
                 ·gc.time:            289.000 ms

Iteration   2: 12.523 ns/op
                 ·gc.alloc.rate:      6091.923 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           100.000 counts
                 ·gc.time:            309.000 ms

Iteration   3: 13.268 ns/op
                 ·gc.alloc.rate:      5749.946 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           95.000 counts
                 ·gc.time:            293.000 ms

Iteration   4: 12.533 ns/op
                 ·gc.alloc.rate:      6087.481 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           100.000 counts
                 ·gc.time:            305.000 ms

Iteration   5: 12.524 ns/op
                 ·gc.alloc.rate:      6091.514 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           100.000 counts
                 ·gc.time:            301.000 ms

# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse":
  12.823 ±(99.9%) 1.564 ns/op [Average]
  (min, avg, max) = (12.523, 12.823, 13.268), stdev = 0.406
  CI (99.9%): [11.259, 14.387] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse:·asm":
PrintAssembly processed: 142371 total address lines.
Perf output processed (skipped 56.680 seconds):
 Column 1: cycles (52904 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f4a0:0x3002f584] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse[Falcon]

         <nmethodAdapter compile_id='256' level='1' size='40' address='0x00007f64d808e4a0' dependencies_offset='32' stamp='79816.336'/>
         6.008:  256         1 inlining into com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/DeadLocalAllocationStoreBenchmark_jmhType;)V (tid 133707) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O2) (score 57) (score_updated 6ms; orig 57; promoted 2) (wait 14ms)
         6.009:              @ 7   java.lang.System::nanoTime (0 bytes)   intrinsics
         6.009:            - @ 17   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse (30 bytes)   disallowed by CompilerOracle
         6.009:              @ 20   org.openjdk.jmh.infra.Blackhole::consume (19 bytes)   force inline by CompilerOracle 
         6.009:                @ 7   org.openjdk.jmh.infra.Blackhole::consumeCompiler (1 bytes)   intrinsics
         6.009:              @ 37   java.lang.System::nanoTime (0 bytes)   intrinsics
         6.017:  256         1 installed at 0x32b13c80 with size 0x1b6. com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_array_dse_jmhTest::array_dse_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/DeadLocalAllocationStoreBenchmark_jmhType;)V (tid 133707) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O2) (score 57) (score_updated 4ms; orig 57; promoted 4) (wait 14ms) (compile 4ms/8ms)
           # {method}{0x20002657fa8} array_dse[Falcon] ()[B in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark
         Decoding CodeBlob 0x3002f400
  1.16%  0x3002f4a0: eb f9                             pushq    %rbp                         
  6.87%  0x3002f4a2: 41 57                             pushq    %r15                         
  2.15%  0x3002f4a4: 41 56                             pushq    %r14                         
  1.05%  0x3002f4a6: 41 55                             pushq    %r13                         
  0.96%  0x3002f4a8: 41 54                             pushq    %r12                         
  2.91%  0x3002f4aa: 53                                pushq    %rbx                         
  1.53%  0x3002f4ab: 50                                pushq    %rax                         
  0.81%  0x3002f4ac: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.31%  0x3002f4b5: 0f 85 bf 00 00 00                 jne    191                            ; 0x3002f57a
  1.22%  0x3002f4bb: 8b 47 08                          movl    8(%rdi), %eax                 
  0.73%  0x3002f4be: 49 89 c0                          movq    %rax, %r8                     
  0.67%  0x3002f4c1: 85 c0                             testl    %eax, %eax                   
         0x3002f4c3: 0f 88 c2 00 00 00                 js    194                             ; 0x3002f58b
  0.17%  0x3002f4c9: 49 8d 48 17                       leaq    23(%r8), %rcx                 
  1.28%  0x3002f4cd: 48 83 e1 f8                       andq    $-8, %rcx                     
  0.69%  0x3002f4d1: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
  1.08%  0x3002f4da: 2e 2e 48 8d 14 08                 leaq    %cs:(%rax,%rcx), %rdx         
  0.22%  0x3002f4e0: 65 48 3b 14 25 c0 00 00 00        cmpq    %gs:192, %rdx                 
         0x3002f4e9: 73 29                             jae    41                             ; 0x3002f514
  1.69%  0x3002f4eb: 65 48 89 14 25 b0 00 00 00        movq    %rdx, %gs:176                 ; thread:[176] = _tlab._top
  1.66%  0x3002f4f4: 48 b9 00 00 00 00 08 00 00 00     movabsq    $34359738368, %rcx         ; 0x800000000 = 
  0.56%  0x3002f4fe: 48 89 08                          movq    %rcx, (%rax)                  
  2.70%  0x3002f501: 4c 89 40 08                       movq    %r8, 8(%rax)                  
  8.78%  0x3002f505: 48 83 c4 08                       addq    $8, %rsp                      
  0.02%  0x3002f509: 5b                                popq    %rbx                          
  2.32%  0x3002f50a: 41 5c                             popq    %r12                          
  2.75%  0x3002f50c: 41 5d                             popq    %r13                          
  0.33%  0x3002f50e: 41 5e                             popq    %r14                          
  0.16%  0x3002f510: 41 5f                             popq    %r15                          
  0.61%  0x3002f512: 5d                                popq    %rbp                          
  2.39%  0x3002f513: c3                                retq                                  
  1.42%  0x3002f514: 48 b8 c0 d3 00 30 00 00 00 00     movabsq    $805360576, %rax           ; 0x3000d3c0 = StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.84%  0x3002f51e: be 08 00 00 00                    movl    $8, %esi                      
  0.28%  0x3002f523: 4c 89 c2                          movq    %r8, %rdx                     
  0.01%  0x3002f526: 31 ff                             xorl    %edi, %edi                    
  0.16%  0x3002f528: ff d0                             callq    *%rax                        ; 0x3000d3c0 = StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.30%  0x3002f52a: 48 85 c0                          testq    %rax, %rax                   
         0x3002f52d: 75 d6                             jne    -42                            ; 0x3002f505
         0x3002f52f: 65 48 c7 04 25 60 06 00 00 00     movq    $0, %gs:1632                  ; thread:[1632] = _anchor.last_Java_pc
  0.01%  0x3002f53c: 65 48 89 24 25 58 06 00 00        movq    %rsp, %gs:1624                ; thread:[1624] = _anchor.last_Java_sp
  0.00%  0x3002f545: 65 48 8b 3c 25 40 00 00 00        movq    %gs:64, %rdi                  ; thread:[64] = _current_thread
         0x3002f54e: 48 b8 00 ec 5e e7 65 7f 00 00     movabsq    $140075650182144, %rax     ; 0x7f65e75eec00 = DolphinRuntime::newarray(JavaThread*, int, BasicType, int)
         0x3002f558: be 08 00 00 00                    movl    $8, %esi                      
         0x3002f55d: ba 08 00 00 00                    movl    $8, %edx                      
         0x3002f562: 4c 89 04 24                       movq    %r8, (%rsp)                   
         0x3002f566: 44 89 c1                          movl    %r8d, %ecx                    
         0x3002f569: ff d0                             callq    *%rax                        ; 0x7f65e75eec00 = DolphinRuntime::newarray(JavaThread*, int, BasicType, int)
         0x3002f56b: 65 48 c7 04 25 58 06 00 00 00     movq    $0, %gs:1624                  ; thread:[1624] = _anchor.last_Java_sp
         0x3002f578: eb 8b                             jmp    -117                           ; 0x3002f505
         0x3002f57a: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f584: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
....................................................................................................
 50.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3000cc7e:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca

         0x3000cc7e: c5 7a 6f 8c 24 c0 00 00 00        vmovdqu    192(%rsp), %xmm9           
         0x3000cc87: c5 7a 6f 94 24 a0 00 00 00        vmovdqu    160(%rsp), %xmm10          
         0x3000cc90: c5 7a 6f 9c 24 80 00 00 00        vmovdqu    128(%rsp), %xmm11          
         0x3000cc99: c5 7a 6f 64 24 60                 vmovdqu    96(%rsp), %xmm12           
         0x3000cc9f: c5 7a 6f 6c 24 40                 vmovdqu    64(%rsp), %xmm13           
         0x3000cca5: c5 7a 6f 74 24 20                 vmovdqu    32(%rsp), %xmm14           
         0x3000ccab: c5 7a 6f 3c 24                    vmovdqu    (%rsp), %xmm15             
         0x3000ccb0: 48 81 c4 88 02 00 00              addq    $648, %rsp                    
         0x3000ccb7: c3                                retq                                  
         StubRoutines::new_stub_dont_check_tls_zero_region_array_orca [0x000000003000d3c0, 0x000000003000d530] (368 bytes)
  1.94%  0x3000d3c0: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
  5.41%  0x3000d3c9: 48 03 c8                          addq    %rax, %rcx                    
  0.41%  0x3000d3cc: 65 48 3b 0c 25 b8 00 00 00        cmpq    %gs:184, %rcx                 ; thread:[184] = _tlab._end
         0x3000d3d5: 0f 83 52 01 00 00                 jae    338                            ; 0x3000d52d
  0.50%  0x3000d3db: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
  0.98%  0x3000d3e4: 48 03 f8                          addq    %rax, %rdi                    
         0x3000d3e7: 48 83 c7 90                       addq    $-112, %rdi                   
         0x3000d3eb: 48 81 e7 00 fe ff ff              andq    $-512, %rdi                   
  0.00%  0x3000d3f2: 65 48 3b 3c 25 c0 00 00 00        cmpq    %gs:192, %rdi                 
  0.46%  0x3000d3fb: 65 48 0f 42 3c 25 c0 00 00 00     cmovbq    %gs:192, %rdi               
  0.00%  0x3000d405: 48 81 c1 00 02 00 00              addq    $512, %rcx                    
         0x3000d40c: 48 81 e1 00 fe ff ff              andq    $-512, %rcx                   
         0x3000d413: 65 48 89 0c 25 c0 00 00 00        movq    %rcx, %gs:192                 
  2.42%  0x3000d41c: 48 2b cf                          subq    %rdi, %rcx                    
         0x3000d41f: 81 f9 00 10 00 00                 cmpl    $4096, %ecx                   
         0x3000d425: 0f 8d e2 00 00 00                 jge    226                            ; 0x3000d50d
         0x3000d42b: 48 03 cf                          addq    %rdi, %rcx                    
         0x3000d42e: c4 41 00 57 ff                    vxorps    %xmm15, %xmm15, %xmm15      
  0.42%  0x3000d433: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x3000d43c: 66 66 66 90                       nop                                   
         0x3000d440: 0f 0d 8f 80 04 00 00              prefetchw    1152(%rdi)               
  0.02%  0x3000d447: 0f 0d 8f c0 04 00 00              prefetchw    1216(%rdi)               
  0.52%  0x3000d44e: 0f 0d 8f 00 05 00 00              prefetchw    1280(%rdi)               
  1.11%  0x3000d455: 0f 0d 8f 40 05 00 00              prefetchw    1344(%rdi)               
  0.09%  0x3000d45c: 0f 0d 8f 80 05 00 00              prefetchw    1408(%rdi)               
  0.12%  0x3000d463: 0f 0d 8f c0 05 00 00              prefetchw    1472(%rdi)               
  0.45%  0x3000d46a: 0f 0d 8f 00 06 00 00              prefetchw    1536(%rdi)               
  1.50%  0x3000d471: 0f 0d 8f 40 06 00 00              prefetchw    1600(%rdi)               
  0.48%  0x3000d478: c5 7d 7f bf 80 00 00 00           vmovdqa    %ymm15, 128(%rdi)          
         0x3000d480: c5 7d 7f bf a0 00 00 00           vmovdqa    %ymm15, 160(%rdi)          
  0.29%  0x3000d488: c5 7d 7f bf c0 00 00 00           vmovdqa    %ymm15, 192(%rdi)          
  1.05%  0x3000d490: c5 7d 7f bf e0 00 00 00           vmovdqa    %ymm15, 224(%rdi)          
  0.07%  0x3000d498: c5 7d 7f bf 00 01 00 00           vmovdqa    %ymm15, 256(%rdi)          
  0.95%  0x3000d4a0: c5 7d 7f bf 20 01 00 00           vmovdqa    %ymm15, 288(%rdi)          
         0x3000d4a8: c5 7d 7f bf 40 01 00 00           vmovdqa    %ymm15, 320(%rdi)          
  0.36%  0x3000d4b0: c5 7d 7f bf 60 01 00 00           vmovdqa    %ymm15, 352(%rdi)          
  0.05%  0x3000d4b8: c5 7d 7f bf 80 01 00 00           vmovdqa    %ymm15, 384(%rdi)          
  0.39%  0x3000d4c0: c5 7d 7f bf a0 01 00 00           vmovdqa    %ymm15, 416(%rdi)          
  0.10%  0x3000d4c8: c5 7d 7f bf c0 01 00 00           vmovdqa    %ymm15, 448(%rdi)          
  0.16%  0x3000d4d0: c5 7d 7f bf e0 01 00 00           vmovdqa    %ymm15, 480(%rdi)          
  0.39%  0x3000d4d8: c5 7d 7f bf 00 02 00 00           vmovdqa    %ymm15, 512(%rdi)          
  0.21%  0x3000d4e0: c5 7d 7f bf 20 02 00 00           vmovdqa    %ymm15, 544(%rdi)          
  0.38%  0x3000d4e8: c5 7d 7f bf 40 02 00 00           vmovdqa    %ymm15, 576(%rdi)          
  0.30%  0x3000d4f0: c5 7d 7f bf 60 02 00 00           vmovdqa    %ymm15, 608(%rdi)          
  0.42%  0x3000d4f8: 48 81 c7 00 02 00 00              addq    $512, %rdi                    
  0.00%  0x3000d4ff: 48 3b f9                          cmpq    %rcx, %rdi                    
         0x3000d502: 0f 85 38 ff ff ff                 jne    -200                           ; 0x3000d440
         0x3000d508: c5 f8 77                          vzeroupper                            
  0.47%  0x3000d50b: eb 18                             jmp    24                             ; 0x3000d525
         0x3000d50d: 48 81 c7 80 00 00 00              addq    $128, %rdi                    
         0x3000d514: c4 61 f9 6e f8                    vmovq    %rax, %xmm15                 
         0x3000d519: 33 c0                             xorl    %eax, %eax                    
         0x3000d51b: f3 48 aa                          rep        stosb    %al, %es:(%rdi)   
         0x3000d51e: c4 61 f9 7e f8                    vmovq    %xmm15, %rax                 
         0x3000d523: eb 00                             jmp    0                              ; 0x3000d525
  0.02%  0x3000d525: 89 70 04                          movl    %esi, 4(%rax)                 
  0.43%  0x3000d528: 48 89 50 08                       movq    %rdx, 8(%rax)                 
         0x3000d52c: c3                                retq                                  
         0x3000d52d: 33 c0                             xorl    %eax, %eax                    
         0x3000d52f: c3                                retq                                  
         StubRoutines::new_stub_dont_check_tls_zero_region_orca [0x000000003000d240, 0x000000003000d38c] (332 bytes)
         0x3000d240: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
         0x3000d249: 48 03 c8                          addq    %rax, %rcx                    
         0x3000d24c: 65 48 3b 0c 25 b8 00 00 00        cmpq    %gs:184, %rcx                 ; thread:[184] = _tlab._end
         0x3000d255: 0f 83 2e 01 00 00                 jae    302                            ; 0x3000d389
         0x3000d25b: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
         0x3000d264: 65 48 8b 3c 25 c0 00 00 00        movq    %gs:192, %rdi                 
....................................................................................................
 22.84%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x30026700:0x30026720] in [unknown] (perf-133691.map)

 <no assembly is recorded, native region>
....................................................................................................
 17.92%  <total for region 3>

....[Hottest Regions]...............................................................................
 50.82%  [0x3002f4a0:0x3002f584] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse[Falcon]
 22.84%  [0x3000cc7e:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
 17.92%  [0x30026700:0x30026720] in [unknown] (perf-133691.map)
  0.56%  [0x7f65e726fa75:0x7f65e726fa81] in [unknown] (libjvm.so)
  0.36%  [0x7f65e74b4840:0x7f65e74b4860] in [unknown] (libjvm.so)
  0.22%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb93b0:0xffffffffa9eb947b] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0x7f65e1f75f95:0x7f65e1f7600d] in PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d2] in [unknown] ([kernel.kallsyms])
  0.11%  [0x7fff7ed2ca10:0x7fff7ed2caa3] in [unknown] ([vdso])
  0.10%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.10%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a5] in [unknown] ([kernel.kallsyms])
  0.09%  [0x7f65e74b49d0:0x7f65e74b49e3] in [unknown] (libjvm.so)
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ee587e:0xffffffffa9ee588c] in [unknown] ([kernel.kallsyms])
  5.62%  <...other 934 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 50.82%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse[Falcon]
 22.84%  StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
 17.92%  [unknown] (perf-133691.map)
  4.24%  [unknown] ([kernel.kallsyms])
  2.55%  [unknown] (libjvm.so)
  0.14%  PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.13%  [unknown] (libc-2.31.so)
  0.11%  PMEM_PageInfo::page_info (libaztall.so)
  0.11%  [unknown] ([vdso])
  0.05%  thread_stack_region_start; thread_stack_region_end (libazsys3.so)
  0.04%  PMEM_PageQueue::head; PMEM_PageQueue::set_head; PMEM_PageQueue::tail; PMEM_PageQueue::set_tail; PMEM_PageQueue::set_empty; PMEM_PageQueue::is_empty (libaztall.so)
  0.04%  PMEM_PageInfo::is_disallowed; PMEM_PageInfo::is_not_funded; PMEM_PageInfo::is_allocatable; PMEM_PageInfo::page_num; PMEM_PageInfo::is_free; PMEM_PageInfo::is_allocated (libaztall.so)
  0.04%  clock_gettime (libc-2.31.so)
  0.04%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.04%  PMEM_PageZone::allocate_page (libaztall.so)
  0.03%  PMEM_PageInfo::page_info; PMEM_PageManager::num_zones (libaztall.so)
  0.03%  VMEM_PageManager::zone_count; VMEM_PageManager::allowed_zone; VMEM_PageManager::is_premapped_page (libaztall.so)
  0.03%  __pthread_mutex_lock (libpthread-2.31.so)
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.02%  PMEM_PageManager::add_active_ref_count_for_page (libaztall.so)
  0.78%  <...other 117 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 73.68%  <generated code>
 17.92%  <native code in (perf-133691.map)>
  4.24%  <native code in ([kernel.kallsyms])>
  2.55%  <native code in (libjvm.so)>
  1.11%  <native code in (libaztall.so)>
  0.21%  <native code in (libc-2.31.so)>
  0.11%  <native code in ([vdso])>
  0.08%  <native code in (libpthread-2.31.so)>
  0.08%  <native code in (libazsys3.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (kvm.ko)>
....................................................................................................
100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse:·gc.alloc.rate":
  5954.144 ±(99.9%) 717.971 MB/sec [Average]
  (min, avg, max) = (5749.858, 5954.144, 6091.923), stdev = 186.455
  CI (99.9%): [5236.173, 6672.116] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse:·gc.alloc.rate.norm":
  80.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (80.000, 80.000, 80.000), stdev = 0.001
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse:·gc.count":
  490.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (95.000, 98.000, 100.000), stdev = 2.739
  CI (99.9%): [490.000, 490.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse:·gc.time":
  1497.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (289.000, 299.400, 309.000), stdev = 8.295
  CI (99.9%): [1497.000, 1497.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 25.00% complete, ETA 00:11:11
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 29.385 ns/op
# Warmup Iteration   2: 27.587 ns/op
# Warmup Iteration   3: 27.609 ns/op
# Warmup Iteration   4: 27.589 ns/op
# Warmup Iteration   5: 27.587 ns/op
Iteration   1: 27.577 ns/op
                 ·gc.alloc.rate:      2766.466 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           45.000 counts
                 ·gc.time:            139.000 ms

Iteration   2: 27.571 ns/op
                 ·gc.alloc.rate:      2767.138 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           40.000 counts
                 ·gc.time:            123.000 ms

Iteration   3: 27.555 ns/op
                 ·gc.alloc.rate:      2768.706 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           45.000 counts
                 ·gc.time:            139.000 ms

Iteration   4: 27.558 ns/op
                 ·gc.alloc.rate:      2768.422 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           45.000 counts
                 ·gc.time:            138.000 ms

Iteration   5: 27.555 ns/op
                 ·gc.alloc.rate:      2768.716 MB/sec
                 ·gc.alloc.rate.norm: 80.000 B/op
                 ·gc.count:           45.000 counts
                 ·gc.time:            137.000 ms

# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural":
  27.563 ±(99.9%) 0.039 ns/op [Average]
  (min, avg, max) = (27.555, 27.563, 27.577), stdev = 0.010
  CI (99.9%): [27.524, 27.603] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·asm":
PrintAssembly processed: 142869 total address lines.
Perf output processed (skipped 57.266 seconds):
 Column 1: cycles (52263 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f4a0:0x3002f632] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural[Falcon]

         0x3002f60e: ff d1                             callq    *%rcx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f610: 48 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rcx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f61a: 41 bb 10 00 00 00                 movl    $16, %r11d                    
         0x3002f620: ff d1                             callq    *%rcx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f622: 48 b8 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rax           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x3002f62c: 41 bb 10 00 00 00                 movl    $16, %r11d                    
         0x3002f632: ff d0                             callq    *%rax                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         -----------
           # {method}{0x20002658048} array_dse_inter_procedural[Falcon] ()Ljava/lang/Object; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark
         Decoding CodeBlob 0x3002f400
  0.90%  0x3002f4a0: eb f9                             pushq    %rbp                         
  4.28%  0x3002f4a2: 41 57                             pushq    %r15                         
  0.16%  0x3002f4a4: 41 56                             pushq    %r14                         
  0.52%  0x3002f4a6: 41 55                             pushq    %r13                         
  0.11%  0x3002f4a8: 41 54                             pushq    %r12                         
  0.77%  0x3002f4aa: 53                                pushq    %rbx                         
  0.39%  0x3002f4ab: 48 83 ec 38                       subq    $56, %rsp                     
  0.19%  0x3002f4af: 48 89 fb                          movq    %rdi, %rbx                    
  0.66%  0x3002f4b2: 65 65 65 81 3c 25 68 00 00 00     cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.49%  0x3002f4c0: 0f 85 15 01 00 00                 jne    277                            ; 0x3002f5db
  0.28%  0x3002f4c6: 8b 43 08                          movl    8(%rbx), %eax                 
  0.07%  0x3002f4c9: 85 c0                             testl    %eax, %eax                   
         0x3002f4cb: 0f 88 1b 01 00 00                 js    283                             ; 0x3002f5ec
  0.59%  0x3002f4d1: 48 89 df                          movq    %rbx, %rdi                    
  0.34%  0x3002f4d4: 0f 1f 40 00                       nopl    (%rax)                        
  0.30%  0x3002f4d8: e8 23 e4 fd ff                    callq    -138205                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.01%  0x3002f4dd: 8b 43 08                          movl    8(%rbx), %eax                 
  1.62%  0x3002f4e0: 85 c0                             testl    %eax, %eax                   
         0x3002f4e2: 0f 88 16 01 00 00                 js    278                             ; 0x3002f5fe
  1.29%  0x3002f4e8: 48 89 df                          movq    %rbx, %rdi                    
  0.01%  0x3002f4eb: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.01%  0x3002f4f0: e8 0b e4 fd ff                    callq    -138229                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  1.01%  0x3002f4f5: 2e 2e 2e 2e 2e 2e 2e 2e 8b 43     movl    %cs:8(%rbx), %eax             
  5.24%  0x3002f500: 85 c0                             testl    %eax, %eax                   
         0x3002f502: 0f 88 08 01 00 00                 js    264                             ; 0x3002f610
  1.30%  0x3002f508: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f50b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.00%  0x3002f510: e8 eb e3 fd ff                    callq    -138261                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  1.09%  0x3002f515: 8b 43 08                          movl    8(%rbx), %eax                 
  5.27%  0x3002f518: 2e 2e 2e 2e 2e 49 89 c0           movq    %rax, %r8                     
  0.00%  0x3002f520: 85 c0                             testl    %eax, %eax                   
         0x3002f522: 0f 88 fa 00 00 00                 js    250                             ; 0x3002f622
  1.33%  0x3002f528: 49 8d 48 17                       leaq    23(%r8), %rcx                 
         0x3002f52c: 48 83 e1 f8                       andq    $-8, %rcx                     
  1.33%  0x3002f530: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
  3.85%  0x3002f539: 2e 2e 2e 48 8d 14 08              leaq    %cs:(%rax,%rcx), %rdx         
  1.32%  0x3002f540: 65 48 3b 14 25 c0 00 00 00        cmpq    %gs:192, %rdx                 
         0x3002f549: 73 29                             jae    41                             ; 0x3002f574
  2.32%  0x3002f54b: 65 48 89 14 25 b0 00 00 00        movq    %rdx, %gs:176                 ; thread:[176] = _tlab._top
  4.24%  0x3002f554: 48 b9 00 00 00 00 08 00 00 00     movabsq    $34359738368, %rcx         ; 0x800000000 = 
  0.00%  0x3002f55e: 48 89 08                          movq    %rcx, (%rax)                  
  1.12%  0x3002f561: 4c 89 40 08                       movq    %r8, 8(%rax)                  
  4.62%  0x3002f565: 48 83 c4 38                       addq    $56, %rsp                     
  0.00%  0x3002f569: 5b                                popq    %rbx                          
  1.12%  0x3002f56a: 41 5c                             popq    %r12                          
  1.35%  0x3002f56c: 41 5d                             popq    %r13                          
  0.12%  0x3002f56e: 41 5e                             popq    %r14                          
  0.10%  0x3002f570: 41 5f                             popq    %r15                          
  0.27%  0x3002f572: 5d                                popq    %rbp                          
  1.25%  0x3002f573: c3                                retq                                  
  0.24%  0x3002f574: 48 b8 c0 d3 00 30 00 00 00 00     movabsq    $805360576, %rax           ; 0x3000d3c0 = StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
         0x3002f57e: be 08 00 00 00                    movl    $8, %esi                      
         0x3002f583: 4c 89 c2                          movq    %r8, %rdx                     
         0x3002f586: 31 ff                             xorl    %edi, %edi                    
  0.21%  0x3002f588: ff d0                             callq    *%rax                        ; 0x3000d3c0 = StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.17%  0x3002f58a: 48 85 c0                          testq    %rax, %rax                   
         0x3002f58d: 75 d6                             jne    -42                            ; 0x3002f565
         0x3002f58f: 65 48 c7 04 25 60 06 00 00 00     movq    $0, %gs:1632                  ; thread:[1632] = _anchor.last_Java_pc
         0x3002f59c: 65 48 89 24 25 58 06 00 00        movq    %rsp, %gs:1624                ; thread:[1624] = _anchor.last_Java_sp
         0x3002f5a5: 65 48 8b 3c 25 40 00 00 00        movq    %gs:64, %rdi                  ; thread:[64] = _current_thread
         0x3002f5ae: 48 b8 00 7c c4 12 1e 7f 00 00     movabsq    $139767140613120, %rax     ; 0x7f1e12c47c00 = DolphinRuntime::newarray(JavaThread*, int, BasicType, int)
         0x3002f5b8: be 08 00 00 00                    movl    $8, %esi                      
         0x3002f5bd: ba 08 00 00 00                    movl    $8, %edx                      
         0x3002f5c2: 4c 89 44 24 30                    movq    %r8, 48(%rsp)                 
         0x3002f5c7: 44 89 c1                          movl    %r8d, %ecx                    
         0x3002f5ca: ff d0                             callq    *%rax                        ; 0x7f1e12c47c00 = DolphinRuntime::newarray(JavaThread*, int, BasicType, int)
....................................................................................................
 51.88%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x32b14280:0x32b142aa] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink[C1]

         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl$1 from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded sun.reflect.misc.ReflectUtil from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded jdk.internal.reflect.UnsafeIntegerFieldAccessorImpl from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded org.openjdk.jmh.runner.BenchmarkHandler$1 from file:/home/gogu/git/jvm-performance-benchmarks/benchmarks/target/benchmarks.jar]
         6.550:  250         1 started   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink ()V (tid 133838) (kid 1447 pkid/prev 1423/NA) (mid 1481735 pmid 18442) (bytes 1) (generation 0) (lvl O2) (score 1) (score_updated 0ms; orig 1; promoted 0) (wait 0ms)
         [Loaded java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionNode from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
           # {method}{0x20002658200} sink[C1] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark
         Decoding CodeBlob 0x32b14200
  6.62%  0x32b14280: e8 7b 13 50 fd 00 00              subq    $8, %rsp                      
  0.07%  0x32b14287: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 11.90%  0x32b14290: 75 02                             jne    2                              ; 0x32b14294
  3.26%  0x32b14292: 59                                popq    %rcx                          
  0.06%  0x32b14293: c3                                retq                                  
         0x32b14294: e8 a7 32 50 fd                    callq    -45075801                    ; 0x30017540 = StubRoutines::safepoint_handler
         0x32b14299: eb f7                             jmp    -9                             ; 0x32b14292
                             // Generic exception handler
         0x32b1429b: 59                                popq    %rcx                          
         0x32b1429c: e9 df db 50 fd                    jmp    -45032481                      ; 0x30021e80 = unwind_exception Runtime1 stub
         0x32b142a1: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b142a5: e9 56 9f 4f fd                    jmp    -45113514                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b142aa: cc                                int3                                  
         <nmethodAdapter compile_id='250' level='1' size='40' address='0x00007f1d080e22a0' dependencies_offset='32' stamp='79928.240'/>
         6.550:  250         1 inlining into com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink ()V (tid 133838) (kid 1447 pkid/prev 1423/NA) (mid 1481735 pmid 18442) (bytes 1) (generation 0) (lvl O2) (score 1) (score_updated 0ms; orig 1; promoted 0) (wait 0ms)
....................................................................................................
 21.92%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x30026b00:0x30026b20] in [unknown] (perf-133823.map)

 <no assembly is recorded, native region>
....................................................................................................
  9.44%  <total for region 3>

....[Hottest Region 4]..............................................................................
 [0x3000d240:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca

         0x3000d3d5: 0f 83 52 01 00 00                 jae    338                            ; 0x3000d52d
  0.24%  0x3000d3db: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
  0.47%  0x3000d3e4: 48 03 f8                          addq    %rax, %rdi                    
         0x3000d3e7: 48 83 c7 90                       addq    $-112, %rdi                   
         0x3000d3eb: 48 81 e7 00 fe ff ff              andq    $-512, %rdi                   
         0x3000d3f2: 65 48 3b 3c 25 c0 00 00 00        cmpq    %gs:192, %rdi                 
  0.21%  0x3000d3fb: 65 48 0f 42 3c 25 c0 00 00 00     cmovbq    %gs:192, %rdi               
         0x3000d405: 48 81 c1 00 02 00 00              addq    $512, %rcx                    
         0x3000d40c: 48 81 e1 00 fe ff ff              andq    $-512, %rcx                   
         0x3000d413: 65 48 89 0c 25 c0 00 00 00        movq    %rcx, %gs:192                 
  1.11%  0x3000d41c: 48 2b cf                          subq    %rdi, %rcx                    
         0x3000d41f: 81 f9 00 10 00 00                 cmpl    $4096, %ecx                   
         0x3000d425: 0f 8d e2 00 00 00                 jge    226                            ; 0x3000d50d
         0x3000d42b: 48 03 cf                          addq    %rdi, %rcx                    
         0x3000d42e: c4 41 00 57 ff                    vxorps    %xmm15, %xmm15, %xmm15      
  0.22%  0x3000d433: 66 0f 1f 84 00 00 00 00 00        nopw    (%rax,%rax)                   
         0x3000d43c: 66 66 66 90                       nop                                   
         0x3000d440: 0f 0d 8f 80 04 00 00              prefetchw    1152(%rdi)               
  0.00%  0x3000d447: 0f 0d 8f c0 04 00 00              prefetchw    1216(%rdi)               
  0.24%  0x3000d44e: 0f 0d 8f 00 05 00 00              prefetchw    1280(%rdi)               
  0.06%  0x3000d455: 0f 0d 8f 40 05 00 00              prefetchw    1344(%rdi)               
  0.04%  0x3000d45c: 0f 0d 8f 80 05 00 00              prefetchw    1408(%rdi)               
  0.03%  0x3000d463: 0f 0d 8f c0 05 00 00              prefetchw    1472(%rdi)               
  0.21%  0x3000d46a: 0f 0d 8f 00 06 00 00              prefetchw    1536(%rdi)               
  0.65%  0x3000d471: 0f 0d 8f 40 06 00 00              prefetchw    1600(%rdi)               
  0.21%  0x3000d478: c5 7d 7f bf 80 00 00 00           vmovdqa    %ymm15, 128(%rdi)          
         0x3000d480: c5 7d 7f bf a0 00 00 00           vmovdqa    %ymm15, 160(%rdi)          
  0.12%  0x3000d488: c5 7d 7f bf c0 00 00 00           vmovdqa    %ymm15, 192(%rdi)          
  0.34%  0x3000d490: c5 7d 7f bf e0 00 00 00           vmovdqa    %ymm15, 224(%rdi)          
  0.04%  0x3000d498: c5 7d 7f bf 00 01 00 00           vmovdqa    %ymm15, 256(%rdi)          
  0.55%  0x3000d4a0: c5 7d 7f bf 20 01 00 00           vmovdqa    %ymm15, 288(%rdi)          
         0x3000d4a8: c5 7d 7f bf 40 01 00 00           vmovdqa    %ymm15, 320(%rdi)          
  0.16%  0x3000d4b0: c5 7d 7f bf 60 01 00 00           vmovdqa    %ymm15, 352(%rdi)          
  0.02%  0x3000d4b8: c5 7d 7f bf 80 01 00 00           vmovdqa    %ymm15, 384(%rdi)          
  0.24%  0x3000d4c0: c5 7d 7f bf a0 01 00 00           vmovdqa    %ymm15, 416(%rdi)          
  0.02%  0x3000d4c8: c5 7d 7f bf c0 01 00 00           vmovdqa    %ymm15, 448(%rdi)          
  0.09%  0x3000d4d0: c5 7d 7f bf e0 01 00 00           vmovdqa    %ymm15, 480(%rdi)          
  0.19%  0x3000d4d8: c5 7d 7f bf 00 02 00 00           vmovdqa    %ymm15, 512(%rdi)          
  0.11%  0x3000d4e0: c5 7d 7f bf 20 02 00 00           vmovdqa    %ymm15, 544(%rdi)          
  0.15%  0x3000d4e8: c5 7d 7f bf 40 02 00 00           vmovdqa    %ymm15, 576(%rdi)          
  0.14%  0x3000d4f0: c5 7d 7f bf 60 02 00 00           vmovdqa    %ymm15, 608(%rdi)          
  0.21%  0x3000d4f8: 48 81 c7 00 02 00 00              addq    $512, %rdi                    
         0x3000d4ff: 48 3b f9                          cmpq    %rcx, %rdi                    
         0x3000d502: 0f 85 38 ff ff ff                 jne    -200                           ; 0x3000d440
         0x3000d508: c5 f8 77                          vzeroupper                            
  0.22%  0x3000d50b: eb 18                             jmp    24                             ; 0x3000d525
         0x3000d50d: 48 81 c7 80 00 00 00              addq    $128, %rdi                    
         0x3000d514: c4 61 f9 6e f8                    vmovq    %rax, %xmm15                 
         0x3000d519: 33 c0                             xorl    %eax, %eax                    
         0x3000d51b: f3 48 aa                          rep        stosb    %al, %es:(%rdi)   
         0x3000d51e: c4 61 f9 7e f8                    vmovq    %xmm15, %rax                 
         0x3000d523: eb 00                             jmp    0                              ; 0x3000d525
  0.00%  0x3000d525: 89 70 04                          movl    %esi, 4(%rax)                 
  0.18%  0x3000d528: 48 89 50 08                       movq    %rdx, 8(%rax)                 
         0x3000d52c: c3                                retq                                  
         0x3000d52d: 33 c0                             xorl    %eax, %eax                    
         0x3000d52f: c3                                retq                                  
         StubRoutines::new_stub_dont_check_tls_zero_region_orca [0x000000003000d240, 0x000000003000d38c] (332 bytes)
         0x3000d240: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
         0x3000d249: 48 03 c8                          addq    %rax, %rcx                    
         0x3000d24c: 65 48 3b 0c 25 b8 00 00 00        cmpq    %gs:184, %rcx                 ; thread:[184] = _tlab._end
         0x3000d255: 0f 83 2e 01 00 00                 jae    302                            ; 0x3000d389
         0x3000d25b: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
         0x3000d264: 65 48 8b 3c 25 c0 00 00 00        movq    %gs:192, %rdi                 
....................................................................................................
  5.55%  <total for region 4>

....[Hottest Regions]...............................................................................
 51.88%  [0x3002f4a0:0x3002f632] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural[Falcon]
 21.92%  [0x32b14280:0x32b142aa] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink[C1]
  9.44%  [0x30026b00:0x30026b20] in [unknown] (perf-133823.map)
  5.55%  [0x3000d240:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  4.68%  [0x3000cc7e:0x3000d43c] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.25%  [0x7f1e128c8a75:0x7f1e128c8a81] in [unknown] (libjvm.so)
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb93b5:0xffffffffa9eb9491] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.16%  [0x7f1e12b0d840:0x7f1e12b0d89c] in [unknown] (libjvm.so)
  0.15%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eef44f:0xffffffffa9eef4ad] in [unknown] ([kernel.kallsyms])
  0.10%  [0x7f1e0d5cef96:0x7f1e0d5cf00d] in PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a3] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f07060:0xffffffffa9f070b1] in [unknown] ([kernel.kallsyms])
  4.34%  <...other 740 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 51.88%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::array_dse_inter_procedural[Falcon]
 21.92%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink[C1]
 10.23%  StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  9.44%  [unknown] (perf-133823.map)
  4.30%  [unknown] ([kernel.kallsyms])
  1.31%  [unknown] (libjvm.so)
  0.10%  PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.08%  [unknown] (libc-2.31.so)
  0.04%  PMEM_PageInfo::page_info (libaztall.so)
  0.04%  [unknown] ([vdso])
  0.03%  VMEM_PageManager::zone_count; VMEM_PageManager::allowed_zone; VMEM_PageManager::is_premapped_page (libaztall.so)
  0.03%  thread_stack_region_start (libazsys3.so)
  0.02%  __errno_location (libpthread-2.31.so)
  0.02%  __pthread_mutex_lock (libpthread-2.31.so)
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.02%  PMEM_PageInfo::is_disallowed; PMEM_PageInfo::is_allocatable; PMEM_PageInfo::is_allocated (libaztall.so)
  0.02%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.02%  PMEM_PageInfo::mark_free; PMEM_PageInfo::mark_allocated; PMEM_PageInfo::set_next (libaztall.so)
  0.02%  PMEM_PageQueue::head; PMEM_PageQueue::tail; PMEM_PageQueue::is_empty (libaztall.so)
  0.02%  PMEM_PageInfo::zone_id (libaztall.so)
  0.44%  <...other 94 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 84.06%  <generated code>
  9.44%  <native code in (perf-133823.map)>
  4.30%  <native code in ([kernel.kallsyms])>
  1.31%  <native code in (libjvm.so)>
  0.59%  <native code in (libaztall.so)>
  0.11%  <native code in (libc-2.31.so)>
  0.07%  <native code in (libpthread-2.31.so)>
  0.05%  <native code in (libazsys3.so)>
  0.04%  <native code in ([vdso])>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (kvm.ko)>
  0.00%  <native code in (libz.so.1.2.11)>
....................................................................................................
100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·gc.alloc.rate":
  2767.890 ±(99.9%) 3.957 MB/sec [Average]
  (min, avg, max) = (2766.466, 2767.890, 2768.716), stdev = 1.028
  CI (99.9%): [2763.932, 2771.847] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·gc.alloc.rate.norm":
  80.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (80.000, 80.000, 80.000), stdev = 0.001
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·gc.count":
  220.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (40.000, 44.000, 45.000), stdev = 2.236
  CI (99.9%): [220.000, 220.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·gc.time":
  676.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (123.000, 135.200, 139.000), stdev = 6.870
  CI (99.9%): [676.000, 676.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline
# Parameters: (size = 64)

# Run progress: 37.50% complete, ETA 00:09:19
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.927 ns/op
# Warmup Iteration   2: 7.567 ns/op
# Warmup Iteration   3: 7.199 ns/op
# Warmup Iteration   4: 7.137 ns/op
# Warmup Iteration   5: 7.155 ns/op
Iteration   1: 7.173 ns/op
                 ·gc.alloc.rate:      2127.145 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           35.000 counts
                 ·gc.time:            109.000 ms

Iteration   2: 7.167 ns/op
                 ·gc.alloc.rate:      2128.874 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           35.000 counts
                 ·gc.time:            106.000 ms

Iteration   3: 7.144 ns/op
                 ·gc.alloc.rate:      2135.916 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           30.000 counts
                 ·gc.time:            91.000 ms

Iteration   4: 7.155 ns/op
                 ·gc.alloc.rate:      2132.572 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           35.000 counts
                 ·gc.time:            106.000 ms

Iteration   5: 7.154 ns/op
                 ·gc.alloc.rate:      2132.719 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           35.000 counts
                 ·gc.time:            109.000 ms

# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline":
  7.159 ±(99.9%) 0.045 ns/op [Average]
  (min, avg, max) = (7.144, 7.159, 7.173), stdev = 0.012
  CI (99.9%): [7.114, 7.204] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·asm":
PrintAssembly processed: 142751 total address lines.
Perf output processed (skipped 57.996 seconds):
 Column 1: cycles (52180 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f2a0:0x3002f333] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline[Falcon]

         0x3002f30a: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f30c: eb 9f                             jmp    -97                            ; 0x3002f2ad
         0x3002f30e: 65 48 8b 3c 25 40 00 00 00        movq    %gs:64, %rdi                  ; thread:[64] = _current_thread
  0.00%  0x3002f317: 48 b8 80 58 01 30 00 00 00 00     movabsq    $805394560, %rax           ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f321: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f326: ff d0                             callq    *%rax                        ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f328: eb d4                             jmp    -44                            ; 0x3002f2fe
         -----------
           # {method}{0x200026576b0} obj_alloc_baseline[Falcon] ()Ljava/lang/Object; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark
         Decoding CodeBlob 0x3002f200
 10.24%  0x3002f2a0: eb f9                             pushq    %rax                         
  4.99%  0x3002f2a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 10.38%  0x3002f2ab: 75 53                             jne    83                             ; 0x3002f300
  4.92%  0x3002f2ad: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
  0.15%  0x3002f2b6: 2e 2e 2e 2e 2e 2e 48 8d 48 10     leaq    %cs:16(%rax), %rcx            
  0.05%  0x3002f2c0: 65 48 3b 0c 25 c0 00 00 00        cmpq    %gs:192, %rcx                 
         0x3002f2c9: 73 18                             jae    24                             ; 0x3002f2e3
  5.12%  0x3002f2cb: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
 14.11%  0x3002f2d4: 48 b9 00 00 00 00 21 00 00 00     movabsq    $141733920768, %rcx        ; 0x2100000000 = 
  0.04%  0x3002f2de: 48 89 08                          movq    %rcx, (%rax)                  
  4.97%  0x3002f2e1: 59                                popq    %rcx                          
  0.12%  0x3002f2e2: c3                                retq                                  
  0.13%  0x3002f2e3: 48 b8 40 d2 00 30 00 00 00 00     movabsq    $805360192, %rax           ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
         0x3002f2ed: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f2f2: b9 10 00 00 00                    movl    $16, %ecx                     
         0x3002f2f7: ff d0                             callq    *%rax                        ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.23%  0x3002f2f9: 48 85 c0                          testq    %rax, %rax                   
         0x3002f2fc: 74 10                             je    16                              ; 0x3002f30e
         0x3002f2fe: 59                                popq    %rcx                          
  0.02%  0x3002f2ff: c3                                retq                                  
         0x3002f300: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f30a: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f30c: eb 9f                             jmp    -97                            ; 0x3002f2ad
         0x3002f30e: 65 48 8b 3c 25 40 00 00 00        movq    %gs:64, %rdi                  ; thread:[64] = _current_thread
  0.00%  0x3002f317: 48 b8 80 58 01 30 00 00 00 00     movabsq    $805394560, %rax           ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f321: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f326: ff d0                             callq    *%rax                        ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f328: eb d4                             jmp    -44                            ; 0x3002f2fe
         0x3002f32a: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f32e: e9 cd ee fd ff                    jmp    -135475                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f333: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jobject com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline()
         Encoded locations size: 4
         offset: 0 length: 138 scope: 0 bci: 0
....................................................................................................
 55.46%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30026700:0x30026720] in [unknown] (perf-133964.map)

 <no assembly is recorded, native region>
....................................................................................................
 30.80%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca

         0x3000d519: 33 c0                             xorl    %eax, %eax                    
         0x3000d51b: f3 48 aa                          rep        stosb    %al, %es:(%rdi)   
         0x3000d51e: c4 61 f9 7e f8                    vmovq    %xmm15, %rax                 
         0x3000d523: eb 00                             jmp    0                              ; 0x3000d525
         0x3000d525: 89 70 04                          movl    %esi, 4(%rax)                 
         0x3000d528: 48 89 50 08                       movq    %rdx, 8(%rax)                 
         0x3000d52c: c3                                retq                                  
         0x3000d52d: 33 c0                             xorl    %eax, %eax                    
         0x3000d52f: c3                                retq                                  
         StubRoutines::new_stub_dont_check_tls_zero_region_orca [0x000000003000d240, 0x000000003000d38c] (332 bytes)
  1.08%  0x3000d240: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
  2.00%  0x3000d249: 48 03 c8                          addq    %rax, %rcx                    
  0.17%  0x3000d24c: 65 48 3b 0c 25 b8 00 00 00        cmpq    %gs:184, %rcx                 ; thread:[184] = _tlab._end
         0x3000d255: 0f 83 2e 01 00 00                 jae    302                            ; 0x3000d389
  0.20%  0x3000d25b: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
  0.40%  0x3000d264: 65 48 8b 3c 25 c0 00 00 00        movq    %gs:192, %rdi                 
         0x3000d26d: 48 81 c1 00 02 00 00              addq    $512, %rcx                    
         0x3000d274: 48 81 e1 00 fe ff ff              andq    $-512, %rcx                   
         0x3000d27b: 65 48 89 0c 25 c0 00 00 00        movq    %rcx, %gs:192                 
  0.18%  0x3000d284: 48 2b cf                          subq    %rdi, %rcx                    
         0x3000d287: 81 f9 00 10 00 00                 cmpl    $4096, %ecx                   
         0x3000d28d: 0f 8d da 00 00 00                 jge    218                            ; 0x3000d36d
         0x3000d293: 48 03 cf                          addq    %rdi, %rcx                    
  0.05%  0x3000d296: c4 41 00 57 ff                    vxorps    %xmm15, %xmm15, %xmm15      
  0.08%  0x3000d29b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x3000d2a0: 0f 0d 8f 80 04 00 00              prefetchw    1152(%rdi)               
  0.56%  0x3000d2a7: 0f 0d 8f c0 04 00 00              prefetchw    1216(%rdi)               
  0.01%  0x3000d2ae: 0f 0d 8f 00 05 00 00              prefetchw    1280(%rdi)               
  0.07%  0x3000d2b5: 0f 0d 8f 40 05 00 00              prefetchw    1344(%rdi)               
  0.08%  0x3000d2bc: 0f 0d 8f 80 05 00 00              prefetchw    1408(%rdi)               
  0.08%  0x3000d2c3: 0f 0d 8f c0 05 00 00              prefetchw    1472(%rdi)               
  0.02%  0x3000d2ca: 0f 0d 8f 00 06 00 00              prefetchw    1536(%rdi)               
  0.44%  0x3000d2d1: 0f 0d 8f 40 06 00 00              prefetchw    1600(%rdi)               
  0.25%  0x3000d2d8: c5 7d 7f bf 80 00 00 00           vmovdqa    %ymm15, 128(%rdi)          
  0.04%  0x3000d2e0: c5 7d 7f bf a0 00 00 00           vmovdqa    %ymm15, 160(%rdi)          
  0.01%  0x3000d2e8: c5 7d 7f bf c0 00 00 00           vmovdqa    %ymm15, 192(%rdi)          
  0.03%  0x3000d2f0: c5 7d 7f bf e0 00 00 00           vmovdqa    %ymm15, 224(%rdi)          
  0.28%  0x3000d2f8: c5 7d 7f bf 00 01 00 00           vmovdqa    %ymm15, 256(%rdi)          
  0.26%  0x3000d300: c5 7d 7f bf 20 01 00 00           vmovdqa    %ymm15, 288(%rdi)          
  0.15%  0x3000d308: c5 7d 7f bf 40 01 00 00           vmovdqa    %ymm15, 320(%rdi)          
  0.13%  0x3000d310: c5 7d 7f bf 60 01 00 00           vmovdqa    %ymm15, 352(%rdi)          
  0.08%  0x3000d318: c5 7d 7f bf 80 01 00 00           vmovdqa    %ymm15, 384(%rdi)          
  0.06%  0x3000d320: c5 7d 7f bf a0 01 00 00           vmovdqa    %ymm15, 416(%rdi)          
  0.05%  0x3000d328: c5 7d 7f bf c0 01 00 00           vmovdqa    %ymm15, 448(%rdi)          
  0.03%  0x3000d330: c5 7d 7f bf e0 01 00 00           vmovdqa    %ymm15, 480(%rdi)          
  0.19%  0x3000d338: c5 7d 7f bf 00 02 00 00           vmovdqa    %ymm15, 512(%rdi)          
  0.07%  0x3000d340: c5 7d 7f bf 20 02 00 00           vmovdqa    %ymm15, 544(%rdi)          
  0.05%  0x3000d348: c5 7d 7f bf 40 02 00 00           vmovdqa    %ymm15, 576(%rdi)          
  0.05%  0x3000d350: c5 7d 7f bf 60 02 00 00           vmovdqa    %ymm15, 608(%rdi)          
  0.10%  0x3000d358: 48 81 c7 00 02 00 00              addq    $512, %rdi                    
  0.03%  0x3000d35f: 48 3b f9                          cmpq    %rcx, %rdi                    
         0x3000d362: 0f 85 38 ff ff ff                 jne    -200                           ; 0x3000d2a0
  0.01%  0x3000d368: c5 f8 77                          vzeroupper                            
  0.17%  0x3000d36b: eb 18                             jmp    24                             ; 0x3000d385
         0x3000d36d: 48 81 c7 80 00 00 00              addq    $128, %rdi                    
         0x3000d374: c4 61 f9 6e f8                    vmovq    %rax, %xmm15                 
         0x3000d379: 33 c0                             xorl    %eax, %eax                    
         0x3000d37b: f3 48 aa                          rep        stosb    %al, %es:(%rdi)   
         0x3000d37e: c4 61 f9 7e f8                    vmovq    %xmm15, %rax                 
         0x3000d383: eb 00                             jmp    0                              ; 0x3000d385
  0.02%  0x3000d385: 89 70 04                          movl    %esi, 4(%rax)                 
  0.13%  0x3000d388: c3                                retq                                  
  0.00%  0x3000d389: 33 c0                             xorl    %eax, %eax                    
         0x3000d38b: c3                                retq                                  
         StubRoutines::new_stub_check_tls_zero_region_array [0x000000003000d080, 0x000000003000d225] (421 bytes)
         0x3000d080: 85 c9                             testl    %ecx, %ecx                   
         0x3000d082: 2e 0f 88 99 01 00 00              js    409                             ; 0x3000d222
         0x3000d089: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
         0x3000d092: 48 03 d0                          addq    %rax, %rdx                    
         0x3000d095: 65 48 3b 14 25 c0 00 00 00        cmpq    %gs:192, %rdx                 
         0x3000d09e: 73 13                             jae    19                             ; 0x3000d0b3
         0x3000d0a0: 65 48 89 14 25 b0 00 00 00        movq    %rdx, %gs:176                 ; thread:[176] = _tlab._top
         0x3000d0a9: 89 70 04                          movl    %esi, 4(%rax)                 
....................................................................................................
  7.61%  <total for region 3>

....[Hottest Regions]...............................................................................
 55.46%  [0x3002f2a0:0x3002f333] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline[Falcon]
 30.80%  [0x30026700:0x30026720] in [unknown] (perf-133964.map)
  7.61%  [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.21%  [0x7f51ae921a75:0x7f51ae921a81] in [unknown] (libjvm.so)
  0.20%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.19%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb93b0:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eb8dd5:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.12%  [0x7f51aeb66840:0x7f51aeb6685b] in [unknown] (libjvm.so)
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9eff400:0xffffffffa9eff43f] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  0.09%  [0x7f51a9627f95:0x7f51a962800d] in PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.09%  [0xffffffffa9f07060:0xffffffffa9f070cd] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a3] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f6875f] in [unknown] ([kernel.kallsyms])
  3.92%  <...other 695 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 55.46%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_alloc_baseline[Falcon]
 30.80%  [unknown] (perf-133964.map)
  7.61%  StubRoutines::new_stub_dont_check_tls_zero_region_orca
  4.06%  [unknown] ([kernel.kallsyms])
  1.22%  [unknown] (libjvm.so)
  0.09%  [unknown] (libc-2.31.so)
  0.09%  PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.04%  PMEM_PageInfo::page_info (libaztall.so)
  0.04%  [unknown] ([vdso])
  0.02%  __pthread_mutex_lock (libpthread-2.31.so)
  0.02%  clock_gettime (libc-2.31.so)
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.02%  VMEM_PageManager::zone_count; VMEM_PageManager::allowed_zone; VMEM_PageManager::is_premapped_page (libaztall.so)
  0.02%  __errno_location (libpthread-2.31.so)
  0.02%  thread_stack_region_start (libazsys3.so)
  0.02%  PMEM_PageInfo::atomic_add_active_ref_count (libaztall.so)
  0.02%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.02%  VMEM_SpaceManager::alias_base_for_addr (libaztall.so)
  0.02%  VMEM_PageManager::get_vmem_page_for_addr (libaztall.so)
  0.02%  PMEM::get_account_usage (libaztall.so)
  0.37%  <...other 98 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 63.10%  <generated code>
 30.80%  <native code in (perf-133964.map)>
  4.06%  <native code in ([kernel.kallsyms])>
  1.22%  <native code in (libjvm.so)>
  0.49%  <native code in (libaztall.so)>
  0.14%  <native code in (libc-2.31.so)>
  0.06%  <native code in (libpthread-2.31.so)>
  0.04%  <native code in ([vdso])>
  0.03%  <native code in (libazsys3.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (ld-2.31.so)>
....................................................................................................
 99.99%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·gc.alloc.rate":
  2131.445 ±(99.9%) 13.337 MB/sec [Average]
  (min, avg, max) = (2127.145, 2131.445, 2135.916), stdev = 3.464
  CI (99.9%): [2118.108, 2144.782] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·gc.alloc.rate.norm":
  16.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (16.000, 16.000, 16.000), stdev = 0.001
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·gc.count":
  170.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (30.000, 34.000, 35.000), stdev = 2.236
  CI (99.9%): [170.000, 170.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·gc.time":
  521.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (91.000, 104.200, 109.000), stdev = 7.530
  CI (99.9%): [521.000, 521.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse
# Parameters: (size = 64)

# Run progress: 50.00% complete, ETA 00:07:28
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.918 ns/op
# Warmup Iteration   2: 7.489 ns/op
# Warmup Iteration   3: 7.430 ns/op
# Warmup Iteration   4: 7.140 ns/op
# Warmup Iteration   5: 7.141 ns/op
Iteration   1: 7.158 ns/op
                 ·gc.alloc.rate:      2131.530 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           35.000 counts
                 ·gc.time:            109.000 ms

Iteration   2: 7.138 ns/op
                 ·gc.alloc.rate:      2137.750 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           30.000 counts
                 ·gc.time:            95.000 ms

Iteration   3: 7.276 ns/op
                 ·gc.alloc.rate:      2096.936 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           35.000 counts
                 ·gc.time:            110.000 ms

Iteration   4: 7.152 ns/op
                 ·gc.alloc.rate:      2133.534 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           35.000 counts
                 ·gc.time:            107.000 ms

Iteration   5: 7.171 ns/op
                 ·gc.alloc.rate:      2127.881 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           30.000 counts
                 ·gc.time:            95.000 ms

# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse":
  7.179 ±(99.9%) 0.215 ns/op [Average]
  (min, avg, max) = (7.138, 7.179, 7.276), stdev = 0.056
  CI (99.9%): [6.964, 7.394] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:·asm":
PrintAssembly processed: 143133 total address lines.
Perf output processed (skipped 58.326 seconds):
 Column 1: cycles (52435 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f4a0:0x3002f533] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse[Falcon]

  0.01%  0x3002f50e: 65 48 8b 3c 25 40 00 00 00        movq    %gs:64, %rdi                  ; thread:[64] = _current_thread
  0.00%  0x3002f517: 48 b8 80 58 01 30 00 00 00 00     movabsq    $805394560, %rax           ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f521: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f526: ff d0                             callq    *%rax                        ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f528: eb d4                             jmp    -44                            ; 0x3002f4fe
         -----------
         7.670:  257         3 enqueued  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/DeadLocalAllocationStoreBenchmark_jmhType;)V (tid 134118) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O2) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 13ms) (wait 0ms)
         7.674:  258    %    3 enqueued  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_obj_dse_jmhTest::obj_dse_avgt_jmhStub (Lorg/openjdk/jmh/runner/InfraControl;Lorg/openjdk/jmh/results/RawResults;Lorg/openjdk/jmh/infra/BenchmarkParams;Lorg/openjdk/jmh/infra/IterationParams;Lorg/openjdk/jmh/infra/ThreadParams;Lorg/openjdk/jmh/infra/Blackhole;Lorg/openjdk/jmh/infra/Control;ILcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/jmh_generated/DeadLocalAllocationStoreBenchmark_jmhType;)V @ 13 (tid 134118) (kid 1414 pkid/prev 1390/NA) (mid 1447942 pmid 18285) (bytes 57) (generation 0) (lvl O0) (score 0) (score_updated 0ms; orig 0; promoted 0) (rank 0, time-between-promotions 13ms) (wait 0ms)
           # {method}{0x20002657630} obj_dse[Falcon] ()Ljava/lang/Object; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark
         Decoding CodeBlob 0x3002f400
  9.75%  0x3002f4a0: eb f9                             pushq    %rax                         
  5.02%  0x3002f4a2: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 10.33%  0x3002f4ab: 75 53                             jne    83                             ; 0x3002f500
  4.99%  0x3002f4ad: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
  0.12%  0x3002f4b6: 2e 2e 2e 2e 2e 2e 48 8d 48 10     leaq    %cs:16(%rax), %rcx            
  0.06%  0x3002f4c0: 65 48 3b 0c 25 c0 00 00 00        cmpq    %gs:192, %rcx                 
         0x3002f4c9: 73 18                             jae    24                             ; 0x3002f4e3
  5.18%  0x3002f4cb: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
 13.33%  0x3002f4d4: 48 b9 00 00 00 00 21 00 00 00     movabsq    $141733920768, %rcx        ; 0x2100000000 = 
  0.06%  0x3002f4de: 48 89 08                          movq    %rcx, (%rax)                  
  5.10%  0x3002f4e1: 59                                popq    %rcx                          
  0.13%  0x3002f4e2: c3                                retq                                  
  0.36%  0x3002f4e3: 48 b8 40 d2 00 30 00 00 00 00     movabsq    $805360192, %rax           ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.10%  0x3002f4ed: be 21 00 00 00                    movl    $33, %esi                     
  0.02%  0x3002f4f2: b9 10 00 00 00                    movl    $16, %ecx                     
         0x3002f4f7: ff d0                             callq    *%rax                        ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.21%  0x3002f4f9: 48 85 c0                          testq    %rax, %rax                   
         0x3002f4fc: 74 10                             je    16                              ; 0x3002f50e
  0.00%  0x3002f4fe: 59                                popq    %rcx                          
  0.01%  0x3002f4ff: c3                                retq                                  
         0x3002f500: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f50a: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f50c: eb 9f                             jmp    -97                            ; 0x3002f4ad
  0.01%  0x3002f50e: 65 48 8b 3c 25 40 00 00 00        movq    %gs:64, %rdi                  ; thread:[64] = _current_thread
  0.00%  0x3002f517: 48 b8 80 58 01 30 00 00 00 00     movabsq    $805394560, %rax           ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f521: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f526: ff d0                             callq    *%rax                        ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f528: eb d4                             jmp    -44                            ; 0x3002f4fe
         0x3002f52a: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f52e: e9 cd ec fd ff                    jmp    -135987                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f533: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jobject com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse()
         Encoded locations size: 4
         offset: 0 length: 138 scope: 0 bci: 0
....................................................................................................
 54.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30026300:0x30026320] in [unknown] (perf-134095.map)

 <no assembly is recorded, native region>
....................................................................................................
 31.20%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca

         0x3000d519: 33 c0                             xorl    %eax, %eax                    
         0x3000d51b: f3 48 aa                          rep        stosb    %al, %es:(%rdi)   
         0x3000d51e: c4 61 f9 7e f8                    vmovq    %xmm15, %rax                 
         0x3000d523: eb 00                             jmp    0                              ; 0x3000d525
         0x3000d525: 89 70 04                          movl    %esi, 4(%rax)                 
         0x3000d528: 48 89 50 08                       movq    %rdx, 8(%rax)                 
         0x3000d52c: c3                                retq                                  
         0x3000d52d: 33 c0                             xorl    %eax, %eax                    
         0x3000d52f: c3                                retq                                  
         StubRoutines::new_stub_dont_check_tls_zero_region_orca [0x000000003000d240, 0x000000003000d38c] (332 bytes)
  1.09%  0x3000d240: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
  1.90%  0x3000d249: 48 03 c8                          addq    %rax, %rcx                    
  0.20%  0x3000d24c: 65 48 3b 0c 25 b8 00 00 00        cmpq    %gs:184, %rcx                 ; thread:[184] = _tlab._end
         0x3000d255: 0f 83 2e 01 00 00                 jae    302                            ; 0x3000d389
  0.22%  0x3000d25b: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
  0.36%  0x3000d264: 65 48 8b 3c 25 c0 00 00 00        movq    %gs:192, %rdi                 
         0x3000d26d: 48 81 c1 00 02 00 00              addq    $512, %rcx                    
         0x3000d274: 48 81 e1 00 fe ff ff              andq    $-512, %rcx                   
         0x3000d27b: 65 48 89 0c 25 c0 00 00 00        movq    %rcx, %gs:192                 
  0.16%  0x3000d284: 48 2b cf                          subq    %rdi, %rcx                    
         0x3000d287: 81 f9 00 10 00 00                 cmpl    $4096, %ecx                   
         0x3000d28d: 0f 8d da 00 00 00                 jge    218                            ; 0x3000d36d
  0.00%  0x3000d293: 48 03 cf                          addq    %rdi, %rcx                    
  0.02%  0x3000d296: c4 41 00 57 ff                    vxorps    %xmm15, %xmm15, %xmm15      
  0.14%  0x3000d29b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x3000d2a0: 0f 0d 8f 80 04 00 00              prefetchw    1152(%rdi)               
  0.52%  0x3000d2a7: 0f 0d 8f c0 04 00 00              prefetchw    1216(%rdi)               
  0.02%  0x3000d2ae: 0f 0d 8f 00 05 00 00              prefetchw    1280(%rdi)               
  0.09%  0x3000d2b5: 0f 0d 8f 40 05 00 00              prefetchw    1344(%rdi)               
  0.07%  0x3000d2bc: 0f 0d 8f 80 05 00 00              prefetchw    1408(%rdi)               
  0.06%  0x3000d2c3: 0f 0d 8f c0 05 00 00              prefetchw    1472(%rdi)               
  0.02%  0x3000d2ca: 0f 0d 8f 00 06 00 00              prefetchw    1536(%rdi)               
  0.45%  0x3000d2d1: 0f 0d 8f 40 06 00 00              prefetchw    1600(%rdi)               
  0.18%  0x3000d2d8: c5 7d 7f bf 80 00 00 00           vmovdqa    %ymm15, 128(%rdi)          
  0.05%  0x3000d2e0: c5 7d 7f bf a0 00 00 00           vmovdqa    %ymm15, 160(%rdi)          
  0.02%  0x3000d2e8: c5 7d 7f bf c0 00 00 00           vmovdqa    %ymm15, 192(%rdi)          
  0.02%  0x3000d2f0: c5 7d 7f bf e0 00 00 00           vmovdqa    %ymm15, 224(%rdi)          
  0.25%  0x3000d2f8: c5 7d 7f bf 00 01 00 00           vmovdqa    %ymm15, 256(%rdi)          
  0.26%  0x3000d300: c5 7d 7f bf 20 01 00 00           vmovdqa    %ymm15, 288(%rdi)          
  0.16%  0x3000d308: c5 7d 7f bf 40 01 00 00           vmovdqa    %ymm15, 320(%rdi)          
  0.14%  0x3000d310: c5 7d 7f bf 60 01 00 00           vmovdqa    %ymm15, 352(%rdi)          
  0.09%  0x3000d318: c5 7d 7f bf 80 01 00 00           vmovdqa    %ymm15, 384(%rdi)          
  0.05%  0x3000d320: c5 7d 7f bf a0 01 00 00           vmovdqa    %ymm15, 416(%rdi)          
  0.06%  0x3000d328: c5 7d 7f bf c0 01 00 00           vmovdqa    %ymm15, 448(%rdi)          
  0.03%  0x3000d330: c5 7d 7f bf e0 01 00 00           vmovdqa    %ymm15, 480(%rdi)          
  0.14%  0x3000d338: c5 7d 7f bf 00 02 00 00           vmovdqa    %ymm15, 512(%rdi)          
  0.06%  0x3000d340: c5 7d 7f bf 20 02 00 00           vmovdqa    %ymm15, 544(%rdi)          
  0.05%  0x3000d348: c5 7d 7f bf 40 02 00 00           vmovdqa    %ymm15, 576(%rdi)          
  0.06%  0x3000d350: c5 7d 7f bf 60 02 00 00           vmovdqa    %ymm15, 608(%rdi)          
  0.11%  0x3000d358: 48 81 c7 00 02 00 00              addq    $512, %rdi                    
  0.03%  0x3000d35f: 48 3b f9                          cmpq    %rcx, %rdi                    
         0x3000d362: 0f 85 38 ff ff ff                 jne    -200                           ; 0x3000d2a0
  0.02%  0x3000d368: c5 f8 77                          vzeroupper                            
  0.17%  0x3000d36b: eb 18                             jmp    24                             ; 0x3000d385
         0x3000d36d: 48 81 c7 80 00 00 00              addq    $128, %rdi                    
         0x3000d374: c4 61 f9 6e f8                    vmovq    %rax, %xmm15                 
         0x3000d379: 33 c0                             xorl    %eax, %eax                    
         0x3000d37b: f3 48 aa                          rep        stosb    %al, %es:(%rdi)   
         0x3000d37e: c4 61 f9 7e f8                    vmovq    %xmm15, %rax                 
         0x3000d383: eb 00                             jmp    0                              ; 0x3000d385
  0.02%  0x3000d385: 89 70 04                          movl    %esi, 4(%rax)                 
  0.14%  0x3000d388: c3                                retq                                  
         0x3000d389: 33 c0                             xorl    %eax, %eax                    
         0x3000d38b: c3                                retq                                  
         StubRoutines::new_stub_check_tls_zero_region_array [0x000000003000d080, 0x000000003000d225] (421 bytes)
         0x3000d080: 85 c9                             testl    %ecx, %ecx                   
         0x3000d082: 2e 0f 88 99 01 00 00              js    409                             ; 0x3000d222
         0x3000d089: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
         0x3000d092: 48 03 d0                          addq    %rax, %rdx                    
         0x3000d095: 65 48 3b 14 25 c0 00 00 00        cmpq    %gs:192, %rdx                 
         0x3000d09e: 73 13                             jae    19                             ; 0x3000d0b3
         0x3000d0a0: 65 48 89 14 25 b0 00 00 00        movq    %rdx, %gs:176                 ; thread:[176] = _tlab._top
....................................................................................................
  7.41%  <total for region 3>

....[Hottest Regions]...............................................................................
 54.79%  [0x3002f4a0:0x3002f533] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse[Falcon]
 31.20%  [0x30026300:0x30026320] in [unknown] (perf-134095.map)
  7.41%  [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.61%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.28%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9c0f77a:0xffffffffa9c0f7a5] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9eb93b0:0xffffffffa9eb9453] in [unknown] ([kernel.kallsyms])
  0.16%  [0x7f667417ea75:0x7f667417ea81] in [unknown] (libjvm.so)
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.10%  [0x7f66743c3840:0x7f66743c385b] in [unknown] (libjvm.so)
  0.09%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0800:0xffffffffa9ed0860] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9ed0740:0xffffffffa9ed0797] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eef467:0xffffffffa9eef4b0] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d129] in [unknown] ([kernel.kallsyms])
  3.93%  <...other 725 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 54.79%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse[Falcon]
 31.21%  [unknown] (perf-134095.map)
  7.41%  StubRoutines::new_stub_dont_check_tls_zero_region_orca
  4.69%  [unknown] ([kernel.kallsyms])
  1.05%  [unknown] (libjvm.so)
  0.11%  [unknown] (liborca.so.0.0.0.0)
  0.06%  PMEM_PageInfo::page_info_base; PMEM::account_enabled; PMEM_PageInfo::page_info_top (libaztall.so)
  0.06%  [unknown] (libc-2.31.so)
  0.04%  [unknown] ([vdso])
  0.03%  PMEM_PageInfo::page_info (libaztall.so)
  0.03%  clock_gettime (libc-2.31.so)
  0.02%  PMEM_PageInfo::is_allocatable; PMEM_PageInfo::is_allocated; PMEM_PageInfo::is_free (libaztall.so)
  0.02%  MutexLocker::~MutexLocker (libaztall.so)
  0.02%  __pthread_mutex_lock (libpthread-2.31.so)
  0.02%  VMEM_PageManager::zone_count; VMEM_PageManager::allowed_zone; VMEM_PageManager::is_premapped_page (libaztall.so)
  0.02%  PMEM_PageZone::allocate_page (libaztall.so)
  0.02%  PMEM_PageQueue::head; PMEM_PageQueue::tail (libaztall.so)
  0.02%  VMEM::allocate_within_space (libaztall.so)
  0.02%  thread_stack_region_start (libazsys3.so)
  0.01%  PMEM_PageManager::zone (libaztall.so)
  0.36%  <...other 99 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 62.23%  <generated code>
 31.21%  <native code in (perf-134095.map)>
  4.69%  <native code in ([kernel.kallsyms])>
  1.05%  <native code in (libjvm.so)>
  0.47%  <native code in (libaztall.so)>
  0.11%  <native code in (liborca.so.0.0.0.0)>
  0.11%  <native code in (libc-2.31.so)>
  0.04%  <native code in ([vdso])>
  0.04%  <native code in (libazsys3.so)>
  0.03%  <native code in (libpthread-2.31.so)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (ip_tables.ko)>
....................................................................................................
 99.99%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:·gc.alloc.rate":
  2125.526 ±(99.9%) 63.054 MB/sec [Average]
  (min, avg, max) = (2096.936, 2125.526, 2137.750), stdev = 16.375
  CI (99.9%): [2062.472, 2188.580] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:·gc.alloc.rate.norm":
  16.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (16.000, 16.000, 16.000), stdev = 0.001
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:·gc.count":
  165.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (30.000, 33.000, 35.000), stdev = 2.739
  CI (99.9%): [165.000, 165.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse:·gc.time":
  516.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (95.000, 103.200, 110.000), stdev = 7.563
  CI (99.9%): [516.000, 516.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 62.50% complete, ETA 00:05:37
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 80.506 ns/op
# Warmup Iteration   2: 79.687 ns/op
# Warmup Iteration   3: 79.764 ns/op
# Warmup Iteration   4: 79.424 ns/op
# Warmup Iteration   5: 79.561 ns/op
Iteration   1: 79.345 ns/op
                 ·gc.alloc.rate:      192.303 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           9.000 counts
                 ·gc.time:            81.000 ms

Iteration   2: 79.632 ns/op
                 ·gc.alloc.rate:      191.608 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           9.000 counts
                 ·gc.time:            83.000 ms

Iteration   3: 79.330 ns/op
                 ·gc.alloc.rate:      192.340 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           ≈ 0 counts

Iteration   4: 78.944 ns/op
                 ·gc.alloc.rate:      193.280 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           5.000 counts
                 ·gc.time:            16.000 ms

Iteration   5: 78.660 ns/op
                 ·gc.alloc.rate:      193.979 MB/sec
                 ·gc.alloc.rate.norm: 16.000 B/op
                 ·gc.count:           ≈ 0 counts

# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural":
  79.182 ±(99.9%) 1.467 ns/op [Average]
  (min, avg, max) = (78.660, 79.182, 79.632), stdev = 0.381
  CI (99.9%): [77.715, 80.649] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·asm":
PrintAssembly processed: 143116 total address lines.
Perf output processed (skipped 56.362 seconds):
 Column 1: cycles (51681 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x32b14280:0x32b142aa] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink[C1]

         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded java.util.concurrent.atomic.AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl$1 from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded sun.reflect.misc.ReflectUtil from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded jdk.internal.reflect.UnsafeIntegerFieldAccessorImpl from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         [Loaded org.openjdk.jmh.runner.BenchmarkHandler$1 from file:/home/gogu/git/jvm-performance-benchmarks/benchmarks/target/benchmarks.jar]
         [Loaded java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionNode from /home/gogu/bench_jdks/zing23.05.0.0-2-jdk17.0.7-linux_x64/lib/modules]
         5.627:  251         1 started   com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink ()V (tid 136754) (kid 1447 pkid/prev 1423/NA) (mid 1481735 pmid 18442) (bytes 1) (generation 0) (lvl O2) (score 1) (score_updated 0ms; orig 1; promoted 0) (wait 0ms)
           # {method}{0x20002658728} sink[C1] ()V in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark
         Decoding CodeBlob 0x32b14200
 38.52%  0x32b14280: e8 7b 13 50 fd 00 00              subq    $8, %rsp                      
  0.68%  0x32b14287: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
 26.20%  0x32b14290: 75 02                             jne    2                              ; 0x32b14294
  8.26%  0x32b14292: 59                                popq    %rcx                          
  0.09%  0x32b14293: c3                                retq                                  
         0x32b14294: e8 a7 32 50 fd                    callq    -45075801                    ; 0x30017540 = StubRoutines::safepoint_handler
         0x32b14299: eb f7                             jmp    -9                             ; 0x32b14292
                             // Generic exception handler
         0x32b1429b: 59                                popq    %rcx                          
         0x32b1429c: e9 df db 50 fd                    jmp    -45032481                      ; 0x30021e80 = unwind_exception Runtime1 stub
         0x32b142a1: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x32b142a5: e9 56 9f 4f fd                    jmp    -45113514                      ; 0x3000e200 = StubRoutines::deoptimize
         0x32b142aa: cc                                int3                                  
         <nmethodAdapter compile_id='251' level='1' size='40' address='0x00007fac6409c270' dependencies_offset='32' stamp='80265.294'/>
         5.627:  251         1 inlining into com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink ()V (tid 136754) (kid 1447 pkid/prev 1423/NA) (mid 1481735 pmid 18442) (bytes 1) (generation 0) (lvl O2) (score 1) (score_updated 0ms; orig 1; promoted 0) (wait 0ms)
....................................................................................................
 73.76%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f6a0:0x3002f7bc] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural[Falcon]

         0x3002f798: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f79d: ff d0                             callq    *%rax                        ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
  0.00%  0x3002f79f: 90                                nop                                   
         0x3002f7a0: eb c1                             jmp    -63                            ; 0x3002f763
         0x3002f7a2: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f7ac: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f7ae: e9 05 ff ff ff                    jmp    -251                           ; 0x3002f6b8
         -----------
           # {method}{0x20002657ba0} obj_dse_inter_procedural[Falcon] ()Ljava/lang/Object; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark
         Decoding CodeBlob 0x3002f600
  0.48%  0x3002f6a0: eb f9                             pushq    %rbx                         
  0.42%  0x3002f6a2: 48 83 ec 30                       subq    $48, %rsp                     
  0.14%  0x3002f6a6: 48 89 fb                          movq    %rdi, %rbx                    
         0x3002f6a9: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.77%  0x3002f6b2: 0f 85 ea 00 00 00                 jne    234                            ; 0x3002f7a2
  0.22%  0x3002f6b8: 48 89 df                          movq    %rbx, %rdi                    
  0.15%  0x3002f6bb: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.00%  0x3002f6c0: e8 3b e2 fd ff                    callq    -138693                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.15%  0x3002f6c5: 48 89 df                          movq    %rbx, %rdi                    
  0.16%  0x3002f6c8: e8 33 e2 fd ff                    callq    -138701                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.33%  0x3002f6cd: 48 89 df                          movq    %rbx, %rdi                    
  0.00%  0x3002f6d0: e8 2b e2 fd ff                    callq    -138709                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.31%  0x3002f6d5: 48 89 df                          movq    %rbx, %rdi                    
  0.01%  0x3002f6d8: e8 23 e2 fd ff                    callq    -138717                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.34%  0x3002f6dd: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f6e0: e8 1b e2 fd ff                    callq    -138725                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.35%  0x3002f6e5: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f6e8: e8 13 e2 fd ff                    callq    -138733                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.34%  0x3002f6ed: 48 89 df                          movq    %rbx, %rdi                    
  0.01%  0x3002f6f0: e8 0b e2 fd ff                    callq    -138741                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.35%  0x3002f6f5: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f6f8: e8 03 e2 fd ff                    callq    -138749                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.38%  0x3002f6fd: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f700: e8 fb e1 fd ff                    callq    -138757                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.37%  0x3002f705: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f708: e8 f3 e1 fd ff                    callq    -138765                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.33%  0x3002f70d: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f710: e8 eb e1 fd ff                    callq    -138773                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.34%  0x3002f715: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f718: e8 e3 e1 fd ff                    callq    -138781                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.36%  0x3002f71d: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f720: e8 db e1 fd ff                    callq    -138789                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.36%  0x3002f725: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f728: e8 d3 e1 fd ff                    callq    -138797                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.34%  0x3002f72d: 48 89 df                          movq    %rbx, %rdi                    
         0x3002f730: e8 cb e1 fd ff                    callq    -138805                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  0.35%  0x3002f735: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
  2.86%  0x3002f73e: 48 8d 48 10                       leaq    16(%rax), %rcx                
  0.46%  0x3002f742: 65 48 3b 0c 25 c0 00 00 00        cmpq    %gs:192, %rcx                 
         0x3002f74b: 73 1c                             jae    28                             ; 0x3002f769
  0.94%  0x3002f74d: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
  0.94%  0x3002f756: 48 b9 00 00 00 00 21 00 00 00     movabsq    $141733920768, %rcx        ; 0x2100000000 = 
         0x3002f760: 48 89 08                          movq    %rcx, (%rax)                  
  0.45%  0x3002f763: 48 83 c4 30                       addq    $48, %rsp                     
         0x3002f767: 5b                                popq    %rbx                          
  0.03%  0x3002f768: c3                                retq                                  
  0.22%  0x3002f769: 48 b8 40 d2 00 30 00 00 00 00     movabsq    $805360192, %rax           ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.09%  0x3002f773: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f778: b9 10 00 00 00                    movl    $16, %ecx                     
  0.01%  0x3002f77d: 2e ff d0                          callq    *%rax                        ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.02%  0x3002f780: 48 85 c0                          testq    %rax, %rax                   
         0x3002f783: 75 de                             jne    -34                            ; 0x3002f763
         0x3002f785: 65 48 8b 3c 25 40 00 00 00        movq    %gs:64, %rdi                  ; thread:[64] = _current_thread
         0x3002f78e: 48 b8 80 58 01 30 00 00 00 00     movabsq    $805394560, %rax           ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f798: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f79d: ff d0                             callq    *%rax                        ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
  0.00%  0x3002f79f: 90                                nop                                   
         0x3002f7a0: eb c1                             jmp    -63                            ; 0x3002f763
         0x3002f7a2: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f7ac: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f7ae: e9 05 ff ff ff                    jmp    -251                           ; 0x3002f6b8
         0x3002f7b3: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f7b7: e9 44 ea fd ff                    jmp    -136636                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f7bc: cc                                int3                                  
         Call tree size: 1
         0: caller_index: -1 bci: -1 callee: virtual jobject com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural()
         Encoded locations size: 4
....................................................................................................
 13.43%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x30026903:0x30026920] in [unknown] (perf-136732.map)

 <no assembly is recorded, native region>
....................................................................................................
  5.20%  <total for region 3>

....[Hottest Regions]...............................................................................
 73.76%  [0x32b14280:0x32b142aa] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink[C1]
 13.43%  [0x3002f6a0:0x3002f7bc] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural[Falcon]
  5.20%  [0x30026903:0x30026920] in [unknown] (perf-136732.map)
  2.89%  [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.29%  [0xffffffffa9c94c86:0xffffffffa9c94c86] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb93b0:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f695f6:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eef44f:0xffffffffa9eef4b5] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eceec0:0xffffffffa9ecef34] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  0.08%  [0xffffffffa9eff400:0xffffffffa9eff42c] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ed0806:0xffffffffa9ed0873] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9eee5d0:0xffffffffa9eee62f] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffa9ee587e:0xffffffffa9ee587e] in [unknown] ([kernel.kallsyms])
  0.07%  [0xffffffffaa28d0d0:0xffffffffaa28d12e] in [unknown] ([kernel.kallsyms])
  2.69%  <...other 449 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 73.76%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::sink[C1]
 13.43%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::obj_dse_inter_procedural[Falcon]
  5.21%  [unknown] (perf-136732.map)
  4.03%  [unknown] ([kernel.kallsyms])
  2.89%  StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.50%  [unknown] (libjvm.so)
  0.03%  [unknown] (libc-2.31.so)
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM::account_enabled; PMEM_PageInfo::page_info_base (libaztall.so)
  0.01%  PMEM_PageInfo::page_info (libaztall.so)
  0.01%  <stub: method entry point (kind = zerolocals)>
  0.01%  thread_stack_region_start (libazsys3.so)
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.01%  MutexLocker::MutexLocker (libaztall.so)
  0.00%  <stub: fast_aload_0  220 fast_aload_0>
  0.00%  VMEM_SpaceManager::uses_cache_for_account (libaztall.so)
  0.00%  az_pmem_get_fund_stats_tall (libaztall.so)
  0.00%  az_pmem_get_account_usage_tall (libaztall.so)
  0.00%  _IO_file_xsputn (libc-2.31.so)
  0.06%  <...other 30 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 90.10%  <generated code>
  5.21%  <native code in (perf-136732.map)>
  4.03%  <native code in ([kernel.kallsyms])>
  0.50%  <native code in (libjvm.so)>
  0.06%  <native code in (libaztall.so)>
  0.05%  <native code in (libc-2.31.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (libazsys3.so)>
  0.00%  <native code in ([vdso])>
....................................................................................................
100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·gc.alloc.rate":
  192.702 ±(99.9%) 3.577 MB/sec [Average]
  (min, avg, max) = (191.608, 192.702, 193.979), stdev = 0.929
  CI (99.9%): [189.125, 196.279] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·gc.alloc.rate.norm":
  16.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (16.000, 16.000, 16.000), stdev = 0.001
  CI (99.9%): [16.000, 16.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·gc.count":
  23.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (≈ 0, 4.600, 9.000), stdev = 4.506
  CI (99.9%): [23.000, 23.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·gc.time":
  180.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (≈ 0, 36.000, 83.000), stdev = 42.503
  CI (99.9%): [180.000, 180.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline
# Parameters: (size = 64)

# Run progress: 75.00% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 23.704 ns/op
# Warmup Iteration   2: 21.774 ns/op
# Warmup Iteration   3: 21.999 ns/op
# Warmup Iteration   4: 21.918 ns/op
# Warmup Iteration   5: 21.827 ns/op
Iteration   1: 21.846 ns/op
                 ·gc.alloc.rate:      8730.413 MB/sec
                 ·gc.alloc.rate.norm: 200.000 B/op
                 ·gc.count:           150.000 counts
                 ·gc.time:            454.000 ms

Iteration   2: 21.830 ns/op
                 ·gc.alloc.rate:      8737.094 MB/sec
                 ·gc.alloc.rate.norm: 200.000 B/op
                 ·gc.count:           150.000 counts
                 ·gc.time:            453.000 ms

Iteration   3: 21.814 ns/op
                 ·gc.alloc.rate:      8743.512 MB/sec
                 ·gc.alloc.rate.norm: 200.000 B/op
                 ·gc.count:           150.000 counts
                 ·gc.time:            454.000 ms

Iteration   4: 21.743 ns/op
                 ·gc.alloc.rate:      8771.987 MB/sec
                 ·gc.alloc.rate.norm: 200.000 B/op
                 ·gc.count:           145.000 counts
                 ·gc.time:            437.000 ms

Iteration   5: 21.842 ns/op
                 ·gc.alloc.rate:      8732.099 MB/sec
                 ·gc.alloc.rate.norm: 200.000 B/op
                 ·gc.count:           150.000 counts
                 ·gc.time:            457.000 ms

# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline":
  21.815 ±(99.9%) 0.163 ns/op [Average]
  (min, avg, max) = (21.743, 21.815, 21.846), stdev = 0.042
  CI (99.9%): [21.652, 21.978] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·asm":
PrintAssembly processed: 143532 total address lines.
Perf output processed (skipped 57.207 seconds):
 Column 1: cycles (53685 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3002f4a0:0x30030417] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline[Falcon]

         0x300303f2: 49 ff c4                          incq    %r12                          
         0x300303f5: 2e 2e 2e 41 0f b6 87 94 00 00     movzbl    %cs:148(%r15), %eax         
         0x30030400: 84 c0                             testb    %al, %al                     
         0x30030402: 74 dc                             je    -36                             ; 0x300303e0
         0x30030404: 0f be c0                          movsbl    %al, %eax                   
         0x30030407: 48 b9 40 dd 00 30 00 00 00 00     movabsq    $805363008, %rcx           ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
         0x30030411: 41 bb 07 00 00 00                 movl    $7, %r11d                     
         0x30030417: ff d1                             callq    *%rcx                        ; 0x3000dd40 = StubRoutines::uncommon_trap_for_falcon
           # {method}{0x20002657bb8} wrapper_obj_baseline[Falcon] ()Lcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark$Wrapper; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark
         Decoding CodeBlob 0x3002f400
  2.02%  0x3002f4a0: eb f9                             pushq    %r15                         
  2.87%  0x3002f4a2: 41 56                             pushq    %r14                         
  3.03%  0x3002f4a4: 41 55                             pushq    %r13                         
  0.29%  0x3002f4a6: 41 54                             pushq    %r12                         
  0.88%  0x3002f4a8: 53                                pushq    %rbx                         
  1.16%  0x3002f4a9: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.48%  0x3002f4b2: 0f 85 dc 01 00 00                 jne    476                            ; 0x3002f694
  0.10%  0x3002f4b8: 65 48 8b 0c 25 b0 00 00 00        movq    %gs:176, %rcx                 ; thread:[176] = _tlab._top
  0.47%  0x3002f4c1: 48 8d 81 c8 00 00 00              leaq    200(%rcx), %rax               
  1.12%  0x3002f4c8: 65 48 3b 04 25 c0 00 00 00        cmpq    %gs:192, %rax                 
         0x3002f4d1: 0f 83 23 01 00 00                 jae    291                            ; 0x3002f5fa
  0.43%  0x3002f4d7: 65 48 89 04 25 b0 00 00 00        movq    %rax, %gs:176                 ; thread:[176] = _tlab._top
  1.50%  0x3002f4e0: 48 b8 00 00 00 00 15 07 00 00     movabsq    $7786775707648, %rax       ; 0x71500000000 = 
  0.04%  0x3002f4ea: 48 89 01                          movq    %rax, (%rcx)                  
  5.56%  0x3002f4ed: 4c 8d 71 48                       leaq    72(%rcx), %r14                
         0x3002f4f1: 48 be 00 00 00 00 21 00 00 00     movabsq    $141733920768, %rsi        ; 0x2100000000 = 
  0.03%  0x3002f4fb: 48 89 71 48                       movq    %rsi, 72(%rcx)                
  0.83%  0x3002f4ff: 48 8d 59 58                       leaq    88(%rcx), %rbx                
  1.28%  0x3002f503: 48 89 71 58                       movq    %rsi, 88(%rcx)                
  0.78%  0x3002f507: 4c 8d 59 68                       leaq    104(%rcx), %r11               
  0.02%  0x3002f50b: 48 89 71 68                       movq    %rsi, 104(%rcx)               
  0.57%  0x3002f50f: 4c 8d 51 78                       leaq    120(%rcx), %r10               
  1.02%  0x3002f513: 48 89 71 78                       movq    %rsi, 120(%rcx)               
  0.43%  0x3002f517: 4c 8d 89 88 00 00 00              leaq    136(%rcx), %r9                
  0.01%  0x3002f51e: 48 89 b1 88 00 00 00              movq    %rsi, 136(%rcx)               
  0.56%  0x3002f525: 4c 8d 81 98 00 00 00              leaq    152(%rcx), %r8                
  0.82%  0x3002f52c: 48 89 b1 98 00 00 00              movq    %rsi, 152(%rcx)               
  0.63%  0x3002f533: 48 8d 91 a8 00 00 00              leaq    168(%rcx), %rdx               
  0.00%  0x3002f53a: 48 89 b1 a8 00 00 00              movq    %rsi, 168(%rcx)               
  0.75%  0x3002f541: 48 8d 81 b8 00 00 00              leaq    184(%rcx), %rax               
  0.65%  0x3002f548: 48 89 b1 b8 00 00 00              movq    %rsi, 184(%rcx)               
  0.74%  0x3002f54f: 48 be 00 00 00 00 08 00 00 00     movabsq    $34359738368, %rsi         ; 0x800000000 = 
  0.01%  0x3002f559: 2e 2e 2e 2e 48 01 ce              addq    %rcx, %rsi                    
  0.29%  0x3002f560: 4c 39 f6                          cmpq    %r14, %rsi                    
         0x3002f563: 0f 82 3c 01 00 00                 jb    316                             ; 0x3002f6a5
  0.60%  0x3002f569: 4c 89 71 08                       movq    %r14, 8(%rcx)                 
  0.91%  0x3002f56d: 48 39 de                          cmpq    %rbx, %rsi                    
         0x3002f570: 0f 82 86 01 00 00                 jb    390                             ; 0x3002f6fc
  0.00%  0x3002f576: 2e 2e 2e 2e 2e 2e 48 89 59 10     movq    %rbx, %cs:16(%rcx)            
  0.70%  0x3002f580: 4c 39 de                          cmpq    %r11, %rsi                    
         0x3002f583: 0f 82 c6 01 00 00                 jb    454                             ; 0x3002f74f
  0.61%  0x3002f589: 4c 89 59 18                       movq    %r11, 24(%rcx)                
  0.84%  0x3002f58d: 4c 39 d6                          cmpq    %r10, %rsi                    
         0x3002f590: 0f 82 0f 02 00 00                 jb    527                             ; 0x3002f7a5
  0.00%  0x3002f596: 2e 2e 2e 2e 2e 2e 4c 89 51 20     movq    %r10, %cs:32(%rcx)            
  1.16%  0x3002f5a0: 4c 39 ce                          cmpq    %r9, %rsi                     
         0x3002f5a3: 0f 82 53 02 00 00                 jb    595                             ; 0x3002f7fc
  0.35%  0x3002f5a9: 4c 89 49 28                       movq    %r9, 40(%rcx)                 
  0.93%  0x3002f5ad: 4c 39 c6                          cmpq    %r8, %rsi                     
         0x3002f5b0: 0f 82 99 02 00 00                 jb    665                             ; 0x3002f84f
  0.01%  0x3002f5b6: 2e 2e 2e 2e 2e 2e 4c 89 41 30     movq    %r8, %cs:48(%rcx)             
  1.25%  0x3002f5c0: 48 39 d6                          cmpq    %rdx, %rsi                    
         0x3002f5c3: 0f 82 dc 02 00 00                 jb    732                             ; 0x3002f8a5
  0.28%  0x3002f5c9: 2e 2e 2e 2e 48 89 51 38           movq    %rdx, %cs:56(%rcx)            
  1.43%  0x3002f5d1: 2e 2e 2e 2e 2e 48 ba 00 00 00     movabsq    $15393162788864, %rdx      ; 0xe0000000000 = 
         0x3002f5e0: 48 85 d1                          testq    %rdx, %rcx                   
         0x3002f5e3: 0f 85 13 03 00 00                 jne    787                            ; 0x3002f8fc
  0.11%  0x3002f5e9: 48 89 41 40                       movq    %rax, 64(%rcx)                
  1.61%  0x3002f5ed: 48 89 c8                          movq    %rcx, %rax                    
  0.02%  0x3002f5f0: 5b                                popq    %rbx                          
  0.30%  0x3002f5f1: 41 5c                             popq    %r12                          
  0.16%  0x3002f5f3: 41 5d                             popq    %r13                          
  1.58%  0x3002f5f5: 41 5e                             popq    %r14                          
  0.07%  0x3002f5f7: 41 5f                             popq    %r15                          
  0.07%  0x3002f5f9: c3                                retq                                  
  1.20%  0x3002f5fa: 48 b8 40 d2 00 30 00 00 00 00     movabsq    $805360192, %rax           ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.45%  0x3002f604: be 15 07 00 00                    movl    $1813, %esi                   
  0.09%  0x3002f609: b9 c8 00 00 00                    movl    $200, %ecx                    
  0.31%  0x3002f60e: ff d0                             callq    *%rax                        ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.67%  0x3002f610: 48 89 c1                          movq    %rax, %rcx                    
         0x3002f613: 48 85 c0                          testq    %rax, %rax                   
         0x3002f616: 0f 85 d1 fe ff ff                 jne    -303                           ; 0x3002f4ed
  0.00%  0x3002f61c: 65 48 8b 3c 25 40 00 00 00        movq    %gs:64, %rdi                  ; thread:[64] = _current_thread
  0.00%  0x3002f625: 49 bf 80 58 01 30 00 00 00 00     movabsq    $805394560, %r15           ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f62f: be 15 07 00 00                    movl    $1813, %esi                   
         0x3002f634: 41 ff d7                          callq    *%r15                        ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f637: 48 89 c1                          movq    %rax, %rcx                    
  0.00%  0x3002f63a: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f63f: 41 ff d7                          callq    *%r15                        
         0x3002f642: 49 89 c6                          movq    %rax, %r14                    
         0x3002f645: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f64a: 41 ff d7                          callq    *%r15                        
  0.00%  0x3002f64d: 48 89 c3                          movq    %rax, %rbx                    
         0x3002f650: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f655: 41 ff d7                          callq    *%r15                        
  0.00%  0x3002f658: 49 89 c3                          movq    %rax, %r11                    
         0x3002f65b: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f660: 41 ff d7                          callq    *%r15                        
         0x3002f663: 49 89 c2                          movq    %rax, %r10                    
  0.00%  0x3002f666: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f66b: 41 ff d7                          callq    *%r15                        
         0x3002f66e: 49 89 c1                          movq    %rax, %r9                     
         0x3002f671: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f676: 41 ff d7                          callq    *%r15                        
         0x3002f679: 49 89 c0                          movq    %rax, %r8                     
  0.00%  0x3002f67c: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f681: 41 ff d7                          callq    *%r15                        
         0x3002f684: 48 89 c2                          movq    %rax, %rdx                    
  0.00%  0x3002f687: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f68c: 41 ff d7                          callq    *%r15                        
  0.00%  0x3002f68f: e9 bb fe ff ff                    jmp    -325                           ; 0x3002f54f
         0x3002f694: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f69e: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f6a0: e9 13 fe ff ff                    jmp    -493                           ; 0x3002f4b8
         0x3002f6a5: 48 8d 79 08                       leaq    8(%rcx), %rdi                 
         0x3002f6a9: 49 89 ff                          movq    %rdi, %r15                    
         0x3002f6ac: 49 c1 ef 0e                       shrq    $14, %r15                     
         0x3002f6b0: 49 83 e7 80                       andq    $-128, %r15                   
         0x3002f6b4: 49 bc 00 00 00 00 00 66 00 00     movabsq    $112150186033152, %r12     ; 0x660000000000 = 
         0x3002f6be: 4f 8b 7c 27 50                    movq    80(%r15,%r12), %r15           
         0x3002f6c3: 4c 29 ff                          subq    %r15, %rdi                    
....................................................................................................
 45.09%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca

         0x3000d519: 33 c0                             xorl    %eax, %eax                    
         0x3000d51b: f3 48 aa                          rep        stosb    %al, %es:(%rdi)   
         0x3000d51e: c4 61 f9 7e f8                    vmovq    %xmm15, %rax                 
         0x3000d523: eb 00                             jmp    0                              ; 0x3000d525
         0x3000d525: 89 70 04                          movl    %esi, 4(%rax)                 
         0x3000d528: 48 89 50 08                       movq    %rdx, 8(%rax)                 
         0x3000d52c: c3                                retq                                  
         0x3000d52d: 33 c0                             xorl    %eax, %eax                    
         0x3000d52f: c3                                retq                                  
         StubRoutines::new_stub_dont_check_tls_zero_region_orca [0x000000003000d240, 0x000000003000d38c] (332 bytes)
  3.26%  0x3000d240: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
  7.44%  0x3000d249: 48 03 c8                          addq    %rax, %rcx                    
  0.66%  0x3000d24c: 65 48 3b 0c 25 b8 00 00 00        cmpq    %gs:184, %rcx                 ; thread:[184] = _tlab._end
         0x3000d255: 0f 83 2e 01 00 00                 jae    302                            ; 0x3000d389
  0.74%  0x3000d25b: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
  1.39%  0x3000d264: 65 48 8b 3c 25 c0 00 00 00        movq    %gs:192, %rdi                 
  0.01%  0x3000d26d: 48 81 c1 00 02 00 00              addq    $512, %rcx                    
         0x3000d274: 48 81 e1 00 fe ff ff              andq    $-512, %rcx                   
  0.01%  0x3000d27b: 65 48 89 0c 25 c0 00 00 00        movq    %rcx, %gs:192                 
  0.64%  0x3000d284: 48 2b cf                          subq    %rdi, %rcx                    
  0.00%  0x3000d287: 81 f9 00 10 00 00                 cmpl    $4096, %ecx                   
         0x3000d28d: 0f 8d da 00 00 00                 jge    218                            ; 0x3000d36d
  0.11%  0x3000d293: 48 03 cf                          addq    %rdi, %rcx                    
  0.31%  0x3000d296: c4 41 00 57 ff                    vxorps    %xmm15, %xmm15, %xmm15      
  0.26%  0x3000d29b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x3000d2a0: 0f 0d 8f 80 04 00 00              prefetchw    1152(%rdi)               
  1.60%  0x3000d2a7: 0f 0d 8f c0 04 00 00              prefetchw    1216(%rdi)               
  0.23%  0x3000d2ae: 0f 0d 8f 00 05 00 00              prefetchw    1280(%rdi)               
  1.71%  0x3000d2b5: 0f 0d 8f 40 05 00 00              prefetchw    1344(%rdi)               
  0.73%  0x3000d2bc: 0f 0d 8f 80 05 00 00              prefetchw    1408(%rdi)               
  1.48%  0x3000d2c3: 0f 0d 8f c0 05 00 00              prefetchw    1472(%rdi)               
  0.53%  0x3000d2ca: 0f 0d 8f 00 06 00 00              prefetchw    1536(%rdi)               
  3.13%  0x3000d2d1: 0f 0d 8f 40 06 00 00              prefetchw    1600(%rdi)               
  1.09%  0x3000d2d8: c5 7d 7f bf 80 00 00 00           vmovdqa    %ymm15, 128(%rdi)          
  0.29%  0x3000d2e0: c5 7d 7f bf a0 00 00 00           vmovdqa    %ymm15, 160(%rdi)          
  0.01%  0x3000d2e8: c5 7d 7f bf c0 00 00 00           vmovdqa    %ymm15, 192(%rdi)          
  0.22%  0x3000d2f0: c5 7d 7f bf e0 00 00 00           vmovdqa    %ymm15, 224(%rdi)          
  1.54%  0x3000d2f8: c5 7d 7f bf 00 01 00 00           vmovdqa    %ymm15, 256(%rdi)          
  0.88%  0x3000d300: c5 7d 7f bf 20 01 00 00           vmovdqa    %ymm15, 288(%rdi)          
  0.80%  0x3000d308: c5 7d 7f bf 40 01 00 00           vmovdqa    %ymm15, 320(%rdi)          
  0.82%  0x3000d310: c5 7d 7f bf 60 01 00 00           vmovdqa    %ymm15, 352(%rdi)          
  0.39%  0x3000d318: c5 7d 7f bf 80 01 00 00           vmovdqa    %ymm15, 384(%rdi)          
  0.11%  0x3000d320: c5 7d 7f bf a0 01 00 00           vmovdqa    %ymm15, 416(%rdi)          
  0.15%  0x3000d328: c5 7d 7f bf c0 01 00 00           vmovdqa    %ymm15, 448(%rdi)          
  0.13%  0x3000d330: c5 7d 7f bf e0 01 00 00           vmovdqa    %ymm15, 480(%rdi)          
  0.54%  0x3000d338: c5 7d 7f bf 00 02 00 00           vmovdqa    %ymm15, 512(%rdi)          
  0.12%  0x3000d340: c5 7d 7f bf 20 02 00 00           vmovdqa    %ymm15, 544(%rdi)          
  0.12%  0x3000d348: c5 7d 7f bf 40 02 00 00           vmovdqa    %ymm15, 576(%rdi)          
  0.23%  0x3000d350: c5 7d 7f bf 60 02 00 00           vmovdqa    %ymm15, 608(%rdi)          
  0.38%  0x3000d358: 48 81 c7 00 02 00 00              addq    $512, %rdi                    
  0.04%  0x3000d35f: 48 3b f9                          cmpq    %rcx, %rdi                    
         0x3000d362: 0f 85 38 ff ff ff                 jne    -200                           ; 0x3000d2a0
  0.04%  0x3000d368: c5 f8 77                          vzeroupper                            
  0.65%  0x3000d36b: eb 18                             jmp    24                             ; 0x3000d385
         0x3000d36d: 48 81 c7 80 00 00 00              addq    $128, %rdi                    
         0x3000d374: c4 61 f9 6e f8                    vmovq    %rax, %xmm15                 
         0x3000d379: 33 c0                             xorl    %eax, %eax                    
         0x3000d37b: f3 48 aa                          rep        stosb    %al, %es:(%rdi)   
         0x3000d37e: c4 61 f9 7e f8                    vmovq    %xmm15, %rax                 
         0x3000d383: eb 00                             jmp    0                              ; 0x3000d385
  0.14%  0x3000d385: 89 70 04                          movl    %esi, 4(%rax)                 
  0.41%  0x3000d388: c3                                retq                                  
  0.01%  0x3000d389: 33 c0                             xorl    %eax, %eax                    
         0x3000d38b: c3                                retq                                  
         StubRoutines::new_stub_check_tls_zero_region_array [0x000000003000d080, 0x000000003000d225] (421 bytes)
         0x3000d080: 85 c9                             testl    %ecx, %ecx                   
         0x3000d082: 2e 0f 88 99 01 00 00              js    409                             ; 0x3000d222
         0x3000d089: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
         0x3000d092: 48 03 d0                          addq    %rax, %rdx                    
         0x3000d095: 65 48 3b 14 25 c0 00 00 00        cmpq    %gs:192, %rdx                 
         0x3000d09e: 73 13                             jae    19                             ; 0x3000d0b3
         0x3000d0a0: 65 48 89 14 25 b0 00 00 00        movq    %rdx, %gs:176                 ; thread:[176] = _tlab._top
         0x3000d0a9: 89 70 04                          movl    %esi, 4(%rax)                 
....................................................................................................
 33.37%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x30026500:0x30026520] in [unknown] (perf-136880.map)

 <no assembly is recorded, native region>
....................................................................................................
  9.96%  <total for region 3>

....[Hottest Regions]...............................................................................
 45.09%  [0x3002f4a0:0x30030417] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline[Falcon]
 33.37%  [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca
  9.96%  [0x30026500:0x30026520] in [unknown] (perf-136880.map)
  0.78%  [0x7fa9352cea75:0x7fa9352cea81] in [unknown] (libjvm.so)
  0.46%  [0x7fa935513840:0x7fa93551386c] in [unknown] (libjvm.so)
  0.29%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.24%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.24%  [0x7fa92ffd4f95:0x7fa92ffd500d] in PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.16%  [0xffffffffa9f0711c:0xffffffffa9f0716a] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.15%  [0x30015880:0x30015ce7] in StubRoutines::dolphin_new_instance_stub
  0.15%  [0x7fa93564d989:0x7fa93564da57] in [unknown] (libjvm.so)
  0.14%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eef5ae:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b5:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.13%  [0x7fa9357d3080:0x7fa9357d309d] in [unknown] (libjvm.so)
  0.13%  [0x7fa9357de000:0x7fa9357de04c] in [unknown] (libjvm.so)
  0.12%  [0x7ffe564caa10:0x7ffe564caa90] in [unknown] ([vdso])
  0.11%  [0x7fa9355139d0:0x7fa9355139de] in [unknown] (libjvm.so)
  0.10%  [0x7fa935285980:0x7fa9352859aa] in [unknown] (libjvm.so)
  7.94%  <...other 1078 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 45.09%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_baseline[Falcon]
 33.37%  StubRoutines::new_stub_dont_check_tls_zero_region_orca
  9.97%  [unknown] (perf-136880.map)
  4.64%  [unknown] (libjvm.so)
  4.56%  [unknown] ([kernel.kallsyms])
  0.24%  PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.20%  StubRoutines::dolphin_new_instance_stub
  0.19%  [unknown] (libc-2.31.so)
  0.12%  PMEM_PageInfo::page_info (libaztall.so)
  0.12%  [unknown] ([vdso])
  0.08%  VMEM_PageManager::zone_count; VMEM_PageManager::allowed_zone; VMEM_PageManager::is_premapped_page (libaztall.so)
  0.07%  PMEM_PageInfo::is_disallowed; PMEM_PageInfo::is_not_funded; PMEM_PageInfo::is_allocatable; PMEM_PageInfo::is_allocated; PMEM_PageInfo::is_free (libaztall.so)
  0.07%  thread_stack_region_start; thread_stack_region_end (libazsys3.so)
  0.06%  PMEM_PageQueue::head; PMEM_PageQueue::set_head; PMEM_PageQueue::tail; PMEM_PageQueue::set_tail; PMEM_PageQueue::is_empty (libaztall.so)
  0.05%  clock_gettime (libc-2.31.so)
  0.05%  __pthread_mutex_lock (libpthread-2.31.so)
  0.04%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.04%  MutexLocker::~MutexLocker; MutexLocker::MutexLocker (libaztall.so)
  0.04%  PMEM_PageInfo::mark_free; PMEM_PageInfo::mark_allocated; PMEM_PageInfo::set_next (libaztall.so)
  0.03%  PMEM_PageManager::active_ref_count_for_page (libaztall.so)
  0.99%  <...other 113 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 78.68%  <generated code>
  9.97%  <native code in (perf-136880.map)>
  4.64%  <native code in (libjvm.so)>
  4.56%  <native code in ([kernel.kallsyms])>
  1.50%  <native code in (libaztall.so)>
  0.28%  <native code in (libc-2.31.so)>
  0.12%  <native code in ([vdso])>
  0.11%  <native code in (libazsys3.so)>
  0.11%  <native code in (libpthread-2.31.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (libm-2.31.so)>
  0.00%  <native code in (libz.so.1.2.11)>
....................................................................................................
 99.99%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·gc.alloc.rate":
  8743.021 ±(99.9%) 65.367 MB/sec [Average]
  (min, avg, max) = (8730.413, 8743.021, 8771.987), stdev = 16.976
  CI (99.9%): [8677.654, 8808.388] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·gc.alloc.rate.norm":
  200.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (200.000, 200.000, 200.000), stdev = 0.001
  CI (99.9%): [200.000, 200.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·gc.count":
  745.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (145.000, 149.000, 150.000), stdev = 2.236
  CI (99.9%): [745.000, 745.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·gc.time":
  2255.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (437.000, 451.000, 457.000), stdev = 7.969
  CI (99.9%): [2255.000, 2255.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural
# Parameters: (size = 64)

# Run progress: 87.50% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 20.739 ns/op
# Warmup Iteration   2: 19.159 ns/op
# Warmup Iteration   3: 18.911 ns/op
# Warmup Iteration   4: 18.890 ns/op
# Warmup Iteration   5: 19.005 ns/op
Iteration   1: 18.990 ns/op
                 ·gc.alloc.rate:      10043.652 MB/sec
                 ·gc.alloc.rate.norm: 200.000 B/op
                 ·gc.count:           175.000 counts
                 ·gc.time:            521.000 ms

Iteration   2: 18.824 ns/op
                 ·gc.alloc.rate:      10132.457 MB/sec
                 ·gc.alloc.rate.norm: 200.000 B/op
                 ·gc.count:           184.000 counts
                 ·gc.time:            548.000 ms

Iteration   3: 18.822 ns/op
                 ·gc.alloc.rate:      10133.298 MB/sec
                 ·gc.alloc.rate.norm: 200.000 B/op
                 ·gc.count:           180.000 counts
                 ·gc.time:            534.000 ms

Iteration   4: 18.839 ns/op
                 ·gc.alloc.rate:      10124.125 MB/sec
                 ·gc.alloc.rate.norm: 200.000 B/op
                 ·gc.count:           180.000 counts
                 ·gc.time:            537.000 ms

Iteration   5: 18.819 ns/op
                 ·gc.alloc.rate:      10134.697 MB/sec
                 ·gc.alloc.rate.norm: 200.000 B/op
                 ·gc.count:           180.000 counts
                 ·gc.time:            533.000 ms

# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural":
  18.859 ±(99.9%) 0.284 ns/op [Average]
  (min, avg, max) = (18.819, 18.859, 18.990), stdev = 0.074
  CI (99.9%): [18.575, 19.143] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·asm":
PrintAssembly processed: 144204 total address lines.
Perf output processed (skipped 56.337 seconds):
 Column 1: cycles (54313 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca

         0x3000d519: 33 c0                             xorl    %eax, %eax                    
         0x3000d51b: f3 48 aa                          rep        stosb    %al, %es:(%rdi)   
         0x3000d51e: c4 61 f9 7e f8                    vmovq    %xmm15, %rax                 
         0x3000d523: eb 00                             jmp    0                              ; 0x3000d525
         0x3000d525: 89 70 04                          movl    %esi, 4(%rax)                 
         0x3000d528: 48 89 50 08                       movq    %rdx, 8(%rax)                 
         0x3000d52c: c3                                retq                                  
         0x3000d52d: 33 c0                             xorl    %eax, %eax                    
         0x3000d52f: c3                                retq                                  
         StubRoutines::new_stub_dont_check_tls_zero_region_orca [0x000000003000d240, 0x000000003000d38c] (332 bytes)
  2.45%  0x3000d240: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
  8.20%  0x3000d249: 48 03 c8                          addq    %rax, %rcx                    
  0.75%  0x3000d24c: 65 48 3b 0c 25 b8 00 00 00        cmpq    %gs:184, %rcx                 ; thread:[184] = _tlab._end
         0x3000d255: 0f 83 2e 01 00 00                 jae    302                            ; 0x3000d389
  1.03%  0x3000d25b: 65 48 89 0c 25 b0 00 00 00        movq    %rcx, %gs:176                 ; thread:[176] = _tlab._top
  1.66%  0x3000d264: 65 48 8b 3c 25 c0 00 00 00        movq    %gs:192, %rdi                 
  0.02%  0x3000d26d: 48 81 c1 00 02 00 00              addq    $512, %rcx                    
  0.00%  0x3000d274: 48 81 e1 00 fe ff ff              andq    $-512, %rcx                   
  0.02%  0x3000d27b: 65 48 89 0c 25 c0 00 00 00        movq    %rcx, %gs:192                 
  0.68%  0x3000d284: 48 2b cf                          subq    %rdi, %rcx                    
  0.01%  0x3000d287: 81 f9 00 10 00 00                 cmpl    $4096, %ecx                   
         0x3000d28d: 0f 8d da 00 00 00                 jge    218                            ; 0x3000d36d
  0.10%  0x3000d293: 48 03 cf                          addq    %rdi, %rcx                    
  0.29%  0x3000d296: c4 41 00 57 ff                    vxorps    %xmm15, %xmm15, %xmm15      
  0.40%  0x3000d29b: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.00%  0x3000d2a0: 0f 0d 8f 80 04 00 00              prefetchw    1152(%rdi)               
  1.86%  0x3000d2a7: 0f 0d 8f c0 04 00 00              prefetchw    1216(%rdi)               
  0.46%  0x3000d2ae: 0f 0d 8f 00 05 00 00              prefetchw    1280(%rdi)               
  1.74%  0x3000d2b5: 0f 0d 8f 40 05 00 00              prefetchw    1344(%rdi)               
  2.16%  0x3000d2bc: 0f 0d 8f 80 05 00 00              prefetchw    1408(%rdi)               
  2.68%  0x3000d2c3: 0f 0d 8f c0 05 00 00              prefetchw    1472(%rdi)               
  1.60%  0x3000d2ca: 0f 0d 8f 00 06 00 00              prefetchw    1536(%rdi)               
  4.73%  0x3000d2d1: 0f 0d 8f 40 06 00 00              prefetchw    1600(%rdi)               
  2.13%  0x3000d2d8: c5 7d 7f bf 80 00 00 00           vmovdqa    %ymm15, 128(%rdi)          
  0.21%  0x3000d2e0: c5 7d 7f bf a0 00 00 00           vmovdqa    %ymm15, 160(%rdi)          
  0.03%  0x3000d2e8: c5 7d 7f bf c0 00 00 00           vmovdqa    %ymm15, 192(%rdi)          
  0.27%  0x3000d2f0: c5 7d 7f bf e0 00 00 00           vmovdqa    %ymm15, 224(%rdi)          
  1.22%  0x3000d2f8: c5 7d 7f bf 00 01 00 00           vmovdqa    %ymm15, 256(%rdi)          
  0.76%  0x3000d300: c5 7d 7f bf 20 01 00 00           vmovdqa    %ymm15, 288(%rdi)          
  0.62%  0x3000d308: c5 7d 7f bf 40 01 00 00           vmovdqa    %ymm15, 320(%rdi)          
  0.53%  0x3000d310: c5 7d 7f bf 60 01 00 00           vmovdqa    %ymm15, 352(%rdi)          
  0.53%  0x3000d318: c5 7d 7f bf 80 01 00 00           vmovdqa    %ymm15, 384(%rdi)          
  0.18%  0x3000d320: c5 7d 7f bf a0 01 00 00           vmovdqa    %ymm15, 416(%rdi)          
  0.22%  0x3000d328: c5 7d 7f bf c0 01 00 00           vmovdqa    %ymm15, 448(%rdi)          
  0.15%  0x3000d330: c5 7d 7f bf e0 01 00 00           vmovdqa    %ymm15, 480(%rdi)          
  0.81%  0x3000d338: c5 7d 7f bf 00 02 00 00           vmovdqa    %ymm15, 512(%rdi)          
  0.18%  0x3000d340: c5 7d 7f bf 20 02 00 00           vmovdqa    %ymm15, 544(%rdi)          
  0.12%  0x3000d348: c5 7d 7f bf 40 02 00 00           vmovdqa    %ymm15, 576(%rdi)          
  0.26%  0x3000d350: c5 7d 7f bf 60 02 00 00           vmovdqa    %ymm15, 608(%rdi)          
  0.49%  0x3000d358: 48 81 c7 00 02 00 00              addq    $512, %rdi                    
  0.03%  0x3000d35f: 48 3b f9                          cmpq    %rcx, %rdi                    
         0x3000d362: 0f 85 38 ff ff ff                 jne    -200                           ; 0x3000d2a0
  0.05%  0x3000d368: c5 f8 77                          vzeroupper                            
  0.73%  0x3000d36b: eb 18                             jmp    24                             ; 0x3000d385
         0x3000d36d: 48 81 c7 80 00 00 00              addq    $128, %rdi                    
         0x3000d374: c4 61 f9 6e f8                    vmovq    %rax, %xmm15                 
         0x3000d379: 33 c0                             xorl    %eax, %eax                    
         0x3000d37b: f3 48 aa                          rep        stosb    %al, %es:(%rdi)   
         0x3000d37e: c4 61 f9 7e f8                    vmovq    %xmm15, %rax                 
         0x3000d383: eb 00                             jmp    0                              ; 0x3000d385
  0.19%  0x3000d385: 89 70 04                          movl    %esi, 4(%rax)                 
  0.47%  0x3000d388: c3                                retq                                  
  0.01%  0x3000d389: 33 c0                             xorl    %eax, %eax                    
         0x3000d38b: c3                                retq                                  
         StubRoutines::new_stub_check_tls_zero_region_array [0x000000003000d080, 0x000000003000d225] (421 bytes)
         0x3000d080: 85 c9                             testl    %ecx, %ecx                   
         0x3000d082: 2e 0f 88 99 01 00 00              js    409                             ; 0x3000d222
         0x3000d089: 65 48 8b 04 25 b0 00 00 00        movq    %gs:176, %rax                 ; thread:[176] = _tlab._top
         0x3000d092: 48 03 d0                          addq    %rax, %rdx                    
         0x3000d095: 65 48 3b 14 25 c0 00 00 00        cmpq    %gs:192, %rdx                 
         0x3000d09e: 73 13                             jae    19                             ; 0x3000d0b3
         0x3000d0a0: 65 48 89 14 25 b0 00 00 00        movq    %rdx, %gs:176                 ; thread:[176] = _tlab._top
         0x3000d0a9: 89 70 04                          movl    %esi, 4(%rax)                 
....................................................................................................
 41.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x3002f4a0:0x3002fd17] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural[Falcon]

         0x3002fcf3: 4e 8b 04 c2                       movq    (%rdx,%r8,8), %r8             
         0x3002fcf7: 2e 2e 2e 2e 2e 49 0f a3 f8        btq    %rdi, %r8                      
         0x3002fd00: 0f 82 c3 fc ff ff                 jb    -829                            ; 0x3002f9c9
         0x3002fd06: f0                                lock                                  
         0x3002fd07: 48 0f ab 3a                       btsq    %rdi, (%rdx)                  
         0x3002fd0b: 48 c1 ee 0e                       shrq    $14, %rsi                     
         0x3002fd0f: 48 c7 04 f2 01 00 00 00           movq    $1, (%rdx,%rsi,8)             
         0x3002fd17: e9 ad fc ff ff                    jmp    -851                           ; 0x3002f9c9
           # {method}{0x20002658258} wrapper_obj_dse_inter_procedural[Falcon] ()Lcom/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark$Wrapper; in com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/DeadLocalAllocationStoreBenchmark
         Decoding CodeBlob 0x3002f400
  2.13%  0x3002f4a0: eb f9                             pushq    %r15                         
  1.34%  0x3002f4a2: 41 56                             pushq    %r14                         
  1.86%  0x3002f4a4: 53                                pushq    %rbx                         
  1.13%  0x3002f4a5: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.69%  0x3002f4ae: 0f 85 51 01 00 00                 jne    337                            ; 0x3002f605
  0.25%  0x3002f4b4: 49 bf 00 00 00 00 21 00 00 00     movabsq    $141733920768, %r15        ; 0x2100000000 = 
  0.53%  0x3002f4be: 65 48 8b 0c 25 b0 00 00 00        movq    %gs:176, %rcx                 ; thread:[176] = _tlab._top
  1.22%  0x3002f4c7: 48 8d 81 c8 00 00 00              leaq    200(%rcx), %rax               
  0.22%  0x3002f4ce: 65 48 3b 04 25 c0 00 00 00        cmpq    %gs:192, %rax                 
         0x3002f4d7: 0f 83 82 00 00 00                 jae    130                            ; 0x3002f55f
  0.36%  0x3002f4dd: 65 48 89 04 25 b0 00 00 00        movq    %rax, %gs:176                 ; thread:[176] = _tlab._top
  1.28%  0x3002f4e6: 4c 89 39                          movq    %r15, (%rcx)                  
  3.70%  0x3002f4e9: 48 8d 51 10                       leaq    16(%rcx), %rdx                
  0.02%  0x3002f4ed: 4c 89 79 10                       movq    %r15, 16(%rcx)                
  1.87%  0x3002f4f1: 4c 8d 41 20                       leaq    32(%rcx), %r8                 
  0.00%  0x3002f4f5: 4c 89 79 20                       movq    %r15, 32(%rcx)                
  1.91%  0x3002f4f9: 4c 8d 49 30                       leaq    48(%rcx), %r9                 
  0.01%  0x3002f4fd: 4c 89 79 30                       movq    %r15, 48(%rcx)                
  0.89%  0x3002f501: 4c 8d 51 40                       leaq    64(%rcx), %r10                
  0.01%  0x3002f505: 4c 89 79 40                       movq    %r15, 64(%rcx)                
  1.93%  0x3002f509: 4c 8d 59 50                       leaq    80(%rcx), %r11                
  0.01%  0x3002f50d: 4c 89 79 50                       movq    %r15, 80(%rcx)                
  0.74%  0x3002f511: 48 8d 59 60                       leaq    96(%rcx), %rbx                
  0.00%  0x3002f515: 4c 89 79 60                       movq    %r15, 96(%rcx)                
  1.50%  0x3002f519: 4c 8d 71 70                       leaq    112(%rcx), %r14               
  0.01%  0x3002f51d: 4c 89 79 70                       movq    %r15, 112(%rcx)               
  0.83%  0x3002f521: 48 8d 81 80 00 00 00              leaq    128(%rcx), %rax               
  0.00%  0x3002f528: 48 be 00 00 00 00 14 07 00 00     movabsq    $7782480740352, %rsi       ; 0x71400000000 = 
  1.03%  0x3002f532: 48 89 b1 80 00 00 00              movq    %rsi, 128(%rcx)               
  0.69%  0x3002f539: 48 89 48 08                       movq    %rcx, 8(%rax)                 
  1.62%  0x3002f53d: 48 89 50 10                       movq    %rdx, 16(%rax)                
  1.27%  0x3002f541: 4c 89 40 18                       movq    %r8, 24(%rax)                 
  1.51%  0x3002f545: 4c 89 48 20                       movq    %r9, 32(%rax)                 
  1.08%  0x3002f549: 4c 89 50 28                       movq    %r10, 40(%rax)                
  1.27%  0x3002f54d: 4c 89 58 30                       movq    %r11, 48(%rax)                
  1.28%  0x3002f551: 48 89 58 38                       movq    %rbx, 56(%rax)                
  1.65%  0x3002f555: 4c 89 70 40                       movq    %r14, 64(%rax)                
  1.32%  0x3002f559: 5b                                popq    %rbx                          
  0.13%  0x3002f55a: 41 5e                             popq    %r14                          
  0.19%  0x3002f55c: 41 5f                             popq    %r15                          
  0.58%  0x3002f55e: c3                                retq                                  
  0.88%  0x3002f55f: 48 b8 40 d2 00 30 00 00 00 00     movabsq    $805360192, %rax           ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.46%  0x3002f569: be 21 00 00 00                    movl    $33, %esi                     
  0.37%  0x3002f56e: b9 c8 00 00 00                    movl    $200, %ecx                    
  0.13%  0x3002f573: ff d0                             callq    *%rax                        ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.77%  0x3002f575: 2e 2e 2e 2e 2e 2e 2e 2e 48 89     movq    %rax, %rcx                    
         0x3002f580: 48 85 c0                          testq    %rax, %rax                   
         0x3002f583: 0f 85 60 ff ff ff                 jne    -160                           ; 0x3002f4e9
  0.00%  0x3002f589: 65 48 8b 3c 25 40 00 00 00        movq    %gs:64, %rdi                  ; thread:[64] = _current_thread
  0.00%  0x3002f592: 49 bf 80 58 01 30 00 00 00 00     movabsq    $805394560, %r15           ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f59c: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f5a1: 41 ff d7                          callq    *%r15                        ; 0x30015880 = StubRoutines::dolphin_new_instance_stub
         0x3002f5a4: 48 89 c1                          movq    %rax, %rcx                    
         0x3002f5a7: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f5ac: 41 ff d7                          callq    *%r15                        
  0.00%  0x3002f5af: 48 89 c2                          movq    %rax, %rdx                    
         0x3002f5b2: be 21 00 00 00                    movl    $33, %esi                     
  0.00%  0x3002f5b7: 41 ff d7                          callq    *%r15                        
         0x3002f5ba: 49 89 c0                          movq    %rax, %r8                     
         0x3002f5bd: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f5c2: 41 ff d7                          callq    *%r15                        
  0.00%  0x3002f5c5: 49 89 c1                          movq    %rax, %r9                     
         0x3002f5c8: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f5cd: 41 ff d7                          callq    *%r15                        
  0.00%  0x3002f5d0: 49 89 c2                          movq    %rax, %r10                    
         0x3002f5d3: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f5d8: 41 ff d7                          callq    *%r15                        
  0.00%  0x3002f5db: 49 89 c3                          movq    %rax, %r11                    
         0x3002f5de: be 21 00 00 00                    movl    $33, %esi                     
  0.00%  0x3002f5e3: 41 ff d7                          callq    *%r15                        
  0.00%  0x3002f5e6: 48 89 c3                          movq    %rax, %rbx                    
         0x3002f5e9: be 21 00 00 00                    movl    $33, %esi                     
         0x3002f5ee: 41 ff d7                          callq    *%r15                        
  0.00%  0x3002f5f1: 49 89 c6                          movq    %rax, %r14                    
         0x3002f5f4: be 14 07 00 00                    movl    $1812, %esi                   
         0x3002f5f9: 41 ff d7                          callq    *%r15                        
         0x3002f5fc: 0f 1f 40 00                       nopl    (%rax)                        
         0x3002f600: e9 34 ff ff ff                    jmp    -204                           ; 0x3002f539
         0x3002f605: 48 b8 40 75 01 30 00 00 00 00     movabsq    $805401920, %rax           ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f60f: ff d0                             callq    *%rax                        ; 0x30017540 = StubRoutines::safepoint_handler
         0x3002f611: e9 9e fe ff ff                    jmp    -354                           ; 0x3002f4b4
         0x3002f616: 48 83 c4 f8                       addq    $-8, %rsp                     
         0x3002f61a: e9 e1 eb fd ff                    jmp    -136223                        ; 0x3000e200 = StubRoutines::deoptimize
         0x3002f61f: cc                                int3                                  
....................................................................................................
 40.71%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x300268d9:0x30026946] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub[Falcon]

         0x300268d9: 41 ff d5                          callq    *%r13                        ; 0x7fb5c10fa440 = os::javaTimeNanos_slow()
         0x300268dc: 48 89 43 20                       movq    %rax, 32(%rbx)                
         0x300268e0: 4d 85 f6                          testq    %r14, %r14                   
         0x300268e3: 0f 84 86 00 00 00                 je    134                             ; 0x3002696f
         0x300268e9: 4d 85 ff                          testq    %r15, %r15                   
         0x300268ec: 0f 84 8f 00 00 00                 je    143                             ; 0x30026981
         0x300268f2: 4d 85 e4                          testq    %r12, %r12                   
         0x300268f5: 0f 84 a4 00 00 00                 je    164                             ; 0x3002699f
         0x300268fb: 31 ed                             xorl    %ebp, %ebp                    
         0x300268fd: 0f 1f 00                          nopl    (%rax)                        
  0.90%  0x30026900: 4c 89 f7                          movq    %r14, %rdi                    
  0.41%  0x30026903: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.02%  0x30026908: e8 f3 6f fe ff                    callq    -102413                      ; 0x3000d900 = StubRoutines::resolve_and_patch_handler
  1.47%  0x3002690d: 48 89 44 24 40                    movq    %rax, 64(%rsp)                
  0.91%  0x30026912: 48 ff c5                          incq    %rbp                          
  0.03%  0x30026915: 2e 2e 41 0f b6 84 24 94 00 00     movzbl    %cs:148(%r12), %eax         
  1.42%  0x30026920: 84 c0                             testb    %al, %al                     
  0.00%  0x30026922: 74 dc                             je    -36                             ; 0x30026900
         0x30026924: 41 ff d5                          callq    *%r13                        
         0x30026927: 48 89 43 28                       movq    %rax, 40(%rbx)                
         0x3002692b: 48 c7 43 18 00 00 00 00           movq    $0, 24(%rbx)                  
         0x30026933: c4 e1 fb 2a c5                    vcvtsi2sd    %rbp, %xmm0, %xmm0       
         0x30026938: c5 fb 11 43 10                    vmovsd    %xmm0, 16(%rbx)             
         0x3002693d: 48 83 c4 48                       addq    $72, %rsp                     
         0x30026941: 5b                                popq    %rbx                          
         0x30026942: 41 5c                             popq    %r12                          
         0x30026944: 41 5d                             popq    %r13                          
         0x30026946: 41 5e                             popq    %r14                          
....................................................................................................
  5.16%  <total for region 3>

....[Hottest Regions]...............................................................................
 41.05%  [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca
 40.71%  [0x3002f4a0:0x3002fd17] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural[Falcon]
  5.16%  [0x300268d9:0x30026946] in com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub[Falcon]
  0.97%  [0x7fb5c0880a6a:0x7fb5c0880a81] in [unknown] (libjvm.so)
  0.58%  [0x7fb5c0ac5840:0x7fb5c0ac586c] in [unknown] (libjvm.so)
  0.33%  [0x7fb5bb586f95:0x7fb5bb58700d] in PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.25%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.23%  [0x7fb5c0bff989:0x7fb5c0bffa57] in [unknown] (libjvm.so)
  0.19%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.19%  [0x7fb5c0d90000:0x7fb5c0d9004c] in [unknown] (libjvm.so)
  0.18%  [0x30015880:0x30015ce7] in StubRoutines::dolphin_new_instance_stub
  0.18%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.15%  [0x7fb5c08280b3:0x7fb5c08280e7] in [unknown] (libjvm.so)
  0.14%  [0x7fb5c0837987:0x7fb5c08379aa] in [unknown] (libjvm.so)
  0.14%  [0x7fb5bb58709a:0x7fb5bb587124] in PMEM_PageInfo::page_info (libaztall.so)
  0.14%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.13%  [0x7ffd86180a3e:0x7ffd86180aa3] in [unknown] ([vdso])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0x7fb5c0ac59d0:0x7fb5c0ac59e3] in [unknown] (libjvm.so)
  8.89%  <...other 1169 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 41.05%  StubRoutines::new_stub_dont_check_tls_zero_region_orca
 40.71%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark::wrapper_obj_dse_inter_procedural[Falcon]
  5.61%  [unknown] (libjvm.so)
  5.16%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.DeadLocalAllocationStoreBenchmark_wrapper_obj_dse_inter_procedural_jmhTest::wrapper_obj_dse_inter_procedural_avgt_jmhStub[Falcon]
  4.58%  [unknown] ([kernel.kallsyms])
  0.33%  PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.24%  [unknown] (libc-2.31.so)
  0.20%  StubRoutines::dolphin_new_instance_stub
  0.17%  [unknown] ([vdso])
  0.14%  PMEM_PageInfo::page_info (libaztall.so)
  0.08%  VMEM_PageManager::zone_count; VMEM_PageManager::allowed_zone; VMEM_PageManager::is_premapped_page (libaztall.so)
  0.06%  PMEM_PageQueue::head; PMEM_PageQueue::set_head; PMEM_PageQueue::tail; PMEM_PageQueue::set_tail; PMEM_PageQueue::is_empty (libaztall.so)
  0.06%  __pthread_mutex_lock (libpthread-2.31.so)
  0.06%  clock_gettime (libc-2.31.so)
  0.05%  PMEM_PageInfo::is_disallowed; PMEM_PageInfo::is_not_funded; PMEM_PageInfo::is_allocatable; PMEM_PageInfo::is_free; PMEM_PageInfo::is_allocated (libaztall.so)
  0.05%  VMEM_PageManager::get_vmem_page_for_addr (libaztall.so)
  0.04%  PMEM_PageInfo::zone_id (libaztall.so)
  0.04%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.04%  thread_stack_region_start; thread_stack_region_end (libazsys3.so)
  0.04%  VMEM::allocate_within_space (libaztall.so)
  1.26%  <...other 125 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 87.15%  <generated code>
  5.61%  <native code in (libjvm.so)>
  4.58%  <native code in ([kernel.kallsyms])>
  1.84%  <native code in (libaztall.so)>
  0.37%  <native code in (libc-2.31.so)>
  0.17%  <native code in ([vdso])>
  0.13%  <native code in (libpthread-2.31.so)>
  0.11%  <native code in (libazsys3.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libstdc++.so.6)>
  0.00%  <native code in (perf-137368.map)>
....................................................................................................
 99.99%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·gc.alloc.rate":
  10113.646 ±(99.9%) 151.504 MB/sec [Average]
  (min, avg, max) = (10043.652, 10113.646, 10134.697), stdev = 39.345
  CI (99.9%): [9962.141, 10265.150] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·gc.alloc.rate.norm":
  200.000 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (200.000, 200.000, 200.000), stdev = 0.001
  CI (99.9%): [200.000, 200.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·gc.count":
  899.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (175.000, 179.800, 184.000), stdev = 3.194
  CI (99.9%): [899.000, 899.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·gc.time":
  2673.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (521.000, 534.600, 548.000), stdev = 9.659
  CI (99.9%): [2673.000, 2673.000] (assumes normal distribution)


# Run complete. Total time: 00:14:55

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

Benchmark                                                                               (size)  Mode  Cnt      Score     Error   Units
DeadLocalAllocationStoreBenchmark.array_baseline                                            64  avgt    5     12.509 ±   0.054   ns/op
DeadLocalAllocationStoreBenchmark.array_baseline:·asm                                       64  avgt             NaN               ---
DeadLocalAllocationStoreBenchmark.array_baseline:·gc.alloc.rate                             64  avgt    5   6098.969 ±  26.532  MB/sec
DeadLocalAllocationStoreBenchmark.array_baseline:·gc.alloc.rate.norm                        64  avgt    5     80.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.array_baseline:·gc.count                                  64  avgt    5    505.000            counts
DeadLocalAllocationStoreBenchmark.array_baseline:·gc.time                                   64  avgt    5   1547.000                ms
DeadLocalAllocationStoreBenchmark.array_dse                                                 64  avgt    5     12.823 ±   1.564   ns/op
DeadLocalAllocationStoreBenchmark.array_dse:·asm                                            64  avgt             NaN               ---
DeadLocalAllocationStoreBenchmark.array_dse:·gc.alloc.rate                                  64  avgt    5   5954.144 ± 717.971  MB/sec
DeadLocalAllocationStoreBenchmark.array_dse:·gc.alloc.rate.norm                             64  avgt    5     80.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.array_dse:·gc.count                                       64  avgt    5    490.000            counts
DeadLocalAllocationStoreBenchmark.array_dse:·gc.time                                        64  avgt    5   1497.000                ms
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural                                64  avgt    5     27.563 ±   0.039   ns/op
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·asm                           64  avgt             NaN               ---
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·gc.alloc.rate                 64  avgt    5   2767.890 ±   3.957  MB/sec
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·gc.alloc.rate.norm            64  avgt    5     80.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·gc.count                      64  avgt    5    220.000            counts
DeadLocalAllocationStoreBenchmark.array_dse_inter_procedural:·gc.time                       64  avgt    5    676.000                ms
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline                                        64  avgt    5      7.159 ±   0.045   ns/op
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·asm                                   64  avgt             NaN               ---
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·gc.alloc.rate                         64  avgt    5   2131.445 ±  13.337  MB/sec
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·gc.alloc.rate.norm                    64  avgt    5     16.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·gc.count                              64  avgt    5    170.000            counts
DeadLocalAllocationStoreBenchmark.obj_alloc_baseline:·gc.time                               64  avgt    5    521.000                ms
DeadLocalAllocationStoreBenchmark.obj_dse                                                   64  avgt    5      7.179 ±   0.215   ns/op
DeadLocalAllocationStoreBenchmark.obj_dse:·asm                                              64  avgt             NaN               ---
DeadLocalAllocationStoreBenchmark.obj_dse:·gc.alloc.rate                                    64  avgt    5   2125.526 ±  63.054  MB/sec
DeadLocalAllocationStoreBenchmark.obj_dse:·gc.alloc.rate.norm                               64  avgt    5     16.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.obj_dse:·gc.count                                         64  avgt    5    165.000            counts
DeadLocalAllocationStoreBenchmark.obj_dse:·gc.time                                          64  avgt    5    516.000                ms
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural                                  64  avgt    5     79.182 ±   1.467   ns/op
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·asm                             64  avgt             NaN               ---
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·gc.alloc.rate                   64  avgt    5    192.702 ±   3.577  MB/sec
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·gc.alloc.rate.norm              64  avgt    5     16.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·gc.count                        64  avgt    5     23.000            counts
DeadLocalAllocationStoreBenchmark.obj_dse_inter_procedural:·gc.time                         64  avgt    5    180.000                ms
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline                                      64  avgt    5     21.815 ±   0.163   ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·asm                                 64  avgt             NaN               ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·gc.alloc.rate                       64  avgt    5   8743.021 ±  65.367  MB/sec
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·gc.alloc.rate.norm                  64  avgt    5    200.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·gc.count                            64  avgt    5    745.000            counts
DeadLocalAllocationStoreBenchmark.wrapper_obj_baseline:·gc.time                             64  avgt    5   2255.000                ms
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural                          64  avgt    5     18.859 ±   0.284   ns/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·asm                     64  avgt             NaN               ---
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·gc.alloc.rate           64  avgt    5  10113.646 ± 151.504  MB/sec
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·gc.alloc.rate.norm      64  avgt    5    200.000 ±   0.001    B/op
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·gc.count                64  avgt    5    899.000            counts
DeadLocalAllocationStoreBenchmark.wrapper_obj_dse_inter_procedural:·gc.time                 64  avgt    5   2673.000                ms
