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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = _)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 157.160 us/op
# Warmup Iteration   2: 134.361 us/op
# Warmup Iteration   3: 133.646 us/op
# Warmup Iteration   4: 137.389 us/op
# Warmup Iteration   5: 133.141 us/op
Iteration   1: 133.351 us/op
                 ·gc.alloc.rate:      1319.410 MB/sec
                 ·gc.alloc.rate.norm: 184496.006 B/op
                 ·gc.count:           20.000 counts
                 ·gc.time:            64.000 ms

Iteration   2: 132.045 us/op
                 ·gc.alloc.rate:      1332.450 MB/sec
                 ·gc.alloc.rate.norm: 184496.007 B/op
                 ·gc.count:           20.000 counts
                 ·gc.time:            65.000 ms

Iteration   3: 133.574 us/op
                 ·gc.alloc.rate:      1317.210 MB/sec
                 ·gc.alloc.rate.norm: 184496.006 B/op
                 ·gc.count:           20.000 counts
                 ·gc.time:            66.000 ms

Iteration   4: 133.545 us/op
                 ·gc.alloc.rate:      1317.480 MB/sec
                 ·gc.alloc.rate.norm: 184496.007 B/op
                 ·gc.count:           20.000 counts
                 ·gc.time:            65.000 ms

Iteration   5: 132.969 us/op
                 ·gc.alloc.rate:      1323.180 MB/sec
                 ·gc.alloc.rate.norm: 184496.007 B/op
                 ·gc.count:           20.000 counts
                 ·gc.time:            64.000 ms

# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split":
  133.097 ±(99.9%) 2.447 us/op [Average]
  (min, avg, max) = (132.045, 133.097, 133.574), stdev = 0.635
  CI (99.9%): [130.650, 135.544] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·asm":
PrintAssembly processed: 161515 total address lines.
Perf output processed (skipped 56.746 seconds):
 Column 1: cycles (51787 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300351ab:0x300356e6] in java.util.regex.Pattern::split[Falcon]

         0x300351ab: 49 bb 00 00 00 00 27 00 00 00     movabsq    $167503724544, %r11        ; 0x2700000000 = 
         0x300351b5: 41 c6 42 2c 00                    movb    $0, 44(%r10)                  
         0x300351ba: 41 c6 42 2d 00                    movb    $0, 45(%r10)                  
         0x300351bf: 31 ff                             xorl    %edi, %edi                    
         0x300351c1: ba 48 00 f8 2f                    movl    $804782152, %edx              ; 804782152 = clearable_gc_phase_trap_mask
         0x300351c6: 45 31 c0                          xorl    %r8d, %r8d                    
         0x300351c9: 4c 89 64 24 70                    movq    %r12, 112(%rsp)               
         0x300351ce: 4c 89 64 24 78                    movq    %r12, 120(%rsp)               
         0x300351d3: 89 ac 24 c4 00 00 00              movl    %ebp, 196(%rsp)               
         0x300351da: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.05%  0x300351e0: 45 89 c1                          movl    %r8d, %r9d                    
  0.02%  0x300351e3: 41 89 7a 18                       movl    %edi, 24(%r10)                
  0.33%  0x300351e7: 41 8b 42 20                       movl    32(%r10), %eax                
  0.22%  0x300351eb: 89 f9                             movl    %edi, %ecx                    
  0.04%  0x300351ed: 85 c0                             testl    %eax, %eax                   
         0x300351ef: 78 02                             js    2                               ; 0x300351f3
  0.01%  0x300351f1: 89 c1                             movl    %eax, %ecx                    
  0.27%  0x300351f3: 41 89 4a 20                       movl    %ecx, 32(%r10)                
  0.21%  0x300351f7: 49 8b 42 38                       movq    56(%r10), %rax                
  0.05%  0x300351fb: 48 8b 0a                          movq    (%rdx), %rcx                  
  0.02%  0x300351fe: 48 85 c1                          testq    %rax, %rcx                   
  0.31%  0x30035201: 48 89 7c 24 50                    movq    %rdi, 80(%rsp)                
  0.20%  0x30035206: 0f 85 60 12 00 00                 jne    4704                           ; 0x3003646c
  0.03%  0x3003520c: 8b 50 08                          movl    8(%rax), %edx                 
  0.04%  0x3003520f: 85 d2                             testl    %edx, %edx                   
         0x30035211: 74 28                             je    40                              ; 0x3003523b
  0.34%  0x30035213: 83 fa 08                          cmpl    $8, %edx                      
         0x30035216: 0f 83 a4 05 00 00                 jae    1444                           ; 0x300357c0
         0x3003521c: 31 f6                             xorl    %esi, %esi                    
  0.37%  0x3003521e: c7 44 b0 10 ff ff ff ff           movl    $4294967295, 16(%rax,%rsi,4)  
  0.09%  0x30035226: 48 89 f7                          movq    %rsi, %rdi                    
  0.21%  0x30035229: 48 83 cf 01                       orq    $1, %rdi                       
  0.02%  0x3003522d: 48 39 d7                          cmpq    %rdx, %rdi                    
  0.32%  0x30035230: 48 8b 7c 24 50                    movq    80(%rsp), %rdi                
  0.05%  0x30035235: 0f 82 d1 1d 00 00                 jb    7633                            ; 0x3003700c
  0.17%  0x3003523b: 2e 49 8b 42 50                    movq    %cs:80(%r10), %rax            
  0.01%  0x30035240: 48 85 c1                          testq    %rax, %rcx                   
         0x30035243: 0f 85 43 12 00 00                 jne    4675                           ; 0x3003648c
  0.36%  0x30035249: 8b 40 08                          movl    8(%rax), %eax                 
  0.02%  0x3003524c: 85 c0                             testl    %eax, %eax                   
         0x3003524e: 0f 85 fa 1b 00 00                 jne    7162                           ; 0x30036e4e
  0.15%  0x30035254: 41 c7 42 14 00 00 00 00           movl    $0, 20(%r10)                  
  0.01%  0x3003525c: 49 8b 42 30                       movq    48(%r10), %rax                
  0.36%  0x30035260: 48 85 c1                          testq    %rax, %rcx                   
         0x30035263: 0f 85 43 12 00 00                 jne    4675                           ; 0x300364ac
  0.02%  0x30035269: 48 8b 58 38                       movq    56(%rax), %rbx                
  0.27%  0x3003526d: 48 85 d9                          testq    %rbx, %rcx                   
         0x30035270: 0f 85 56 12 00 00                 jne    4694                           ; 0x300364cc
  0.03%  0x30035276: 8b 53 04                          movl    4(%rbx), %edx                 
  0.48%  0x30035279: 2e 2e 2e 4d 8b 7a 40              movq    %cs:64(%r10), %r15            
  0.01%  0x30035280: 4c 85 f9                          testq    %r15, %rcx                   
         0x30035283: 0f 85 69 12 00 00                 jne    4713                           ; 0x300364f2
  0.17%  0x30035289: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
  0.05%  0x3003528f: 81 fa 2d 07 00 00                 cmpl    $1837, %edx                   
         0x30035295: 0f 85 c8 1b 00 00                 jne    7112                           ; 0x30036e63
  0.41%  0x3003529b: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.03%  0x300352a4: 0f 85 6b 12 00 00                 jne    4715                           ; 0x30036515
  0.14%  0x300352aa: 4c 89 4c 24 48                    movq    %r9, 72(%rsp)                 
  0.01%  0x300352af: 4c 89 64 24 40                    movq    %r12, 64(%rsp)                
  0.38%  0x300352b4: 4c 89 74 24 38                    movq    %r14, 56(%rsp)                
  0.01%  0x300352b9: 2e 2e 2e 2e 2b 6b 10              subl    %cs:16(%rbx), %ebp            
  0.15%  0x300352c0: 39 fd                             cmpl    %edi, %ebp                    
         0x300352c2: 0f 8c 71 1b 00 00                 jl    7025                            ; 0x30036e39
  0.02%  0x300352c8: 89 f8                             movl    %edi, %eax                    
  0.41%  0x300352ca: 48 89 44 24 58                    movq    %rax, 88(%rsp)                
  0.02%  0x300352cf: 4d 89 fe                          movq    %r15, %r14                    
  0.16%  0x300352d2: 45 31 ed                          xorl    %r13d, %r13d                  
  0.02%  0x300352d5: 41 b9 48 00 f8 2f                 movl    $804782152, %r9d              ; 804782152 = clearable_gc_phase_trap_mask
  0.74%  0x300352db: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.35%  0x300352e0: 49 81 fd 00 00 01 00              cmpq    $65536, %r13                  
         0x300352e7: 0f 83 3a 15 00 00                 jae    5434                           ; 0x30036827
  0.44%  0x300352ed: 48 8b 4b 08                       movq    8(%rbx), %rcx                 
  0.43%  0x300352f1: 4d 8b 01                          movq    (%r9), %r8                    
  0.73%  0x300352f4: 49 85 c8                          testq    %rcx, %r8                    
         0x300352f7: 0f 85 92 10 00 00                 jne    4242                           ; 0x3003638f
  0.36%  0x300352fd: 8b 51 04                          movl    4(%rcx), %edx                 
  0.78%  0x30035300: 48 8b 44 24 58                    movq    88(%rsp), %rax                
  0.50%  0x30035305: 4e 8d 24 28                       leaq    (%rax,%r13), %r12             
  0.65%  0x30035309: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
  0.41%  0x3003530f: 81 fa 28 07 00 00                 cmpl    $1832, %edx                   
         0x30035315: 0f 85 14 06 00 00                 jne    1556                           ; 0x3003592f
  0.62%  0x3003531b: 2e 41 8b 42 0c                    movl    %cs:12(%r10), %eax            
  0.46%  0x30035320: 44 39 e0                          cmpl    %r12d, %eax                   
         0x30035323: 0f 8e 46 15 00 00                 jle    5446                           ; 0x3003686f
  0.58%  0x30035329: 48 8b 51 10                       movq    16(%rcx), %rdx                
  0.42%  0x3003532d: 49 85 d0                          testq    %rdx, %r8                    
         0x30035330: 0f 85 7c 10 00 00                 jne    4220                           ; 0x300363b2
  0.67%  0x30035336: 4d 85 ff                          testq    %r15, %r15                   
         0x30035339: 0f 84 f3 15 00 00                 je    5619                            ; 0x30036932
  0.42%  0x3003533f: 41 8b 46 04                       movl    4(%r14), %eax                 
  0.60%  0x30035343: 25 ff ff ff 01                    andl    $33554431, %eax               
  0.35%  0x30035348: 83 f8 27                          cmpl    $39, %eax                     
         0x3003534b: 0f 85 23 15 00 00                 jne    5411                           ; 0x30036874
  0.59%  0x30035351: 41 0f b6 46 14                    movzbl    20(%r14), %eax              
  0.43%  0x30035356: 84 c0                             testb    %al, %al                     
         0x30035358: 0f 85 1b 15 00 00                 jne    5403                           ; 0x30036879
  0.58%  0x3003535e: 49 8b 46 08                       movq    8(%r14), %rax                 
  0.37%  0x30035362: 49 85 c0                          testq    %rax, %r8                    
         0x30035365: 0f 85 6a 10 00 00                 jne    4202                           ; 0x300363d5
  0.63%  0x3003536b: 45 85 e4                          testl    %r12d, %r12d                 
         0x3003536e: 0f 88 d6 15 00 00                 js    5590                            ; 0x3003694a
  0.50%  0x30035374: 2e 2e 2e 2e 2e 2e 2e 2e 2e 8b     movl    %cs:8(%rax), %esi             
  0.69%  0x30035380: 44 39 e6                          cmpl    %r12d, %esi                   
         0x30035383: 0f 8e f5 14 00 00                 jle    5365                           ; 0x3003687e
  0.47%  0x30035389: 48 85 d2                          testq    %rdx, %rdx                   
         0x3003538c: 0f 84 e8 15 00 00                 je    5608                            ; 0x3003697a
  0.53%  0x30035392: 44 89 e6                          movl    %r12d, %esi                   
  0.44%  0x30035395: 0f b6 44 30 10                    movzbl    16(%rax,%rsi), %eax         
  0.64%  0x3003539a: 8b 72 04                          movl    4(%rdx), %esi                 
  0.44%  0x3003539d: 81 e6 ff ff ff 01                 andl    $33554431, %esi               
  0.57%  0x300353a3: 81 fe 26 07 00 00                 cmpl    $1830, %esi                   
         0x300353a9: 0f 85 d4 14 00 00                 jne    5332                           ; 0x30036883
  0.51%  0x300353af: 39 42 08                          cmpl    %eax, 8(%rdx)                 
         0x300353b2: 0f 84 f8 00 00 00                 je    248                             ; 0x300354b0
  0.80%  0x300353b8: 48 8b 44 24 58                    movq    88(%rsp), %rax                
  0.77%  0x300353bd: 4e 8d 24 28                       leaq    (%rax,%r13), %r12             
  0.53%  0x300353c1: 49 ff c4                          incq    %r12                          
  0.49%  0x300353c4: 41 39 ec                          cmpl    %ebp, %r12d                   
         0x300353c7: 0f 8f ad 09 00 00                 jg    2477                            ; 0x30035d7a
  0.67%  0x300353cd: 48 8b 4b 08                       movq    8(%rbx), %rcx                 
  0.29%  0x300353d1: 4d 8b 01                          movq    (%r9), %r8                    
  0.48%  0x300353d4: 49 85 c8                          testq    %rcx, %r8                    
         0x300353d7: 0f 85 1f 10 00 00                 jne    4127                           ; 0x300363fc
  0.42%  0x300353dd: 8b 51 04                          movl    4(%rcx), %edx                 
  0.70%  0x300353e0: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
  0.35%  0x300353e6: 81 fa 28 07 00 00                 cmpl    $1832, %edx                   
         0x300353ec: 0f 85 d5 05 00 00                 jne    1493                           ; 0x300359c7
  0.54%  0x300353f2: 41 8b 42 0c                       movl    12(%r10), %eax                
  0.44%  0x300353f6: 44 39 e0                          cmpl    %r12d, %eax                   
         0x300353f9: 0f 8e 89 14 00 00                 jle    5257                           ; 0x30036888
  0.58%  0x300353ff: 48 8b 51 10                       movq    16(%rcx), %rdx                
  0.30%  0x30035403: 49 85 d0                          testq    %rdx, %r8                    
         0x30035406: 0f 85 13 10 00 00                 jne    4115                           ; 0x3003641f
  0.58%  0x3003540c: 4d 85 ff                          testq    %r15, %r15                   
         0x3003540f: 0f 84 15 15 00 00                 je    5397                            ; 0x3003692a
  0.41%  0x30035415: 41 8b 46 04                       movl    4(%r14), %eax                 
  0.50%  0x30035419: 2e 2e 25 ff ff ff 01              andl    $33554431, %eax               
  0.28%  0x30035420: 83 f8 27                          cmpl    $39, %eax                     
         0x30035423: 0f 85 7a 14 00 00                 jne    5242                           ; 0x300368a3
  0.57%  0x30035429: 41 0f b6 46 14                    movzbl    20(%r14), %eax              
  0.38%  0x3003542e: 84 c0                             testb    %al, %al                     
         0x30035430: 0f 85 88 14 00 00                 jne    5256                           ; 0x300368be
  0.52%  0x30035436: 2e 2e 2e 2e 2e 2e 49 8b 46 08     movq    %cs:8(%r14), %rax             
  0.32%  0x30035440: 49 85 c0                          testq    %rax, %r8                    
         0x30035443: 0f 85 fc 0f 00 00                 jne    4092                           ; 0x30036445
  0.57%  0x30035449: 45 85 e4                          testl    %r12d, %r12d                 
         0x3003544c: 0f 88 d0 14 00 00                 js    5328                            ; 0x30036922
  0.50%  0x30035452: 8b 70 08                          movl    8(%rax), %esi                 
  0.56%  0x30035455: 44 39 e6                          cmpl    %r12d, %esi                   
         0x30035458: 0f 8e 7e 14 00 00                 jle    5246                           ; 0x300368dc
  0.33%  0x3003545e: 66 90                             nop                                   
  0.54%  0x30035460: 48 85 d2                          testq    %rdx, %rdx                   
         0x30035463: 0f 84 a9 14 00 00                 je    5289                            ; 0x30036912
  0.43%  0x30035469: 44 89 e6                          movl    %r12d, %esi                   
  0.54%  0x3003546c: 0f b6 44 30 10                    movzbl    16(%rax,%rsi), %eax         
  0.38%  0x30035471: 8b 72 04                          movl    4(%rdx), %esi                 
  0.54%  0x30035474: 2e 2e 2e 2e 2e 2e 81 e6 ff ff     andl    $33554431, %esi               
  0.42%  0x30035480: 81 fe 26 07 00 00                 cmpl    $1830, %esi                   
         0x30035486: 0f 85 6b 14 00 00                 jne    5227                           ; 0x300368f7
  0.55%  0x3003548c: 39 42 08                          cmpl    %eax, 8(%rdx)                 
         0x3003548f: 0f 84 8b 03 00 00                 je    907                             ; 0x30035820
  0.62%  0x30035495: 49 83 c5 02                       addq    $2, %r13                      
  0.77%  0x30035499: 48 8b 44 24 58                    movq    88(%rsp), %rax                
  0.64%  0x3003549e: 44 01 e8                          addl    %r13d, %eax                   
  0.50%  0x300354a1: 39 e8                             cmpl    %ebp, %eax                    
         0x300354a3: 0f 8e 32 fe ff ff                 jle    -462                           ; 0x300352db
         0x300354a9: e9 cc 08 00 00                    jmp    2252                           ; 0x30035d7a
         0x300354ae: 66 90                             nop                                   
  1.13%  0x300354b0: 41 01 fd                          addl    %edi, %r13d                   
  1.33%  0x300354b3: 2e 2e 2e 2e 2e 2e 2e 2e 2e 48     movq    %cs:8(%rcx), %rax             
  1.49%  0x300354c0: 49 85 c0                          testq    %rax, %r8                    
         0x300354c3: 0f 85 1c 11 00 00                 jne    4380                           ; 0x300365e5
  0.49%  0x300354c9: 8b 50 04                          movl    4(%rax), %edx                 
  1.43%  0x300354cc: 41 8d 4d 01                       leal    1(%r13), %ecx                 
  0.06%  0x300354d0: 2e 2e 2e 2e 2e 2e 2e 2e 2e 81     andl    $33554431, %edx               
  0.46%  0x300354df: 90                                nop                                   
  0.02%  0x300354e0: 81 fa 20 07 00 00                 cmpl    $1824, %edx                   
         0x300354e6: 0f 85 99 1a 00 00                 jne    6809                           ; 0x30036f85
  0.48%  0x300354ec: 41 83 7a 14 01                    cmpl    $1, 20(%r10)                  
  0.03%  0x300354f1: 0f 84 a3 1a 00 00                 je    6819                            ; 0x30036f9a
  0.13%  0x300354f7: 41 89 4a 1c                       movl    %ecx, 28(%r10)                
  0.02%  0x300354fb: 2e 49 8b 42 38                    movq    %cs:56(%r10), %rax            
  0.38%  0x30035500: 49 85 c0                          testq    %rax, %r8                    
         0x30035503: 0f 85 ff 10 00 00                 jne    4351                           ; 0x30036608
  0.05%  0x30035509: 41 8b 52 18                       movl    24(%r10), %edx                
  0.14%  0x3003550d: 83 78 08 01                       cmpl    $1, 8(%rax)                   
  0.69%  0x30035511: 0f 86 ad 1a 00 00                 jbe    6829                           ; 0x30036fc4
  0.53%  0x30035517: 89 50 10                          movl    %edx, 16(%rax)                
  0.16%  0x3003551a: 89 48 14                          movl    %ecx, 20(%rax)                
  1.61%  0x3003551d: 45 89 6a 18                       movl    %r13d, 24(%r10)               
  0.02%  0x30035521: 48 bd 00 00 00 00 08 00 00 00     movabsq    $34359738368, %rbp         ; 0x800000000 = 
  0.04%  0x3003552b: 44 89 68 10                       movl    %r13d, 16(%rax)               
  0.15%  0x3003552f: 89 48 14                          movl    %ecx, 20(%rax)                
  0.44%  0x30035532: 41 89 4a 20                       movl    %ecx, 32(%r10)                
  0.07%  0x30035536: 41 ff 42 28                       incl    40(%r10)                      
  0.53%  0x3003553a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.02%  0x30035540: 85 ff                             testl    %edi, %edi                   
         0x30035542: 0f 84 f6 06 00 00                 je    1782                            ; 0x30035c3e
  0.02%  0x30035548: 45 85 ed                          testl    %r13d, %r13d                 
  0.09%  0x3003554b: 8b 84 24 a8 00 00 00              movl    168(%rsp), %eax               
  0.49%  0x30035552: 0f 88 20 19 00 00                 js    6432                            ; 0x30036e78
  0.05%  0x30035558: 2e 2e 2e 2e 2e 45 89 e8           movl    %r13d, %r8d                   
  0.02%  0x30035560: 41 29 f8                          subl    %edi, %r8d                    
         0x30035563: 0f 8c 24 19 00 00                 jl    6436                            ; 0x30036e8d
  0.08%  0x30035569: 41 39 c5                          cmpl    %eax, %r13d                   
         0x3003556c: 0f 8f 32 19 00 00                 jg    6450                            ; 0x30036ea4
  0.42%  0x30035572: 85 ff                             testl    %edi, %edi                   
         0x30035574: 0f 84 d6 05 00 00                 je    1494                            ; 0x30035b50
  0.05%  0x3003557a: 80 bc 24 ac 00 00 00 00           cmpb    $0, 172(%rsp)                 
  0.03%  0x30035582: 0f 85 33 19 00 00                 jne    6451                           ; 0x30036ebb
  0.08%  0x30035588: 41 39 fd                          cmpl    %edi, %r13d                   
         0x3003558b: 0f 84 d2 19 00 00                 je    6610                            ; 0x30036f63
  0.43%  0x30035591: 65 4c 8b 34 25 b0 00 00 00        movq    %gs:176, %r14                 ; thread:[176] = _tlab._top
  0.08%  0x3003559a: 2e 2e 49 8d 46 18                 leaq    %cs:24(%r14), %rax            
  0.05%  0x300355a0: 65 48 3b 04 25 c0 00 00 00        cmpq    %gs:192, %rax                 
         0x300355a9: 0f 83 81 02 00 00                 jae    641                            ; 0x30035830
  0.12%  0x300355af: 65 48 89 04 25 b0 00 00 00        movq    %rax, %gs:176                 ; thread:[176] = _tlab._top
  0.41%  0x300355b8: 4d 89 1e                          movq    %r11, (%r14)                  
  0.74%  0x300355bb: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.02%  0x300355c0: 45 85 c0                          testl    %r8d, %r8d                   
         0x300355c3: 0f 88 07 19 00 00                 js    6407                            ; 0x30036ed0
  0.05%  0x300355c9: 44 89 c2                          movl    %r8d, %edx                    
  0.19%  0x300355cc: 48 8d 4a 17                       leaq    23(%rdx), %rcx                
  0.30%  0x300355d0: 48 b8 f8 ff ff ff 01 00 00 00     movabsq    $8589934584, %rax          ; 0x1fffffff8 = 
  0.03%  0x300355da: 48 21 c1                          andq    %rax, %rcx                    
  0.08%  0x300355dd: 65 48 8b 1c 25 b0 00 00 00        movq    %gs:176, %rbx                 ; thread:[176] = _tlab._top
  0.40%  0x300355e6: 48 8d 04 0b                       leaq    (%rbx,%rcx), %rax             
  0.34%  0x300355ea: 65 48 3b 04 25 c0 00 00 00        cmpq    %gs:192, %rax                 
         0x300355f3: 0f 83 67 02 00 00                 jae    615                            ; 0x30035860
  0.18%  0x300355f9: 65 48 89 04 25 b0 00 00 00        movq    %rax, %gs:176                 ; thread:[176] = _tlab._top
  0.45%  0x30035602: 48 89 2b                          movq    %rbp, (%rbx)                  
  2.27%  0x30035605: 48 89 53 08                       movq    %rdx, 8(%rbx)                 
  0.78%  0x30035609: 4c 8b 64 24 40                    movq    64(%rsp), %r12                
  0.01%  0x3003560e: 4c 8b 6c 24 48                    movq    72(%rsp), %r13                
  0.03%  0x30035613: 8b 84 24 a0 00 00 00              movl    160(%rsp), %eax               
  0.33%  0x3003561a: 89 c1                             movl    %eax, %ecx                    
  0.22%  0x3003561c: 29 f9                             subl    %edi, %ecx                    
  0.04%  0x3003561e: 44 39 c1                          cmpl    %r8d, %ecx                    
  0.13%  0x30035621: 41 0f 4d c8                       cmovgel    %r8d, %ecx                 
  0.30%  0x30035625: 89 c8                             movl    %ecx, %eax                    
  0.24%  0x30035627: 09 f8                             orl    %edi, %eax                     
  0.01%  0x30035629: 0f 88 63 13 00 00                 js    4963                            ; 0x30036992
  0.04%  0x3003562f: 44 39 c1                          cmpl    %r8d, %ecx                    
         0x30035632: 0f 87 5a 13 00 00                 ja    4954                            ; 0x30036992
  0.30%  0x30035638: 2e 2e 2e 2e 2e 8d 04 39           leal    %cs:(%rcx,%rdi), %eax         
  0.19%  0x30035640: 3b 84 24 a0 00 00 00              cmpl    160(%rsp), %eax               
         0x30035647: 0f 87 45 13 00 00                 ja    4933                            ; 0x30036992
  0.03%  0x3003564d: 41 89 c8                          movl    %ecx, %r8d                    
  0.03%  0x30035650: 81 f9 ff ff 01 00                 cmpl    $131071, %ecx                 
         0x30035656: 77 68                             ja    104                             ; 0x300356c0
  0.29%  0x30035658: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
  0.23%  0x30035660: 85 c9                             testl    %ecx, %ecx                   
         0x30035662: 0f 84 8d 00 00 00                 je    141                             ; 0x300356f5
  0.03%  0x30035668: 48 8b 44 24 68                    movq    104(%rsp), %rax               
  0.02%  0x3003566d: 48 8b 54 24 58                    movq    88(%rsp), %rdx                
  0.32%  0x30035672: 48 01 d0                          addq    %rdx, %rax                    
  0.22%  0x30035675: 2e 2e 2e 2e 48 81 c0 10 00 00     addq    $16, %rax                     
  0.03%  0x30035680: 83 f9 10                          cmpl    $16, %ecx                     
         0x30035683: 0f 83 0d 02 00 00                 jae    525                            ; 0x30035896
  0.01%  0x30035689: 31 c9                             xorl    %ecx, %ecx                    
  0.30%  0x3003568b: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.25%  0x3003569a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.12%  0x300356a0: 0f b6 14 08                       movzbl    (%rax,%rcx), %edx           
  0.25%  0x300356a4: 88 54 0b 10                       movb    %dl, 16(%rbx,%rcx)            
  2.19%  0x300356a8: 48 ff c1                          incq    %rcx                          
  1.19%  0x300356ab: 4c 39 c1                          cmpq    %r8, %rcx                     
         0x300356ae: 72 f0                             jb    -16                             ; 0x300356a0
  0.09%  0x300356b0: eb 43                             jmp    67                             ; 0x300356f5
         0x300356b2: 66 66 66 66 66 2e 0f 1f 84 00     nopw    %cs:(%rax,%rax)               
         0x300356c0: 48 8b 4c 24 58                    movq    88(%rsp), %rcx                
         0x300356c5: 48 83 c1 10                       addq    $16, %rcx                     
         0x300356c9: be 10 00 00 00                    movl    $16, %esi                     
         0x300356ce: 48 89 df                          movq    %rbx, %rdi                    
         0x300356d1: 48 8b 54 24 68                    movq    104(%rsp), %rdx               
         0x300356d6: 4d 89 d7                          movq    %r10, %r15                    
         0x300356d9: 48 b8 80 9c 01 30 00 00 00 00     movabsq    $805411968, %rax           ; 0x30019c80 = StubRoutines::prim_arraycopy_bytes1_disjoint_safepoint
         0x300356e3: c5 f8 77                          vzeroupper                            
         0x300356e6: ff d0                             callq    *%rax                        ; 0x30019c80 = StubRoutines::prim_arraycopy_bytes1_disjoint_safepoint
....................................................................................................
 70.35%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x300356c5:0x30035808] in java.util.regex.Pattern::split[Falcon]

         0x300356c5: 48 83 c1 10                       addq    $16, %rcx                     
         0x300356c9: be 10 00 00 00                    movl    $16, %esi                     
         0x300356ce: 48 89 df                          movq    %rbx, %rdi                    
         0x300356d1: 48 8b 54 24 68                    movq    104(%rsp), %rdx               
         0x300356d6: 4d 89 d7                          movq    %r10, %r15                    
         0x300356d9: 48 b8 80 9c 01 30 00 00 00 00     movabsq    $805411968, %rax           ; 0x30019c80 = StubRoutines::prim_arraycopy_bytes1_disjoint_safepoint
         0x300356e3: c5 f8 77                          vzeroupper                            
         0x300356e6: ff d0                             callq    *%rax                        ; 0x30019c80 = StubRoutines::prim_arraycopy_bytes1_disjoint_safepoint
         0x300356e8: 49 bb 00 00 00 00 27 00 00 00     movabsq    $167503724544, %r11        ; 0x2700000000 = 
         0x300356f2: 4d 89 fa                          movq    %r15, %r10                    
  0.25%  0x300356f5: 49 8d 46 08                       leaq    8(%r14), %rax                 
  0.36%  0x300356f9: 2e 2e 2e 49 8d 0c 2e              leaq    %cs:(%r14,%rbp), %rcx         
  0.17%  0x30035700: 48 39 d9                          cmpq    %rbx, %rcx                    
         0x30035703: 0f 82 87 0e 00 00                 jb    3719                            ; 0x30036590
  0.02%  0x30035709: 48 89 18                          movq    %rbx, (%rax)                  
  0.17%  0x3003570c: 45 8d 45 01                       leal    1(%r13), %r8d                 
  0.40%  0x30035710: 41 8b 44 24 08                    movl    8(%r12), %eax                 
  0.17%  0x30035715: 44 39 e8                          cmpl    %r13d, %eax                   
         0x30035718: 0f 84 39 03 00 00                 je    825                             ; 0x30035a57
  0.01%  0x3003571e: 66 90                             nop                                   
  0.03%  0x30035720: 44 39 e8                          cmpl    %r13d, %eax                   
         0x30035723: 0f 86 bc 17 00 00                 jbe    6076                           ; 0x30036ee5
  0.35%  0x30035729: 44 89 e8                          movl    %r13d, %eax                   
  0.19%  0x3003572c: 49 8d 04 c4                       leaq    (%r12,%rax,8), %rax           
  0.01%  0x30035730: 48 83 c0 10                       addq    $16, %rax                     
  0.09%  0x30035734: 2e 2e 2e 2e 2e 2e 2e 2e 49 8d     leaq    %cs:(%r12,%rbp), %rcx         
  0.31%  0x30035740: 4c 39 f1                          cmpq    %r14, %rcx                    
         0x30035743: 0f 82 e0 0d 00 00                 jb    3552                            ; 0x30036529
  0.18%  0x30035749: 4c 89 30                          movq    %r14, (%rax)                  
  0.04%  0x3003574c: 41 8b 42 18                       movl    24(%r10), %eax                
  0.02%  0x30035750: 85 c0                             testl    %eax, %eax                   
  0.30%  0x30035752: 4c 8b 74 24 38                    movq    56(%rsp), %r14                
  0.19%  0x30035757: 0f 88 9d 17 00 00                 js    6045                            ; 0x30036efa
  0.04%  0x3003575d: 41 8b 7a 1c                       movl    28(%r10), %edi                
  0.01%  0x30035761: 39 c7                             cmpl    %eax, %edi                    
         0x30035763: 0f 84 a6 17 00 00                 je    6054                            ; 0x30036f0f
  0.36%  0x30035769: 41 8b 42 08                       movl    8(%r10), %eax                 
  0.18%  0x3003576d: 39 c7                             cmpl    %eax, %edi                    
         0x3003576f: 0f 8c af 17 00 00                 jl    6063                            ; 0x30036f24
  0.06%  0x30035775: 2e 2e 2e 2e 2e 2e 2e 41 8b 6a     movl    %cs:12(%r10), %ebp            
  0.04%  0x30035780: 39 ef                             cmpl    %ebp, %edi                    
         0x30035782: 0f 8f b1 17 00 00                 jg    6065                            ; 0x30036f39
  0.32%  0x30035788: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.21%  0x30035791: 0f 85 e5 0d 00 00                 jne    3557                           ; 0x3003657c
  0.06%  0x30035797: ba 48 00 f8 2f                    movl    $804782152, %edx              ; 804782152 = clearable_gc_phase_trap_mask
  0.02%  0x3003579c: 41 c6 42 2c 00                    movb    $0, 44(%r10)                  
  0.33%  0x300357a1: 41 c6 42 2d 00                    movb    $0, 45(%r10)                  
  0.20%  0x300357a6: 85 ff                             testl    %edi, %edi                   
         0x300357a8: 0f 89 32 fa ff ff                 jns    -1486                          ; 0x300351e0
         0x300357ae: e9 9b 17 00 00                    jmp    6043                           ; 0x30036f4e
         0x300357b3: 66 66 66 66 2e 0f 1f 84 00 00     nopw    %cs:(%rax,%rax)               
  0.21%  0x300357c0: 89 d6                             movl    %edx, %esi                    
  0.03%  0x300357c2: 81 e6 f8 ff ff 7f                 andl    $2147483640, %esi             
  0.02%  0x300357c8: c5 fd 76 c0                       vpcmpeqd    %ymm0, %ymm0, %ymm0       
  0.33%  0x300357cc: c5 fe 7f 40 10                    vmovdqu    %ymm0, 16(%rax)            
  0.38%  0x300357d1: 48 83 fe 08                       cmpq    $8, %rsi                      
         0x300357d5: 74 2e                             je    46                              ; 0x30035805
  0.02%  0x300357d7: 2e 2e 2e 2e c5 fe 7f 40 30        vmovdqu    %ymm0, %cs:48(%rax)        
  0.08%  0x300357e0: 83 fe 10                          cmpl    $16, %esi                     
         0x300357e3: 74 20                             je    32                              ; 0x30035805
         0x300357e5: 48 8d 7e f0                       leaq    -16(%rsi), %rdi               
         0x300357e9: 45 31 c0                          xorl    %r8d, %r8d                    
         0x300357ec: c5 fd 76 c0                       vpcmpeqd    %ymm0, %ymm0, %ymm0       
         0x300357f0: c4 a1 7e 7f 44 80 50              vmovdqu    %ymm0, 80(%rax,%r8,4)      
         0x300357f7: 2e 2e 49 81 c0 08 00 00 00        addq    $8, %r8                       
         0x30035800: 4c 39 c7                          cmpq    %r8, %rdi                     
         0x30035803: 75 e7                             jne    -25                            ; 0x300357ec
  0.27%  0x30035805: 48 39 d6                          cmpq    %rdx, %rsi                    
  0.21%  0x30035808: 48 8b 7c 24 50                    movq    80(%rsp), %rdi                
....................................................................................................
  6.15%  <total for region 2>

....[Hottest Regions]...............................................................................
 70.35%  [0x300351ab:0x300356e6] in java.util.regex.Pattern::split[Falcon]
  6.15%  [0x300356c5:0x30035808] in java.util.regex.Pattern::split[Falcon]
  4.39%  [0x300357d7:0x300358c5] in java.util.regex.Pattern::split[Falcon]
  3.94%  [0x3000cc7e:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  3.58%  [0x30036fdf:0x30037066] in java.util.regex.Pattern::split[Falcon]
  3.10%  [0x3001f4c0:0x3001f580] in StubRoutines::checkcast_arraycopy
  1.38%  [0x3001d9aa:0x3001db40] in StubRoutines::object_arraycopy
  1.29%  [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.27%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.18%  [0xffffffffa9eb8dcf:0xffffffffa9eb8de6] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb93b0:0xffffffffa9eb9432] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f0711f:0xffffffffa9f0715c] in [unknown] ([kernel.kallsyms])
  0.13%  [0x7f26b0f2fa75:0x7f26b0f2fa81] in [unknown] (libjvm.so)
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.13%  [0x30035a1e:0x30035b41] in java.util.regex.Pattern::split[Falcon]
  0.11%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.09%  [0x3001d900:0x3001f698] in StubRoutines::object_arraycopy
  0.09%  [0xffffffffa9ed0800:0xffffffffa9ed0889] in [unknown] ([kernel.kallsyms])
  4.00%  <...other 591 warm regions...>
....................................................................................................
 99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 84.83%  java.util.regex.Pattern::split[Falcon]
  3.99%  [unknown] ([kernel.kallsyms])
  3.94%  StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  3.11%  StubRoutines::checkcast_arraycopy
  1.50%  StubRoutines::object_arraycopy
  1.29%  StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.76%  [unknown] (libjvm.so)
  0.04%  [unknown] ([vdso])
  0.04%  [unknown] (libc-2.31.so)
  0.03%  StubRoutines::object_arraycopy_bytes
  0.03%  PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.03%  PMEM_PageInfo::page_info (libaztall.so)
  0.02%  [unknown] (perf-154245.map)
  0.02%  VMEM_PageManager::zone_count; VMEM_PageManager::allowed_zone; VMEM_PageManager::is_premapped_page (libaztall.so)
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.02%  thread_stack_region_start; thread_stack_region_end (libazsys3.so)
  0.01%  __pthread_mutex_lock (libpthread-2.31.so)
  0.01%  __errno_location (libpthread-2.31.so)
  0.01%  PMEM_PageZone::allocate_page (libaztall.so)
  0.01%  VMEM_SpaceManager::allocate (libaztall.so)
  0.29%  <...other 93 warm methods...>
....................................................................................................
 99.99%  <totals>

....[Distribution by Area]..........................................................................
 94.73%  <generated code>
  3.99%  <native code in ([kernel.kallsyms])>
  0.76%  <native code in (libjvm.so)>
  0.29%  <native code in (libaztall.so)>
  0.07%  <native code in (libc-2.31.so)>
  0.04%  <native code in ([vdso])>
  0.03%  <native code in (libpthread-2.31.so)>
  0.03%  <native code in (libazsys3.so)>
  0.02%  <native code in (perf-154245.map)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (ld-2.31.so)>
  0.00%  <native code in (libm-2.31.so)>
  0.00%  <native code in (libstdc++.so.6)>
....................................................................................................
 99.99%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·gc.alloc.rate":
  1321.946 ±(99.9%) 24.403 MB/sec [Average]
  (min, avg, max) = (1317.210, 1321.946, 1332.450), stdev = 6.337
  CI (99.9%): [1297.543, 1346.349] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·gc.alloc.rate.norm":
  184496.007 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (184496.006, 184496.007, 184496.007), stdev = 0.001
  CI (99.9%): [184496.006, 184496.008] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·gc.count":
  100.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (20.000, 20.000, 20.000), stdev = 0.001
  CI (99.9%): [100.000, 100.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·gc.time":
  324.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (64.000, 64.800, 66.000), stdev = 0.837
  CI (99.9%): [324.000, 324.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = __)

# Run progress: 25.00% complete, ETA 00:05:37
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 178.616 us/op
# Warmup Iteration   2: 155.538 us/op
# Warmup Iteration   3: 154.089 us/op
# Warmup Iteration   4: 167.572 us/op
# Warmup Iteration   5: 166.921 us/op
Iteration   1: 167.152 us/op
                 ·gc.alloc.rate:      1052.604 MB/sec
                 ·gc.alloc.rate.norm: 184496.008 B/op
                 ·gc.count:           15.000 counts
                 ·gc.time:            48.000 ms

Iteration   2: 167.402 us/op
                 ·gc.alloc.rate:      1051.031 MB/sec
                 ·gc.alloc.rate.norm: 184496.009 B/op
                 ·gc.count:           15.000 counts
                 ·gc.time:            50.000 ms

Iteration   3: 153.321 us/op
                 ·gc.alloc.rate:      1147.550 MB/sec
                 ·gc.alloc.rate.norm: 184496.008 B/op
                 ·gc.count:           20.000 counts
                 ·gc.time:            67.000 ms

Iteration   4: 167.764 us/op
                 ·gc.alloc.rate:      1048.761 MB/sec
                 ·gc.alloc.rate.norm: 184496.009 B/op
                 ·gc.count:           15.000 counts
                 ·gc.time:            48.000 ms

Iteration   5: 167.687 us/op
                 ·gc.alloc.rate:      1049.236 MB/sec
                 ·gc.alloc.rate.norm: 184496.009 B/op
                 ·gc.count:           15.000 counts
                 ·gc.time:            49.000 ms

# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split":
  164.665 ±(99.9%) 24.437 us/op [Average]
  (min, avg, max) = (153.321, 164.665, 167.764), stdev = 6.346
  CI (99.9%): [140.228, 189.102] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·asm":
PrintAssembly processed: 162674 total address lines.
Perf output processed (skipped 56.967 seconds):
 Column 1: cycles (51733 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x30035fd3:0x30036569] in java.util.regex.Pattern::split[Falcon]

         0x30035fd3: c6 41 2c 00                       movb    $0, 44(%rcx)                  
         0x30035fd7: c6 41 2d 00                       movb    $0, 45(%rcx)                  
         0x30035fdb: 31 d2                             xorl    %edx, %edx                    
         0x30035fdd: 45 31 c0                          xorl    %r8d, %r8d                    
         0x30035fe0: 4c 89 94 24 88 00 00 00           movq    %r10, 136(%rsp)               
         0x30035fe8: 4c 89 54 24 78                    movq    %r10, 120(%rsp)               
         0x30035fed: 4c 89 54 24 40                    movq    %r10, 64(%rsp)                
         0x30035ff2: 8b ac 24 b4 00 00 00              movl    180(%rsp), %ebp               
         0x30035ff9: 4d 89 fa                          movq    %r15, %r10                    
         0x30035ffc: 0f 1f 40 00                       nopl    (%rax)                        
  0.07%  0x30036000: 44 89 c0                          movl    %r8d, %eax                    
  0.02%  0x30036003: 48 89 44 24 48                    movq    %rax, 72(%rsp)                
  0.14%  0x30036008: 89 51 18                          movl    %edx, 24(%rcx)                
  0.64%  0x3003600b: 48 89 4c 24 38                    movq    %rcx, 56(%rsp)                
  0.07%  0x30036010: 8b 41 20                          movl    32(%rcx), %eax                
  0.03%  0x30036013: 48 89 d1                          movq    %rdx, %rcx                    
  0.07%  0x30036016: 48 89 54 24 60                    movq    %rdx, 96(%rsp)                
  0.28%  0x3003601b: 85 c0                             testl    %eax, %eax                   
         0x3003601d: 78 02                             js    2                               ; 0x30036021
  0.07%  0x3003601f: 89 c1                             movl    %eax, %ecx                    
  0.03%  0x30036021: 48 8b 44 24 38                    movq    56(%rsp), %rax                
  0.09%  0x30036026: 89 48 20                          movl    %ecx, 32(%rax)                
  0.73%  0x30036029: 48 8b 40 38                       movq    56(%rax), %rax                
  0.04%  0x3003602d: b9 48 00 f8 2f                    movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
  0.02%  0x30036032: 48 8b 09                          movq    (%rcx), %rcx                  
  0.02%  0x30036035: 48 85 c1                          testq    %rax, %rcx                   
         0x30036038: 0f 85 67 10 00 00                 jne    4199                           ; 0x300370a5
  0.38%  0x3003603e: 8b 50 08                          movl    8(%rax), %edx                 
  0.36%  0x30036041: 85 d2                             testl    %edx, %edx                   
         0x30036043: 74 24                             je    36                              ; 0x30036069
  0.22%  0x30036045: 83 fa 08                          cmpl    $8, %edx                      
         0x30036048: 0f 83 e2 00 00 00                 jae    226                            ; 0x30036130
         0x3003604e: 31 f6                             xorl    %esi, %esi                    
  0.45%  0x30036050: c7 44 b0 10 ff ff ff ff           movl    $4294967295, 16(%rax,%rsi,4)  
  0.55%  0x30036058: 48 89 f7                          movq    %rsi, %rdi                    
         0x3003605b: 48 83 cf 01                       orq    $1, %rdi                       
         0x3003605f: 90                                nop                                   
  0.30%  0x30036060: 48 39 d7                          cmpq    %rdx, %rdi                    
         0x30036063: 0f 82 9a 1b 00 00                 jb    7066                            ; 0x30037c03
  0.02%  0x30036069: 48 8b 44 24 38                    movq    56(%rsp), %rax                
  0.10%  0x3003606e: 48 8b 40 50                       movq    80(%rax), %rax                
  0.12%  0x30036072: 48 85 c1                          testq    %rax, %rcx                   
         0x30036075: 0f 85 4a 10 00 00                 jne    4170                           ; 0x300370c5
  0.20%  0x3003607b: 2e 2e 8b 40 08                    movl    %cs:8(%rax), %eax             
  0.02%  0x30036080: 85 c0                             testl    %eax, %eax                   
         0x30036082: 0f 85 b0 17 00 00                 jne    6064                           ; 0x30037838
  0.15%  0x30036088: 48 8b 44 24 38                    movq    56(%rsp), %rax                
  0.14%  0x3003608d: c7 40 14 00 00 00 00              movl    $0, 20(%rax)                  
  0.18%  0x30036094: 2e 2e 2e 2e 2e 2e 2e 2e 48 8b     movq    %cs:48(%rax), %rax            
  0.03%  0x300360a0: 48 85 c1                          testq    %rax, %rcx                   
         0x300360a3: 0f 85 3c 10 00 00                 jne    4156                           ; 0x300370e5
  0.12%  0x300360a9: 48 8b 50 38                       movq    56(%rax), %rdx                
  0.11%  0x300360ad: 48 89 54 24 68                    movq    %rdx, 104(%rsp)               
  0.18%  0x300360b2: 48 85 d1                          testq    %rdx, %rcx                   
         0x300360b5: 0f 85 4a 10 00 00                 jne    4170                           ; 0x30037105
  0.02%  0x300360bb: 4c 89 54 24 58                    movq    %r10, 88(%rsp)                
  0.10%  0x300360c0: 48 8b 44 24 68                    movq    104(%rsp), %rax               
  0.81%  0x300360c5: 8b 50 04                          movl    4(%rax), %edx                 
  0.76%  0x300360c8: 48 8b 44 24 38                    movq    56(%rsp), %rax                
  0.01%  0x300360cd: 4c 8b 78 40                       movq    64(%rax), %r15                
  0.10%  0x300360d1: 4c 85 f9                          testq    %r15, %rcx                   
         0x300360d4: 0f 85 50 10 00 00                 jne    4176                           ; 0x3003712a
  0.15%  0x300360da: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
  0.21%  0x300360e0: 81 fa 27 07 00 00                 cmpl    $1831, %edx                   
         0x300360e6: 0f 85 64 17 00 00                 jne    5988                           ; 0x30037850
  0.15%  0x300360ec: 48 8b 44 24 68                    movq    104(%rsp), %rax               
  0.06%  0x300360f1: 2b 68 10                          subl    16(%rax), %ebp                
  0.22%  0x300360f4: 2e 2e 2e 2e 2e 2e 2e 48 8b 4c     movq    %cs:96(%rsp), %rcx            
  0.08%  0x30036100: 39 cd                             cmpl    %ecx, %ebp                    
         0x30036102: 0f 8c ba 17 00 00                 jl    6074                            ; 0x300378c2
  0.22%  0x30036108: 89 cb                             movl    %ecx, %ebx                    
  0.04%  0x3003610a: c7 84 24 a0 00 00 00 00 00 00     movl    $0, 160(%rsp)                 
  0.12%  0x30036115: 48 89 d8                          movq    %rbx, %rax                    
  0.07%  0x30036118: 48 89 9c 24 c0 00 00 00           movq    %rbx, 192(%rsp)               
  0.22%  0x30036120: e9 43 01 00 00                    jmp    323                            ; 0x30036268
         0x30036125: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.19%  0x30036130: 89 d6                             movl    %edx, %esi                    
  0.18%  0x30036132: 81 e6 f8 ff ff 7f                 andl    $2147483640, %esi             
  0.03%  0x30036138: c5 fd 76 c0                       vpcmpeqd    %ymm0, %ymm0, %ymm0       
  0.13%  0x3003613c: c5 fe 7f 40 10                    vmovdqu    %ymm0, 16(%rax)            
  1.11%  0x30036141: 48 83 fe 08                       cmpq    $8, %rsi                      
         0x30036145: 74 25                             je    37                              ; 0x3003616c
  0.16%  0x30036147: c5 fe 7f 40 30                    vmovdqu    %ymm0, 48(%rax)            
  0.73%  0x3003614c: 83 fe 10                          cmpl    $16, %esi                     
         0x3003614f: 74 1b                             je    27                              ; 0x3003616c
         0x30036151: 48 8d 7e f0                       leaq    -16(%rsi), %rdi               
         0x30036155: 45 31 c0                          xorl    %r8d, %r8d                    
         0x30036158: c5 fd 76 c0                       vpcmpeqd    %ymm0, %ymm0, %ymm0       
         0x3003615c: c4 a1 7e 7f 44 80 50              vmovdqu    %ymm0, 80(%rax,%r8,4)      
         0x30036163: 49 83 c0 08                       addq    $8, %r8                       
         0x30036167: 4c 39 c7                          cmpq    %r8, %rdi                     
         0x3003616a: 75 ec                             jne    -20                            ; 0x30036158
  0.01%  0x3003616c: 48 39 d6                          cmpq    %rdx, %rsi                    
         0x3003616f: 0f 85 db fe ff ff                 jne    -293                           ; 0x30036050
         0x30036175: e9 ef fe ff ff                    jmp    -273                           ; 0x30036069
         0x3003617a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.08%  0x30036180: 4c 89 6c 24 40                    movq    %r13, 64(%rsp)                
  0.01%  0x30036185: 8b 42 08                          movl    8(%rdx), %eax                 
  0.03%  0x30036188: 39 c6                             cmpl    %eax, %esi                    
         0x3003618a: 0f 8c f7 17 00 00                 jl    6135                            ; 0x30037987
  0.39%  0x30036190: 8b 6a 0c                          movl    12(%rdx), %ebp                
  0.05%  0x30036193: 48 89 f2                          movq    %rsi, %rdx                    
  0.02%  0x30036196: 39 ee                             cmpl    %ebp, %esi                    
         0x30036198: 0f 8f 01 18 00 00                 jg    6145                            ; 0x3003799f
  0.23%  0x3003619e: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.26%  0x300361a7: 0f 85 f1 0f 00 00                 jne    4081                           ; 0x3003719e
  0.14%  0x300361ad: 48 8b 4c 24 38                    movq    56(%rsp), %rcx                
  0.03%  0x300361b2: c6 41 2c 00                       movb    $0, 44(%rcx)                  
  0.27%  0x300361b6: 2e 2e 2e 2e 2e 2e c6 41 2d 00     movb    $0, %cs:45(%rcx)              
  0.23%  0x300361c0: 85 d2                             testl    %edx, %edx                   
         0x300361c2: 0f 89 38 fe ff ff                 jns    -456                           ; 0x30036000
         0x300361c8: e9 ea 17 00 00                    jmp    6122                           ; 0x300379b7
         0x300361cd: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300361dc: 0f 1f 40 00                       nopl    (%rax)                        
  0.52%  0x300361e0: 4e 8d 34 13                       leaq    (%rbx,%r10), %r14             
  0.52%  0x300361e4: 45 39 f4                          cmpl    %r14d, %r12d                  
         0x300361e7: 0f 8e 34 12 00 00                 jle    4660                           ; 0x30037421
  2.76%  0x300361ed: 46 8b 6c 92 10                    movl    16(%rdx,%r10,4), %r13d        
  1.36%  0x300361f2: 41 0f b6 47 14                    movzbl    20(%r15), %eax              
  0.11%  0x300361f7: 84 c0                             testb    %al, %al                     
         0x300361f9: 0f 85 30 12 00 00                 jne    4656                           ; 0x3003742f
  0.52%  0x300361ff: 49 8b 47 08                       movq    8(%r15), %rax                 
  3.02%  0x30036203: 49 85 c1                          testq    %rax, %r9                    
         0x30036206: 0f 85 23 0e 00 00                 jne    3619                           ; 0x3003702f
  0.52%  0x3003620c: 8b 70 08                          movl    8(%rax), %esi                 
  1.90%  0x3003620f: 44 39 f6                          cmpl    %r14d, %esi                   
         0x30036212: 0f 8e 34 12 00 00                 jle    4660                           ; 0x3003744c
  1.16%  0x30036218: 4b 8d 3c 13                       leaq    (%r11,%r10), %rdi             
  2.45%  0x3003621c: 0f 1f 40 00                       nopl    (%rax)                        
  0.09%  0x30036220: 48 39 f7                          cmpq    %rsi, %rdi                    
         0x30036223: 0f 83 3e 12 00 00                 jae    4670                           ; 0x30037467
  0.26%  0x30036229: 4c 01 d8                          addq    %r11, %rax                    
  0.82%  0x3003622c: 41 0f b6 44 02 10                 movzbl    16(%r10,%rax), %eax         
  2.55%  0x30036232: 41 39 c5                          cmpl    %eax, %r13d                   
         0x30036235: 75 19                             jne    25                             ; 0x30036250
  0.40%  0x30036237: 49 ff c2                          incq    %r10                          
  1.30%  0x3003623a: 4d 39 c2                          cmpq    %r8, %r10                     
         0x3003623d: 72 a1                             jb    -95                             ; 0x300361e0
  0.36%  0x3003623f: 90                                nop                                   
         0x30036240: e9 be 00 00 00                    jmp    190                            ; 0x30036303
         0x30036245: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.11%  0x30036250: 48 ff c3                          incq    %rbx                          
  0.19%  0x30036253: 2e 2e 2e 2e 2e 2e ff 84 24 a0     incl    %cs:160(%rsp)                 
  2.77%  0x30036260: 39 eb                             cmpl    %ebp, %ebx                    
         0x30036262: 0f 8f 75 07 00 00                 jg    1909                            ; 0x300369dd
  0.10%  0x30036268: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.57%  0x30036271: 0f 85 d3 0d 00 00                 jne    3539                           ; 0x3003704a
  2.15%  0x30036277: 48 8b 44 24 68                    movq    104(%rsp), %rax               
  0.28%  0x3003627c: 48 8b 48 08                       movq    8(%rax), %rcx                 
  0.19%  0x30036280: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
  0.53%  0x30036285: 4c 8b 08                          movq    (%rax), %r9                   
  2.07%  0x30036288: 49 85 c9                          testq    %rcx, %r9                    
         0x3003628b: 0f 85 cd 0d 00 00                 jne    3533                           ; 0x3003705e
  0.32%  0x30036291: 8b 51 04                          movl    4(%rcx), %edx                 
  0.40%  0x30036294: 2e 2e 2e 2e 2e 2e 81 e2 ff ff     andl    $33554431, %edx               
  0.74%  0x300362a0: 81 fa 25 07 00 00                 cmpl    $1829, %edx                   
         0x300362a6: 0f 85 43 04 00 00                 jne    1091                           ; 0x300366ef
  2.37%  0x300362ac: 48 8b 51 10                       movq    16(%rcx), %rdx                
  0.09%  0x300362b0: 49 85 d1                          testq    %rdx, %r9                    
         0x300362b3: 0f 85 cc 0d 00 00                 jne    3532                           ; 0x30037085
  0.26%  0x300362b9: 2e 2e 2e 44 8b 42 08              movl    %cs:8(%rdx), %r8d             
  1.52%  0x300362c0: 45 85 c0                          testl    %r8d, %r8d                   
         0x300362c3: 74 3b                             je    59                              ; 0x30036300
  2.48%  0x300362c5: 48 8b 44 24 38                    movq    56(%rsp), %rax                
  0.06%  0x300362ca: 44 8b 60 0c                       movl    12(%rax), %r12d               
  0.10%  0x300362ce: 4d 85 ff                          testq    %r15, %r15                   
         0x300362d1: 0f 84 d4 11 00 00                 je    4564                            ; 0x300374ab
  0.47%  0x300362d7: 41 8b 47 04                       movl    4(%r15), %eax                 
  2.55%  0x300362db: 25 ff ff ff 01                    andl    $33554431, %eax               
  0.09%  0x300362e0: 83 f8 27                          cmpl    $39, %eax                     
         0x300362e3: 0f 85 11 11 00 00                 jne    4369                           ; 0x300373fa
  0.08%  0x300362e9: 85 db                             testl    %ebx, %ebx                   
         0x300362eb: 0f 88 d4 11 00 00                 js    4564                            ; 0x300374c5
  0.49%  0x300362f1: 41 89 db                          movl    %ebx, %r11d                   
  2.45%  0x300362f4: 45 31 d2                          xorl    %r10d, %r10d                  
  0.08%  0x300362f7: e9 e4 fe ff ff                    jmp    -284                           ; 0x300361e0
         0x300362fc: 0f 1f 40 00                       nopl    (%rax)                        
         0x30036300: 45 31 c0                          xorl    %r8d, %r8d                    
  0.00%  0x30036303: 48 8b 41 08                       movq    8(%rcx), %rax                 
  0.12%  0x30036307: 49 85 c1                          testq    %rax, %r9                    
         0x3003630a: 0f 85 f5 0e 00 00                 jne    3829                           ; 0x30037205
  0.33%  0x30036310: 8b 48 04                          movl    4(%rax), %ecx                 
  0.01%  0x30036313: 41 01 d8                          addl    %ebx, %r8d                    
  0.00%  0x30036316: 2e 2e 2e 2e 81 e1 ff ff ff 01     andl    $33554431, %ecx               
  0.10%  0x30036320: 81 f9 20 07 00 00                 cmpl    $1824, %ecx                   
         0x30036326: 0f 85 83 18 00 00                 jne    6275                           ; 0x30037baf
  0.36%  0x3003632c: 48 8b 4c 24 38                    movq    56(%rsp), %rcx                
         0x30036331: 83 79 14 01                       cmpl    $1, 20(%rcx)                  
  0.03%  0x30036335: 0f 84 89 18 00 00                 je    6281                            ; 0x30037bc4
  0.27%  0x3003633b: 44 89 41 1c                       movl    %r8d, 28(%rcx)                
  0.16%  0x3003633f: 48 8b 41 38                       movq    56(%rcx), %rax                
         0x30036343: 49 85 c1                          testq    %rax, %r9                    
         0x30036346: 0f 85 d9 0e 00 00                 jne    3801                           ; 0x30037225
  0.06%  0x3003634c: 48 8b 4c 24 38                    movq    56(%rsp), %rcx                
  0.21%  0x30036351: 8b 49 18                          movl    24(%rcx), %ecx                
  0.40%  0x30036354: 83 78 08 01                       cmpl    $1, 8(%rax)                   
  0.89%  0x30036358: 0f 86 90 18 00 00                 jbe    6288                           ; 0x30037bee
  0.39%  0x3003635e: 89 48 10                          movl    %ecx, 16(%rax)                
  0.08%  0x30036361: 44 89 40 14                       movl    %r8d, 20(%rax)                
  0.03%  0x30036365: 48 8b 4c 24 38                    movq    56(%rsp), %rcx                
  0.00%  0x3003636a: 89 59 18                          movl    %ebx, 24(%rcx)                
  0.35%  0x3003636d: 44 8b 5c 24 54                    movl    84(%rsp), %r11d               
  0.07%  0x30036372: 4c 8b 54 24 58                    movq    88(%rsp), %r10                
  0.02%  0x30036377: 49 bc 00 00 00 00 08 00 00 00     movabsq    $34359738368, %r12         ; 0x800000000 = 
  0.00%  0x30036381: 4c 8b 6c 24 40                    movq    64(%rsp), %r13                
  0.34%  0x30036386: 48 8b 6c 24 48                    movq    72(%rsp), %rbp                
  0.07%  0x3003638b: 89 58 10                          movl    %ebx, 16(%rax)                
  0.15%  0x3003638e: 44 89 40 14                       movl    %r8d, 20(%rax)                
  0.67%  0x30036392: 44 89 41 20                       movl    %r8d, 32(%rcx)                
  0.08%  0x30036396: 48 89 4c 24 38                    movq    %rcx, 56(%rsp)                
  0.01%  0x3003639b: ff 41 28                          incl    40(%rcx)                      
  0.42%  0x3003639e: 83 7c 24 60 00                    cmpl    $0, 96(%rsp)                  
  0.01%  0x300363a3: 0f 84 90 05 00 00                 je    1424                            ; 0x30036939
  0.07%  0x300363a9: 85 db                             testl    %ebx, %ebx                   
  0.33%  0x300363ab: 8b 84 24 ac 00 00 00              movl    172(%rsp), %eax               
  0.08%  0x300363b2: 0f 88 8d 17 00 00                 js    6029                            ; 0x30037b45
  0.00%  0x300363b8: 2e 2e 2e 2e 2e 41 89 d8           movl    %ebx, %r8d                    
  0.08%  0x300363c0: 44 2b 44 24 60                    subl    96(%rsp), %r8d                
         0x300363c5: 0f 8c 04 16 00 00                 jl    5636                            ; 0x300379cf
  0.30%  0x300363cb: 39 c3                             cmpl    %eax, %ebx                    
         0x300363cd: 0f 8f 16 16 00 00                 jg    5654                            ; 0x300379e9
  0.06%  0x300363d3: 83 7c 24 60 00                    cmpl    $0, 96(%rsp)                  
  0.01%  0x300363d8: 75 0e                             jne    14                             ; 0x300363e8
         0x300363da: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x300363e0: 39 d8                             cmpl    %ebx, %eax                    
         0x300363e2: 0f 84 49 05 00 00                 je    1353                            ; 0x30036931
  0.06%  0x300363e8: 80 bc 24 a8 00 00 00 00           cmpb    $0, 168(%rsp)                 
  0.40%  0x300363f0: 0f 85 67 17 00 00                 jne    5991                           ; 0x30037b5d
  0.05%  0x300363f6: 66 2e 0f 1f 84 00 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.01%  0x30036400: 3b 5c 24 60                       cmpl    96(%rsp), %ebx                
         0x30036404: 0f 84 83 17 00 00                 je    6019                            ; 0x30037b8d
  0.06%  0x3003640a: 65 4c 8b 0c 25 b0 00 00 00        movq    %gs:176, %r9                  ; thread:[176] = _tlab._top
  0.31%  0x30036413: 2e 2e 2e 2e 2e 2e 2e 2e 2e 49     leaq    %cs:24(%r9), %rax             
  0.08%  0x30036420: 65 48 3b 04 25 c0 00 00 00        cmpq    %gs:192, %rax                 
         0x30036429: 0f 83 c1 01 00 00                 jae    449                            ; 0x300365f0
  0.07%  0x3003642f: 65 48 89 04 25 b0 00 00 00        movq    %rax, %gs:176                 ; thread:[176] = _tlab._top
  0.07%  0x30036438: 48 b8 00 00 00 00 27 00 00 00     movabsq    $167503724544, %rax        ; 0x2700000000 = 
  0.29%  0x30036442: 49 89 01                          movq    %rax, (%r9)                   
  0.71%  0x30036445: 45 85 c0                          testl    %r8d, %r8d                   
         0x30036448: 0f 88 27 17 00 00                 js    5927                            ; 0x30037b75
  0.01%  0x3003644e: 44 89 c2                          movl    %r8d, %edx                    
  0.03%  0x30036451: 48 8d 4a 17                       leaq    23(%rdx), %rcx                
  0.09%  0x30036455: 48 b8 f8 ff ff ff 01 00 00 00     movabsq    $8589934584, %rax          ; 0x1fffffff8 = 
  0.33%  0x3003645f: 48 21 c1                          andq    %rax, %rcx                    
  0.01%  0x30036462: 65 48 8b 1c 25 b0 00 00 00        movq    %gs:176, %rbx                 ; thread:[176] = _tlab._top
  0.03%  0x3003646b: 48 8d 04 0b                       leaq    (%rbx,%rcx), %rax             
  0.12%  0x3003646f: 65 48 3b 04 25 c0 00 00 00        cmpq    %gs:192, %rax                 
         0x30036478: 0f 83 a2 01 00 00                 jae    418                            ; 0x30036620
  0.35%  0x3003647e: 65 48 89 04 25 b0 00 00 00        movq    %rax, %gs:176                 ; thread:[176] = _tlab._top
  0.16%  0x30036487: 4c 89 23                          movq    %r12, (%rbx)                  
  1.71%  0x3003648a: 48 89 53 08                       movq    %rdx, 8(%rbx)                 
  0.44%  0x3003648e: 8b 84 24 9c 00 00 00              movl    156(%rsp), %eax               
  0.14%  0x30036495: 48 8b 74 24 60                    movq    96(%rsp), %rsi                
  0.03%  0x3003649a: 29 f0                             subl    %esi, %eax                    
  0.34%  0x3003649c: 44 39 c0                          cmpl    %r8d, %eax                    
  0.13%  0x3003649f: 44 89 c2                          movl    %r8d, %edx                    
  0.01%  0x300364a2: 0f 4c d0                          cmovll    %eax, %edx                  
  0.09%  0x300364a5: 89 d1                             movl    %edx, %ecx                    
  0.29%  0x300364a7: 09 f1                             orl    %esi, %ecx                     
  0.11%  0x300364a9: 0f 88 7f 10 00 00                 js    4223                            ; 0x3003752e
  0.02%  0x300364af: 44 39 c2                          cmpl    %r8d, %edx                    
         0x300364b2: 0f 87 76 10 00 00                 ja    4214                            ; 0x3003752e
  0.03%  0x300364b8: 48 8b 4c 24 60                    movq    96(%rsp), %rcx                
  0.30%  0x300364bd: 2e 01 d1                          addl    %edx, %ecx                    
  0.10%  0x300364c0: 3b 8c 24 9c 00 00 00              cmpl    156(%rsp), %ecx               
         0x300364c7: 0f 87 61 10 00 00                 ja    4193                            ; 0x3003752e
  0.02%  0x300364cd: 4c 89 e5                          movq    %r12, %rbp                    
  0.04%  0x300364d0: 41 89 d0                          movl    %edx, %r8d                    
  0.29%  0x300364d3: 81 fa ff ff 01 00                 cmpl    $131071, %edx                 
         0x300364d9: 77 65                             ja    101                             ; 0x30036540
  0.12%  0x300364db: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.02%  0x300364e0: 85 d2                             testl    %edx, %edx                   
         0x300364e2: 0f 84 92 00 00 00                 je    146                             ; 0x3003657a
  0.05%  0x300364e8: 48 8b 4c 24 70                    movq    112(%rsp), %rcx               
  0.34%  0x300364ed: 48 8b b4 24 c0 00 00 00           movq    192(%rsp), %rsi               
  0.13%  0x300364f5: 48 01 f1                          addq    %rsi, %rcx                    
  0.01%  0x300364f8: 2e 48 81 c1 10 00 00 00           addq    $16, %rcx                     
  0.04%  0x30036500: 83 fa 10                          cmpl    $16, %edx                     
         0x30036503: 0f 83 3e 01 00 00                 jae    318                            ; 0x30036647
  0.28%  0x30036509: 31 d2                             xorl    %edx, %edx                    
  0.14%  0x3003650b: 49 89 ec                          movq    %rbp, %r12                    
  0.01%  0x3003650e: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.07%  0x3003651d: 0f 1f 00                          nopl    (%rax)                        
  1.69%  0x30036520: 0f b6 04 11                       movzbl    (%rcx,%rdx), %eax           
  0.99%  0x30036524: 88 44 13 10                       movb    %al, 16(%rbx,%rdx)            
  0.44%  0x30036528: 48 ff c2                          incq    %rdx                          
  0.09%  0x3003652b: 4c 39 c2                          cmpq    %r8, %rdx                     
         0x3003652e: 72 f0                             jb    -16                             ; 0x30036520
  0.50%  0x30036530: eb 4b                             jmp    75                             ; 0x3003657d
         0x30036532: 66 66 66 66 66 2e 0f 1f 84 00     nopw    %cs:(%rax,%rax)               
         0x30036540: 48 8b 8c 24 c0 00 00 00           movq    192(%rsp), %rcx               
         0x30036548: 48 83 c1 10                       addq    $16, %rcx                     
         0x3003654c: be 10 00 00 00                    movl    $16, %esi                     
         0x30036551: 48 89 df                          movq    %rbx, %rdi                    
         0x30036554: 48 8b 54 24 70                    movq    112(%rsp), %rdx               
         0x30036559: 48 b8 80 9c 01 30 00 00 00 00     movabsq    $805411968, %rax           ; 0x30019c80 = StubRoutines::prim_arraycopy_bytes1_disjoint_safepoint
         0x30036563: 4d 89 ce                          movq    %r9, %r14                     
         0x30036566: 45 89 df                          movl    %r11d, %r15d                  
         0x30036569: 4d 89 d4                          movq    %r10, %r12                    
....................................................................................................
 76.45%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30036559:0x30036663] in java.util.regex.Pattern::split[Falcon]

         0x30036559: 48 b8 80 9c 01 30 00 00 00 00     movabsq    $805411968, %rax           ; 0x30019c80 = StubRoutines::prim_arraycopy_bytes1_disjoint_safepoint
         0x30036563: 4d 89 ce                          movq    %r9, %r14                     
         0x30036566: 45 89 df                          movl    %r11d, %r15d                  
         0x30036569: 4d 89 d4                          movq    %r10, %r12                    
         0x3003656c: c5 f8 77                          vzeroupper                            
         0x3003656f: ff d0                             callq    *%rax                        ; 0x30019c80 = StubRoutines::prim_arraycopy_bytes1_disjoint_safepoint
         0x30036571: 4d 89 e2                          movq    %r12, %r10                    
         0x30036574: 45 89 fb                          movl    %r15d, %r11d                  
         0x30036577: 4d 89 f1                          movq    %r14, %r9                     
         0x3003657a: 49 89 ec                          movq    %rbp, %r12                    
  1.17%  0x3003657d: 49 8d 41 08                       leaq    8(%r9), %rax                  
  0.19%  0x30036581: 4b 8d 0c 21                       leaq    (%r9,%r12), %rcx              
  0.14%  0x30036585: 48 39 d9                          cmpq    %rbx, %rcx                    
         0x30036588: 0f 82 24 0c 00 00                 jb    3108                            ; 0x300371b2
  0.38%  0x3003658e: 48 89 18                          movq    %rbx, (%rax)                  
  0.93%  0x30036591: 48 8b 6c 24 48                    movq    72(%rsp), %rbp                
  0.03%  0x30036596: 44 8d 45 01                       leal    1(%rbp), %r8d                 
  0.01%  0x3003659a: 2e 2e 41 8b 45 08                 movl    %cs:8(%r13), %eax             
  0.12%  0x300365a0: 39 e8                             cmpl    %ebp, %eax                    
         0x300365a2: 0f 84 ff 01 00 00                 je    511                             ; 0x300367a7
  0.32%  0x300365a8: 39 e8                             cmpl    %ebp, %eax                    
         0x300365aa: 0f 86 53 14 00 00                 jbe    5203                           ; 0x30037a03
  0.08%  0x300365b0: 89 e8                             movl    %ebp, %eax                    
  0.01%  0x300365b2: 48 8d 04 c5 10 00 00 00           leaq    16(,%rax,8), %rax             
  0.14%  0x300365ba: 4c 01 e8                          addq    %r13, %rax                    
  0.47%  0x300365bd: 4b 8d 0c 2c                       leaq    (%r12,%r13), %rcx             
  0.06%  0x300365c1: 4c 39 c9                          cmpq    %r9, %rcx                     
         0x300365c4: 0f 82 83 0b 00 00                 jb    2947                            ; 0x3003714d
  0.01%  0x300365ca: 4c 89 08                          movq    %r9, (%rax)                   
  1.42%  0x300365cd: 48 8b 54 24 38                    movq    56(%rsp), %rdx                
  0.04%  0x300365d2: 8b 42 18                          movl    24(%rdx), %eax                
  0.05%  0x300365d5: 85 c0                             testl    %eax, %eax                   
         0x300365d7: 0f 88 3e 14 00 00                 js    5182                            ; 0x30037a1b
  0.08%  0x300365dd: 8b 72 1c                          movl    28(%rdx), %esi                
  0.33%  0x300365e0: 39 c6                             cmpl    %eax, %esi                    
         0x300365e2: 0f 85 98 fb ff ff                 jne    -1128                          ; 0x30036180
         0x300365e8: e9 46 14 00 00                    jmp    5190                           ; 0x30037a33
         0x300365ed: 0f 1f 00                          nopl    (%rax)                        
  0.20%  0x300365f0: be 27 00 00 00                    movl    $39, %esi                     
  0.09%  0x300365f5: b9 18 00 00 00                    movl    $24, %ecx                     
         0x300365fa: 48 b8 40 d2 00 30 00 00 00 00     movabsq    $805360192, %rax           ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.03%  0x30036604: c5 f8 77                          vzeroupper                            
  0.03%  0x30036607: ff d0                             callq    *%rax                        ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.01%  0x30036609: 48 85 c0                          testq    %rax, %rax                   
         0x3003660c: 0f 84 33 0c 00 00                 je    3123                            ; 0x30037245
         0x30036612: 49 89 c1                          movq    %rax, %r9                     
         0x30036615: e9 2b fe ff ff                    jmp    -469                           ; 0x30036445
         0x3003661a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.25%  0x30036620: be 08 00 00 00                    movl    $8, %esi                      
  0.10%  0x30036625: 31 ff                             xorl    %edi, %edi                    
         0x30036627: 48 b8 c0 d3 00 30 00 00 00 00     movabsq    $805360576, %rax           ; 0x3000d3c0 = StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.02%  0x30036631: c5 f8 77                          vzeroupper                            
  0.03%  0x30036634: ff d0                             callq    *%rax                        ; 0x3000d3c0 = StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.01%  0x30036636: 48 85 c0                          testq    %rax, %rax                   
         0x30036639: 0f 84 26 0c 00 00                 je    3110                            ; 0x30037265
         0x3003663f: 48 89 c3                          movq    %rax, %rbx                    
  0.02%  0x30036642: e9 47 fe ff ff                    jmp    -441                           ; 0x3003648e
         0x30036647: 83 fa 20                          cmpl    $32, %edx                     
         0x3003664a: 49 89 ec                          movq    %rbp, %r12                    
         0x3003664d: 73 56                             jae    86                             ; 0x300366a5
         0x3003664f: 31 d2                             xorl    %edx, %edx                    
         0x30036651: 48 89 d6                          movq    %rdx, %rsi                    
         0x30036654: 44 89 c2                          movl    %r8d, %edx                    
         0x30036657: 83 e2 f0                          andl    $-16, %edx                    
         0x3003665a: 8b bc 24 a0 00 00 00              movl    160(%rsp), %edi               
         0x30036661: 39 c7                             cmpl    %eax, %edi                    
         0x30036663: 0f 4c c7                          cmovll    %edi, %eax                  
....................................................................................................
  6.76%  <total for region 2>

....[Hottest Regions]...............................................................................
 76.45%  [0x30035fd3:0x30036569] in java.util.regex.Pattern::split[Falcon]
  6.76%  [0x30036559:0x30036663] in java.util.regex.Pattern::split[Falcon]
  2.77%  [0x3001f4c0:0x3001f570] in StubRoutines::checkcast_arraycopy
  2.77%  [0x30037bd4:0x30037c50] in java.util.regex.Pattern::split[Falcon]
  2.42%  [0x3000d240:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  1.17%  [0x3001d9e3:0x3001db38] in StubRoutines::object_arraycopy
  1.10%  [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.79%  [0x3000cc7e:0x3000d43c] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.25%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eef317:0xffffffffa9eef428] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9eb93b0:0xffffffffa9eb9473] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9f0711c:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.10%  [0x3001d900:0x3001f698] in StubRoutines::object_arraycopy
  0.10%  [0xffffffffa9f211f0:0xffffffffa9f2121e] in [unknown] ([kernel.kallsyms])
  0.10%  [0x7f2099984a75:0x7f2099984a75] in [unknown] (libjvm.so)
  0.09%  [0xffffffffa9f686c0:0xffffffffa9f68762] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9f695f5:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  4.17%  <...other 671 warm regions...>
....................................................................................................
 99.98%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 86.24%  java.util.regex.Pattern::split[Falcon]
  4.04%  [unknown] ([kernel.kallsyms])
  3.21%  StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  2.77%  StubRoutines::checkcast_arraycopy
  1.30%  StubRoutines::object_arraycopy
  1.10%  StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.76%  [unknown] (libjvm.so)
  0.06%  [unknown] (libc-2.31.so)
  0.04%  StubRoutines::object_arraycopy_bytes
  0.03%  PMEM::initialized; PMEM_PageInfo::page_info_base; PMEM::account_enabled; PMEM::accounts (libaztall.so)
  0.03%  __pthread_mutex_lock (libpthread-2.31.so)
  0.02%  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.StringPatternSplitBenchmark_pattern_split_jmhTest::pattern_split_avgt_jmhStub[Falcon]
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  PMEM_PageInfo::page_info (libaztall.so)
  0.01%  [unknown] (liborca.so.0.0.0.0)
  0.01%  _IO_default_xsputn (libc-2.31.so)
  0.01%  PMEM_PageQueue::head; PMEM_PageQueue::set_head; PMEM_PageQueue::tail; PMEM_PageQueue::is_empty (libaztall.so)
  0.01%  PMEM_PageZone::allocate_page (libaztall.so)
  0.01%  [unknown] ([vdso])
  0.01%  VMEM_PageManager::allowed_zone; VMEM_PageManager::is_premapped_page (libaztall.so)
  0.32%  <...other 91 warm methods...>
....................................................................................................
 99.98%  <totals>

....[Distribution by Area]..........................................................................
 94.68%  <generated code>
  4.04%  <native code in ([kernel.kallsyms])>
  0.76%  <native code in (libjvm.so)>
  0.30%  <native code in (libaztall.so)>
  0.10%  <native code in (libc-2.31.so)>
  0.04%  <native code in (libpthread-2.31.so)>
  0.02%  <native code in (libazsys3.so)>
  0.01%  <native code in ([vdso])>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.01%  <native code in (kvm.ko)>
  0.00%  <native code in (perf-154383.map)>
  0.00%  <native code in (i915.ko)>
  0.00%  <native code in (libstdc++.so.6)>
....................................................................................................
 99.98%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·gc.alloc.rate":
  1069.836 ±(99.9%) 167.387 MB/sec [Average]
  (min, avg, max) = (1048.761, 1069.836, 1147.550), stdev = 43.470
  CI (99.9%): [902.449, 1237.224] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·gc.alloc.rate.norm":
  184496.008 ±(99.9%) 0.002 B/op [Average]
  (min, avg, max) = (184496.008, 184496.008, 184496.009), stdev = 0.001
  CI (99.9%): [184496.007, 184496.010] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·gc.count":
  80.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (15.000, 16.000, 20.000), stdev = 2.236
  CI (99.9%): [80.000, 80.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·gc.time":
  262.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (48.000, 52.400, 67.000), stdev = 8.204
  CI (99.9%): [262.000, 262.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = _)

# Run progress: 50.00% complete, ETA 00:03:45
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 118.456 us/op
# Warmup Iteration   2: 105.412 us/op
# Warmup Iteration   3: 105.161 us/op
# Warmup Iteration   4: 105.241 us/op
# Warmup Iteration   5: 104.851 us/op
Iteration   1: 104.805 us/op
                 ·gc.alloc.rate:      1676.820 MB/sec
                 ·gc.alloc.rate.norm: 184280.005 B/op
                 ·gc.count:           25.000 counts
                 ·gc.time:            82.000 ms

Iteration   2: 105.121 us/op
                 ·gc.alloc.rate:      1671.778 MB/sec
                 ·gc.alloc.rate.norm: 184280.005 B/op
                 ·gc.count:           25.000 counts
                 ·gc.time:            83.000 ms

Iteration   3: 104.906 us/op
                 ·gc.alloc.rate:      1675.202 MB/sec
                 ·gc.alloc.rate.norm: 184280.005 B/op
                 ·gc.count:           30.000 counts
                 ·gc.time:            98.000 ms

Iteration   4: 104.867 us/op
                 ·gc.alloc.rate:      1675.836 MB/sec
                 ·gc.alloc.rate.norm: 184280.005 B/op
                 ·gc.count:           25.000 counts
                 ·gc.time:            82.000 ms

Iteration   5: 104.817 us/op
                 ·gc.alloc.rate:      1676.594 MB/sec
                 ·gc.alloc.rate.norm: 184280.005 B/op
                 ·gc.count:           25.000 counts
                 ·gc.time:            82.000 ms

# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split":
  104.903 ±(99.9%) 0.493 us/op [Average]
  (min, avg, max) = (104.805, 104.903, 105.121), stdev = 0.128
  CI (99.9%): [104.410, 105.396] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·asm":
PrintAssembly processed: 159238 total address lines.
Perf output processed (skipped 57.765 seconds):
 Column 1: cycles (52210 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x3003320a:0x300333dd] in java.lang.String::split[Falcon]

         0x3003320a: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x30033219: 0f 1f 80 00 00 00 00              nopl    (%rax)                        
         0x30033220: 44 38 04 3b                       cmpb    %r8b, (%rbx,%rdi)             
         0x30033224: 74 34                             je    52                              ; 0x3003325a
         0x30033226: 48 ff c7                          incq    %rdi                          
         0x30033229: 48 ff c9                          decq    %rcx                          
         0x3003322c: 75 f2                             jne    -14                            ; 0x30033220
         0x3003322e: 48 8b 4c 24 68                    movq    104(%rsp), %rcx               
         0x30033233: e9 0f 03 00 00                    jmp    783                            ; 0x30033547
         0x30033238: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
  0.26%  0x30033240: 48 89 df                          movq    %rbx, %rdi                    
  0.00%  0x30033243: 48 89 ee                          movq    %rbp, %rsi                    
  0.01%  0x30033246: 4c 89 e9                          movq    %r13, %rcx                    
  0.38%  0x30033249: 48 b8 c0 0f 02 30 00 00 00 00     movabsq    $805441472, %rax           ; 0x30020fc0 = StubRoutines::stringLatin1IndexOfChar
  0.30%  0x30033253: c5 f8 77                          vzeroupper                            
  0.73%  0x30033256: ff d0                             callq    *%rax                        ; 0x30020fc0 = StubRoutines::stringLatin1IndexOfChar
  0.02%  0x30033258: 89 c7                             movl    %eax, %edi                    
  0.77%  0x3003325a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
         0x30033260: 83 ff ff                          cmpl    $-1, %edi                     
         0x30033263: 0f 84 6e 04 00 00                 je    1134                            ; 0x300336d7
  0.00%  0x30033269: 44 39 ff                          cmpl    %r15d, %edi                   
         0x3003326c: 0f 8c 53 10 00 00                 jl    4179                            ; 0x300342c5
  0.22%  0x30033272: 44 39 ef                          cmpl    %r13d, %edi                   
         0x30033275: 0f 8f 5f 10 00 00                 jg    4191                            ; 0x300342da
  1.04%  0x3003327b: 45 85 ff                          testl    %r15d, %r15d                 
  0.11%  0x3003327e: 48 89 7c 24 50                    movq    %rdi, 80(%rsp)                
  2.02%  0x30033283: 4c 89 74 24 58                    movq    %r14, 88(%rsp)                
  2.52%  0x30033288: 0f 84 40 09 00 00                 je    2368                            ; 0x30033bce
         0x3003328e: 89 fe                             movl    %edi, %esi                    
         0x30033290: 44 29 fe                          subl    %r15d, %esi                   
         0x30033293: 0f 84 1d 10 00 00                 je    4125                            ; 0x300342b6
         0x30033299: 65 48 8b 0c 25 b0 00 00 00        movq    %gs:176, %rcx                 ; thread:[176] = _tlab._top
  0.76%  0x300332a2: 48 8d 41 18                       leaq    24(%rcx), %rax                
  0.00%  0x300332a6: 65 48 3b 04 25 c0 00 00 00        cmpq    %gs:192, %rax                 
         0x300332af: 0f 83 1b 02 00 00                 jae    539                            ; 0x300334d0
  0.02%  0x300332b5: 65 48 89 04 25 b0 00 00 00        movq    %rax, %gs:176                 ; thread:[176] = _tlab._top
  0.22%  0x300332be: 48 b8 00 00 00 00 27 00 00 00     movabsq    $167503724544, %rax        ; 0x2700000000 = 
  0.41%  0x300332c8: 48 89 4c 24 48                    movq    %rcx, 72(%rsp)                
  0.00%  0x300332cd: 48 89 01                          movq    %rax, (%rcx)                  
  0.82%  0x300332d0: 85 f6                             testl    %esi, %esi                   
         0x300332d2: 0f 88 17 10 00 00                 js    4119                            ; 0x300342ef
         0x300332d8: 89 f2                             movl    %esi, %edx                    
  0.11%  0x300332da: 48 8d 4a 17                       leaq    23(%rdx), %rcx                
  0.03%  0x300332de: 48 b8 f8 ff ff ff 01 00 00 00     movabsq    $8589934584, %rax          ; 0x1fffffff8 = 
  0.56%  0x300332e8: 48 21 c1                          andq    %rax, %rcx                    
  0.00%  0x300332eb: 65 4c 8b 34 25 b0 00 00 00        movq    %gs:176, %r14                 ; thread:[176] = _tlab._top
  0.15%  0x300332f4: 2e 2e 2e 2e 2e 2e 2e 2e 49 8d     leaq    %cs:(%r14,%rcx), %rax         
  0.02%  0x30033300: 65 48 3b 04 25 c0 00 00 00        cmpq    %gs:192, %rax                 
         0x30033309: 0f 83 01 02 00 00                 jae    513                            ; 0x30033510
  0.63%  0x3003330f: 65 48 89 04 25 b0 00 00 00        movq    %rax, %gs:176                 ; thread:[176] = _tlab._top
  1.44%  0x30033318: 4d 89 16                          movq    %r10, (%r14)                  
  2.49%  0x3003331b: 49 89 56 08                       movq    %rdx, 8(%r14)                 
  0.31%  0x3003331f: 44 89 e9                          movl    %r13d, %ecx                   
  0.01%  0x30033322: 44 29 f9                          subl    %r15d, %ecx                   
  0.04%  0x30033325: 39 f1                             cmpl    %esi, %ecx                    
  0.41%  0x30033327: 0f 4d ce                          cmovgel    %esi, %ecx                 
  0.30%  0x3003332a: 89 c8                             movl    %ecx, %eax                    
  0.00%  0x3003332c: 44 09 f8                          orl    %r15d, %eax                    
  0.03%  0x3003332f: 0f 88 d2 0e 00 00                 js    3794                            ; 0x30034207
  0.44%  0x30033335: 39 f1                             cmpl    %esi, %ecx                    
         0x30033337: 0f 87 ca 0e 00 00                 ja    3786                            ; 0x30034207
  0.31%  0x3003333d: 44 89 f8                          movl    %r15d, %eax                   
  0.01%  0x30033340: 01 c8                             addl    %ecx, %eax                    
  0.02%  0x30033342: 44 39 e8                          cmpl    %r13d, %eax                   
         0x30033345: 0f 87 bc 0e 00 00                 ja    3772                            ; 0x30034207
  0.47%  0x3003334b: 41 89 c8                          movl    %ecx, %r8d                    
  0.31%  0x3003334e: 81 f9 ff ff 01 00                 cmpl    $131071, %ecx                 
         0x30033354: 77 6a                             ja    106                             ; 0x300333c0
  0.02%  0x30033356: 85 c9                             testl    %ecx, %ecx                   
         0x30033358: 0f 84 7b 02 00 00                 je    635                             ; 0x300335d9
  0.01%  0x3003335e: 48 8b 44 24 60                    movq    96(%rsp), %rax                
  0.40%  0x30033363: 4c 01 d8                          addq    %r11, %rax                    
  0.31%  0x30033366: 48 83 c0 10                       addq    $16, %rax                     
  0.03%  0x3003336a: 83 f9 10                          cmpl    $16, %ecx                     
         0x3003336d: 0f 83 7f 02 00 00                 jae    639                            ; 0x300335f2
  0.01%  0x30033373: 31 c9                             xorl    %ecx, %ecx                    
  0.33%  0x30033375: 49 ba 00 00 00 00 08 00 00 00     movabsq    $34359738368, %r10         ; 0x800000000 = 
  0.25%  0x3003337f: 48 8b 7c 24 50                    movq    80(%rsp), %rdi                
  0.05%  0x30033384: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.01%  0x30033393: 66 66 66 66 2e 0f 1f 84 00 00     nopw    %cs:(%rax,%rax)               
  1.91%  0x300333a0: 0f b6 14 08                       movzbl    (%rax,%rcx), %edx           
  2.48%  0x300333a4: 41 88 54 0e 10                    movb    %dl, 16(%r14,%rcx)            
  2.66%  0x300333a9: 48 ff c1                          incq    %rcx                          
  0.01%  0x300333ac: 4c 39 c1                          cmpq    %r8, %rcx                     
         0x300333af: 72 ef                             jb    -17                             ; 0x300333a0
  1.76%  0x300333b1: 4c 8b 7c 24 48                    movq    72(%rsp), %r15                
  5.83%  0x300333b6: eb 52                             jmp    82                             ; 0x3003340a
         0x300333b8: 0f 1f 84 00 00 00 00 00           nopl    (%rax,%rax)                   
         0x300333c0: 48 8b 4c 24 60                    movq    96(%rsp), %rcx                
         0x300333c5: 48 83 c1 10                       addq    $16, %rcx                     
         0x300333c9: be 10 00 00 00                    movl    $16, %esi                     
         0x300333ce: 4c 89 f7                          movq    %r14, %rdi                    
         0x300333d1: 4c 89 da                          movq    %r11, %rdx                    
         0x300333d4: 4c 89 cb                          movq    %r9, %rbx                     
         0x300333d7: 49 89 ed                          movq    %rbp, %r13                    
         0x300333da: 4c 89 dd                          movq    %r11, %rbp                    
         0x300333dd: 48 b8 80 9c 01 30 00 00 00 00     movabsq    $805411968, %rax           ; 0x30019c80 = StubRoutines::prim_arraycopy_bytes1_disjoint_safepoint
....................................................................................................
 34.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
 [0x30020fc0:0x30021331] in StubRoutines::stringLatin1IndexOfChar

         0x300212f2: 48 8b ac 24 50 02 00 00           movq    592(%rsp), %rbp               
         0x300212fa: 48 8b b4 24 48 02 00 00           movq    584(%rsp), %rsi               
         0x30021302: 48 8b bc 24 40 02 00 00           movq    576(%rsp), %rdi               
         0x3002130a: 4c 8b a4 24 18 02 00 00           movq    536(%rsp), %r12               
         0x30021312: 4c 8b ac 24 10 02 00 00           movq    528(%rsp), %r13               
         0x3002131a: 4c 8b b4 24 08 02 00 00           movq    520(%rsp), %r14               
         0x30021322: 4c 8b bc 24 00 02 00 00           movq    512(%rsp), %r15               
         0x3002132a: 48 81 c4 88 02 00 00              addq    $648, %rsp                    
         0x30021331: c3                                retq                                  
         StubRoutines::stringLatin1IndexOfChar [0x0000000030020fc0, 0x0000000030021155] (405 bytes)
  4.42%  0x30020fc0: 48 81 ec 88 02 00 00              subq    $648, %rsp                    
  5.51%  0x30020fc7: 48 89 8c 24 70 02 00 00           movq    %rcx, 624(%rsp)               
  5.10%  0x30020fcf: 48 89 94 24 68 02 00 00           movq    %rdx, 616(%rsp)               
  1.20%  0x30020fd7: 48 89 9c 24 60 02 00 00           movq    %rbx, 608(%rsp)               
  1.80%  0x30020fdf: 48 89 ac 24 50 02 00 00           movq    %rbp, 592(%rsp)               
  0.29%  0x30020fe7: 48 89 b4 24 48 02 00 00           movq    %rsi, 584(%rsp)               
  0.71%  0x30020fef: 48 89 bc 24 40 02 00 00           movq    %rdi, 576(%rsp)               
  0.38%  0x30020ff7: 4c 89 a4 24 18 02 00 00           movq    %r12, 536(%rsp)               
  0.21%  0x30020fff: 4c 89 ac 24 10 02 00 00           movq    %r13, 528(%rsp)               
  0.24%  0x30021007: 4c 89 b4 24 08 02 00 00           movq    %r14, 520(%rsp)               
  0.58%  0x3002100f: 4c 89 bc 24 00 02 00 00           movq    %r15, 512(%rsp)               
  0.28%  0x30021017: c5 fa 7f 84 24 e0 01 00 00        vmovdqu    %xmm0, 480(%rsp)           
  0.54%  0x30021020: c5 fa 7f 8c 24 c0 01 00 00        vmovdqu    %xmm1, 448(%rsp)           
  0.73%  0x30021029: c5 fa 7f 94 24 a0 01 00 00        vmovdqu    %xmm2, 416(%rsp)           
  0.74%  0x30021032: 48 2b ca                          subq    %rdx, %rcx                    
         0x30021035: 48 03 fa                          addq    %rdx, %rdi                    
         0x30021038: 48 89 f8                          movq    %rdi, %rax                    
         0x3002103b: 48 83 f9 10                       cmpq    $16, %rcx                     
         0x3002103f: 7c 6e                             jl    110                             ; 0x300210af
  0.72%  0x30021041: 48 83 f9 20                       cmpq    $32, %rcx                     
         0x30021045: 7c 32                             jl    50                              ; 0x30021079
  0.00%  0x30021047: c4 e1 f9 6e c6                    vmovq    %rsi, %xmm0                  
  0.05%  0x3002104c: c4 e2 7d 78 c0                    vpbroadcastb    %xmm0, %ymm0          
  0.01%  0x30021051: c5 f5 ef c9                       vpxor    %ymm1, %ymm1, %ymm1          
  0.73%  0x30021055: 48 89 cb                          movq    %rcx, %rbx                    
         0x30021058: 83 e3 e0                          andl    $-32, %ebx                    
  0.00%  0x3002105b: 83 e1 1f                          andl    $31, %ecx                     
  0.01%  0x3002105e: c5 fe 6f 10                       vmovdqu    (%rax), %ymm2              
  2.86%  0x30021062: c5 ed 74 d0                       vpcmpeqb    %ymm0, %ymm2, %ymm2       
  2.77%  0x30021066: c4 e2 7d 17 ca                    vptest    %ymm2, %ymm1                
         0x3002106b: 73 64                             jae    100                            ; 0x300210d1
         0x3002106d: 48 83 c0 20                       addq    $32, %rax                     
         0x30021071: 48 83 eb 20                       subq    $32, %rbx                     
         0x30021075: 75 e7                             jne    -25                            ; 0x3002105e
         0x30021077: eb 0e                             jmp    14                             ; 0x30021087
  0.00%  0x30021079: c4 e1 f9 6e c6                    vmovq    %rsi, %xmm0                  
  0.00%  0x3002107e: c5 f1 ef c9                       vpxor    %xmm1, %xmm1, %xmm1          
         0x30021082: c4 e2 79 00 c1                    vpshufb    %xmm1, %xmm0, %xmm0        
         0x30021087: 48 83 f9 10                       cmpq    $16, %rcx                     
         0x3002108b: 7c 22                             jl    34                              ; 0x300210af
         0x3002108d: 48 89 cb                          movq    %rcx, %rbx                    
         0x30021090: 83 e3 f0                          andl    $-16, %ebx                    
         0x30021093: 83 e1 0f                          andl    $15, %ecx                     
  0.00%  0x30021096: c5 fa 6f 10                       vmovdqu    (%rax), %xmm2              
         0x3002109a: c5 e9 74 d0                       vpcmpeqb    %xmm0, %xmm2, %xmm2       
  0.00%  0x3002109e: c4 e2 79 17 ca                    vptest    %xmm2, %xmm1                
         0x300210a3: 73 2c                             jae    44                             ; 0x300210d1
         0x300210a5: 48 83 c0 10                       addq    $16, %rax                     
         0x300210a9: 48 83 eb 10                       subq    $16, %rbx                     
         0x300210ad: 75 e7                             jne    -25                            ; 0x30021096
         0x300210af: 48 85 c9                          testq    %rcx, %rcx                   
         0x300210b2: 74 14                             je    20                              ; 0x300210c8
         0x300210b4: 0f b6 18                          movzbl    (%rax), %ebx                
  0.00%  0x300210b7: 48 3b f3                          cmpq    %rbx, %rsi                    
         0x300210ba: 74 20                             je    32                              ; 0x300210dc
  0.00%  0x300210bc: 48 83 c0 01                       addq    $1, %rax                      
  0.00%  0x300210c0: 48 83 e9 01                       subq    $1, %rcx                      
         0x300210c4: 74 02                             je    2                               ; 0x300210c8
  0.00%  0x300210c6: eb ec                             jmp    -20                            ; 0x300210b4
         0x300210c8: 48 c7 c0 ff ff ff ff              movq    $-1, %rax                     
         0x300210cf: eb 11                             jmp    17                             ; 0x300210e2
  0.96%  0x300210d1: c5 fd d7 da                       vpmovmskb    %ymm2, %ebx              
  0.74%  0x300210d5: 48 0f bc f3                       bsfq    %rbx, %rsi                    
         0x300210d9: 48 03 c6                          addq    %rsi, %rax                    
  0.05%  0x300210dc: 48 2b c7                          subq    %rdi, %rax                    
  0.32%  0x300210df: 48 03 c2                          addq    %rdx, %rax                    
  0.70%  0x300210e2: c5 fa 6f 84 24 e0 01 00 00        vmovdqu    480(%rsp), %xmm0           
         0x300210eb: c5 fa 6f 8c 24 c0 01 00 00        vmovdqu    448(%rsp), %xmm1           
         0x300210f4: c5 fa 6f 94 24 a0 01 00 00        vmovdqu    416(%rsp), %xmm2           
         0x300210fd: 48 8b 8c 24 70 02 00 00           movq    624(%rsp), %rcx               
  0.72%  0x30021105: 48 8b 94 24 68 02 00 00           movq    616(%rsp), %rdx               
         0x3002110d: 48 8b 9c 24 60 02 00 00           movq    608(%rsp), %rbx               
  0.00%  0x30021115: 48 8b ac 24 50 02 00 00           movq    592(%rsp), %rbp               
         0x3002111d: 48 8b b4 24 48 02 00 00           movq    584(%rsp), %rsi               
  0.74%  0x30021125: 48 8b bc 24 40 02 00 00           movq    576(%rsp), %rdi               
         0x3002112d: 4c 8b a4 24 18 02 00 00           movq    536(%rsp), %r12               
         0x30021135: 4c 8b ac 24 10 02 00 00           movq    528(%rsp), %r13               
....................................................................................................
 32.65%  <total for region 2>

....[Hottest Region 3]..............................................................................
 [0x300333da:0x30033565] in java.lang.String::split[Falcon]

         0x300333da: 4c 89 dd                          movq    %r11, %rbp                    
         0x300333dd: 48 b8 80 9c 01 30 00 00 00 00     movabsq    $805411968, %rax           ; 0x30019c80 = StubRoutines::prim_arraycopy_bytes1_disjoint_safepoint
         0x300333e7: 4c 8b 7c 24 48                    movq    72(%rsp), %r15                
         0x300333ec: c5 f8 77                          vzeroupper                            
         0x300333ef: ff d0                             callq    *%rax                        ; 0x30019c80 = StubRoutines::prim_arraycopy_bytes1_disjoint_safepoint
         0x300333f1: 48 8b 7c 24 50                    movq    80(%rsp), %rdi                
         0x300333f6: 49 89 eb                          movq    %rbp, %r11                    
         0x300333f9: 49 89 d9                          movq    %rbx, %r9                     
         0x300333fc: 48 8d 5d 10                       leaq    16(%rbp), %rbx                
         0x30033400: 49 ba 00 00 00 00 08 00 00 00     movabsq    $34359738368, %r10         ; 0x800000000 = 
  0.11%  0x3003340a: 49 8d 47 08                       leaq    8(%r15), %rax                 
  0.81%  0x3003340e: 4c 89 7c 24 48                    movq    %r15, 72(%rsp)                
  0.46%  0x30033413: 2e 2e 2e 2e 2e 2e 2e 2e 2e 4b     leaq    %cs:(%r15,%r10), %rcx         
  0.00%  0x30033420: 4c 39 f1                          cmpq    %r14, %rcx                    
         0x30033423: 0f 82 5d 09 00 00                 jb    2397                            ; 0x30033d86
  0.37%  0x30033429: 4c 89 30                          movq    %r14, (%rax)                  
  2.97%  0x3003342c: 48 8b ac 24 90 00 00 00           movq    144(%rsp), %rbp               
  0.01%  0x30033434: 4c 8b ac 24 a8 00 00 00           movq    168(%rsp), %r13               
  0.02%  0x3003343c: 44 0f b6 44 24 3f                 movzbl    63(%rsp), %r8d              
  0.08%  0x30033442: 4c 8b 74 24 58                    movq    88(%rsp), %r14                
  0.63%  0x30033447: 49 8d 46 01                       leaq    1(%r14), %rax                 
  0.01%  0x3003344b: 48 89 44 24 60                    movq    %rax, 96(%rsp)                
  0.01%  0x30033450: 41 8b 44 24 08                    movl    8(%r12), %eax                 
  0.11%  0x30033455: 49 39 c6                          cmpq    %rax, %r14                    
         0x30033458: 0f 84 07 06 00 00                 je    1543                            ; 0x30033a65
  0.62%  0x3003345e: 66 90                             nop                                   
  0.02%  0x30033460: 49 39 c6                          cmpq    %rax, %r14                    
         0x30033463: 0f 83 9e 0e 00 00                 jae    3742                           ; 0x30034307
  0.01%  0x30033469: 4b 8d 04 f4                       leaq    (%r12,%r14,8), %rax           
  0.05%  0x3003346d: 48 83 c0 10                       addq    $16, %rax                     
  0.59%  0x30033471: 4b 8d 0c 14                       leaq    (%r12,%r10), %rcx             
  0.01%  0x30033475: 2e 2e 2e 2e 2e 2e 4c 8b 74 24     movq    %cs:72(%rsp), %r14            
  0.01%  0x30033480: 4c 39 f1                          cmpq    %r14, %rcx                    
         0x30033483: 0f 82 8a 08 00 00                 jb    2186                            ; 0x30033d13
  0.08%  0x30033489: 4c 89 30                          movq    %r14, (%rax)                  
  0.71%  0x3003348c: 44 8d 7f 01                       leal    1(%rdi), %r15d                
  0.02%  0x30033490: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.10%  0x30033499: 0f 85 ca 08 00 00                 jne    2250                           ; 0x30033d69
  0.48%  0x3003349f: 48 8b 44 24 60                    movq    96(%rsp), %rax                
  0.27%  0x300334a4: 83 ff fe                          cmpl    $-2, %edi                     
         0x300334a7: 0f 8e 6f 0e 00 00                 jle    3695                           ; 0x3003431c
  0.01%  0x300334ad: 49 89 c6                          movq    %rax, %r14                    
  0.00%  0x300334b0: 89 c7                             movl    %eax, %edi                    
  0.45%  0x300334b2: 45 39 fd                          cmpl    %r15d, %r13d                  
         0x300334b5: 0f 8f 25 fd ff ff                 jg    -731                            ; 0x300331e0
         0x300334bb: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
         0x300334c0: e9 35 02 00 00                    jmp    565                            ; 0x300336fa
         0x300334c5: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.35%  0x300334d0: 89 f2                             movl    %esi, %edx                    
  0.02%  0x300334d2: be 27 00 00 00                    movl    $39, %esi                     
  0.17%  0x300334d7: b9 18 00 00 00                    movl    $24, %ecx                     
  0.02%  0x300334dc: 48 b8 40 d2 00 30 00 00 00 00     movabsq    $805360192, %rax           ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.02%  0x300334e6: c5 f8 77                          vzeroupper                            
  0.05%  0x300334e9: ff d0                             callq    *%rax                        ; 0x3000d240 = StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.03%  0x300334eb: 48 89 44 24 48                    movq    %rax, 72(%rsp)                
         0x300334f0: 48 85 c0                          testq    %rax, %rax                   
         0x300334f3: 0f 84 e3 08 00 00                 je    2275                            ; 0x30033ddc
         0x300334f9: 48 8b 7c 24 50                    movq    80(%rsp), %rdi                
  0.01%  0x300334fe: 89 d6                             movl    %edx, %esi                    
  0.03%  0x30033500: e9 cb fd ff ff                    jmp    -565                           ; 0x300332d0
         0x30033505: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.44%  0x30033510: 41 89 f0                          movl    %esi, %r8d                    
  0.06%  0x30033513: be 08 00 00 00                    movl    $8, %esi                      
  0.20%  0x30033518: 31 ff                             xorl    %edi, %edi                    
         0x3003351a: 48 b8 c0 d3 00 30 00 00 00 00     movabsq    $805360576, %rax           ; 0x3000d3c0 = StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.04%  0x30033524: c5 f8 77                          vzeroupper                            
  0.04%  0x30033527: ff d0                             callq    *%rax                        ; 0x3000d3c0 = StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.02%  0x30033529: 48 85 c0                          testq    %rax, %rax                   
         0x3003352c: 0f 84 d9 08 00 00                 je    2265                            ; 0x30033e0b
         0x30033532: 49 89 c6                          movq    %rax, %r14                    
  0.03%  0x30033535: 48 8b 7c 24 50                    movq    80(%rsp), %rdi                
  0.11%  0x3003353a: 2e 2e 2e 44 89 c6                 movl    %r8d, %esi                    
         0x30033540: e9 da fd ff ff                    jmp    -550                           ; 0x3003331f
         0x30033545: 31 c9                             xorl    %ecx, %ecx                    
         0x30033547: 48 ff c8                          decq    %rax                          
         0x3003354a: 48 83 f8 07                       cmpq    $7, %rax                      
         0x3003354e: 0f 82 88 01 00 00                 jb    392                             ; 0x300336dc
         0x30033554: 40 38 2c 3b                       cmpb    %bpl, (%rbx,%rdi)             
         0x30033558: 0f 84 fc fc ff ff                 je    -772                            ; 0x3003325a
         0x3003355e: 66 90                             nop                                   
         0x30033560: 40 38 6c 3b 01                    cmpb    %bpl, 1(%rbx,%rdi)            
         0x30033565: 0f 84 24 01 00 00                 je    292                             ; 0x3003368f
....................................................................................................
 10.64%  <total for region 3>

....[Hottest Regions]...............................................................................
 34.79%  [0x3003320a:0x300333dd] in java.lang.String::split[Falcon]
 32.65%  [0x30020fc0:0x30021331] in StubRoutines::stringLatin1IndexOfChar
 10.64%  [0x300333da:0x30033565] in java.lang.String::split[Falcon]
  4.06%  [0x3001f4c0:0x3001f580] in StubRoutines::checkcast_arraycopy
  3.76%  [0x3000d240:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  2.18%  [0x30020e00:0x30021154] in StubRoutines::stringLatin1IndexOfChar
  1.91%  [0x3001d900:0x3001f698] in StubRoutines::object_arraycopy
  1.68%  [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca
  1.08%  [0x3000cc7e:0x3000d43c] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.73%  [0x300331a3:0x30033224] in java.lang.String::split[Falcon]
  0.46%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.22%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.21%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb8dcf:0xffffffffa9eb8ddb] in [unknown] ([kernel.kallsyms])
  0.16%  [0xffffffffa9eb93b0:0xffffffffa9eb9441] in [unknown] ([kernel.kallsyms])
  0.15%  [0x7f9e8a509a63:0x7f9e8a509a77] in [unknown] (libjvm.so)
  0.15%  [0xffffffffa9f0711c:0xffffffffa9f07167] in [unknown] ([kernel.kallsyms])
  0.14%  [0x30033a37:0x30033b35] in java.lang.String::split[Falcon]
  0.14%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.14%  [0xffffffffa9f211f0:0xffffffffa9f21226] in [unknown] ([kernel.kallsyms])
  4.58%  <...other 649 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 46.44%  java.lang.String::split[Falcon]
 34.82%  StubRoutines::stringLatin1IndexOfChar
  4.84%  StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  4.33%  [unknown] ([kernel.kallsyms])
  4.06%  StubRoutines::checkcast_arraycopy
  1.91%  StubRoutines::object_arraycopy
  1.68%  StubRoutines::new_stub_dont_check_tls_zero_region_orca
  1.19%  [unknown] (libjvm.so)
  0.08%  [unknown] (libc-2.31.so)
  0.06%  PMEM::initialized; PMEM_PageInfo::page_info_base; PMEM::account_enabled; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.05%  StubRoutines::object_arraycopy_bytes
  0.04%  [unknown] (perf-154519.map)
  0.03%  [unknown] ([vdso])
  0.02%  PMEM_PageInfo::page_info (libaztall.so)
  0.02%  thread_stack_region_start; thread_stack_region_end (libazsys3.so)
  0.01%  VMEM_SpaceManager::allocate (libaztall.so)
  0.01%  VMEM_PageManager::is_premapped_page (libaztall.so)
  0.01%  PMEM_PageQueue::remove (libaztall.so)
  0.01%  PMEM_PageQueue::head; PMEM_PageQueue::tail (libaztall.so)
  0.01%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.37%  <...other 98 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 93.83%  <generated code>
  4.33%  <native code in ([kernel.kallsyms])>
  1.19%  <native code in (libjvm.so)>
  0.38%  <native code in (libaztall.so)>
  0.13%  <native code in (libc-2.31.so)>
  0.04%  <native code in (perf-154519.map)>
  0.03%  <native code in (libazsys3.so)>
  0.03%  <native code in ([vdso])>
  0.03%  <native code in (libpthread-2.31.so)>
  0.01%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libstdc++.so.6)>
....................................................................................................
100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·gc.alloc.rate":
  1675.246 ±(99.9%) 7.860 MB/sec [Average]
  (min, avg, max) = (1671.778, 1675.246, 1676.820), stdev = 2.041
  CI (99.9%): [1667.386, 1683.106] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·gc.alloc.rate.norm":
  184280.005 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (184280.005, 184280.005, 184280.005), stdev = 0.001
  CI (99.9%): [184280.004, 184280.006] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·gc.count":
  130.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (25.000, 26.000, 30.000), stdev = 2.236
  CI (99.9%): [130.000, 130.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·gc.time":
  427.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (82.000, 85.400, 98.000), stdev = 7.057
  CI (99.9%): [427.000, 427.000] (assumes normal distribution)


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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = __)

# Run progress: 75.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: zingperfasm 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 181.580 us/op
# Warmup Iteration   2: 156.580 us/op
# Warmup Iteration   3: 155.391 us/op
# Warmup Iteration   4: 154.685 us/op
# Warmup Iteration   5: 154.827 us/op
Iteration   1: 154.957 us/op
                 ·gc.alloc.rate:      1139.231 MB/sec
                 ·gc.alloc.rate.norm: 185112.007 B/op
                 ·gc.count:           20.000 counts
                 ·gc.time:            65.000 ms

Iteration   2: 154.748 us/op
                 ·gc.alloc.rate:      1140.778 MB/sec
                 ·gc.alloc.rate.norm: 185112.007 B/op
                 ·gc.count:           15.000 counts
                 ·gc.time:            49.000 ms

Iteration   3: 155.565 us/op
                 ·gc.alloc.rate:      1134.783 MB/sec
                 ·gc.alloc.rate.norm: 185112.007 B/op
                 ·gc.count:           20.000 counts
                 ·gc.time:            67.000 ms

Iteration   4: 154.555 us/op
                 ·gc.alloc.rate:      1142.194 MB/sec
                 ·gc.alloc.rate.norm: 185112.007 B/op
                 ·gc.count:           15.000 counts
                 ·gc.time:            50.000 ms

Iteration   5: 154.886 us/op
                 ·gc.alloc.rate:      1139.742 MB/sec
                 ·gc.alloc.rate.norm: 185112.008 B/op
                 ·gc.count:           20.000 counts
                 ·gc.time:            67.000 ms

# Processing profiler results: zingperfasm 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split":
  154.942 ±(99.9%) 1.464 us/op [Average]
  (min, avg, max) = (154.555, 154.942, 155.565), stdev = 0.380
  CI (99.9%): [153.478, 156.407] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·asm":
PrintAssembly processed: 177410 total address lines.
Perf output processed (skipped 56.656 seconds):
 Column 1: cycles (51866 events)

Hottest code regions (>5.00% "cycles" events):
....[Hottest Region 1]..............................................................................
 [0x300363b2:0x30036969] in java.util.regex.Pattern::split[Falcon]

         0x300363b2: 0f be c8                          movsbl    %al, %ecx                   
         0x300363b5: 89 8c 24 b0 00 00 00              movl    %ecx, 176(%rsp)               
         0x300363bc: c4 e2 7b f7 84 24 9c 00 00 00     shrxl    %eax, 156(%rsp), %eax        
         0x300363c6: 89 84 24 ac 00 00 00              movl    %eax, 172(%rsp)               
         0x300363cd: 48 8b 4c 24 38                    movq    56(%rsp), %rcx                
         0x300363d2: c6 41 2c 00                       movb    $0, 44(%rcx)                  
         0x300363d6: c6 41 2d 00                       movb    $0, 45(%rcx)                  
         0x300363da: 31 d2                             xorl    %edx, %edx                    
         0x300363dc: 45 31 c0                          xorl    %r8d, %r8d                    
         0x300363df: 4c 89 94 24 88 00 00 00           movq    %r10, 136(%rsp)               
  0.00%  0x300363e7: 4c 89 54 24 78                    movq    %r10, 120(%rsp)               
         0x300363ec: 4c 89 54 24 40                    movq    %r10, 64(%rsp)                
         0x300363f1: 8b ac 24 b4 00 00 00              movl    180(%rsp), %ebp               
         0x300363f8: 49 89 da                          movq    %rbx, %r10                    
  0.00%  0x300363fb: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.09%  0x30036400: 44 89 c0                          movl    %r8d, %eax                    
  0.04%  0x30036403: 48 89 44 24 48                    movq    %rax, 72(%rsp)                
  0.04%  0x30036408: 89 51 18                          movl    %edx, 24(%rcx)                
  0.38%  0x3003640b: 48 89 4c 24 38                    movq    %rcx, 56(%rsp)                
  0.09%  0x30036410: 8b 41 20                          movl    32(%rcx), %eax                
  0.05%  0x30036413: 48 89 d1                          movq    %rdx, %rcx                    
  0.03%  0x30036416: 48 89 54 24 60                    movq    %rdx, 96(%rsp)                
  0.31%  0x3003641b: 85 c0                             testl    %eax, %eax                   
         0x3003641d: 78 02                             js    2                               ; 0x30036421
  0.10%  0x3003641f: 89 c1                             movl    %eax, %ecx                    
  0.02%  0x30036421: 48 8b 44 24 38                    movq    56(%rsp), %rax                
  0.08%  0x30036426: 89 48 20                          movl    %ecx, 32(%rax)                
  0.74%  0x30036429: 48 8b 40 38                       movq    56(%rax), %rax                
  0.11%  0x3003642d: b9 48 00 f8 2f                    movl    $804782152, %ecx              ; 804782152 = clearable_gc_phase_trap_mask
  0.02%  0x30036432: 48 8b 09                          movq    (%rcx), %rcx                  
  0.02%  0x30036435: 48 85 c1                          testq    %rax, %rcx                   
         0x30036438: 0f 85 87 10 00 00                 jne    4231                           ; 0x300374c5
  0.39%  0x3003643e: 8b 50 08                          movl    8(%rax), %edx                 
  0.41%  0x30036441: 85 d2                             testl    %edx, %edx                   
         0x30036443: 74 24                             je    36                              ; 0x30036469
  0.19%  0x30036445: 83 fa 08                          cmpl    $8, %edx                      
         0x30036448: 0f 83 e2 00 00 00                 jae    226                            ; 0x30036530
         0x3003644e: 31 f6                             xorl    %esi, %esi                    
  0.49%  0x30036450: c7 44 b0 10 ff ff ff ff           movl    $4294967295, 16(%rax,%rsi,4)  
  0.46%  0x30036458: 48 89 f7                          movq    %rsi, %rdi                    
         0x3003645b: 48 83 cf 01                       orq    $1, %rdi                       
         0x3003645f: 90                                nop                                   
  0.29%  0x30036460: 48 39 d7                          cmpq    %rdx, %rdi                    
         0x30036463: 0f 82 ba 1b 00 00                 jb    7098                            ; 0x30038023
  0.03%  0x30036469: 48 8b 44 24 38                    movq    56(%rsp), %rax                
  0.06%  0x3003646e: 48 8b 40 50                       movq    80(%rax), %rax                
  0.16%  0x30036472: 48 85 c1                          testq    %rax, %rcx                   
         0x30036475: 0f 85 6a 10 00 00                 jne    4202                           ; 0x300374e5
  0.20%  0x3003647b: 2e 2e 8b 40 08                    movl    %cs:8(%rax), %eax             
  0.03%  0x30036480: 85 c0                             testl    %eax, %eax                   
         0x30036482: 0f 85 d0 17 00 00                 jne    6096                           ; 0x30037c58
  0.11%  0x30036488: 48 8b 44 24 38                    movq    56(%rsp), %rax                
  0.17%  0x3003648d: c7 40 14 00 00 00 00              movl    $0, 20(%rax)                  
  0.21%  0x30036494: 2e 2e 2e 2e 2e 2e 2e 2e 48 8b     movq    %cs:48(%rax), %rax            
  0.03%  0x300364a0: 48 85 c1                          testq    %rax, %rcx                   
         0x300364a3: 0f 85 5c 10 00 00                 jne    4188                           ; 0x30037505
  0.10%  0x300364a9: 48 8b 50 38                       movq    56(%rax), %rdx                
  0.17%  0x300364ad: 48 89 54 24 68                    movq    %rdx, 104(%rsp)               
  0.19%  0x300364b2: 48 85 d1                          testq    %rdx, %rcx                   
         0x300364b5: 0f 85 6a 10 00 00                 jne    4202                           ; 0x30037525
  0.04%  0x300364bb: 4c 89 54 24 58                    movq    %r10, 88(%rsp)                
  0.09%  0x300364c0: 48 8b 44 24 68                    movq    104(%rsp), %rax               
  0.59%  0x300364c5: 8b 50 04                          movl    4(%rax), %edx                 
  0.41%  0x300364c8: 48 8b 44 24 38                    movq    56(%rsp), %rax                
  0.02%  0x300364cd: 4c 8b 78 40                       movq    64(%rax), %r15                
  0.11%  0x300364d1: 4c 85 f9                          testq    %r15, %rcx                   
         0x300364d4: 0f 85 70 10 00 00                 jne    4208                           ; 0x3003754a
  0.17%  0x300364da: 81 e2 ff ff ff 01                 andl    $33554431, %edx               
  0.21%  0x300364e0: 81 fa 27 07 00 00                 cmpl    $1831, %edx                   
         0x300364e6: 0f 85 84 17 00 00                 jne    6020                           ; 0x30037c70
  0.10%  0x300364ec: 48 8b 44 24 68                    movq    104(%rsp), %rax               
  0.08%  0x300364f1: 2b 68 10                          subl    16(%rax), %ebp                
  0.26%  0x300364f4: 2e 2e 2e 2e 2e 2e 2e 48 8b 4c     movq    %cs:96(%rsp), %rcx            
  0.13%  0x30036500: 39 cd                             cmpl    %ecx, %ebp                    
         0x30036502: 0f 8c da 17 00 00                 jl    6106                            ; 0x30037ce2
  0.11%  0x30036508: 89 cb                             movl    %ecx, %ebx                    
  0.09%  0x3003650a: c7 84 24 a0 00 00 00 00 00 00     movl    $0, 160(%rsp)                 
  0.16%  0x30036515: 48 89 d8                          movq    %rbx, %rax                    
  0.12%  0x30036518: 48 89 9c 24 c0 00 00 00           movq    %rbx, 192(%rsp)               
  0.12%  0x30036520: e9 43 01 00 00                    jmp    323                            ; 0x30036668
         0x30036525: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.09%  0x30036530: 89 d6                             movl    %edx, %esi                    
  0.22%  0x30036532: 81 e6 f8 ff ff 7f                 andl    $2147483640, %esi             
  0.06%  0x30036538: c5 fd 76 c0                       vpcmpeqd    %ymm0, %ymm0, %ymm0       
  0.16%  0x3003653c: c5 fe 7f 40 10                    vmovdqu    %ymm0, 16(%rax)            
  1.07%  0x30036541: 48 83 fe 08                       cmpq    $8, %rsi                      
         0x30036545: 74 25                             je    37                              ; 0x3003656c
  0.15%  0x30036547: c5 fe 7f 40 30                    vmovdqu    %ymm0, 48(%rax)            
  0.84%  0x3003654c: 83 fe 10                          cmpl    $16, %esi                     
         0x3003654f: 74 1b                             je    27                              ; 0x3003656c
         0x30036551: 48 8d 7e f0                       leaq    -16(%rsi), %rdi               
         0x30036555: 45 31 c0                          xorl    %r8d, %r8d                    
         0x30036558: c5 fd 76 c0                       vpcmpeqd    %ymm0, %ymm0, %ymm0       
         0x3003655c: c4 a1 7e 7f 44 80 50              vmovdqu    %ymm0, 80(%rax,%r8,4)      
         0x30036563: 49 83 c0 08                       addq    $8, %r8                       
         0x30036567: 4c 39 c7                          cmpq    %r8, %rdi                     
         0x3003656a: 75 ec                             jne    -20                            ; 0x30036558
  0.02%  0x3003656c: 48 39 d6                          cmpq    %rdx, %rsi                    
         0x3003656f: 0f 85 db fe ff ff                 jne    -293                           ; 0x30036450
         0x30036575: e9 ef fe ff ff                    jmp    -273                           ; 0x30036469
         0x3003657a: 66 0f 1f 44 00 00                 nopw    (%rax,%rax)                   
  0.14%  0x30036580: 4c 89 6c 24 40                    movq    %r13, 64(%rsp)                
  0.03%  0x30036585: 8b 42 08                          movl    8(%rdx), %eax                 
  0.05%  0x30036588: 39 c6                             cmpl    %eax, %esi                    
         0x3003658a: 0f 8c 17 18 00 00                 jl    6167                            ; 0x30037da7
  0.30%  0x30036590: 8b 6a 0c                          movl    12(%rdx), %ebp                
  0.12%  0x30036593: 48 89 f2                          movq    %rsi, %rdx                    
  0.03%  0x30036596: 39 ee                             cmpl    %ebp, %esi                    
         0x30036598: 0f 8f 21 18 00 00                 jg    6177                            ; 0x30037dbf
  0.08%  0x3003659e: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.32%  0x300365a7: 0f 85 11 10 00 00                 jne    4113                           ; 0x300375be
  0.11%  0x300365ad: 48 8b 4c 24 38                    movq    56(%rsp), %rcx                
  0.04%  0x300365b2: c6 41 2c 00                       movb    $0, 44(%rcx)                  
  0.11%  0x300365b6: 2e 2e 2e 2e 2e 2e c6 41 2d 00     movb    $0, %cs:45(%rcx)              
  0.28%  0x300365c0: 85 d2                             testl    %edx, %edx                   
         0x300365c2: 0f 89 38 fe ff ff                 jns    -456                           ; 0x30036400
         0x300365c8: e9 0a 18 00 00                    jmp    6154                           ; 0x30037dd7
         0x300365cd: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
         0x300365dc: 0f 1f 40 00                       nopl    (%rax)                        
  0.72%  0x300365e0: 4e 8d 34 13                       leaq    (%rbx,%r10), %r14             
  0.71%  0x300365e4: 45 39 f4                          cmpl    %r14d, %r12d                  
         0x300365e7: 0f 8e 54 12 00 00                 jle    4692                           ; 0x30037841
  2.49%  0x300365ed: 46 8b 6c 92 10                    movl    16(%rdx,%r10,4), %r13d        
  1.50%  0x300365f2: 41 0f b6 47 14                    movzbl    20(%r15), %eax              
  0.22%  0x300365f7: 84 c0                             testb    %al, %al                     
         0x300365f9: 0f 85 50 12 00 00                 jne    4688                           ; 0x3003784f
  0.66%  0x300365ff: 49 8b 47 08                       movq    8(%r15), %rax                 
  2.58%  0x30036603: 49 85 c1                          testq    %rax, %r9                    
         0x30036606: 0f 85 43 0e 00 00                 jne    3651                           ; 0x3003744f
  0.62%  0x3003660c: 8b 70 08                          movl    8(%rax), %esi                 
  2.04%  0x3003660f: 44 39 f6                          cmpl    %r14d, %esi                   
         0x30036612: 0f 8e 54 12 00 00                 jle    4692                           ; 0x3003786c
  1.33%  0x30036618: 4b 8d 3c 13                       leaq    (%r11,%r10), %rdi             
  2.23%  0x3003661c: 0f 1f 40 00                       nopl    (%rax)                        
  0.21%  0x30036620: 48 39 f7                          cmpq    %rsi, %rdi                    
         0x30036623: 0f 83 5e 12 00 00                 jae    4702                           ; 0x30037887
  0.48%  0x30036629: 4c 01 d8                          addq    %r11, %rax                    
  0.95%  0x3003662c: 41 0f b6 44 02 10                 movzbl    16(%r10,%rax), %eax         
  2.46%  0x30036632: 41 39 c5                          cmpl    %eax, %r13d                   
         0x30036635: 75 19                             jne    25                             ; 0x30036650
  0.45%  0x30036637: 49 ff c2                          incq    %r10                          
  1.40%  0x3003663a: 4d 39 c2                          cmpq    %r8, %r10                     
         0x3003663d: 72 a1                             jb    -95                             ; 0x300365e0
  0.34%  0x3003663f: 90                                nop                                   
         0x30036640: e9 be 00 00 00                    jmp    190                            ; 0x30036703
         0x30036645: 66 66 2e 0f 1f 84 00 00 00 00     nopw    %cs:(%rax,%rax)               
  0.29%  0x30036650: 48 ff c3                          incq    %rbx                          
  0.41%  0x30036653: 2e 2e 2e 2e 2e 2e ff 84 24 a0     incl    %cs:160(%rsp)                 
  2.89%  0x30036660: 39 eb                             cmpl    %ebp, %ebx                    
         0x30036662: 0f 8f 8a 07 00 00                 jg    1930                            ; 0x30036df2
  0.31%  0x30036668: 65 83 3c 25 68 00 00 00 00        cmpl    $0, %gs:104                   ; thread:[104] = _please_self_suspend
  0.71%  0x30036671: 0f 85 f3 0d 00 00                 jne    3571                           ; 0x3003746a
  2.02%  0x30036677: 48 8b 44 24 68                    movq    104(%rsp), %rax               
  0.30%  0x3003667c: 48 8b 48 08                       movq    8(%rax), %rcx                 
  0.39%  0x30036680: b8 48 00 f8 2f                    movl    $804782152, %eax              ; 804782152 = clearable_gc_phase_trap_mask
  0.62%  0x30036685: 4c 8b 08                          movq    (%rax), %r9                   
  1.99%  0x30036688: 49 85 c9                          testq    %rcx, %r9                    
         0x3003668b: 0f 85 ed 0d 00 00                 jne    3565                           ; 0x3003747e
  0.35%  0x30036691: 8b 51 04                          movl    4(%rcx), %edx                 
  0.60%  0x30036694: 2e 2e 2e 2e 2e 2e 81 e2 ff ff     andl    $33554431, %edx               
  0.82%  0x300366a0: 81 fa 25 07 00 00                 cmpl    $1829, %edx                   
         0x300366a6: 0f 85 43 04 00 00                 jne    1091                           ; 0x30036aef
  2.14%  0x300366ac: 48 8b 51 10                       movq    16(%rcx), %rdx                
  0.21%  0x300366b0: 49 85 d1                          testq    %rdx, %r9                    
         0x300366b3: 0f 85 ec 0d 00 00                 jne    3564                           ; 0x300374a5
  0.34%  0x300366b9: 2e 2e 2e 44 8b 42 08              movl    %cs:8(%rdx), %r8d             
  1.60%  0x300366c0: 45 85 c0                          testl    %r8d, %r8d                   
         0x300366c3: 74 3b                             je    59                              ; 0x30036700
  2.22%  0x300366c5: 48 8b 44 24 38                    movq    56(%rsp), %rax                
  0.19%  0x300366ca: 44 8b 60 0c                       movl    12(%rax), %r12d               
  0.21%  0x300366ce: 4d 85 ff                          testq    %r15, %r15                   
         0x300366d1: 0f 84 f4 11 00 00                 je    4596                            ; 0x300378cb
  0.61%  0x300366d7: 41 8b 47 04                       movl    4(%r15), %eax                 
  2.34%  0x300366db: 25 ff ff ff 01                    andl    $33554431, %eax               
  0.19%  0x300366e0: 83 f8 27                          cmpl    $39, %eax                     
         0x300366e3: 0f 85 2e 11 00 00                 jne    4398                           ; 0x30037817
  0.21%  0x300366e9: 85 db                             testl    %ebx, %ebx                   
         0x300366eb: 0f 88 f4 11 00 00                 js    4596                            ; 0x300378e5
  0.62%  0x300366f1: 41 89 db                          movl    %ebx, %r11d                   
  2.17%  0x300366f4: 45 31 d2                          xorl    %r10d, %r10d                  
  0.18%  0x300366f7: e9 e4 fe ff ff                    jmp    -284                           ; 0x300365e0
         0x300366fc: 0f 1f 40 00                       nopl    (%rax)                        
         0x30036700: 45 31 c0                          xorl    %r8d, %r8d                    
  0.02%  0x30036703: 48 8b 41 08                       movq    8(%rcx), %rax                 
  0.11%  0x30036707: 49 85 c1                          testq    %rax, %r9                    
         0x3003670a: 0f 85 15 0f 00 00                 jne    3861                           ; 0x30037625
  0.35%  0x30036710: 8b 48 04                          movl    4(%rax), %ecx                 
  0.01%  0x30036713: 41 01 d8                          addl    %ebx, %r8d                    
  0.01%  0x30036716: 2e 2e 2e 2e 81 e1 ff ff ff 01     andl    $33554431, %ecx               
  0.11%  0x30036720: 81 f9 20 07 00 00                 cmpl    $1824, %ecx                   
         0x30036726: 0f 85 a3 18 00 00                 jne    6307                           ; 0x30037fcf
  0.35%  0x3003672c: 48 8b 4c 24 38                    movq    56(%rsp), %rcx                
  0.00%  0x30036731: 83 79 14 01                       cmpl    $1, 20(%rcx)                  
  0.02%  0x30036735: 0f 84 a9 18 00 00                 je    6313                            ; 0x30037fe4
  0.29%  0x3003673b: 44 89 41 1c                       movl    %r8d, 28(%rcx)                
  0.17%  0x3003673f: 48 8b 41 38                       movq    56(%rcx), %rax                
         0x30036743: 49 85 c1                          testq    %rax, %r9                    
         0x30036746: 0f 85 f9 0e 00 00                 jne    3833                           ; 0x30037645
  0.11%  0x3003674c: 48 8b 4c 24 38                    movq    56(%rsp), %rcx                
  0.23%  0x30036751: 8b 49 18                          movl    24(%rcx), %ecx                
  0.40%  0x30036754: 83 78 08 01                       cmpl    $1, 8(%rax)                   
  0.93%  0x30036758: 0f 86 b0 18 00 00                 jbe    6320                           ; 0x3003800e
  0.43%  0x3003675e: 89 48 10                          movl    %ecx, 16(%rax)                
  0.08%  0x30036761: 44 89 40 14                       movl    %r8d, 20(%rax)                
  0.03%  0x30036765: 48 8b 4c 24 38                    movq    56(%rsp), %rcx                
         0x3003676a: 89 59 18                          movl    %ebx, 24(%rcx)                
  0.36%  0x3003676d: 44 8b 5c 24 54                    movl    84(%rsp), %r11d               
  0.09%  0x30036772: 4c 8b 54 24 58                    movq    88(%rsp), %r10                
  0.03%  0x30036777: 49 bc 00 00 00 00 08 00 00 00     movabsq    $34359738368, %r12         ; 0x800000000 = 
  0.00%  0x30036781: 4c 8b 6c 24 40                    movq    64(%rsp), %r13                
  0.40%  0x30036786: 48 8b 6c 24 48                    movq    72(%rsp), %rbp                
  0.07%  0x3003678b: 89 58 10                          movl    %ebx, 16(%rax)                
  0.14%  0x3003678e: 44 89 40 14                       movl    %r8d, 20(%rax)                
  0.72%  0x30036792: 44 89 41 20                       movl    %r8d, 32(%rcx)                
  0.12%  0x30036796: 48 89 4c 24 38                    movq    %rcx, 56(%rsp)                
  0.01%  0x3003679b: ff 41 28                          incl    40(%rcx)                      
  0.49%  0x3003679e: 83 7c 24 60 00                    cmpl    $0, 96(%rsp)                  
  0.01%  0x300367a3: 0f 84 9c 05 00 00                 je    1436                            ; 0x30036d45
  0.07%  0x300367a9: 85 db                             testl    %ebx, %ebx                   
  0.29%  0x300367ab: 8b 84 24 ac 00 00 00              movl    172(%rsp), %eax               
  0.11%  0x300367b2: 0f 88 ad 17 00 00                 js    6061                            ; 0x30037f65
  0.01%  0x300367b8: 2e 2e 2e 2e 2e 41 89 d8           movl    %ebx, %r8d                    
  0.05%  0x300367c0: 44 2b 44 24 60                    subl    96(%rsp), %r8d                
         0x300367c5: 0f 8c 24 16 00 00                 jl    5668                            ; 0x30037def
  0.33%  0x300367cb: 39 c3                             cmpl    %eax, %ebx                    
         0x300367cd: 0f 8f 36 16 00 00                 jg    5686                            ; 0x30037e09
  0.08%  0x300367d3: 83 7c 24 60 00                    cmpl    $0, 96(%rsp)                  
  0.01%  0x300367d8: 0f 84 d3 04 00 00                 je    1235                            ; 0x30036cb1
  0.06%  0x300367de: 80 bc 24 a8 00 00 00 00           cmpb    $0, 168(%rsp)                 
  0.29%  0x300367e6: 0f 85 9e 17 00 00                 jne    6046                           ; 0x30037f8a
  0.04%  0x300367ec: 3b 5c 24 60                       cmpl    96(%rsp), %ebx                
         0x300367f0: 0f 84 87 17 00 00                 je    6023                            ; 0x30037f7d
  0.02%  0x300367f6: 65 4c 8b 0c 25 b0 00 00 00        movq    %gs:176, %r9                  ; thread:[176] = _tlab._top
  0.07%  0x300367ff: 49 8d 41 18                       leaq    24(%r9), %rax                 
  0.35%  0x30036803: 65 48 3b 04 25 c0 00 00 00        cmpq    %gs:192, %rax                 
         0x3003680c: 0f 83 de 01 00 00                 jae    478                            ; 0x300369f0
  0.07%  0x30036812: 65 48 89 04 25 b0 00 00 00        movq    %rax, %gs:176                 ; thread:[176] = _tlab._top
  0.03%  0x3003681b: 48 b8 00 00 00 00 27 00 00 00     movabsq    $167503724544, %rax        ; 0x2700000000 = 
  0.07%  0x30036825: 49 89 01                          movq    %rax, (%r9)                   
  0.91%  0x30036828: 45 85 c0                          testl    %r8d, %r8d                   
         0x3003682b: 0f 88 71 17 00 00                 js    6001                            ; 0x30037fa2
  0.01%  0x30036831: 44 89 c2                          movl    %r8d, %edx                    
  0.01%  0x30036834: 48 8d 4a 17                       leaq    23(%rdx), %rcx                
  0.03%  0x30036838: 48 b8 f8 ff ff ff 01 00 00 00     movabsq    $8589934584, %rax          ; 0x1fffffff8 = 
  0.37%  0x30036842: 48 21 c1                          andq    %rax, %rcx                    
  0.01%  0x30036845: 65 65 65 65 48 8b 1c 25 b0 00     movq    %gs:176, %rbx                 ; thread:[176] = _tlab._top
  0.02%  0x30036851: 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e     leaq    %cs:(%rbx,%rcx), %rax         
  0.04%  0x30036860: 65 48 3b 04 25 c0 00 00 00        cmpq    %gs:192, %rax                 
         0x30036869: 0f 83 b1 01 00 00                 jae    433                            ; 0x30036a20
  0.42%  0x3003686f: 65 48 89 04 25 b0 00 00 00        movq    %rax, %gs:176                 ; thread:[176] = _tlab._top
  0.32%  0x30036878: 4c 89 23                          movq    %r12, (%rbx)                  
  1.88%  0x3003687b: 48 89 53 08                       movq    %rdx, 8(%rbx)                 
  0.45%  0x3003687f: 8b 84 24 9c 00 00 00              movl    156(%rsp), %eax               
  0.09%  0x30036886: 48 8b 74 24 60                    movq    96(%rsp), %rsi                
  0.04%  0x3003688b: 29 f0                             subl    %esi, %eax                    
  0.36%  0x3003688d: 44 39 c0                          cmpl    %r8d, %eax                    
  0.15%  0x30036890: 44 89 c2                          movl    %r8d, %edx                    
  0.00%  0x30036893: 0f 4c d0                          cmovll    %eax, %edx                  
  0.08%  0x30036896: 89 d1                             movl    %edx, %ecx                    
  0.31%  0x30036898: 2e 2e 2e 2e 2e 2e 09 f1           orl    %esi, %ecx                     
  0.13%  0x300368a0: 0f 88 a8 10 00 00                 js    4264                            ; 0x3003794e
  0.01%  0x300368a6: 44 39 c2                          cmpl    %r8d, %edx                    
         0x300368a9: 0f 87 9f 10 00 00                 ja    4255                            ; 0x3003794e
  0.05%  0x300368af: 48 8b 4c 24 60                    movq    96(%rsp), %rcx                
  0.34%  0x300368b4: 2e 2e 2e 2e 2e 2e 2e 2e 2e 2e     addl    %edx, %ecx                    
  0.12%  0x300368c0: 3b 8c 24 9c 00 00 00              cmpl    156(%rsp), %ecx               
         0x300368c7: 0f 87 81 10 00 00                 ja    4225                            ; 0x3003794e
  0.01%  0x300368cd: 4c 89 e5                          movq    %r12, %rbp                    
  0.05%  0x300368d0: 41 89 d0                          movl    %edx, %r8d                    
  0.29%  0x300368d3: 81 fa ff ff 01 00                 cmpl    $131071, %edx                 
         0x300368d9: 77 65                             ja    101                             ; 0x30036940
  0.13%  0x300368db: 0f 1f 44 00 00                    nopl    (%rax,%rax)                   
  0.01%  0x300368e0: 85 d2                             testl    %edx, %edx                   
         0x300368e2: 0f 84 92 00 00 00                 je    146                             ; 0x3003697a
  0.03%  0x300368e8: 48 8b 4c 24 70                    movq    112(%rsp), %rcx               
  0.29%  0x300368ed: 48 8b b4 24 c0 00 00 00           movq    192(%rsp), %rsi               
  0.14%  0x300368f5: 48 01 f1                          addq    %rsi, %rcx                    
  0.02%  0x300368f8: 2e 48 81 c1 10 00 00 00           addq    $16, %rcx                     
  0.03%  0x30036900: 83 fa 10                          cmpl    $16, %edx                     
         0x30036903: 0f 83 3e 01 00 00                 jae    318                            ; 0x30036a47
  0.34%  0x30036909: 31 d2                             xorl    %edx, %edx                    
  0.16%  0x3003690b: 49 89 ec                          movq    %rbp, %r12                    
  0.02%  0x3003690e: 66 66 66 66 66 66 2e 0f 1f 84     nopw    %cs:(%rax,%rax)               
  0.07%  0x3003691d: 0f 1f 00                          nopl    (%rax)                        
  1.76%  0x30036920: 0f b6 04 11                       movzbl    (%rcx,%rdx), %eax           
  0.98%  0x30036924: 88 44 13 10                       movb    %al, 16(%rbx,%rdx)            
  0.41%  0x30036928: 48 ff c2                          incq    %rdx                          
  0.13%  0x3003692b: 4c 39 c2                          cmpq    %r8, %rdx                     
         0x3003692e: 72 f0                             jb    -16                             ; 0x30036920
  0.37%  0x30036930: eb 4b                             jmp    75                             ; 0x3003697d
         0x30036932: 66 66 66 66 66 2e 0f 1f 84 00     nopw    %cs:(%rax,%rax)               
         0x30036940: 48 8b 8c 24 c0 00 00 00           movq    192(%rsp), %rcx               
         0x30036948: 48 83 c1 10                       addq    $16, %rcx                     
         0x3003694c: be 10 00 00 00                    movl    $16, %esi                     
         0x30036951: 48 89 df                          movq    %rbx, %rdi                    
         0x30036954: 48 8b 54 24 70                    movq    112(%rsp), %rdx               
         0x30036959: 48 b8 80 9c 01 30 00 00 00 00     movabsq    $805411968, %rax           ; 0x30019c80 = StubRoutines::prim_arraycopy_bytes1_disjoint_safepoint
         0x30036963: 4d 89 ce                          movq    %r9, %r14                     
         0x30036966: 45 89 df                          movl    %r11d, %r15d                  
         0x30036969: 4d 89 d4                          movq    %r10, %r12                    
....................................................................................................
 78.61%  <total for region 1>

....[Hottest Regions]...............................................................................
 78.61%  [0x300363b2:0x30036969] in java.util.regex.Pattern::split[Falcon]
  4.36%  [0x30036959:0x30036a63] in java.util.regex.Pattern::split[Falcon]
  2.92%  [0x30037ff4:0x30038070] in java.util.regex.Pattern::split[Falcon]
  2.72%  [0x3001f4c0:0x3001f8e9] in StubRoutines::checkcast_arraycopy
  2.35%  [0x3000d240:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  1.23%  [0x3000d080:0x3000d52f] in StubRoutines::new_stub_dont_check_tls_zero_region_orca
  1.20%  [0x3001d9e3:0x3001db40] in StubRoutines::object_arraycopy
  0.82%  [0x3000cc7e:0x3000d43c] in StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  0.28%  [0xffffffffa9ecfb60:0xffffffffa9ecfb80] in [unknown] ([kernel.kallsyms])
  0.23%  [0xffffffffa9eef30c:0xffffffffa9eef42c] in [unknown] ([kernel.kallsyms])
  0.17%  [0xffffffffa9eb93b0:0xffffffffa9eb9461] in [unknown] ([kernel.kallsyms])
  0.15%  [0xffffffffa9eb8dcf:0xffffffffa9eb8dd5] in [unknown] ([kernel.kallsyms])
  0.13%  [0xffffffffa9eef5b7:0xffffffffa9eef5d5] in [unknown] ([kernel.kallsyms])
  0.12%  [0xffffffffa9f0711f:0xffffffffa9f0713b] in [unknown] ([kernel.kallsyms])
  0.11%  [0xffffffffa9f211f0:0xffffffffa9f21223] in [unknown] ([kernel.kallsyms])
  0.11%  [0x3001d900:0x3001f698] in StubRoutines::object_arraycopy
  0.11%  [0x7ffbe81e5a75:0x7ffbe81e5a75] in [unknown] (libjvm.so)
  0.10%  [0xffffffffa9f695f0:0xffffffffa9f696b1] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9c94c86:0xffffffffa9c94c88] in [unknown] ([kernel.kallsyms])
  0.09%  [0xffffffffa9eff400:0xffffffffa9eff421] in [unknown] ([kernel.kallsyms])
  4.09%  <...other 620 warm regions...>
....................................................................................................
100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
 86.12%  java.util.regex.Pattern::split[Falcon]
  3.90%  [unknown] ([kernel.kallsyms])
  3.18%  StubRoutines::new_stub_dont_check_tls_zero_region_array_orca
  2.72%  StubRoutines::checkcast_arraycopy
  1.33%  StubRoutines::object_arraycopy
  1.23%  StubRoutines::new_stub_dont_check_tls_zero_region_orca
  0.87%  [unknown] (libjvm.so)
  0.07%  java.util.regex.Pattern::compile[Falcon]
  0.05%  PMEM::initialized; PMEM::account_enabled; PMEM_PageInfo::page_info_base; PMEM_PageInfo::page_info_top; PMEM::accounts (libaztall.so)
  0.04%  [unknown] ([vdso])
  0.04%  [unknown] (libc-2.31.so)
  0.03%  StubRoutines::object_arraycopy_bytes
  0.03%  PMEM_PageInfo::page_info (libaztall.so)
  0.03%  [unknown] (perf-154655.map)
  0.02%  [unknown] (liborca.so.0.0.0.0)
  0.02%  VMEM_PageManager::allowed_zone; VMEM_PageManager::is_premapped_page (libaztall.so)
  0.02%  __pthread_mutex_lock (libpthread-2.31.so)
  0.01%  java.lang.String::split[Falcon]
  0.01%  clock_gettime (libc-2.31.so)
  0.01%  __pthread_mutex_unlock (libpthread-2.31.so)
  0.28%  <...other 80 warm methods...>
....................................................................................................
100.00%  <totals>

....[Distribution by Area]..........................................................................
 94.71%  <generated code>
  3.90%  <native code in ([kernel.kallsyms])>
  0.87%  <native code in (libjvm.so)>
  0.28%  <native code in (libaztall.so)>
  0.08%  <native code in (libc-2.31.so)>
  0.04%  <native code in ([vdso])>
  0.04%  <native code in (libpthread-2.31.so)>
  0.03%  <native code in (perf-154655.map)>
  0.03%  <native code in (libazsys3.so)>
  0.02%  <native code in (liborca.so.0.0.0.0)>
  0.00%  <native code in (libm-2.31.so)>
  0.00%  <native code in (libstdc++.so.6)>
....................................................................................................
100.00%  <totals>


Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·gc.alloc.rate":
  1139.346 ±(99.9%) 10.747 MB/sec [Average]
  (min, avg, max) = (1134.783, 1139.346, 1142.194), stdev = 2.791
  CI (99.9%): [1128.599, 1150.092] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·gc.alloc.rate.norm":
  185112.008 ±(99.9%) 0.001 B/op [Average]
  (min, avg, max) = (185112.007, 185112.008, 185112.008), stdev = 0.001
  CI (99.9%): [185112.006, 185112.009] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·gc.count":
  90.000 ±(99.9%) 0.001 counts [Sum]
  (min, avg, max) = (15.000, 18.000, 20.000), stdev = 2.739
  CI (99.9%): [90.000, 90.000] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·gc.time":
  298.000 ±(99.9%) 0.001 ms [Sum]
  (min, avg, max) = (49.000, 59.600, 67.000), stdev = 9.263
  CI (99.9%): [298.000, 298.000] (assumes normal distribution)


# Run complete. Total time: 00:07:29

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

Benchmark                                                      (regexp)  Mode  Cnt       Score     Error   Units
StringPatternSplitBenchmark.pattern_split                             _  avgt    5     133.097 ±   2.447   us/op
StringPatternSplitBenchmark.pattern_split:·asm                        _  avgt              NaN               ---
StringPatternSplitBenchmark.pattern_split:·gc.alloc.rate              _  avgt    5    1321.946 ±  24.403  MB/sec
StringPatternSplitBenchmark.pattern_split:·gc.alloc.rate.norm         _  avgt    5  184496.007 ±   0.001    B/op
StringPatternSplitBenchmark.pattern_split:·gc.count                   _  avgt    5     100.000            counts
StringPatternSplitBenchmark.pattern_split:·gc.time                    _  avgt    5     324.000                ms
StringPatternSplitBenchmark.pattern_split                            __  avgt    5     164.665 ±  24.437   us/op
StringPatternSplitBenchmark.pattern_split:·asm                       __  avgt              NaN               ---
StringPatternSplitBenchmark.pattern_split:·gc.alloc.rate             __  avgt    5    1069.836 ± 167.387  MB/sec
StringPatternSplitBenchmark.pattern_split:·gc.alloc.rate.norm        __  avgt    5  184496.008 ±   0.002    B/op
StringPatternSplitBenchmark.pattern_split:·gc.count                  __  avgt    5      80.000            counts
StringPatternSplitBenchmark.pattern_split:·gc.time                   __  avgt    5     262.000                ms
StringPatternSplitBenchmark.string_split                              _  avgt    5     104.903 ±   0.493   us/op
StringPatternSplitBenchmark.string_split:·asm                         _  avgt              NaN               ---
StringPatternSplitBenchmark.string_split:·gc.alloc.rate               _  avgt    5    1675.246 ±   7.860  MB/sec
StringPatternSplitBenchmark.string_split:·gc.alloc.rate.norm          _  avgt    5  184280.005 ±   0.001    B/op
StringPatternSplitBenchmark.string_split:·gc.count                    _  avgt    5     130.000            counts
StringPatternSplitBenchmark.string_split:·gc.time                     _  avgt    5     427.000                ms
StringPatternSplitBenchmark.string_split                             __  avgt    5     154.942 ±   1.464   us/op
StringPatternSplitBenchmark.string_split:·asm                        __  avgt              NaN               ---
StringPatternSplitBenchmark.string_split:·gc.alloc.rate              __  avgt    5    1139.346 ±  10.747  MB/sec
StringPatternSplitBenchmark.string_split:·gc.alloc.rate.norm         __  avgt    5  185112.008 ±   0.001    B/op
StringPatternSplitBenchmark.string_split:·gc.count                   __  avgt    5      90.000            counts
StringPatternSplitBenchmark.string_split:·gc.time                    __  avgt    5     298.000                ms
