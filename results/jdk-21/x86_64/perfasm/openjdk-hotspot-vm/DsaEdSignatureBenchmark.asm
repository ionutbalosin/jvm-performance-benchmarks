# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed25519, messageLength = 64)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2339.361 us/op
# Warmup Iteration   2: 1245.541 us/op
# Warmup Iteration   3: 1245.329 us/op
# Warmup Iteration   4: 1245.226 us/op
# Warmup Iteration   5: 1245.304 us/op
Iteration   1: 1244.733 us/op
Iteration   2: 1246.710 us/op
Iteration   3: 1247.558 us/op
Iteration   4: 1243.548 us/op
Iteration   5: 1245.773 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  1245.665 ±(99.9%) 6.100 us/op [Average]
  (min, avg, max) = (1243.548, 1245.665, 1247.558), stdev = 1.584
  CI (99.9%): [1239.565, 1251.764] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 258370 total address lines.
Perf output processed (skipped 56.756 seconds):
 Column 1: cycles (51041 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 646 

             # parm2:    r8:r8     = &apos;[J&apos;
             #           [sp+0x270]  (sp of caller)
             0x00007f5054641140:   mov    0x8(%rsi),%r10d
             0x00007f5054641144:   movabs $0x7f4fdb000000,%r11
             0x00007f505464114e:   add    %r11,%r10
             0x00007f5054641151:   cmp    %r10,%rax
             0x00007f5054641154:   jne    0x00007f50540c4080           ;   {runtime_call ic_miss_stub}
             0x00007f505464115a:   xchg   %ax,%ax
             0x00007f505464115c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.12%     0x00007f5054641160:   mov    %eax,-0x14000(%rsp)
   0.25%     0x00007f5054641167:   push   %rbp
   0.06%     0x00007f5054641168:   sub    $0x260,%rsp
   0.12%     0x00007f505464116f:   nop
   0.09%     0x00007f5054641170:   cmpl   $0x0,0x20(%r15)
   0.05%     0x00007f5054641178:   jne    0x00007f5054641c0a           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@-1 (line 225)
   0.06%     0x00007f505464117e:   vmovq  %r8,%xmm0
   0.02%     0x00007f5054641183:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f5054641bcc
   0.07%     0x00007f5054641187:   cmp    $0x9,%r10d
          ╭  0x00007f505464118b:   jbe    0x00007f5054641b5a
   0.03%  │  0x00007f5054641191:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f5054641be0
   0.07%  │  0x00007f5054641195:   mov    0x10(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
   0.03%  │  0x00007f5054641199:   nopl   0x0(%rax)
   0.14%  │  0x00007f50546411a0:   cmp    $0x9,%r11d
          │  0x00007f50546411a4:   jbe    0x00007f5054641b88
   0.04%  │  0x00007f50546411aa:   vmovq  %rsi,%xmm6
   0.08%  │  0x00007f50546411af:   vmovq  %rcx,%xmm1
   0.02%  │  0x00007f50546411b4:   mov    0x10(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@5 (line 225)
   0.10%  │  0x00007f50546411b8:   mov    0x18(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@18 (line 226)
   0.04%  │  0x00007f50546411bc:   vmovq  %r10,%xmm5
   0.10%  │  0x00007f50546411c1:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@6 (line 225)
   0.03%  │  0x00007f50546411c5:   vmovq  %r10,%xmm7
   0.19%  │  0x00007f50546411ca:   mov    %r11,%rdi
   0.03%  │  0x00007f50546411cd:   mov    %r8,0x78(%rsp)
   0.06%  │  0x00007f50546411d2:   imul   %r8,%rdi
   0.00%  │  0x00007f50546411d6:   mov    0x20(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@43 (line 227)
   0.09%  │  0x00007f50546411da:   mov    0x28(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@76 (line 228)
   0.03%  │  0x00007f50546411de:   mov    %r11,%rsi
   0.06%  │  0x00007f50546411e1:   mov    %r10,0x80(%rsp)
   0.01%  │  0x00007f50546411e9:   imul   %r10,%rsi
   0.14%  │  0x00007f50546411ed:   mov    %r11,%r10
   0.04%  │  0x00007f50546411f0:   mov    %r8,0x88(%rsp)
   0.06%  │  0x00007f50546411f8:   imul   %r8,%r11
   0.01%  │  0x00007f50546411fc:   mov    %r11,0x90(%rsp)
   0.13%  │  0x00007f5054641204:   mov    0x30(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@117 (line 229)
   0.04%  │  0x00007f5054641208:   mov    %r11,0x98(%rsp)
   0.07%  │  0x00007f5054641210:   mov    0x38(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@166 (line 230)
   0.01%  │  0x00007f5054641214:   mov    %r11,0xa0(%rsp)
   0.12%  │  0x00007f505464121c:   mov    %r10,%r13
   0.03%  │  0x00007f505464121f:   imul   0x98(%rsp),%r13
   0.37%  │  0x00007f5054641228:   mov    %r10,%r11
   0.00%  │  0x00007f505464122b:   imul   0xa0(%rsp),%r11
   0.19%  │  0x00007f5054641234:   mov    %r11,0xa8(%rsp)
   0.29%  │  0x00007f505464123c:   mov    0x40(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@225 (line 231)
   0.03%  │  0x00007f5054641240:   mov    %r11,0xb0(%rsp)
   0.01%  │  0x00007f5054641248:   mov    0x48(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@294 (line 232)
   0.04%  │  0x00007f505464124c:   mov    %r11,0xb8(%rsp)              ;   {no_reloc}
   0.19%  │  0x00007f5054641254:   mov    %r10,%r11
   0.03%  │  0x00007f5054641257:   imul   0xb0(%rsp),%r11
   0.10%  │  0x00007f5054641260:   mov    %r11,0xc0(%rsp)
   0.24%  │  0x00007f5054641268:   mov    %r10,%r11
   0.06%  │  0x00007f505464126b:   imul   0xb8(%rsp),%r11
   0.07%  │  0x00007f5054641274:   mov    %r11,0xc8(%rsp)
   0.22%  │  0x00007f505464127c:   mov    0x50(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@373 (line 233)
   0.06%  │  0x00007f5054641280:   mov    %r11,0xd0(%rsp)
   0.03%  │  0x00007f5054641288:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@462 (line 234)
   0.01%  │  0x00007f505464128c:   mov    %r11,0xd8(%rsp)
   0.14%  │  0x00007f5054641294:   mov    %r10,%r11
   0.05%  │  0x00007f5054641297:   imul   0xd0(%rsp),%r11
   0.06%  │  0x00007f50546412a0:   mov    %r11,0xe0(%rsp)
   0.23%  │  0x00007f50546412a8:   imul   0xd8(%rsp),%r10
   0.11%  │  0x00007f50546412b1:   mov    %r10,0xe8(%rsp)
   0.20%  │  0x00007f50546412b9:   mov    0x18(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@14 (line 226)
   0.01%  │  0x00007f50546412bd:   vmovq  %xmm1,%r10
   0.04%  │  0x00007f50546412c2:   mov    0x20(%r10),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@31 (line 227)
   0.01%  │  0x00007f50546412c6:   mov    %rcx,%r10
   0.20%  │  0x00007f50546412c9:   imul   0xd8(%rsp),%r10
   0.00%  │  0x00007f50546412d2:   mov    %r10,0xf0(%rsp)
   0.14%  │  0x00007f50546412da:   mov    %r8,%r10
   0.02%  │  0x00007f50546412dd:   imul   0xd8(%rsp),%r10
   0.10%  │  0x00007f50546412e6:   mov    %r10,0xf8(%rsp)
   0.05%  │  0x00007f50546412ee:   mov    %r8,%r10
   0.09%  │  0x00007f50546412f1:   imul   0xd0(%rsp),%r10
   0.01%  │  0x00007f50546412fa:   mov    %r10,0x100(%rsp)
   0.12%  │  0x00007f5054641302:   mov    %r8,%r10
   0.02%  │  0x00007f5054641305:   imul   0xb8(%rsp),%r10
   0.08%  │  0x00007f505464130e:   mov    %r10,0x108(%rsp)
   0.06%  │  0x00007f5054641316:   mov    %r8,%r10
   0.10%  │  0x00007f5054641319:   imul   0xb0(%rsp),%r10
   0.02%  │  0x00007f5054641322:   mov    %r10,0x110(%rsp)
   0.09%  │  0x00007f505464132a:   mov    %r8,%r10
   0.05%  │  0x00007f505464132d:   imul   0xa0(%rsp),%r10
   0.07%  │  0x00007f5054641336:   mov    %r10,0x118(%rsp)
   0.04%  │  0x00007f505464133e:   mov    %r8,%r10
   0.07%  │  0x00007f5054641341:   imul   0x98(%rsp),%r10
   0.02%  │  0x00007f505464134a:   mov    %r10,0x120(%rsp)
   0.13%  │  0x00007f5054641352:   mov    %r8,%r10                     ;   {no_reloc}
   0.01%  │  0x00007f5054641355:   imul   0x88(%rsp),%r10
   0.08%  │  0x00007f505464135e:   mov    %r10,0x128(%rsp)
   0.12%  │  0x00007f5054641366:   mov    %r8,%r10
   0.05%  │  0x00007f5054641369:   imul   0x80(%rsp),%r10
   0.00%  │  0x00007f5054641372:   mov    0x78(%rsp),%r11
   0.05%  │  0x00007f5054641377:   imul   %r8,%r11
   0.13%  │  0x00007f505464137b:   vmovq  %xmm5,%r9
   0.04%  │  0x00007f5054641380:   imul   %r8,%r9
   0.01%  │  0x00007f5054641384:   mov    %r9,%rax
   0.10%  │  0x00007f5054641387:   mov    %rcx,%r8
   0.10%  │  0x00007f505464138a:   imul   0xd0(%rsp),%r8
   0.04%  │  0x00007f5054641393:   mov    %r8,0x130(%rsp)
   0.26%  │  0x00007f505464139b:   mov    %rcx,%r8
   0.01%  │  0x00007f505464139e:   imul   0xb8(%rsp),%r8
   0.01%  │  0x00007f50546413a7:   mov    %r8,0x138(%rsp)
   0.21%  │  0x00007f50546413af:   mov    %rcx,%r8
          │  0x00007f50546413b2:   imul   0xb0(%rsp),%r8
   0.01%  │  0x00007f50546413bb:   mov    %r8,0x140(%rsp)
   0.24%  │  0x00007f50546413c3:   mov    %rcx,%rdx
   0.01%  │  0x00007f50546413c6:   imul   0xa0(%rsp),%rdx
   0.00%  │  0x00007f50546413cf:   mov    %rcx,%r8
   0.01%  │  0x00007f50546413d2:   imul   0x98(%rsp),%r8
   0.23%  │  0x00007f50546413db:   mov    %r8,0x148(%rsp)
   0.17%  │  0x00007f50546413e3:   mov    %rcx,%r8
          │  0x00007f50546413e6:   imul   0x88(%rsp),%r8
   0.00%  │  0x00007f50546413ef:   mov    %rcx,%r9
   0.05%  │  0x00007f50546413f2:   imul   0x80(%rsp),%r9
   0.16%  │  0x00007f50546413fb:   mov    %rcx,%rbx
          │  0x00007f50546413fe:   imul   0x78(%rsp),%rbx
   0.00%  │  0x00007f5054641404:   add    %rbx,%rax
   0.24%  │  0x00007f5054641407:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@48 (line 227)
   0.19%  │  0x00007f505464140a:   vmovq  %rax,%xmm8
   0.39%  │  0x00007f505464140f:   vmovq  %xmm5,%rbx
   0.00%  │  0x00007f5054641414:   imul   %rcx,%rbx
          │  0x00007f5054641418:   add    %rdi,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@23 (line 226)
          │  0x00007f505464141b:   vmovq  %rbx,%xmm9
   0.25%  │  0x00007f5054641420:   vmovq  %xmm1,%rcx
          │  0x00007f5054641425:   mov    0x28(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@56 (line 228)
   0.00%  │  0x00007f5054641429:   vmovq  %xmm1,%rbx
   0.00%  │  0x00007f505464142e:   mov    0x30(%rbx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@89 (line 229)
   0.20%  │  0x00007f5054641432:   mov    %rcx,%rbx
          │  0x00007f5054641435:   imul   0xd8(%rsp),%rbx
   0.01%  │  0x00007f505464143e:   mov    %rbx,0x150(%rsp)
   0.00%  │  0x00007f5054641446:   mov    %rdi,%rbx
   0.23%  │  0x00007f5054641449:   imul   0xd8(%rsp),%rbx              ;   {no_reloc}
          │  0x00007f5054641452:   mov    %rbx,0x158(%rsp)
          │  0x00007f505464145a:   mov    %rdi,%rbx
   0.00%  │  0x00007f505464145d:   imul   0xd0(%rsp),%rbx
   0.24%  │  0x00007f5054641466:   mov    %rbx,0x160(%rsp)
          │  0x00007f505464146e:   mov    %rdi,%rbx
          │  0x00007f5054641471:   imul   0xb8(%rsp),%rbx
          │  0x00007f505464147a:   mov    %rbx,0x168(%rsp)
   0.21%  │  0x00007f5054641482:   mov    %rdi,%rbx
          │  0x00007f5054641485:   imul   0xb0(%rsp),%rbx
          │  0x00007f505464148e:   mov    %rbx,0x170(%rsp)
   0.00%  │  0x00007f5054641496:   mov    %rdi,%rbx
   0.24%  │  0x00007f5054641499:   imul   0xa0(%rsp),%rbx
   0.00%  │  0x00007f50546414a2:   mov    %rbx,0x178(%rsp)
          │  0x00007f50546414aa:   mov    %rdi,%rbx
   0.00%  │  0x00007f50546414ad:   imul   0x98(%rsp),%rbx
   0.22%  │  0x00007f50546414b6:   mov    %rbx,0x180(%rsp)
          │  0x00007f50546414be:   mov    0x88(%rsp),%rbx
          │  0x00007f50546414c6:   imul   %rdi,%rbx
   0.00%  │  0x00007f50546414ca:   mov    %rbx,0x188(%rsp)
   0.21%  │  0x00007f50546414d2:   mov    0x80(%rsp),%rsi
   0.00%  │  0x00007f50546414da:   imul   %rdi,%rsi
          │  0x00007f50546414de:   mov    0x78(%rsp),%rax
   0.00%  │  0x00007f50546414e3:   imul   %rdi,%rax
   0.21%  │  0x00007f50546414e7:   vmovq  %xmm5,%rbx
          │  0x00007f50546414ec:   imul   %rdi,%rbx
          │  0x00007f50546414f0:   mov    %rcx,%rdi
   0.00%  │  0x00007f50546414f3:   imul   0xd0(%rsp),%rdi
   0.22%  │  0x00007f50546414fc:   mov    %rdi,0x190(%rsp)
   0.18%  │  0x00007f5054641504:   mov    %rcx,%rdi
          │  0x00007f5054641507:   imul   0xb8(%rsp),%rdi
   0.00%  │  0x00007f5054641510:   mov    %rdi,0x198(%rsp)
   0.24%  │  0x00007f5054641518:   mov    %rcx,%rdi
   0.00%  │  0x00007f505464151b:   imul   0xb0(%rsp),%rdi
          │  0x00007f5054641524:   mov    %rdi,0x1a0(%rsp)
   0.21%  │  0x00007f505464152c:   mov    %rcx,%rdi
   0.01%  │  0x00007f505464152f:   imul   0xa0(%rsp),%rdi
          │  0x00007f5054641538:   mov    %rdi,0x1a8(%rsp)
   0.26%  │  0x00007f5054641540:   mov    %rcx,%rdi
   0.00%  │  0x00007f5054641543:   imul   0x98(%rsp),%rdi
   0.00%  │  0x00007f505464154c:   mov    %rdi,0x1b0(%rsp)             ;   {no_reloc}
   0.17%  │  0x00007f5054641554:   mov    %rcx,%rbp
   0.05%  │  0x00007f5054641557:   imul   0x88(%rsp),%rbp
          │  0x00007f5054641560:   mov    0x80(%rsp),%r14
   0.01%  │  0x00007f5054641568:   imul   %rcx,%r14
   0.17%  │  0x00007f505464156c:   mov    0x78(%rsp),%rdi
   0.03%  │  0x00007f5054641571:   imul   %rcx,%rdi
          │  0x00007f5054641575:   add    %rdi,%rbx
   0.19%  │  0x00007f5054641578:   add    %r10,%rbx
   0.92%  │  0x00007f505464157b:   add    %r8,%rbx
   0.04%  │  0x00007f505464157e:   add    %r13,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@122 (line 229)
   0.04%  │  0x00007f5054641581:   vmovq  %rbx,%xmm2
   0.13%  │  0x00007f5054641586:   vmovq  %xmm5,%r10
   0.14%  │  0x00007f505464158b:   imul   %rcx,%r10
          │  0x00007f505464158f:   add    %r11,%r10
          │  0x00007f5054641592:   add    %r9,%r10
   0.06%  │  0x00007f5054641595:   add    0x90(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@81 (line 228)
   0.16%  │  0x00007f505464159d:   vmovq  %r10,%xmm10
   0.09%  │  0x00007f50546415a2:   vmovq  %xmm1,%r10
          │  0x00007f50546415a7:   mov    0x38(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@130 (line 230)
   0.01%  │  0x00007f50546415ab:   vmovq  %xmm1,%r11
   0.14%  │  0x00007f50546415b0:   mov    0x40(%r11),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@180 (line 231)
   0.08%  │  0x00007f50546415b4:   mov    %r10,%r11
          │  0x00007f50546415b7:   imul   0xd8(%rsp),%r11
   0.02%  │  0x00007f50546415c0:   mov    %r11,0x90(%rsp)
   0.13%  │  0x00007f50546415c8:   mov    %r8,%r11
   0.04%  │  0x00007f50546415cb:   imul   0xd8(%rsp),%r11
          │  0x00007f50546415d4:   mov    %r11,0x1b8(%rsp)
   0.02%  │  0x00007f50546415dc:   mov    %r8,%r11
   0.17%  │  0x00007f50546415df:   imul   0xd0(%rsp),%r11
   0.05%  │  0x00007f50546415e8:   mov    %r11,0x1c0(%rsp)
   0.02%  │  0x00007f50546415f0:   mov    %r8,%r11
   0.02%  │  0x00007f50546415f3:   imul   0xb8(%rsp),%r11
   0.16%  │  0x00007f50546415fc:   mov    %r11,0x1c8(%rsp)
   0.04%  │  0x00007f5054641604:   mov    %r8,%r11
   0.02%  │  0x00007f5054641607:   imul   0xb0(%rsp),%r11
   0.01%  │  0x00007f5054641610:   mov    %r11,0x1d0(%rsp)
   0.14%  │  0x00007f5054641618:   mov    0xa0(%rsp),%r11
   0.04%  │  0x00007f5054641620:   imul   %r8,%r11
   0.02%  │  0x00007f5054641624:   mov    %r11,0x1d8(%rsp)
   0.03%  │  0x00007f505464162c:   mov    0x98(%rsp),%r11
   0.11%  │  0x00007f5054641634:   imul   %r8,%r11
   0.05%  │  0x00007f5054641638:   mov    %r11,0x1e0(%rsp)
   0.03%  │  0x00007f5054641640:   mov    0x88(%rsp),%r11
   0.01%  │  0x00007f5054641648:   imul   %r8,%r11
   0.12%  │  0x00007f505464164c:   mov    %r11,0x1e8(%rsp)             ;   {no_reloc}
   0.09%  │  0x00007f5054641654:   mov    0x80(%rsp),%rbx
          │  0x00007f505464165c:   imul   %r8,%rbx
   0.02%  │  0x00007f5054641660:   mov    0x78(%rsp),%r11
   0.10%  │  0x00007f5054641665:   imul   %r8,%r11
   0.09%  │  0x00007f5054641669:   mov    %r11,0x1f0(%rsp)
   0.05%  │  0x00007f5054641671:   vmovq  %xmm5,%r11
   0.02%  │  0x00007f5054641676:   imul   %r8,%r11
   0.11%  │  0x00007f505464167a:   mov    %r10,%r8
   0.05%  │  0x00007f505464167d:   imul   0xd0(%rsp),%r8
   0.04%  │  0x00007f5054641686:   mov    %r8,0x1f8(%rsp)
   0.09%  │  0x00007f505464168e:   mov    %r10,%r8
   0.11%  │  0x00007f5054641691:   imul   0xb8(%rsp),%r8
   0.06%  │  0x00007f505464169a:   mov    %r8,0x200(%rsp)
   0.06%  │  0x00007f50546416a2:   mov    %r10,%r8
   0.02%  │  0x00007f50546416a5:   imul   0xb0(%rsp),%r8
   0.10%  │  0x00007f50546416ae:   mov    %r8,0x208(%rsp)
   0.13%  │  0x00007f50546416b6:   mov    %r10,%r8
          │  0x00007f50546416b9:   imul   0xa0(%rsp),%r8
   0.02%  │  0x00007f50546416c2:   mov    %r8,0x210(%rsp)
   0.20%  │  0x00007f50546416ca:   mov    0x98(%rsp),%r8
   0.04%  │  0x00007f50546416d2:   imul   %r10,%r8
          │  0x00007f50546416d6:   mov    %r8,0x218(%rsp)
   0.09%  │  0x00007f50546416de:   mov    0x88(%rsp),%rdi
   0.11%  │  0x00007f50546416e6:   imul   %r10,%rdi
   0.07%  │  0x00007f50546416ea:   mov    0x80(%rsp),%r13
          │  0x00007f50546416f2:   imul   %r10,%r13
   0.08%  │  0x00007f50546416f6:   mov    0x78(%rsp),%r8
   0.09%  │  0x00007f50546416fb:   imul   %r10,%r8
   0.07%  │  0x00007f50546416ff:   add    %r8,%r11
   0.05%  │  0x00007f5054641702:   add    %rsi,%r11
   0.08%  │  0x00007f5054641705:   add    %rbp,%r11
   0.18%  │  0x00007f5054641708:   add    0x120(%rsp),%r11
   0.27%  │  0x00007f5054641710:   add    %rdx,%r11
   0.22%  │  0x00007f5054641713:   add    0xc0(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@230 (line 231)
   0.24%  │  0x00007f505464171b:   vmovq  %r11,%xmm3
   0.43%  │  0x00007f5054641720:   vmovq  %xmm5,%r11
          │  0x00007f5054641725:   imul   %r10,%r11
          │  0x00007f5054641729:   add    %rax,%r11
          │  0x00007f505464172c:   add    %r14,%r11
   0.22%  │  0x00007f505464172f:   add    0x128(%rsp),%r11
          │  0x00007f5054641737:   add    0x148(%rsp),%r11
          │  0x00007f505464173f:   add    0xa8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@171 (line 230)
          │  0x00007f5054641747:   vmovq  %r11,%xmm4
   0.27%  │  0x00007f505464174c:   vmovq  %xmm1,%r10                   ;   {no_reloc}
          │  0x00007f5054641751:   mov    0x48(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@239 (line 232)
   0.00%  │  0x00007f5054641755:   vmovq  %xmm1,%r11
          │  0x00007f505464175a:   mov    0x50(%r11),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@308 (line 233)
   0.21%  │  0x00007f505464175e:   mov    %r10,%r11
          │  0x00007f5054641761:   imul   0xd8(%rsp),%r11
   0.01%  │  0x00007f505464176a:   mov    %r11,0xa8(%rsp)
   0.03%  │  0x00007f5054641772:   mov    %rdx,%r11
   0.20%  │  0x00007f5054641775:   imul   0xd8(%rsp),%r11
   0.00%  │  0x00007f505464177e:   mov    %rdx,%r8
          │  0x00007f5054641781:   imul   0xd0(%rsp),%r8
   0.02%  │  0x00007f505464178a:   mov    0xb8(%rsp),%r9
   0.21%  │  0x00007f5054641792:   imul   %rdx,%r9
          │  0x00007f5054641796:   mov    %r9,0xc0(%rsp)
   0.05%  │  0x00007f505464179e:   mov    0xb0(%rsp),%r9
          │  0x00007f50546417a6:   imul   %rdx,%r9
   0.18%  │  0x00007f50546417aa:   mov    %r9,0x120(%rsp)
   0.05%  │  0x00007f50546417b2:   mov    0xa0(%rsp),%r9
          │  0x00007f50546417ba:   imul   %rdx,%r9
          │  0x00007f50546417be:   mov    %r9,0x128(%rsp)
   0.24%  │  0x00007f50546417c6:   mov    0x98(%rsp),%r9
          │  0x00007f50546417ce:   imul   %rdx,%r9
          │  0x00007f50546417d2:   mov    %r9,0x148(%rsp)
   0.08%  │  0x00007f50546417da:   mov    0x88(%rsp),%r9
   0.16%  │  0x00007f50546417e2:   imul   %rdx,%r9
          │  0x00007f50546417e6:   mov    %r9,0x220(%rsp)
   0.07%  │  0x00007f50546417ee:   mov    0x80(%rsp),%r9
   0.00%  │  0x00007f50546417f6:   imul   %rdx,%r9
   0.14%  │  0x00007f50546417fa:   mov    %r9,0x228(%rsp)
   0.08%  │  0x00007f5054641802:   mov    0x78(%rsp),%r9
          │  0x00007f5054641807:   imul   %rdx,%r9
   0.00%  │  0x00007f505464180b:   vmovq  %xmm5,%rcx
   0.19%  │  0x00007f5054641810:   imul   %rdx,%rcx
   0.08%  │  0x00007f5054641814:   mov    %r10,%rdx
          │  0x00007f5054641817:   imul   0xd0(%rsp),%rdx
          │  0x00007f5054641820:   mov    %r10,%rsi
   0.13%  │  0x00007f5054641823:   imul   0xb8(%rsp),%rsi
   0.09%  │  0x00007f505464182c:   mov    0xb0(%rsp),%rax
          │  0x00007f5054641834:   imul   %r10,%rax
   0.10%  │  0x00007f5054641838:   mov    0xa0(%rsp),%rbp
   0.14%  │  0x00007f5054641840:   imul   %r10,%rbp
   0.08%  │  0x00007f5054641844:   mov    %rbp,0x230(%rsp)
   0.23%  │  0x00007f505464184c:   mov    0x98(%rsp),%rbp              ;   {no_reloc}
   0.00%  │  0x00007f5054641854:   imul   %r10,%rbp
   0.10%  │  0x00007f5054641858:   mov    %rbp,0x238(%rsp)
   0.12%  │  0x00007f5054641860:   mov    0x88(%rsp),%rbp
          │  0x00007f5054641868:   imul   %r10,%rbp
          │  0x00007f505464186c:   mov    %rbp,0x240(%rsp)
   0.22%  │  0x00007f5054641874:   mov    0x80(%rsp),%rbp
          │  0x00007f505464187c:   imul   %r10,%rbp
          │  0x00007f5054641880:   mov    0x78(%rsp),%r14
          │  0x00007f5054641885:   imul   %r10,%r14
   0.23%  │  0x00007f5054641889:   add    %r14,%rcx
   0.01%  │  0x00007f505464188c:   add    %rbx,%rcx
   0.24%  │  0x00007f505464188f:   add    %rdi,%rcx
   0.04%  │  0x00007f5054641892:   add    0x180(%rsp),%rcx
   0.32%  │  0x00007f505464189a:   add    0x1a8(%rsp),%rcx
   0.16%  │  0x00007f50546418a2:   add    0x110(%rsp),%rcx
   0.19%  │  0x00007f50546418aa:   add    0x138(%rsp),%rcx
   0.20%  │  0x00007f50546418b2:   add    0xe0(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@378 (line 233)
   0.22%  │  0x00007f50546418ba:   mov    %rcx,%r14
          │  0x00007f50546418bd:   vmovq  %xmm5,%rcx
          │  0x00007f50546418c2:   imul   %r10,%rcx
          │  0x00007f50546418c6:   add    0x1f0(%rsp),%rcx
   0.23%  │  0x00007f50546418ce:   add    %r13,%rcx
          │  0x00007f50546418d1:   add    0x188(%rsp),%rcx
          │  0x00007f50546418d9:   add    0x1b0(%rsp),%rcx
          │  0x00007f50546418e1:   add    0x118(%rsp),%rcx
   0.22%  │  0x00007f50546418e9:   add    0x140(%rsp),%rcx
   0.02%  │  0x00007f50546418f1:   add    0xc8(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@299 (line 232)
   0.12%  │  0x00007f50546418f9:   mov    %rcx,%r13
          │  0x00007f50546418fc:   vmovq  %xmm1,%r10
   0.10%  │  0x00007f5054641901:   mov    0x58(%r10),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@387 (line 234)
   0.00%  │  0x00007f5054641905:   vmovq  %xmm5,%r10
   0.11%  │  0x00007f505464190a:   imul   %rcx,%r10
   0.00%  │  0x00007f505464190e:   add    %r9,%r10
   0.11%  │  0x00007f5054641911:   add    %rbp,%r10
   0.01%  │  0x00007f5054641914:   add    0x1e8(%rsp),%r10
   0.24%  │  0x00007f505464191c:   add    0x218(%rsp),%r10
   0.01%  │  0x00007f5054641924:   add    0x178(%rsp),%r10
   0.23%  │  0x00007f505464192c:   add    0x1a0(%rsp),%r10
   0.17%  │  0x00007f5054641934:   add    0x108(%rsp),%r10
   0.16%  │  0x00007f505464193c:   add    0x130(%rsp),%r10
   0.23%  │  0x00007f5054641944:   add    0xe8(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@467 (line 234)
   0.23%  │  0x00007f505464194c:   mov    %r10,%rbp                    ;   {no_reloc}
          │  0x00007f505464194f:   mov    %rcx,%r10
          │  0x00007f5054641952:   imul   0xd8(%rsp),%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@896 (line 243)
          │  0x00007f505464195b:   vmovq  %r10,%xmm1
   0.26%  │  0x00007f5054641960:   mov    0xd0(%rsp),%r10
          │  0x00007f5054641968:   imul   %rcx,%r10
   0.00%  │  0x00007f505464196c:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@885 (line 242)
          │  0x00007f505464196f:   vmovq  %r10,%xmm5
   0.29%  │  0x00007f5054641974:   mov    0xb8(%rsp),%r9
          │  0x00007f505464197c:   imul   %rcx,%r9
          │  0x00007f5054641980:   add    %r8,%r9
          │  0x00007f5054641983:   add    0xa8(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@864 (line 241)
   0.18%  │  0x00007f505464198b:   mov    0xb0(%rsp),%r8
          │  0x00007f5054641993:   imul   %rcx,%r8
   0.00%  │  0x00007f5054641997:   add    0xc0(%rsp),%r8
          │  0x00007f505464199f:   add    %rdx,%r8
   0.22%  │  0x00007f50546419a2:   add    0x1b8(%rsp),%r8              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@833 (line 240)
          │  0x00007f50546419aa:   mov    0xa0(%rsp),%rbx
          │  0x00007f50546419b2:   imul   %rcx,%rbx
          │  0x00007f50546419b6:   add    0x120(%rsp),%rbx
   0.21%  │  0x00007f50546419be:   add    %rsi,%rbx
          │  0x00007f50546419c1:   add    0x1c0(%rsp),%rbx
   0.00%  │  0x00007f50546419c9:   add    0x90(%rsp),%rbx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@792 (line 239)
          │  0x00007f50546419d1:   mov    0x98(%rsp),%rdi
   0.20%  │  0x00007f50546419d9:   imul   %rcx,%rdi
          │  0x00007f50546419dd:   add    0x128(%rsp),%rdi
          │  0x00007f50546419e5:   add    %rax,%rdi
          │  0x00007f50546419e8:   add    0x1c8(%rsp),%rdi
   0.23%  │  0x00007f50546419f0:   add    0x1f8(%rsp),%rdi
   0.01%  │  0x00007f50546419f8:   add    0x158(%rsp),%rdi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@743 (line 238)
   0.11%  │  0x00007f5054641a00:   mov    0x88(%rsp),%r10
          │  0x00007f5054641a08:   imul   %rcx,%r10
   0.13%  │  0x00007f5054641a0c:   add    0x148(%rsp),%r10
          │  0x00007f5054641a14:   add    0x230(%rsp),%r10
   0.06%  │  0x00007f5054641a1c:   add    0x1d0(%rsp),%r10
          │  0x00007f5054641a24:   add    0x200(%rsp),%r10
   0.16%  │  0x00007f5054641a2c:   add    0x160(%rsp),%r10
   0.11%  │  0x00007f5054641a34:   add    0x150(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@686 (line 237)
   0.08%  │  0x00007f5054641a3c:   mov    0x80(%rsp),%r11
          │  0x00007f5054641a44:   imul   %rcx,%r11
   0.14%  │  0x00007f5054641a48:   add    0x220(%rsp),%r11             ;   {no_reloc}
          │  0x00007f5054641a50:   add    0x238(%rsp),%r11
   0.11%  │  0x00007f5054641a58:   add    0x1d8(%rsp),%r11
   0.01%  │  0x00007f5054641a60:   add    0x208(%rsp),%r11
   0.15%  │  0x00007f5054641a68:   add    0x168(%rsp),%r11
   0.11%  │  0x00007f5054641a70:   add    0x190(%rsp),%r11
   0.19%  │  0x00007f5054641a78:   add    0xf8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@621 (line 236)
   0.20%  │  0x00007f5054641a80:   mov    0x78(%rsp),%rsi
   0.04%  │  0x00007f5054641a85:   imul   %rcx,%rsi
          │  0x00007f5054641a89:   add    0x228(%rsp),%rsi
   0.02%  │  0x00007f5054641a91:   add    0x240(%rsp),%rsi
   0.19%  │  0x00007f5054641a99:   add    0x1e0(%rsp),%rsi
   0.08%  │  0x00007f5054641aa1:   add    0x210(%rsp),%rsi
   0.12%  │  0x00007f5054641aa9:   add    0x170(%rsp),%rsi
   0.16%  │  0x00007f5054641ab1:   add    0x198(%rsp),%rsi
   0.21%  │  0x00007f5054641ab9:   add    0x100(%rsp),%rsi
   0.26%  │  0x00007f5054641ac1:   add    0xf0(%rsp),%rsi              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@548 (line 235)
   0.19%  │  0x00007f5054641ac9:   vmovq  %xmm0,%rdx
          │  0x00007f5054641ace:   vmovsd %xmm2,(%rsp)
   0.04%  │  0x00007f5054641ad3:   vmovsd %xmm4,0x8(%rsp)
   0.05%  │  0x00007f5054641ad9:   vmovsd %xmm3,0x10(%rsp)
   0.20%  │  0x00007f5054641adf:   mov    %r13,0x18(%rsp)
   0.07%  │  0x00007f5054641ae4:   mov    %r14,0x20(%rsp)
   0.05%  │  0x00007f5054641ae9:   mov    %rbp,0x28(%rsp)
   0.07%  │  0x00007f5054641aee:   mov    %rsi,0x30(%rsp)
   0.26%  │  0x00007f5054641af3:   mov    %r11,0x38(%rsp)
   0.02%  │  0x00007f5054641af8:   mov    %r10,0x40(%rsp)
   0.08%  │  0x00007f5054641afd:   mov    %rdi,0x48(%rsp)
   0.05%  │  0x00007f5054641b02:   mov    %rbx,0x50(%rsp)
   0.13%  │  0x00007f5054641b07:   mov    %r8,0x58(%rsp)
   0.02%  │  0x00007f5054641b0c:   mov    %r9,0x60(%rsp)
   0.12%  │  0x00007f5054641b11:   vmovsd %xmm5,0x68(%rsp)
   0.08%  │  0x00007f5054641b17:   vmovsd %xmm1,0x70(%rsp)
   0.17%  │  0x00007f5054641b1d:   vmovq  %xmm6,%rsi
   0.01%  │  0x00007f5054641b22:   vmovq  %xmm7,%rcx
   0.01%  │  0x00007f5054641b27:   vmovq  %xmm9,%r8
   0.04%  │  0x00007f5054641b2c:   vmovq  %xmm8,%r9
   0.17%  │  0x00007f5054641b31:   vmovq  %xmm10,%rdi
   0.01%  │  0x00007f5054641b36:   nop
   0.01%  │  0x00007f5054641b37:   call   0x00007f50540c4380           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │                                                            ;   {optimized virtual_call}
   0.01%  │  0x00007f5054641b3c:   nopl   0xbac(%rax,%rax,1)           ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │                                                            ;   {other}
          │  0x00007f5054641b44:   add    $0x260,%rsp
   0.24%  │  0x00007f5054641b4b:   pop    %rbp
   0.02%  │  0x00007f5054641b4c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f5054641b53:   ja     0x00007f5054641bf4
   0.18%  │  0x00007f5054641b59:   ret    
          ↘  0x00007f5054641b5a:   mov    %rsi,%rbp
             0x00007f5054641b5d:   mov    %rcx,0x80(%rsp)
             0x00007f5054641b65:   mov    %r8,0x88(%rsp)
             0x00007f5054641b6d:   mov    %rdx,0x90(%rsp)
             0x00007f5054641b75:   mov    $0xffffffe4,%esi
             0x00007f5054641b7a:   nop
             0x00007f5054641b7b:   call   0x00007f50540c9f00           ; ImmutableOopMap {rbp=Oop [128]=Oop [136]=Oop [144]=Oop }
                                                                       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  34.06%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 612 

             # parm18:   [sp+0x88]   = long
             # parm19:   [sp+0x90]   = long
             0x00007f505463bea0:   mov    0x8(%rsi),%r10d
             0x00007f505463bea4:   movabs $0x7f4fdb000000,%r11
             0x00007f505463beae:   add    %r11,%r10
             0x00007f505463beb1:   cmp    %r10,%rax
             0x00007f505463beb4:   jne    0x00007f50540c4080           ;   {runtime_call ic_miss_stub}
             0x00007f505463beba:   xchg   %ax,%ax
             0x00007f505463bebc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.23%     0x00007f505463bec0:   mov    %eax,-0x14000(%rsp)
   0.03%     0x00007f505463bec7:   push   %rbp
   0.21%     0x00007f505463bec8:   sub    $0x10,%rsp
   0.09%     0x00007f505463becc:   cmpl   $0x1,0x20(%r15)
   0.03%     0x00007f505463bed4:   jne    0x00007f505463c252           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@-1 (line 68)
   0.18%     0x00007f505463beda:   imul   $0x13,0x88(%rsp),%rsi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@8 (line 70)
   0.40%     0x00007f505463bee3:   imul   $0x13,0x90(%rsp),%r11        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@39 (line 74)
   0.13%     0x00007f505463beec:   mov    %rsi,%r10
   0.01%     0x00007f505463beef:   sar    $0x15,%r10
   0.17%     0x00007f505463bef3:   mov    0x40(%rsp),%rbx
   0.03%     0x00007f505463bef8:   add    %r10,%rbx
   0.21%     0x00007f505463befb:   mov    %r11,%rax
   0.02%     0x00007f505463befe:   sar    $0x15,%rax
   0.08%     0x00007f505463bf02:   mov    0x48(%rsp),%r10
   0.05%     0x00007f505463bf07:   add    %rax,%r10
   0.27%     0x00007f505463bf0a:   shl    $0x5,%r11
   0.02%     0x00007f505463bf0e:   and    $0x3ffffff,%r11
   0.16%     0x00007f505463bf15:   add    %r11,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@52 (line 75)
   0.51%     0x00007f505463bf18:   lea    0x2000000(%rbx),%rax
   0.25%     0x00007f505463bf1f:   mov    %rax,%r11
   0.02%     0x00007f505463bf22:   sar    $0x1a,%r11
   0.08%     0x00007f505463bf26:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@90 (line 80)
   0.53%     0x00007f505463bf29:   lea    0x2000000(%r10),%rbp
   0.10%     0x00007f505463bf30:   mov    %rbp,%r11
   0.02%     0x00007f505463bf33:   sar    $0x1a,%r11
   0.12%     0x00007f505463bf37:   mov    0x50(%rsp),%r13
   0.17%     0x00007f505463bf3c:   add    %r11,%r13
   0.10%     0x00007f505463bf3f:   imul   $0x13,%r13,%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@126 (line 86)
   1.11%     0x00007f505463bf43:   mov    %r13,%r11
   0.03%     0x00007f505463bf46:   shl    $0x5,%r11
   0.05%     0x00007f505463bf4a:   and    $0x3ffffff,%r11
   0.02%     0x00007f505463bf51:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@138 (line 87)
   0.69%     0x00007f505463bf54:   lea    0x2000000(%rcx),%r14
   0.11%     0x00007f505463bf5b:   mov    %r14,%r11
   0.02%     0x00007f505463bf5e:   and    $0xfffffffffc000000,%r11
   0.00%     0x00007f505463bf65:   sub    %r11,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@352 (line 115)
   0.21%     0x00007f505463bf68:   mov    0xc(%rdx),%r11d              ; implicit exception: dispatches to 0x00007f505463c224
   0.07%     0x00007f505463bf6c:   vmovq  %rdi,%xmm4
   0.01%     0x00007f505463bf71:   vmovq  %r9,%xmm3
             0x00007f505463bf76:   vmovq  %r8,%xmm2
   0.23%     0x00007f505463bf7b:   vmovq  %rcx,%xmm1
   0.25%     0x00007f505463bf80:   vmovq  %rdx,%xmm0
   0.02%     0x00007f505463bf85:   imul   $0x13,0x80(%rsp),%rdi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@310 (line 110)
   0.00%     0x00007f505463bf8e:   imul   $0x13,0x78(%rsp),%r8         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@279 (line 106)
             0x00007f505463bf94:   mov    %rdi,%r9
   0.28%     0x00007f505463bf97:   shl    $0x5,%r9
   0.01%     0x00007f505463bf9b:   mov    %r8,%rcx
             0x00007f505463bf9e:   shl    $0x5,%rcx
             0x00007f505463bfa2:   and    $0x3ffffff,%r9
   0.30%     0x00007f505463bfa9:   and    $0x3ffffff,%rcx
   0.00%     0x00007f505463bfb0:   sar    $0x15,%r8                    ;   {no_reloc}
             0x00007f505463bfb4:   mov    0x30(%rsp),%rdx
             0x00007f505463bfb9:   add    %r8,%rdx
   0.30%     0x00007f505463bfbc:   add    %r9,%rdx
   0.00%     0x00007f505463bfbf:   mov    %rdx,%r8
             0x00007f505463bfc2:   sar    $0x15,%rdi
             0x00007f505463bfc6:   sar    $0x1a,%r14
   0.30%     0x00007f505463bfca:   sar    $0x15,%r13
   0.00%     0x00007f505463bfce:   vmovq  %xmm2,%r9
             0x00007f505463bfd3:   add    %r13,%r9
             0x00007f505463bfd6:   mov    %r9,%r13
   0.32%     0x00007f505463bfd9:   and    $0xfffffffffc000000,%rbp
   0.01%     0x00007f505463bfe0:   sub    %rbp,%r10
             0x00007f505463bfe3:   and    $0xfffffffffc000000,%rax
             0x00007f505463bfe9:   sub    %rax,%rbx
   0.28%     0x00007f505463bfec:   shl    $0x5,%rsi
   0.00%     0x00007f505463bff0:   imul   $0x13,0x58(%rsp),%rdx        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@155 (line 90)
             0x00007f505463bff6:   and    $0x3ffffff,%rsi
             0x00007f505463bffd:   mov    0x38(%rsp),%r9
   0.38%     0x00007f505463c002:   add    %rsi,%r9
   0.01%     0x00007f505463c005:   add    %rdi,%r9
             0x00007f505463c008:   mov    %rdx,%rdi
             0x00007f505463c00b:   shl    $0x5,%rdi
   0.29%     0x00007f505463c00f:   sar    $0x15,%rdx
   0.01%     0x00007f505463c013:   vmovq  %xmm3,%rsi
             0x00007f505463c018:   add    %rdx,%rsi
             0x00007f505463c01b:   mov    %rsi,%rax
   0.28%     0x00007f505463c01e:   and    $0x3ffffff,%rdi
   0.01%     0x00007f505463c025:   lea    (%rdi,%r13,1),%rbp
   0.00%     0x00007f505463c029:   add    %r14,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@358 (line 116)
             0x00007f505463c02c:   imul   $0x13,0x60(%rsp),%rdi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@186 (line 94)
   0.32%     0x00007f505463c032:   lea    0x2000000(%rbp),%rdx
   0.01%     0x00007f505463c039:   mov    %rdi,%rsi
             0x00007f505463c03c:   shl    $0x5,%rsi
             0x00007f505463c040:   mov    %rdx,%r13
   0.27%     0x00007f505463c043:   and    $0xfffffffffc000000,%r13
   0.00%     0x00007f505463c04a:   sub    %r13,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@379 (line 119)
             0x00007f505463c04d:   mov    %rbp,%r14
             0x00007f505463c050:   and    $0x3ffffff,%rsi
   0.27%     0x00007f505463c057:   add    %rsi,%rax
   0.00%     0x00007f505463c05a:   sar    $0x1a,%rdx
             0x00007f505463c05e:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@386 (line 120)
             0x00007f505463c061:   sar    $0x15,%rdi
   0.33%     0x00007f505463c065:   vmovq  %xmm4,%rdx
             0x00007f505463c06a:   add    %rdi,%rdx
             0x00007f505463c06d:   lea    0x2000000(%rax),%rsi
             0x00007f505463c074:   imul   $0x13,0x68(%rsp),%rbp        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@217 (line 98)
   0.32%     0x00007f505463c07a:   mov    %rsi,%rdi
   0.01%     0x00007f505463c07d:   and    $0xfffffffffc000000,%rdi
             0x00007f505463c084:   sub    %rdi,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@407 (line 123)
             0x00007f505463c087:   vmovq  %rax,%xmm2
   0.30%     0x00007f505463c08c:   mov    %rbp,%rdi
   0.01%     0x00007f505463c08f:   shl    $0x5,%rdi
             0x00007f505463c093:   sar    $0x15,%rbp
             0x00007f505463c097:   mov    0x20(%rsp),%rax
   0.30%     0x00007f505463c09c:   add    %rbp,%rax
   0.01%     0x00007f505463c09f:   mov    %rax,%rbp
             0x00007f505463c0a2:   and    $0x3ffffff,%rdi
             0x00007f505463c0a9:   add    %rdi,%rdx
   0.31%     0x00007f505463c0ac:   sar    $0x1a,%rsi
   0.01%     0x00007f505463c0b0:   add    %rsi,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@414 (line 124)
                                                                       ;   {no_reloc}
             0x00007f505463c0b3:   mov    %rdx,%r13
             0x00007f505463c0b6:   imul   $0x13,0x70(%rsp),%rdi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@248 (line 102)
   0.29%     0x00007f505463c0bc:   add    $0x2000000,%rdx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@422 (line 126)
   0.01%     0x00007f505463c0c3:   mov    %rdi,%rsi
             0x00007f505463c0c6:   shl    $0x5,%rsi
             0x00007f505463c0ca:   mov    %rdx,%rax
   0.35%     0x00007f505463c0cd:   and    $0xfffffffffc000000,%rax
   0.01%     0x00007f505463c0d3:   sub    %rax,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@435 (line 127)
             0x00007f505463c0d6:   and    $0x3ffffff,%rsi
             0x00007f505463c0dd:   add    %rsi,%rbp
   0.28%     0x00007f505463c0e0:   sar    $0x1a,%rdx
   0.00%     0x00007f505463c0e4:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@442 (line 128)
             0x00007f505463c0e7:   sar    $0x15,%rdi
             0x00007f505463c0eb:   mov    0x28(%rsp),%rdx
   0.28%     0x00007f505463c0f0:   add    %rdi,%rdx
   0.01%     0x00007f505463c0f3:   add    %rcx,%rdx
             0x00007f505463c0f6:   lea    0x2000000(%rbp),%rcx
             0x00007f505463c0fd:   mov    %rcx,%rdi
   0.36%     0x00007f505463c100:   sar    $0x1a,%rdi
   0.01%     0x00007f505463c104:   add    %rdi,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@470 (line 132)
             0x00007f505463c107:   and    $0xfffffffffc000000,%rcx
             0x00007f505463c10e:   sub    %rcx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@463 (line 131)
   0.31%     0x00007f505463c111:   mov    %rbp,%rcx
   0.01%     0x00007f505463c114:   lea    0x2000000(%rdx),%rdi
             0x00007f505463c11b:   mov    %rdi,%rsi
             0x00007f505463c11e:   sar    $0x1a,%rsi
   0.29%     0x00007f505463c122:   lea    (%r8,%rsi,1),%rax
   0.00%     0x00007f505463c126:   and    $0xfffffffffc000000,%rdi
             0x00007f505463c12d:   sub    %rdi,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@491 (line 135)
             0x00007f505463c130:   mov    %rdx,%r8
   0.30%     0x00007f505463c133:   lea    0x2000000(%rax),%rdi
   0.01%     0x00007f505463c13a:   mov    %rdi,%rdx
             0x00007f505463c13d:   sar    $0x1a,%rdx
             0x00007f505463c141:   lea    (%r9,%rdx,1),%rsi
   0.32%     0x00007f505463c145:   and    $0xfffffffffc000000,%rdi
   0.01%     0x00007f505463c14c:   sub    %rdi,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@519 (line 139)
             0x00007f505463c14f:   lea    0x2000000(%rsi),%rdi
             0x00007f505463c156:   mov    %rdi,%rdx
   0.35%     0x00007f505463c159:   sar    $0x1a,%rdx
   0.01%     0x00007f505463c15d:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@554 (line 144)
   0.01%     0x00007f505463c160:   and    $0xfffffffffc000000,%rdi
             0x00007f505463c167:   sub    %rdi,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@547 (line 143)
   0.25%     0x00007f505463c16a:   mov    %rsi,%rdi
   0.01%     0x00007f505463c16d:   lea    0x2000000(%rbx),%rdx
   0.03%     0x00007f505463c174:   mov    %rdx,%rsi
             0x00007f505463c177:   sar    $0x1a,%rsi
   0.40%     0x00007f505463c17b:   add    %rsi,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@582 (line 148)
   0.03%     0x00007f505463c17e:   and    $0xfffffffffc000000,%rdx
   0.01%     0x00007f505463c185:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@575 (line 147)
             0x00007f505463c188:   cmp    $0x9,%r11d
          ╭  0x00007f505463c18c:   jbe    0x00007f505463c1d8
   0.25%  │  0x00007f505463c18e:   vmovq  %xmm0,%r11
   0.04%  │  0x00007f505463c193:   vmovq  %xmm1,%rdx
   0.01%  │  0x00007f505463c198:   mov    %rdx,0x10(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │  0x00007f505463c19c:   mov    %r14,0x18(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@593 (line 151)
   0.29%  │  0x00007f505463c1a0:   vmovq  %xmm2,%rdx
   0.04%  │  0x00007f505463c1a5:   mov    %rdx,0x20(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@598 (line 152)
   0.01%  │  0x00007f505463c1a9:   mov    %r13,0x28(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@603 (line 153)
          │  0x00007f505463c1ad:   mov    %rbp,0x30(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@608 (line 154)
   0.30%  │  0x00007f505463c1b1:   mov    %r8,0x38(%r11)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@613 (line 155)
          │                                                            ;   {no_reloc}
   0.04%  │  0x00007f505463c1b5:   mov    %rax,0x40(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@619 (line 156)
   0.02%  │  0x00007f505463c1b9:   mov    %rdi,0x48(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@625 (line 157)
          │  0x00007f505463c1bd:   mov    %rbx,0x50(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@631 (line 158)
   0.27%  │  0x00007f505463c1c1:   mov    %r10,0x58(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@637 (line 159)
   0.04%  │  0x00007f505463c1c5:   add    $0x10,%rsp
   0.00%  │  0x00007f505463c1c9:   pop    %rbp
          │  0x00007f505463c1ca:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f505463c1d1:   ja     0x00007f505463c23c
   0.31%  │  0x00007f505463c1d7:   ret    
          ↘  0x00007f505463c1d8:   mov    $0xffffffe4,%esi
             0x00007f505463c1dd:   vmovq  %xmm0,%rbp
             0x00007f505463c1e2:   mov    %r14,0x20(%rsp)
             0x00007f505463c1e7:   vmovsd %xmm2,0x28(%rsp)
             0x00007f505463c1ed:   mov    %r13,0x30(%rsp)
             0x00007f505463c1f2:   mov    %rbx,0x38(%rsp)
             0x00007f505463c1f7:   mov    %r10,0x40(%rsp)
             0x00007f505463c1fc:   vmovsd %xmm1,0x50(%rsp)
             0x00007f505463c202:   mov    %rcx,0x58(%rsp)
             0x00007f505463c207:   mov    %r8,0x60(%rsp)
....................................................................................................
  17.80%  <total for region 2>

....[Hottest Regions]...............................................................................
  34.06%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 646 
  17.80%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 612 
   8.88%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   8.07%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 664 
   3.46%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 649 
   2.14%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 854 
   1.89%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 693 
   1.65%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 701 
   1.44%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 701 
   1.44%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 693 
   1.09%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 693 
   1.04%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 693 
   1.01%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 693 
   1.00%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 693 
   0.98%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 693 
   0.94%              kernel  [unknown] 
   0.93%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 701 
   0.85%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 701 
   0.83%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 701 
   0.80%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 693 
   9.68%  <...other 517 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  34.06%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 646 
  17.80%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 612 
  11.56%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 693 
   8.88%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   8.07%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 664 
   7.45%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 701 
   3.46%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 649 
   2.31%         c2, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 699 
   2.31%              kernel  [unknown] 
   2.16%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 854 
   0.54%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 658 
   0.50%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 800 
   0.12%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::asByteArray, version 2, compile id 913 
   0.10%        runtime stub  StubRoutines::sha512_implCompress 
   0.07%         c2, level 4  sun.security.util.math.IntegerFieldModuloP::getElement, version 2, compile id 967 
   0.05%         c2, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::mutable, version 2, compile id 950 
   0.03%         c2, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1020 
   0.03%         c2, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::asAffine, version 2, compile id 987 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%         c2, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 4, compile id 991 
   0.44%  <...other 106 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.37%         c2, level 4
   9.00%        runtime stub
   2.31%              kernel
   0.16%           libjvm.so
   0.06%        libc-2.31.so
   0.03%         interpreter
   0.02%                    
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%    Unknown, level 0
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed25519, messageLength = 512)

# Run progress: 12.50% complete, ETA 00:13:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2350.359 us/op
# Warmup Iteration   2: 1276.587 us/op
# Warmup Iteration   3: 1270.443 us/op
# Warmup Iteration   4: 1270.966 us/op
# Warmup Iteration   5: 1272.717 us/op
Iteration   1: 1270.747 us/op
Iteration   2: 1269.221 us/op
Iteration   3: 1270.869 us/op
Iteration   4: 1275.333 us/op
Iteration   5: 1270.399 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  1271.314 ±(99.9%) 9.008 us/op [Average]
  (min, avg, max) = (1269.221, 1271.314, 1275.333), stdev = 2.339
  CI (99.9%): [1262.306, 1280.322] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 254238 total address lines.
Perf output processed (skipped 56.927 seconds):
 Column 1: cycles (50605 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 660 

             # parm2:    r8:r8     = &apos;[J&apos;
             #           [sp+0x270]  (sp of caller)
             0x00007fd31063e240:   mov    0x8(%rsi),%r10d
             0x00007fd31063e244:   movabs $0x7fd293000000,%r11
             0x00007fd31063e24e:   add    %r11,%r10
             0x00007fd31063e251:   cmp    %r10,%rax
             0x00007fd31063e254:   jne    0x00007fd3100c4080           ;   {runtime_call ic_miss_stub}
             0x00007fd31063e25a:   xchg   %ax,%ax
             0x00007fd31063e25c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.06%     0x00007fd31063e260:   mov    %eax,-0x14000(%rsp)
   0.25%     0x00007fd31063e267:   push   %rbp
   0.06%     0x00007fd31063e268:   sub    $0x260,%rsp
   0.11%     0x00007fd31063e26f:   nop
   0.08%     0x00007fd31063e270:   cmpl   $0x0,0x20(%r15)
   0.03%     0x00007fd31063e278:   jne    0x00007fd31063ed0a           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@-1 (line 225)
   0.08%     0x00007fd31063e27e:   vmovq  %r8,%xmm0
   0.01%     0x00007fd31063e283:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007fd31063eccc
   0.10%     0x00007fd31063e287:   cmp    $0x9,%r10d
          ╭  0x00007fd31063e28b:   jbe    0x00007fd31063ec5a
   0.03%  │  0x00007fd31063e291:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007fd31063ece0
   0.08%  │  0x00007fd31063e295:   mov    0x10(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
   0.03%  │  0x00007fd31063e299:   nopl   0x0(%rax)
   0.08%  │  0x00007fd31063e2a0:   cmp    $0x9,%r11d
          │  0x00007fd31063e2a4:   jbe    0x00007fd31063ec88
   0.02%  │  0x00007fd31063e2aa:   vmovq  %rsi,%xmm6
   0.08%  │  0x00007fd31063e2af:   vmovq  %rcx,%xmm1
   0.02%  │  0x00007fd31063e2b4:   mov    0x10(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@5 (line 225)
   0.08%  │  0x00007fd31063e2b8:   mov    0x18(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@18 (line 226)
   0.04%  │  0x00007fd31063e2bc:   vmovq  %r10,%xmm5
   0.07%  │  0x00007fd31063e2c1:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@6 (line 225)
   0.03%  │  0x00007fd31063e2c5:   vmovq  %r10,%xmm7
   0.15%  │  0x00007fd31063e2ca:   mov    %r11,%rdi
   0.02%  │  0x00007fd31063e2cd:   mov    %r8,0x78(%rsp)
   0.05%  │  0x00007fd31063e2d2:   imul   %r8,%rdi
   0.01%  │  0x00007fd31063e2d6:   mov    0x20(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@43 (line 227)
   0.11%  │  0x00007fd31063e2da:   mov    0x28(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@76 (line 228)
   0.03%  │  0x00007fd31063e2de:   mov    %r11,%rsi
   0.07%  │  0x00007fd31063e2e1:   mov    %r10,0x80(%rsp)
   0.01%  │  0x00007fd31063e2e9:   imul   %r10,%rsi
   0.12%  │  0x00007fd31063e2ed:   mov    %r11,%r10
   0.05%  │  0x00007fd31063e2f0:   mov    %r8,0x88(%rsp)
   0.07%  │  0x00007fd31063e2f8:   imul   %r8,%r11
   0.01%  │  0x00007fd31063e2fc:   mov    %r11,0x90(%rsp)
   0.12%  │  0x00007fd31063e304:   mov    0x30(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@117 (line 229)
   0.04%  │  0x00007fd31063e308:   mov    %r11,0x98(%rsp)
   0.08%  │  0x00007fd31063e310:   mov    0x38(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@166 (line 230)
   0.02%  │  0x00007fd31063e314:   mov    %r11,0xa0(%rsp)
   0.13%  │  0x00007fd31063e31c:   mov    %r10,%r13
   0.03%  │  0x00007fd31063e31f:   imul   0x98(%rsp),%r13
   0.34%  │  0x00007fd31063e328:   mov    %r10,%r11
   0.01%  │  0x00007fd31063e32b:   imul   0xa0(%rsp),%r11
   0.21%  │  0x00007fd31063e334:   mov    %r11,0xa8(%rsp)
   0.29%  │  0x00007fd31063e33c:   mov    0x40(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@225 (line 231)
   0.06%  │  0x00007fd31063e340:   mov    %r11,0xb0(%rsp)
   0.00%  │  0x00007fd31063e348:   mov    0x48(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@294 (line 232)
   0.02%  │  0x00007fd31063e34c:   mov    %r11,0xb8(%rsp)              ;   {no_reloc}
   0.16%  │  0x00007fd31063e354:   mov    %r10,%r11
   0.03%  │  0x00007fd31063e357:   imul   0xb0(%rsp),%r11
   0.07%  │  0x00007fd31063e360:   mov    %r11,0xc0(%rsp)
   0.19%  │  0x00007fd31063e368:   mov    %r10,%r11
   0.05%  │  0x00007fd31063e36b:   imul   0xb8(%rsp),%r11
   0.09%  │  0x00007fd31063e374:   mov    %r11,0xc8(%rsp)
   0.23%  │  0x00007fd31063e37c:   mov    0x50(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@373 (line 233)
   0.04%  │  0x00007fd31063e380:   mov    %r11,0xd0(%rsp)
   0.01%  │  0x00007fd31063e388:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@462 (line 234)
   0.01%  │  0x00007fd31063e38c:   mov    %r11,0xd8(%rsp)
   0.14%  │  0x00007fd31063e394:   mov    %r10,%r11
   0.04%  │  0x00007fd31063e397:   imul   0xd0(%rsp),%r11
   0.04%  │  0x00007fd31063e3a0:   mov    %r11,0xe0(%rsp)
   0.35%  │  0x00007fd31063e3a8:   imul   0xd8(%rsp),%r10
   0.05%  │  0x00007fd31063e3b1:   mov    %r10,0xe8(%rsp)
   0.21%  │  0x00007fd31063e3b9:   mov    0x18(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@14 (line 226)
   0.00%  │  0x00007fd31063e3bd:   vmovq  %xmm1,%r10
   0.04%  │  0x00007fd31063e3c2:   mov    0x20(%r10),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@31 (line 227)
   0.02%  │  0x00007fd31063e3c6:   mov    %rcx,%r10
   0.16%  │  0x00007fd31063e3c9:   imul   0xd8(%rsp),%r10
   0.01%  │  0x00007fd31063e3d2:   mov    %r10,0xf0(%rsp)
   0.13%  │  0x00007fd31063e3da:   mov    %r8,%r10
   0.01%  │  0x00007fd31063e3dd:   imul   0xd8(%rsp),%r10
   0.09%  │  0x00007fd31063e3e6:   mov    %r10,0xf8(%rsp)
   0.03%  │  0x00007fd31063e3ee:   mov    %r8,%r10
   0.08%  │  0x00007fd31063e3f1:   imul   0xd0(%rsp),%r10
   0.01%  │  0x00007fd31063e3fa:   mov    %r10,0x100(%rsp)
   0.10%  │  0x00007fd31063e402:   mov    %r8,%r10
   0.02%  │  0x00007fd31063e405:   imul   0xb8(%rsp),%r10
   0.08%  │  0x00007fd31063e40e:   mov    %r10,0x108(%rsp)
   0.03%  │  0x00007fd31063e416:   mov    %r8,%r10
   0.08%  │  0x00007fd31063e419:   imul   0xb0(%rsp),%r10
   0.02%  │  0x00007fd31063e422:   mov    %r10,0x110(%rsp)
   0.11%  │  0x00007fd31063e42a:   mov    %r8,%r10
   0.01%  │  0x00007fd31063e42d:   imul   0xa0(%rsp),%r10
   0.09%  │  0x00007fd31063e436:   mov    %r10,0x118(%rsp)
   0.03%  │  0x00007fd31063e43e:   mov    %r8,%r10
   0.08%  │  0x00007fd31063e441:   imul   0x98(%rsp),%r10
   0.02%  │  0x00007fd31063e44a:   mov    %r10,0x120(%rsp)
   0.12%  │  0x00007fd31063e452:   mov    %r8,%r10                     ;   {no_reloc}
   0.01%  │  0x00007fd31063e455:   imul   0x88(%rsp),%r10
   0.11%  │  0x00007fd31063e45e:   mov    %r10,0x128(%rsp)
   0.11%  │  0x00007fd31063e466:   mov    %r8,%r10
   0.08%  │  0x00007fd31063e469:   imul   0x80(%rsp),%r10
   0.01%  │  0x00007fd31063e472:   mov    0x78(%rsp),%r11
   0.08%  │  0x00007fd31063e477:   imul   %r8,%r11
   0.07%  │  0x00007fd31063e47b:   vmovq  %xmm5,%r9
   0.09%  │  0x00007fd31063e480:   imul   %r8,%r9
   0.01%  │  0x00007fd31063e484:   mov    %r9,%rax
   0.08%  │  0x00007fd31063e487:   mov    %rcx,%r8
   0.06%  │  0x00007fd31063e48a:   imul   0xd0(%rsp),%r8
   0.06%  │  0x00007fd31063e493:   mov    %r8,0x130(%rsp)
   0.29%  │  0x00007fd31063e49b:   mov    %rcx,%r8
   0.00%  │  0x00007fd31063e49e:   imul   0xb8(%rsp),%r8
   0.00%  │  0x00007fd31063e4a7:   mov    %r8,0x138(%rsp)
   0.21%  │  0x00007fd31063e4af:   mov    %rcx,%r8
          │  0x00007fd31063e4b2:   imul   0xb0(%rsp),%r8
   0.01%  │  0x00007fd31063e4bb:   mov    %r8,0x140(%rsp)
   0.22%  │  0x00007fd31063e4c3:   mov    %rcx,%rdx
   0.01%  │  0x00007fd31063e4c6:   imul   0xa0(%rsp),%rdx
          │  0x00007fd31063e4cf:   mov    %rcx,%r8
          │  0x00007fd31063e4d2:   imul   0x98(%rsp),%r8
   0.24%  │  0x00007fd31063e4db:   mov    %r8,0x148(%rsp)
   0.22%  │  0x00007fd31063e4e3:   mov    %rcx,%r8
          │  0x00007fd31063e4e6:   imul   0x88(%rsp),%r8
   0.00%  │  0x00007fd31063e4ef:   mov    %rcx,%r9
   0.02%  │  0x00007fd31063e4f2:   imul   0x80(%rsp),%r9
   0.20%  │  0x00007fd31063e4fb:   mov    %rcx,%rbx
          │  0x00007fd31063e4fe:   imul   0x78(%rsp),%rbx
          │  0x00007fd31063e504:   add    %rbx,%rax
   0.25%  │  0x00007fd31063e507:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@48 (line 227)
   0.22%  │  0x00007fd31063e50a:   vmovq  %rax,%xmm8
   0.45%  │  0x00007fd31063e50f:   vmovq  %xmm5,%rbx
          │  0x00007fd31063e514:   imul   %rcx,%rbx
          │  0x00007fd31063e518:   add    %rdi,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@23 (line 226)
          │  0x00007fd31063e51b:   vmovq  %rbx,%xmm9
   0.23%  │  0x00007fd31063e520:   vmovq  %xmm1,%rcx
   0.01%  │  0x00007fd31063e525:   mov    0x28(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@56 (line 228)
   0.00%  │  0x00007fd31063e529:   vmovq  %xmm1,%rbx
          │  0x00007fd31063e52e:   mov    0x30(%rbx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@89 (line 229)
   0.21%  │  0x00007fd31063e532:   mov    %rcx,%rbx
   0.00%  │  0x00007fd31063e535:   imul   0xd8(%rsp),%rbx
   0.01%  │  0x00007fd31063e53e:   mov    %rbx,0x150(%rsp)
   0.00%  │  0x00007fd31063e546:   mov    %rdi,%rbx
   0.20%  │  0x00007fd31063e549:   imul   0xd8(%rsp),%rbx              ;   {no_reloc}
          │  0x00007fd31063e552:   mov    %rbx,0x158(%rsp)
   0.00%  │  0x00007fd31063e55a:   mov    %rdi,%rbx
          │  0x00007fd31063e55d:   imul   0xd0(%rsp),%rbx
   0.21%  │  0x00007fd31063e566:   mov    %rbx,0x160(%rsp)
   0.01%  │  0x00007fd31063e56e:   mov    %rdi,%rbx
          │  0x00007fd31063e571:   imul   0xb8(%rsp),%rbx
          │  0x00007fd31063e57a:   mov    %rbx,0x168(%rsp)
   0.25%  │  0x00007fd31063e582:   mov    %rdi,%rbx
          │  0x00007fd31063e585:   imul   0xb0(%rsp),%rbx
          │  0x00007fd31063e58e:   mov    %rbx,0x170(%rsp)
   0.01%  │  0x00007fd31063e596:   mov    %rdi,%rbx
   0.22%  │  0x00007fd31063e599:   imul   0xa0(%rsp),%rbx
          │  0x00007fd31063e5a2:   mov    %rbx,0x178(%rsp)
   0.01%  │  0x00007fd31063e5aa:   mov    %rdi,%rbx
          │  0x00007fd31063e5ad:   imul   0x98(%rsp),%rbx
   0.18%  │  0x00007fd31063e5b6:   mov    %rbx,0x180(%rsp)
   0.00%  │  0x00007fd31063e5be:   mov    0x88(%rsp),%rbx
          │  0x00007fd31063e5c6:   imul   %rdi,%rbx
          │  0x00007fd31063e5ca:   mov    %rbx,0x188(%rsp)
   0.16%  │  0x00007fd31063e5d2:   mov    0x80(%rsp),%rsi
   0.00%  │  0x00007fd31063e5da:   imul   %rdi,%rsi
          │  0x00007fd31063e5de:   mov    0x78(%rsp),%rax
          │  0x00007fd31063e5e3:   imul   %rdi,%rax
   0.22%  │  0x00007fd31063e5e7:   vmovq  %xmm5,%rbx
          │  0x00007fd31063e5ec:   imul   %rdi,%rbx
          │  0x00007fd31063e5f0:   mov    %rcx,%rdi
   0.00%  │  0x00007fd31063e5f3:   imul   0xd0(%rsp),%rdi
   0.30%  │  0x00007fd31063e5fc:   mov    %rdi,0x190(%rsp)
   0.18%  │  0x00007fd31063e604:   mov    %rcx,%rdi
          │  0x00007fd31063e607:   imul   0xb8(%rsp),%rdi
          │  0x00007fd31063e610:   mov    %rdi,0x198(%rsp)
   0.27%  │  0x00007fd31063e618:   mov    %rcx,%rdi
   0.00%  │  0x00007fd31063e61b:   imul   0xb0(%rsp),%rdi
          │  0x00007fd31063e624:   mov    %rdi,0x1a0(%rsp)
   0.23%  │  0x00007fd31063e62c:   mov    %rcx,%rdi
          │  0x00007fd31063e62f:   imul   0xa0(%rsp),%rdi
          │  0x00007fd31063e638:   mov    %rdi,0x1a8(%rsp)
   0.26%  │  0x00007fd31063e640:   mov    %rcx,%rdi
   0.00%  │  0x00007fd31063e643:   imul   0x98(%rsp),%rdi
          │  0x00007fd31063e64c:   mov    %rdi,0x1b0(%rsp)             ;   {no_reloc}
   0.22%  │  0x00007fd31063e654:   mov    %rcx,%rbp
   0.03%  │  0x00007fd31063e657:   imul   0x88(%rsp),%rbp
          │  0x00007fd31063e660:   mov    0x80(%rsp),%r14
   0.01%  │  0x00007fd31063e668:   imul   %rcx,%r14
   0.21%  │  0x00007fd31063e66c:   mov    0x78(%rsp),%rdi
   0.04%  │  0x00007fd31063e671:   imul   %rcx,%rdi
          │  0x00007fd31063e675:   add    %rdi,%rbx
   0.20%  │  0x00007fd31063e678:   add    %r10,%rbx
   0.98%  │  0x00007fd31063e67b:   add    %r8,%rbx
   0.04%  │  0x00007fd31063e67e:   add    %r13,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@122 (line 229)
   0.04%  │  0x00007fd31063e681:   vmovq  %rbx,%xmm2
   0.09%  │  0x00007fd31063e686:   vmovq  %xmm5,%r10
   0.15%  │  0x00007fd31063e68b:   imul   %rcx,%r10
          │  0x00007fd31063e68f:   add    %r11,%r10
          │  0x00007fd31063e692:   add    %r9,%r10
   0.04%  │  0x00007fd31063e695:   add    0x90(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@81 (line 228)
   0.17%  │  0x00007fd31063e69d:   vmovq  %r10,%xmm10
   0.05%  │  0x00007fd31063e6a2:   vmovq  %xmm1,%r10
          │  0x00007fd31063e6a7:   mov    0x38(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@130 (line 230)
          │  0x00007fd31063e6ab:   vmovq  %xmm1,%r11
   0.18%  │  0x00007fd31063e6b0:   mov    0x40(%r11),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@180 (line 231)
   0.05%  │  0x00007fd31063e6b4:   mov    %r10,%r11
          │  0x00007fd31063e6b7:   imul   0xd8(%rsp),%r11
          │  0x00007fd31063e6c0:   mov    %r11,0x90(%rsp)
   0.17%  │  0x00007fd31063e6c8:   mov    %r8,%r11
   0.04%  │  0x00007fd31063e6cb:   imul   0xd8(%rsp),%r11
          │  0x00007fd31063e6d4:   mov    %r11,0x1b8(%rsp)
   0.00%  │  0x00007fd31063e6dc:   mov    %r8,%r11
   0.17%  │  0x00007fd31063e6df:   imul   0xd0(%rsp),%r11
   0.06%  │  0x00007fd31063e6e8:   mov    %r11,0x1c0(%rsp)
   0.04%  │  0x00007fd31063e6f0:   mov    %r8,%r11
   0.01%  │  0x00007fd31063e6f3:   imul   0xb8(%rsp),%r11
   0.19%  │  0x00007fd31063e6fc:   mov    %r11,0x1c8(%rsp)
   0.01%  │  0x00007fd31063e704:   mov    %r8,%r11
   0.04%  │  0x00007fd31063e707:   imul   0xb0(%rsp),%r11
   0.01%  │  0x00007fd31063e710:   mov    %r11,0x1d0(%rsp)
   0.17%  │  0x00007fd31063e718:   mov    0xa0(%rsp),%r11
   0.02%  │  0x00007fd31063e720:   imul   %r8,%r11
   0.05%  │  0x00007fd31063e724:   mov    %r11,0x1d8(%rsp)
   0.08%  │  0x00007fd31063e72c:   mov    0x98(%rsp),%r11
   0.11%  │  0x00007fd31063e734:   imul   %r8,%r11
   0.00%  │  0x00007fd31063e738:   mov    %r11,0x1e0(%rsp)
   0.09%  │  0x00007fd31063e740:   mov    0x88(%rsp),%r11
   0.00%  │  0x00007fd31063e748:   imul   %r8,%r11
   0.12%  │  0x00007fd31063e74c:   mov    %r11,0x1e8(%rsp)             ;   {no_reloc}
   0.08%  │  0x00007fd31063e754:   mov    0x80(%rsp),%rbx
          │  0x00007fd31063e75c:   imul   %r8,%rbx
   0.00%  │  0x00007fd31063e760:   mov    0x78(%rsp),%r11
   0.11%  │  0x00007fd31063e765:   imul   %r8,%r11
   0.09%  │  0x00007fd31063e769:   mov    %r11,0x1f0(%rsp)
   0.14%  │  0x00007fd31063e771:   vmovq  %xmm5,%r11
   0.00%  │  0x00007fd31063e776:   imul   %r8,%r11
   0.09%  │  0x00007fd31063e77a:   mov    %r10,%r8
   0.02%  │  0x00007fd31063e77d:   imul   0xd0(%rsp),%r8
   0.16%  │  0x00007fd31063e786:   mov    %r8,0x1f8(%rsp)
   0.13%  │  0x00007fd31063e78e:   mov    %r10,%r8
   0.07%  │  0x00007fd31063e791:   imul   0xb8(%rsp),%r8
   0.01%  │  0x00007fd31063e79a:   mov    %r8,0x200(%rsp)
   0.12%  │  0x00007fd31063e7a2:   mov    %r10,%r8
   0.00%  │  0x00007fd31063e7a5:   imul   0xb0(%rsp),%r8
   0.08%  │  0x00007fd31063e7ae:   mov    %r8,0x208(%rsp)
   0.17%  │  0x00007fd31063e7b6:   mov    %r10,%r8
          │  0x00007fd31063e7b9:   imul   0xa0(%rsp),%r8
          │  0x00007fd31063e7c2:   mov    %r8,0x210(%rsp)
   0.27%  │  0x00007fd31063e7ca:   mov    0x98(%rsp),%r8
   0.02%  │  0x00007fd31063e7d2:   imul   %r10,%r8
          │  0x00007fd31063e7d6:   mov    %r8,0x218(%rsp)
   0.17%  │  0x00007fd31063e7de:   mov    0x88(%rsp),%rdi
   0.06%  │  0x00007fd31063e7e6:   imul   %r10,%rdi
   0.01%  │  0x00007fd31063e7ea:   mov    0x80(%rsp),%r13
          │  0x00007fd31063e7f2:   imul   %r10,%r13
   0.15%  │  0x00007fd31063e7f6:   mov    0x78(%rsp),%r8
   0.04%  │  0x00007fd31063e7fb:   imul   %r10,%r8
   0.01%  │  0x00007fd31063e7ff:   add    %r8,%r11
   0.09%  │  0x00007fd31063e802:   add    %rsi,%r11
   0.19%  │  0x00007fd31063e805:   add    %rbp,%r11
   0.25%  │  0x00007fd31063e808:   add    0x120(%rsp),%r11
   0.22%  │  0x00007fd31063e810:   add    %rdx,%r11
   0.23%  │  0x00007fd31063e813:   add    0xc0(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@230 (line 231)
   0.24%  │  0x00007fd31063e81b:   vmovq  %r11,%xmm3
   0.41%  │  0x00007fd31063e820:   vmovq  %xmm5,%r11
          │  0x00007fd31063e825:   imul   %r10,%r11
          │  0x00007fd31063e829:   add    %rax,%r11
          │  0x00007fd31063e82c:   add    %r14,%r11
   0.23%  │  0x00007fd31063e82f:   add    0x128(%rsp),%r11
          │  0x00007fd31063e837:   add    0x148(%rsp),%r11
          │  0x00007fd31063e83f:   add    0xa8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@171 (line 230)
          │  0x00007fd31063e847:   vmovq  %r11,%xmm4
   0.25%  │  0x00007fd31063e84c:   vmovq  %xmm1,%r10                   ;   {no_reloc}
   0.00%  │  0x00007fd31063e851:   mov    0x48(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@239 (line 232)
          │  0x00007fd31063e855:   vmovq  %xmm1,%r11
          │  0x00007fd31063e85a:   mov    0x50(%r11),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@308 (line 233)
   0.21%  │  0x00007fd31063e85e:   mov    %r10,%r11
          │  0x00007fd31063e861:   imul   0xd8(%rsp),%r11
   0.01%  │  0x00007fd31063e86a:   mov    %r11,0xa8(%rsp)
   0.06%  │  0x00007fd31063e872:   mov    %rdx,%r11
   0.19%  │  0x00007fd31063e875:   imul   0xd8(%rsp),%r11
   0.00%  │  0x00007fd31063e87e:   mov    %rdx,%r8
          │  0x00007fd31063e881:   imul   0xd0(%rsp),%r8
   0.03%  │  0x00007fd31063e88a:   mov    0xb8(%rsp),%r9
   0.18%  │  0x00007fd31063e892:   imul   %rdx,%r9
          │  0x00007fd31063e896:   mov    %r9,0xc0(%rsp)
   0.10%  │  0x00007fd31063e89e:   mov    0xb0(%rsp),%r9
          │  0x00007fd31063e8a6:   imul   %rdx,%r9
   0.12%  │  0x00007fd31063e8aa:   mov    %r9,0x120(%rsp)
   0.09%  │  0x00007fd31063e8b2:   mov    0xa0(%rsp),%r9
          │  0x00007fd31063e8ba:   imul   %rdx,%r9
          │  0x00007fd31063e8be:   mov    %r9,0x128(%rsp)
   0.19%  │  0x00007fd31063e8c6:   mov    0x98(%rsp),%r9
          │  0x00007fd31063e8ce:   imul   %rdx,%r9
          │  0x00007fd31063e8d2:   mov    %r9,0x148(%rsp)
   0.16%  │  0x00007fd31063e8da:   mov    0x88(%rsp),%r9
   0.07%  │  0x00007fd31063e8e2:   imul   %rdx,%r9
          │  0x00007fd31063e8e6:   mov    %r9,0x220(%rsp)
   0.16%  │  0x00007fd31063e8ee:   mov    0x80(%rsp),%r9
   0.00%  │  0x00007fd31063e8f6:   imul   %rdx,%r9
   0.04%  │  0x00007fd31063e8fa:   mov    %r9,0x228(%rsp)
   0.17%  │  0x00007fd31063e902:   mov    0x78(%rsp),%r9
          │  0x00007fd31063e907:   imul   %rdx,%r9
          │  0x00007fd31063e90b:   vmovq  %xmm5,%rcx
   0.05%  │  0x00007fd31063e910:   imul   %rdx,%rcx
   0.17%  │  0x00007fd31063e914:   mov    %r10,%rdx
          │  0x00007fd31063e917:   imul   0xd0(%rsp),%rdx
          │  0x00007fd31063e920:   mov    %r10,%rsi
   0.06%  │  0x00007fd31063e923:   imul   0xb8(%rsp),%rsi
   0.14%  │  0x00007fd31063e92c:   mov    0xb0(%rsp),%rax
          │  0x00007fd31063e934:   imul   %r10,%rax
   0.14%  │  0x00007fd31063e938:   mov    0xa0(%rsp),%rbp
   0.06%  │  0x00007fd31063e940:   imul   %r10,%rbp
   0.15%  │  0x00007fd31063e944:   mov    %rbp,0x230(%rsp)
   0.34%  │  0x00007fd31063e94c:   mov    0x98(%rsp),%rbp              ;   {no_reloc}
          │  0x00007fd31063e954:   imul   %r10,%rbp
   0.06%  │  0x00007fd31063e958:   mov    %rbp,0x238(%rsp)
   0.16%  │  0x00007fd31063e960:   mov    0x88(%rsp),%rbp
          │  0x00007fd31063e968:   imul   %r10,%rbp
   0.00%  │  0x00007fd31063e96c:   mov    %rbp,0x240(%rsp)
   0.22%  │  0x00007fd31063e974:   mov    0x80(%rsp),%rbp
          │  0x00007fd31063e97c:   imul   %r10,%rbp
          │  0x00007fd31063e980:   mov    0x78(%rsp),%r14
   0.00%  │  0x00007fd31063e985:   imul   %r10,%r14
   0.22%  │  0x00007fd31063e989:   add    %r14,%rcx
   0.01%  │  0x00007fd31063e98c:   add    %rbx,%rcx
   0.35%  │  0x00007fd31063e98f:   add    %rdi,%rcx
   0.04%  │  0x00007fd31063e992:   add    0x180(%rsp),%rcx
   0.26%  │  0x00007fd31063e99a:   add    0x1a8(%rsp),%rcx
   0.19%  │  0x00007fd31063e9a2:   add    0x110(%rsp),%rcx
   0.21%  │  0x00007fd31063e9aa:   add    0x138(%rsp),%rcx
   0.23%  │  0x00007fd31063e9b2:   add    0xe0(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@378 (line 233)
   0.25%  │  0x00007fd31063e9ba:   mov    %rcx,%r14
          │  0x00007fd31063e9bd:   vmovq  %xmm5,%rcx
          │  0x00007fd31063e9c2:   imul   %r10,%rcx
          │  0x00007fd31063e9c6:   add    0x1f0(%rsp),%rcx
   0.26%  │  0x00007fd31063e9ce:   add    %r13,%rcx
          │  0x00007fd31063e9d1:   add    0x188(%rsp),%rcx
          │  0x00007fd31063e9d9:   add    0x1b0(%rsp),%rcx
          │  0x00007fd31063e9e1:   add    0x118(%rsp),%rcx
   0.23%  │  0x00007fd31063e9e9:   add    0x140(%rsp),%rcx
          │  0x00007fd31063e9f1:   add    0xc8(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@299 (line 232)
   0.16%  │  0x00007fd31063e9f9:   mov    %rcx,%r13
          │  0x00007fd31063e9fc:   vmovq  %xmm1,%r10
   0.07%  │  0x00007fd31063ea01:   mov    0x58(%r10),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@387 (line 234)
   0.00%  │  0x00007fd31063ea05:   vmovq  %xmm5,%r10
   0.16%  │  0x00007fd31063ea0a:   imul   %rcx,%r10
   0.00%  │  0x00007fd31063ea0e:   add    %r9,%r10
   0.07%  │  0x00007fd31063ea11:   add    %rbp,%r10
   0.00%  │  0x00007fd31063ea14:   add    0x1e8(%rsp),%r10
   0.27%  │  0x00007fd31063ea1c:   add    0x218(%rsp),%r10
   0.01%  │  0x00007fd31063ea24:   add    0x178(%rsp),%r10
   0.22%  │  0x00007fd31063ea2c:   add    0x1a0(%rsp),%r10
   0.22%  │  0x00007fd31063ea34:   add    0x108(%rsp),%r10
   0.26%  │  0x00007fd31063ea3c:   add    0x130(%rsp),%r10
   0.21%  │  0x00007fd31063ea44:   add    0xe8(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@467 (line 234)
   0.21%  │  0x00007fd31063ea4c:   mov    %r10,%rbp                    ;   {no_reloc}
          │  0x00007fd31063ea4f:   mov    %rcx,%r10
          │  0x00007fd31063ea52:   imul   0xd8(%rsp),%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@896 (line 243)
          │  0x00007fd31063ea5b:   vmovq  %r10,%xmm1
   0.19%  │  0x00007fd31063ea60:   mov    0xd0(%rsp),%r10
          │  0x00007fd31063ea68:   imul   %rcx,%r10
          │  0x00007fd31063ea6c:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@885 (line 242)
          │  0x00007fd31063ea6f:   vmovq  %r10,%xmm5
   0.30%  │  0x00007fd31063ea74:   mov    0xb8(%rsp),%r9
          │  0x00007fd31063ea7c:   imul   %rcx,%r9
   0.00%  │  0x00007fd31063ea80:   add    %r8,%r9
          │  0x00007fd31063ea83:   add    0xa8(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@864 (line 241)
   0.21%  │  0x00007fd31063ea8b:   mov    0xb0(%rsp),%r8
          │  0x00007fd31063ea93:   imul   %rcx,%r8
          │  0x00007fd31063ea97:   add    0xc0(%rsp),%r8
          │  0x00007fd31063ea9f:   add    %rdx,%r8
   0.23%  │  0x00007fd31063eaa2:   add    0x1b8(%rsp),%r8              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@833 (line 240)
          │  0x00007fd31063eaaa:   mov    0xa0(%rsp),%rbx
   0.00%  │  0x00007fd31063eab2:   imul   %rcx,%rbx
          │  0x00007fd31063eab6:   add    0x120(%rsp),%rbx
   0.19%  │  0x00007fd31063eabe:   add    %rsi,%rbx
          │  0x00007fd31063eac1:   add    0x1c0(%rsp),%rbx
          │  0x00007fd31063eac9:   add    0x90(%rsp),%rbx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@792 (line 239)
          │  0x00007fd31063ead1:   mov    0x98(%rsp),%rdi
   0.26%  │  0x00007fd31063ead9:   imul   %rcx,%rdi
          │  0x00007fd31063eadd:   add    0x128(%rsp),%rdi
   0.00%  │  0x00007fd31063eae5:   add    %rax,%rdi
          │  0x00007fd31063eae8:   add    0x1c8(%rsp),%rdi
   0.20%  │  0x00007fd31063eaf0:   add    0x1f8(%rsp),%rdi
   0.00%  │  0x00007fd31063eaf8:   add    0x158(%rsp),%rdi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@743 (line 238)
   0.14%  │  0x00007fd31063eb00:   mov    0x88(%rsp),%r10
          │  0x00007fd31063eb08:   imul   %rcx,%r10
   0.07%  │  0x00007fd31063eb0c:   add    0x148(%rsp),%r10
          │  0x00007fd31063eb14:   add    0x230(%rsp),%r10
   0.13%  │  0x00007fd31063eb1c:   add    0x1d0(%rsp),%r10
          │  0x00007fd31063eb24:   add    0x200(%rsp),%r10
   0.13%  │  0x00007fd31063eb2c:   add    0x160(%rsp),%r10
   0.15%  │  0x00007fd31063eb34:   add    0x150(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@686 (line 237)
   0.15%  │  0x00007fd31063eb3c:   mov    0x80(%rsp),%r11
          │  0x00007fd31063eb44:   imul   %rcx,%r11
   0.06%  │  0x00007fd31063eb48:   add    0x220(%rsp),%r11             ;   {no_reloc}
          │  0x00007fd31063eb50:   add    0x238(%rsp),%r11
   0.15%  │  0x00007fd31063eb58:   add    0x1d8(%rsp),%r11
   0.01%  │  0x00007fd31063eb60:   add    0x208(%rsp),%r11
   0.06%  │  0x00007fd31063eb68:   add    0x168(%rsp),%r11
   0.15%  │  0x00007fd31063eb70:   add    0x190(%rsp),%r11
   0.22%  │  0x00007fd31063eb78:   add    0xf8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@621 (line 236)
   0.25%  │  0x00007fd31063eb80:   mov    0x78(%rsp),%rsi
   0.01%  │  0x00007fd31063eb85:   imul   %rcx,%rsi
          │  0x00007fd31063eb89:   add    0x228(%rsp),%rsi
   0.01%  │  0x00007fd31063eb91:   add    0x240(%rsp),%rsi
   0.17%  │  0x00007fd31063eb99:   add    0x1e0(%rsp),%rsi
   0.05%  │  0x00007fd31063eba1:   add    0x210(%rsp),%rsi
   0.11%  │  0x00007fd31063eba9:   add    0x170(%rsp),%rsi
   0.19%  │  0x00007fd31063ebb1:   add    0x198(%rsp),%rsi
   0.26%  │  0x00007fd31063ebb9:   add    0x100(%rsp),%rsi
   0.24%  │  0x00007fd31063ebc1:   add    0xf0(%rsp),%rsi              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@548 (line 235)
   0.20%  │  0x00007fd31063ebc9:   vmovq  %xmm0,%rdx
          │  0x00007fd31063ebce:   vmovsd %xmm2,(%rsp)
   0.08%  │  0x00007fd31063ebd3:   vmovsd %xmm4,0x8(%rsp)
   0.02%  │  0x00007fd31063ebd9:   vmovsd %xmm3,0x10(%rsp)
   0.16%  │  0x00007fd31063ebdf:   mov    %r13,0x18(%rsp)
   0.08%  │  0x00007fd31063ebe4:   mov    %r14,0x20(%rsp)
   0.05%  │  0x00007fd31063ebe9:   mov    %rbp,0x28(%rsp)
   0.04%  │  0x00007fd31063ebee:   mov    %rsi,0x30(%rsp)
   0.25%  │  0x00007fd31063ebf3:   mov    %r11,0x38(%rsp)
   0.01%  │  0x00007fd31063ebf8:   mov    %r10,0x40(%rsp)
   0.12%  │  0x00007fd31063ebfd:   mov    %rdi,0x48(%rsp)
   0.04%  │  0x00007fd31063ec02:   mov    %rbx,0x50(%rsp)
   0.15%  │  0x00007fd31063ec07:   mov    %r8,0x58(%rsp)
   0.02%  │  0x00007fd31063ec0c:   mov    %r9,0x60(%rsp)
   0.13%  │  0x00007fd31063ec11:   vmovsd %xmm5,0x68(%rsp)
   0.07%  │  0x00007fd31063ec17:   vmovsd %xmm1,0x70(%rsp)
   0.15%  │  0x00007fd31063ec1d:   vmovq  %xmm6,%rsi
          │  0x00007fd31063ec22:   vmovq  %xmm7,%rcx
   0.01%  │  0x00007fd31063ec27:   vmovq  %xmm9,%r8
   0.03%  │  0x00007fd31063ec2c:   vmovq  %xmm8,%r9
   0.17%  │  0x00007fd31063ec31:   vmovq  %xmm10,%rdi
   0.00%  │  0x00007fd31063ec36:   nop
   0.01%  │  0x00007fd31063ec37:   call   0x00007fd3100c4380           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │                                                            ;   {optimized virtual_call}
   0.01%  │  0x00007fd31063ec3c:   nopl   0xbac(%rax,%rax,1)           ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │                                                            ;   {other}
   0.00%  │  0x00007fd31063ec44:   add    $0x260,%rsp
   0.20%  │  0x00007fd31063ec4b:   pop    %rbp
   0.01%  │  0x00007fd31063ec4c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fd31063ec53:   ja     0x00007fd31063ecf4
   0.21%  │  0x00007fd31063ec59:   ret    
          ↘  0x00007fd31063ec5a:   mov    %rsi,%rbp
             0x00007fd31063ec5d:   mov    %rcx,0x80(%rsp)
             0x00007fd31063ec65:   mov    %r8,0x88(%rsp)
             0x00007fd31063ec6d:   mov    %rdx,0x90(%rsp)
             0x00007fd31063ec75:   mov    $0xffffffe4,%esi
             0x00007fd31063ec7a:   nop
             0x00007fd31063ec7b:   call   0x00007fd3100c9f00           ; ImmutableOopMap {rbp=Oop [128]=Oop [136]=Oop [144]=Oop }
                                                                       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  34.68%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 633 

             # parm18:   [sp+0x88]   = long
             # parm19:   [sp+0x90]   = long
             0x00007fd310639e20:   mov    0x8(%rsi),%r10d
             0x00007fd310639e24:   movabs $0x7fd293000000,%r11
             0x00007fd310639e2e:   add    %r11,%r10
             0x00007fd310639e31:   cmp    %r10,%rax
             0x00007fd310639e34:   jne    0x00007fd3100c4080           ;   {runtime_call ic_miss_stub}
             0x00007fd310639e3a:   xchg   %ax,%ax
             0x00007fd310639e3c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.31%     0x00007fd310639e40:   mov    %eax,-0x14000(%rsp)
   0.01%     0x00007fd310639e47:   push   %rbp
   0.28%     0x00007fd310639e48:   sub    $0x10,%rsp
   0.06%     0x00007fd310639e4c:   cmpl   $0x1,0x20(%r15)
   0.36%     0x00007fd310639e54:   jne    0x00007fd31063a1d2           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@-1 (line 68)
   0.26%     0x00007fd310639e5a:   imul   $0x13,0x88(%rsp),%rsi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@8 (line 70)
   0.39%     0x00007fd310639e63:   imul   $0x13,0x90(%rsp),%r11        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@39 (line 74)
   0.15%     0x00007fd310639e6c:   mov    %rsi,%r10
   0.00%     0x00007fd310639e6f:   sar    $0x15,%r10
   0.20%     0x00007fd310639e73:   mov    0x40(%rsp),%rbx
   0.03%     0x00007fd310639e78:   add    %r10,%rbx
   0.23%     0x00007fd310639e7b:   mov    %r11,%rax
   0.01%     0x00007fd310639e7e:   sar    $0x15,%rax
   0.11%     0x00007fd310639e82:   mov    0x48(%rsp),%r10
   0.02%     0x00007fd310639e87:   add    %rax,%r10
   0.31%     0x00007fd310639e8a:   shl    $0x5,%r11
   0.02%     0x00007fd310639e8e:   and    $0x3ffffff,%r11
   0.20%     0x00007fd310639e95:   add    %r11,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@52 (line 75)
   0.52%     0x00007fd310639e98:   lea    0x2000000(%rbx),%rax
   0.16%     0x00007fd310639e9f:   mov    %rax,%r11
   0.02%     0x00007fd310639ea2:   sar    $0x1a,%r11
   0.12%     0x00007fd310639ea6:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@90 (line 80)
   0.47%     0x00007fd310639ea9:   lea    0x2000000(%r10),%rbp
   0.10%     0x00007fd310639eb0:   mov    %rbp,%r11
   0.01%     0x00007fd310639eb3:   sar    $0x1a,%r11
   0.14%     0x00007fd310639eb7:   mov    0x50(%rsp),%r13
   0.15%     0x00007fd310639ebc:   add    %r11,%r13
   0.12%     0x00007fd310639ebf:   imul   $0x13,%r13,%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@126 (line 86)
   1.21%     0x00007fd310639ec3:   mov    %r13,%r11
   0.05%     0x00007fd310639ec6:   shl    $0x5,%r11
   0.04%     0x00007fd310639eca:   and    $0x3ffffff,%r11
   0.01%     0x00007fd310639ed1:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@138 (line 87)
   0.70%     0x00007fd310639ed4:   lea    0x2000000(%rcx),%r14
   0.09%     0x00007fd310639edb:   mov    %r14,%r11
   0.01%     0x00007fd310639ede:   and    $0xfffffffffc000000,%r11
   0.00%     0x00007fd310639ee5:   sub    %r11,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@352 (line 115)
   0.24%     0x00007fd310639ee8:   mov    0xc(%rdx),%r11d              ; implicit exception: dispatches to 0x00007fd31063a1a4
   0.06%     0x00007fd310639eec:   vmovq  %rdi,%xmm4
   0.02%     0x00007fd310639ef1:   vmovq  %r9,%xmm3
             0x00007fd310639ef6:   vmovq  %r8,%xmm2
   0.21%     0x00007fd310639efb:   vmovq  %rcx,%xmm1
   0.31%     0x00007fd310639f00:   vmovq  %rdx,%xmm0
   0.01%     0x00007fd310639f05:   imul   $0x13,0x80(%rsp),%rdi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@310 (line 110)
             0x00007fd310639f0e:   imul   $0x13,0x78(%rsp),%r8         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@279 (line 106)
             0x00007fd310639f14:   mov    %rdi,%r9
   0.27%     0x00007fd310639f17:   shl    $0x5,%r9
   0.00%     0x00007fd310639f1b:   mov    %r8,%rcx
             0x00007fd310639f1e:   shl    $0x5,%rcx
   0.00%     0x00007fd310639f22:   and    $0x3ffffff,%r9
   0.31%     0x00007fd310639f29:   and    $0x3ffffff,%rcx
   0.01%     0x00007fd310639f30:   sar    $0x15,%r8                    ;   {no_reloc}
             0x00007fd310639f34:   mov    0x30(%rsp),%rdx
             0x00007fd310639f39:   add    %r8,%rdx
   0.29%     0x00007fd310639f3c:   add    %r9,%rdx
   0.00%     0x00007fd310639f3f:   mov    %rdx,%r8
             0x00007fd310639f42:   sar    $0x15,%rdi
             0x00007fd310639f46:   sar    $0x1a,%r14
   0.29%     0x00007fd310639f4a:   sar    $0x15,%r13
   0.01%     0x00007fd310639f4e:   vmovq  %xmm2,%r9
             0x00007fd310639f53:   add    %r13,%r9
             0x00007fd310639f56:   mov    %r9,%r13
   0.26%     0x00007fd310639f59:   and    $0xfffffffffc000000,%rbp
   0.01%     0x00007fd310639f60:   sub    %rbp,%r10
   0.00%     0x00007fd310639f63:   and    $0xfffffffffc000000,%rax
             0x00007fd310639f69:   sub    %rax,%rbx
   0.31%     0x00007fd310639f6c:   shl    $0x5,%rsi
   0.01%     0x00007fd310639f70:   imul   $0x13,0x58(%rsp),%rdx        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@155 (line 90)
   0.00%     0x00007fd310639f76:   and    $0x3ffffff,%rsi
             0x00007fd310639f7d:   mov    0x38(%rsp),%r9
   0.32%     0x00007fd310639f82:   add    %rsi,%r9
   0.01%     0x00007fd310639f85:   add    %rdi,%r9
             0x00007fd310639f88:   mov    %rdx,%rdi
             0x00007fd310639f8b:   shl    $0x5,%rdi
   0.31%     0x00007fd310639f8f:   sar    $0x15,%rdx
   0.01%     0x00007fd310639f93:   vmovq  %xmm3,%rsi
             0x00007fd310639f98:   add    %rdx,%rsi
             0x00007fd310639f9b:   mov    %rsi,%rax
   0.28%     0x00007fd310639f9e:   and    $0x3ffffff,%rdi
             0x00007fd310639fa5:   lea    (%rdi,%r13,1),%rbp
             0x00007fd310639fa9:   add    %r14,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@358 (line 116)
             0x00007fd310639fac:   imul   $0x13,0x60(%rsp),%rdi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@186 (line 94)
   0.31%     0x00007fd310639fb2:   lea    0x2000000(%rbp),%rdx
   0.01%     0x00007fd310639fb9:   mov    %rdi,%rsi
             0x00007fd310639fbc:   shl    $0x5,%rsi
             0x00007fd310639fc0:   mov    %rdx,%r13
   0.30%     0x00007fd310639fc3:   and    $0xfffffffffc000000,%r13
   0.01%     0x00007fd310639fca:   sub    %r13,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@379 (line 119)
             0x00007fd310639fcd:   mov    %rbp,%r14
             0x00007fd310639fd0:   and    $0x3ffffff,%rsi
   0.31%     0x00007fd310639fd7:   add    %rsi,%rax
   0.01%     0x00007fd310639fda:   sar    $0x1a,%rdx
             0x00007fd310639fde:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@386 (line 120)
             0x00007fd310639fe1:   sar    $0x15,%rdi
   0.27%     0x00007fd310639fe5:   vmovq  %xmm4,%rdx
   0.00%     0x00007fd310639fea:   add    %rdi,%rdx
             0x00007fd310639fed:   lea    0x2000000(%rax),%rsi
             0x00007fd310639ff4:   imul   $0x13,0x68(%rsp),%rbp        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@217 (line 98)
   0.30%     0x00007fd310639ffa:   mov    %rsi,%rdi
   0.02%     0x00007fd310639ffd:   and    $0xfffffffffc000000,%rdi
             0x00007fd31063a004:   sub    %rdi,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@407 (line 123)
             0x00007fd31063a007:   vmovq  %rax,%xmm2
   0.27%     0x00007fd31063a00c:   mov    %rbp,%rdi
   0.00%     0x00007fd31063a00f:   shl    $0x5,%rdi
   0.00%     0x00007fd31063a013:   sar    $0x15,%rbp
             0x00007fd31063a017:   mov    0x20(%rsp),%rax
   0.28%     0x00007fd31063a01c:   add    %rbp,%rax
   0.01%     0x00007fd31063a01f:   mov    %rax,%rbp
             0x00007fd31063a022:   and    $0x3ffffff,%rdi
             0x00007fd31063a029:   add    %rdi,%rdx
   0.30%     0x00007fd31063a02c:   sar    $0x1a,%rsi
   0.01%     0x00007fd31063a030:   add    %rsi,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@414 (line 124)
                                                                       ;   {no_reloc}
             0x00007fd31063a033:   mov    %rdx,%r13
             0x00007fd31063a036:   imul   $0x13,0x70(%rsp),%rdi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@248 (line 102)
   0.30%     0x00007fd31063a03c:   add    $0x2000000,%rdx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@422 (line 126)
   0.00%     0x00007fd31063a043:   mov    %rdi,%rsi
             0x00007fd31063a046:   shl    $0x5,%rsi
             0x00007fd31063a04a:   mov    %rdx,%rax
   0.31%     0x00007fd31063a04d:   and    $0xfffffffffc000000,%rax
   0.01%     0x00007fd31063a053:   sub    %rax,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@435 (line 127)
             0x00007fd31063a056:   and    $0x3ffffff,%rsi
             0x00007fd31063a05d:   add    %rsi,%rbp
   0.28%     0x00007fd31063a060:   sar    $0x1a,%rdx
   0.00%     0x00007fd31063a064:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@442 (line 128)
             0x00007fd31063a067:   sar    $0x15,%rdi
             0x00007fd31063a06b:   mov    0x28(%rsp),%rdx
   0.30%     0x00007fd31063a070:   add    %rdi,%rdx
   0.01%     0x00007fd31063a073:   add    %rcx,%rdx
   0.00%     0x00007fd31063a076:   lea    0x2000000(%rbp),%rcx
             0x00007fd31063a07d:   mov    %rcx,%rdi
   0.30%     0x00007fd31063a080:   sar    $0x1a,%rdi
   0.00%     0x00007fd31063a084:   add    %rdi,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@470 (line 132)
   0.00%     0x00007fd31063a087:   and    $0xfffffffffc000000,%rcx
             0x00007fd31063a08e:   sub    %rcx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@463 (line 131)
   0.28%     0x00007fd31063a091:   mov    %rbp,%rcx
   0.00%     0x00007fd31063a094:   lea    0x2000000(%rdx),%rdi
             0x00007fd31063a09b:   mov    %rdi,%rsi
             0x00007fd31063a09e:   sar    $0x1a,%rsi
   0.33%     0x00007fd31063a0a2:   lea    (%r8,%rsi,1),%rax
   0.00%     0x00007fd31063a0a6:   and    $0xfffffffffc000000,%rdi
             0x00007fd31063a0ad:   sub    %rdi,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@491 (line 135)
             0x00007fd31063a0b0:   mov    %rdx,%r8
   0.30%     0x00007fd31063a0b3:   lea    0x2000000(%rax),%rdi
   0.01%     0x00007fd31063a0ba:   mov    %rdi,%rdx
             0x00007fd31063a0bd:   sar    $0x1a,%rdx
             0x00007fd31063a0c1:   lea    (%r9,%rdx,1),%rsi
   0.30%     0x00007fd31063a0c5:   and    $0xfffffffffc000000,%rdi
   0.01%     0x00007fd31063a0cc:   sub    %rdi,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@519 (line 139)
   0.00%     0x00007fd31063a0cf:   lea    0x2000000(%rsi),%rdi
             0x00007fd31063a0d6:   mov    %rdi,%rdx
   0.28%     0x00007fd31063a0d9:   sar    $0x1a,%rdx
   0.00%     0x00007fd31063a0dd:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@554 (line 144)
   0.01%     0x00007fd31063a0e0:   and    $0xfffffffffc000000,%rdi
             0x00007fd31063a0e7:   sub    %rdi,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@547 (line 143)
   0.30%     0x00007fd31063a0ea:   mov    %rsi,%rdi
   0.01%     0x00007fd31063a0ed:   lea    0x2000000(%rbx),%rdx
   0.05%     0x00007fd31063a0f4:   mov    %rdx,%rsi
             0x00007fd31063a0f7:   sar    $0x1a,%rsi
   0.35%     0x00007fd31063a0fb:   add    %rsi,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@582 (line 148)
   0.04%     0x00007fd31063a0fe:   and    $0xfffffffffc000000,%rdx
   0.02%     0x00007fd31063a105:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@575 (line 147)
             0x00007fd31063a108:   cmp    $0x9,%r11d
          ╭  0x00007fd31063a10c:   jbe    0x00007fd31063a158
   0.27%  │  0x00007fd31063a10e:   vmovq  %xmm0,%r11
   0.05%  │  0x00007fd31063a113:   vmovq  %xmm1,%rdx
   0.01%  │  0x00007fd31063a118:   mov    %rdx,0x10(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │  0x00007fd31063a11c:   mov    %r14,0x18(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@593 (line 151)
   0.25%  │  0x00007fd31063a120:   vmovq  %xmm2,%rdx
   0.04%  │  0x00007fd31063a125:   mov    %rdx,0x20(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@598 (line 152)
   0.01%  │  0x00007fd31063a129:   mov    %r13,0x28(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@603 (line 153)
          │  0x00007fd31063a12d:   mov    %rbp,0x30(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@608 (line 154)
   0.26%  │  0x00007fd31063a131:   mov    %r8,0x38(%r11)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@613 (line 155)
          │                                                            ;   {no_reloc}
   0.04%  │  0x00007fd31063a135:   mov    %rax,0x40(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@619 (line 156)
   0.01%  │  0x00007fd31063a139:   mov    %rdi,0x48(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@625 (line 157)
          │  0x00007fd31063a13d:   mov    %rbx,0x50(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@631 (line 158)
   0.23%  │  0x00007fd31063a141:   mov    %r10,0x58(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@637 (line 159)
   0.04%  │  0x00007fd31063a145:   add    $0x10,%rsp
   0.01%  │  0x00007fd31063a149:   pop    %rbp
   0.00%  │  0x00007fd31063a14a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fd31063a151:   ja     0x00007fd31063a1bc
   0.31%  │  0x00007fd31063a157:   ret    
          ↘  0x00007fd31063a158:   mov    $0xffffffe4,%esi
             0x00007fd31063a15d:   vmovq  %xmm0,%rbp
             0x00007fd31063a162:   mov    %r14,0x20(%rsp)
             0x00007fd31063a167:   vmovsd %xmm2,0x28(%rsp)
             0x00007fd31063a16d:   mov    %r13,0x30(%rsp)
             0x00007fd31063a172:   mov    %rbx,0x38(%rsp)
             0x00007fd31063a177:   mov    %r10,0x40(%rsp)
             0x00007fd31063a17c:   vmovsd %xmm1,0x50(%rsp)
             0x00007fd31063a182:   mov    %rcx,0x58(%rsp)
             0x00007fd31063a187:   mov    %r8,0x60(%rsp)
....................................................................................................
  18.18%  <total for region 2>

....[Hottest Regions]...............................................................................
  34.68%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 660 
  18.18%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 633 
   8.92%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   8.05%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 707 
   3.56%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 671 
   2.34%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 878 
   1.78%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 737 
   1.45%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 751 
   1.36%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 737 
   1.30%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 751 
   1.08%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 737 
   1.01%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 737 
   1.01%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 737 
   0.99%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 737 
   0.90%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 737 
   0.90%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 751 
   0.89%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 737 
   0.88%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 751 
   0.86%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 751 
   0.84%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 737 
   9.02%  <...other 539 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  34.68%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 660 
  18.18%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 633 
  11.36%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 737 
   8.92%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   8.05%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 707 
   7.04%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 751 
   3.56%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 671 
   2.37%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 878 
   2.27%         c2, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 749 
   1.48%              kernel  [unknown] 
   0.52%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 705 
   0.51%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 833 
   0.16%        runtime stub  StubRoutines::sha512_implCompress 
   0.14%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.09%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::asByteArray, version 2, compile id 954 
   0.07%         c2, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::mutable, version 2, compile id 998 
   0.06%         c2, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 1011 
   0.05%         c2, level 4  sun.security.util.math.IntegerFieldModuloP::getElement, version 2, compile id 1008 
   0.03%                      <unknown> 
   0.03%         c2, level 4  sun.security.ec.ed.Ed25519Operations::getNeutral, version 2, compile id 1013 
   0.42%  <...other 92 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.95%         c2, level 4
   9.24%        runtime stub
   1.48%              kernel
   0.12%           libjvm.so
   0.09%        libc-2.31.so
   0.03%                    
   0.03%         interpreter
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%    perf-1934651.map
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed25519, messageLength = 2048)

# Run progress: 25.00% complete, ETA 00:11:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2461.262 us/op
# Warmup Iteration   2: 1278.953 us/op
# Warmup Iteration   3: 1275.302 us/op
# Warmup Iteration   4: 1278.571 us/op
# Warmup Iteration   5: 1277.454 us/op
Iteration   1: 1276.741 us/op
Iteration   2: 1277.709 us/op
Iteration   3: 1278.772 us/op
Iteration   4: 1278.448 us/op
Iteration   5: 1277.714 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  1277.877 ±(99.9%) 3.027 us/op [Average]
  (min, avg, max) = (1276.741, 1277.877, 1278.772), stdev = 0.786
  CI (99.9%): [1274.850, 1280.903] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 253495 total address lines.
Perf output processed (skipped 56.741 seconds):
 Column 1: cycles (50639 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 650 

             # parm2:    r8:r8     = &apos;[J&apos;
             #           [sp+0x270]  (sp of caller)
             0x00007f2414640b40:   mov    0x8(%rsi),%r10d
             0x00007f2414640b44:   movabs $0x7f239b000000,%r11
             0x00007f2414640b4e:   add    %r11,%r10
             0x00007f2414640b51:   cmp    %r10,%rax
             0x00007f2414640b54:   jne    0x00007f24140c4080           ;   {runtime_call ic_miss_stub}
             0x00007f2414640b5a:   xchg   %ax,%ax
             0x00007f2414640b5c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.09%     0x00007f2414640b60:   mov    %eax,-0x14000(%rsp)
   0.25%     0x00007f2414640b67:   push   %rbp
   0.06%     0x00007f2414640b68:   sub    $0x260,%rsp
   0.10%     0x00007f2414640b6f:   nop
   0.09%     0x00007f2414640b70:   cmpl   $0x0,0x20(%r15)
   0.03%     0x00007f2414640b78:   jne    0x00007f241464160a           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@-1 (line 225)
   0.08%     0x00007f2414640b7e:   vmovq  %r8,%xmm0
   0.03%     0x00007f2414640b83:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f24146415cc
   0.10%     0x00007f2414640b87:   cmp    $0x9,%r10d
          ╭  0x00007f2414640b8b:   jbe    0x00007f241464155a
   0.04%  │  0x00007f2414640b91:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f24146415e0
   0.05%  │  0x00007f2414640b95:   mov    0x10(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
   0.03%  │  0x00007f2414640b99:   nopl   0x0(%rax)
   0.09%  │  0x00007f2414640ba0:   cmp    $0x9,%r11d
          │  0x00007f2414640ba4:   jbe    0x00007f2414641588
   0.05%  │  0x00007f2414640baa:   vmovq  %rsi,%xmm6
   0.07%  │  0x00007f2414640baf:   vmovq  %rcx,%xmm1
   0.04%  │  0x00007f2414640bb4:   mov    0x10(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@5 (line 225)
   0.07%  │  0x00007f2414640bb8:   mov    0x18(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@18 (line 226)
   0.05%  │  0x00007f2414640bbc:   vmovq  %r10,%xmm5
   0.06%  │  0x00007f2414640bc1:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@6 (line 225)
   0.04%  │  0x00007f2414640bc5:   vmovq  %r10,%xmm7
   0.14%  │  0x00007f2414640bca:   mov    %r11,%rdi
   0.03%  │  0x00007f2414640bcd:   mov    %r8,0x78(%rsp)
   0.04%  │  0x00007f2414640bd2:   imul   %r8,%rdi
   0.05%  │  0x00007f2414640bd6:   mov    0x20(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@43 (line 227)
   0.13%  │  0x00007f2414640bda:   mov    0x28(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@76 (line 228)
   0.03%  │  0x00007f2414640bde:   mov    %r11,%rsi
   0.04%  │  0x00007f2414640be1:   mov    %r10,0x80(%rsp)
   0.03%  │  0x00007f2414640be9:   imul   %r10,%rsi
   0.12%  │  0x00007f2414640bed:   mov    %r11,%r10
   0.03%  │  0x00007f2414640bf0:   mov    %r8,0x88(%rsp)
   0.05%  │  0x00007f2414640bf8:   imul   %r8,%r11
   0.02%  │  0x00007f2414640bfc:   mov    %r11,0x90(%rsp)
   0.10%  │  0x00007f2414640c04:   mov    0x30(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@117 (line 229)
   0.04%  │  0x00007f2414640c08:   mov    %r11,0x98(%rsp)
   0.05%  │  0x00007f2414640c10:   mov    0x38(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@166 (line 230)
   0.03%  │  0x00007f2414640c14:   mov    %r11,0xa0(%rsp)
   0.12%  │  0x00007f2414640c1c:   mov    %r10,%r13
   0.02%  │  0x00007f2414640c1f:   imul   0x98(%rsp),%r13
   0.32%  │  0x00007f2414640c28:   mov    %r10,%r11
   0.02%  │  0x00007f2414640c2b:   imul   0xa0(%rsp),%r11
   0.19%  │  0x00007f2414640c34:   mov    %r11,0xa8(%rsp)
   0.29%  │  0x00007f2414640c3c:   mov    0x40(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@225 (line 231)
   0.02%  │  0x00007f2414640c40:   mov    %r11,0xb0(%rsp)
   0.03%  │  0x00007f2414640c48:   mov    0x48(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@294 (line 232)
   0.02%  │  0x00007f2414640c4c:   mov    %r11,0xb8(%rsp)              ;   {no_reloc}
   0.17%  │  0x00007f2414640c54:   mov    %r10,%r11
   0.01%  │  0x00007f2414640c57:   imul   0xb0(%rsp),%r11
   0.07%  │  0x00007f2414640c60:   mov    %r11,0xc0(%rsp)
   0.21%  │  0x00007f2414640c68:   mov    %r10,%r11
   0.07%  │  0x00007f2414640c6b:   imul   0xb8(%rsp),%r11
   0.07%  │  0x00007f2414640c74:   mov    %r11,0xc8(%rsp)
   0.21%  │  0x00007f2414640c7c:   mov    0x50(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@373 (line 233)
   0.03%  │  0x00007f2414640c80:   mov    %r11,0xd0(%rsp)
   0.01%  │  0x00007f2414640c88:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@462 (line 234)
   0.01%  │  0x00007f2414640c8c:   mov    %r11,0xd8(%rsp)
   0.16%  │  0x00007f2414640c94:   mov    %r10,%r11
   0.03%  │  0x00007f2414640c97:   imul   0xd0(%rsp),%r11
   0.07%  │  0x00007f2414640ca0:   mov    %r11,0xe0(%rsp)
   0.30%  │  0x00007f2414640ca8:   imul   0xd8(%rsp),%r10
   0.07%  │  0x00007f2414640cb1:   mov    %r10,0xe8(%rsp)
   0.24%  │  0x00007f2414640cb9:   mov    0x18(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@14 (line 226)
          │  0x00007f2414640cbd:   vmovq  %xmm1,%r10
   0.04%  │  0x00007f2414640cc2:   mov    0x20(%r10),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@31 (line 227)
   0.02%  │  0x00007f2414640cc6:   mov    %rcx,%r10
   0.18%  │  0x00007f2414640cc9:   imul   0xd8(%rsp),%r10
   0.02%  │  0x00007f2414640cd2:   mov    %r10,0xf0(%rsp)
   0.13%  │  0x00007f2414640cda:   mov    %r8,%r10
   0.00%  │  0x00007f2414640cdd:   imul   0xd8(%rsp),%r10
   0.12%  │  0x00007f2414640ce6:   mov    %r10,0xf8(%rsp)
   0.04%  │  0x00007f2414640cee:   mov    %r8,%r10
   0.07%  │  0x00007f2414640cf1:   imul   0xd0(%rsp),%r10
   0.00%  │  0x00007f2414640cfa:   mov    %r10,0x100(%rsp)
   0.10%  │  0x00007f2414640d02:   mov    %r8,%r10
   0.02%  │  0x00007f2414640d05:   imul   0xb8(%rsp),%r10
   0.07%  │  0x00007f2414640d0e:   mov    %r10,0x108(%rsp)
   0.04%  │  0x00007f2414640d16:   mov    %r8,%r10
   0.11%  │  0x00007f2414640d19:   imul   0xb0(%rsp),%r10
   0.03%  │  0x00007f2414640d22:   mov    %r10,0x110(%rsp)
   0.11%  │  0x00007f2414640d2a:   mov    %r8,%r10
   0.03%  │  0x00007f2414640d2d:   imul   0xa0(%rsp),%r10
   0.08%  │  0x00007f2414640d36:   mov    %r10,0x118(%rsp)
   0.04%  │  0x00007f2414640d3e:   mov    %r8,%r10
   0.06%  │  0x00007f2414640d41:   imul   0x98(%rsp),%r10
   0.01%  │  0x00007f2414640d4a:   mov    %r10,0x120(%rsp)
   0.13%  │  0x00007f2414640d52:   mov    %r8,%r10                     ;   {no_reloc}
   0.01%  │  0x00007f2414640d55:   imul   0x88(%rsp),%r10
   0.08%  │  0x00007f2414640d5e:   mov    %r10,0x128(%rsp)
   0.10%  │  0x00007f2414640d66:   mov    %r8,%r10
   0.06%  │  0x00007f2414640d69:   imul   0x80(%rsp),%r10
   0.00%  │  0x00007f2414640d72:   mov    0x78(%rsp),%r11
   0.06%  │  0x00007f2414640d77:   imul   %r8,%r11
   0.12%  │  0x00007f2414640d7b:   vmovq  %xmm5,%r9
   0.08%  │  0x00007f2414640d80:   imul   %r8,%r9
   0.01%  │  0x00007f2414640d84:   mov    %r9,%rax
   0.08%  │  0x00007f2414640d87:   mov    %rcx,%r8
   0.07%  │  0x00007f2414640d8a:   imul   0xd0(%rsp),%r8
   0.06%  │  0x00007f2414640d93:   mov    %r8,0x130(%rsp)
   0.33%  │  0x00007f2414640d9b:   mov    %rcx,%r8
   0.01%  │  0x00007f2414640d9e:   imul   0xb8(%rsp),%r8
   0.00%  │  0x00007f2414640da7:   mov    %r8,0x138(%rsp)
   0.23%  │  0x00007f2414640daf:   mov    %rcx,%r8
   0.00%  │  0x00007f2414640db2:   imul   0xb0(%rsp),%r8
   0.00%  │  0x00007f2414640dbb:   mov    %r8,0x140(%rsp)
   0.25%  │  0x00007f2414640dc3:   mov    %rcx,%rdx
   0.01%  │  0x00007f2414640dc6:   imul   0xa0(%rsp),%rdx
   0.00%  │  0x00007f2414640dcf:   mov    %rcx,%r8
   0.00%  │  0x00007f2414640dd2:   imul   0x98(%rsp),%r8
   0.20%  │  0x00007f2414640ddb:   mov    %r8,0x148(%rsp)
   0.17%  │  0x00007f2414640de3:   mov    %rcx,%r8
          │  0x00007f2414640de6:   imul   0x88(%rsp),%r8
   0.00%  │  0x00007f2414640def:   mov    %rcx,%r9
   0.02%  │  0x00007f2414640df2:   imul   0x80(%rsp),%r9
   0.19%  │  0x00007f2414640dfb:   mov    %rcx,%rbx
          │  0x00007f2414640dfe:   imul   0x78(%rsp),%rbx
          │  0x00007f2414640e04:   add    %rbx,%rax
   0.26%  │  0x00007f2414640e07:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@48 (line 227)
   0.22%  │  0x00007f2414640e0a:   vmovq  %rax,%xmm8
   0.46%  │  0x00007f2414640e0f:   vmovq  %xmm5,%rbx
          │  0x00007f2414640e14:   imul   %rcx,%rbx
          │  0x00007f2414640e18:   add    %rdi,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@23 (line 226)
   0.00%  │  0x00007f2414640e1b:   vmovq  %rbx,%xmm9
   0.24%  │  0x00007f2414640e20:   vmovq  %xmm1,%rcx
          │  0x00007f2414640e25:   mov    0x28(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@56 (line 228)
          │  0x00007f2414640e29:   vmovq  %xmm1,%rbx
   0.00%  │  0x00007f2414640e2e:   mov    0x30(%rbx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@89 (line 229)
   0.23%  │  0x00007f2414640e32:   mov    %rcx,%rbx
          │  0x00007f2414640e35:   imul   0xd8(%rsp),%rbx
   0.01%  │  0x00007f2414640e3e:   mov    %rbx,0x150(%rsp)
   0.01%  │  0x00007f2414640e46:   mov    %rdi,%rbx
   0.24%  │  0x00007f2414640e49:   imul   0xd8(%rsp),%rbx              ;   {no_reloc}
          │  0x00007f2414640e52:   mov    %rbx,0x158(%rsp)
   0.00%  │  0x00007f2414640e5a:   mov    %rdi,%rbx
   0.00%  │  0x00007f2414640e5d:   imul   0xd0(%rsp),%rbx
   0.22%  │  0x00007f2414640e66:   mov    %rbx,0x160(%rsp)
   0.00%  │  0x00007f2414640e6e:   mov    %rdi,%rbx
          │  0x00007f2414640e71:   imul   0xb8(%rsp),%rbx
          │  0x00007f2414640e7a:   mov    %rbx,0x168(%rsp)
   0.22%  │  0x00007f2414640e82:   mov    %rdi,%rbx
          │  0x00007f2414640e85:   imul   0xb0(%rsp),%rbx
          │  0x00007f2414640e8e:   mov    %rbx,0x170(%rsp)
   0.00%  │  0x00007f2414640e96:   mov    %rdi,%rbx
   0.19%  │  0x00007f2414640e99:   imul   0xa0(%rsp),%rbx
          │  0x00007f2414640ea2:   mov    %rbx,0x178(%rsp)
   0.00%  │  0x00007f2414640eaa:   mov    %rdi,%rbx
          │  0x00007f2414640ead:   imul   0x98(%rsp),%rbx
   0.24%  │  0x00007f2414640eb6:   mov    %rbx,0x180(%rsp)
   0.00%  │  0x00007f2414640ebe:   mov    0x88(%rsp),%rbx
          │  0x00007f2414640ec6:   imul   %rdi,%rbx
          │  0x00007f2414640eca:   mov    %rbx,0x188(%rsp)
   0.22%  │  0x00007f2414640ed2:   mov    0x80(%rsp),%rsi
          │  0x00007f2414640eda:   imul   %rdi,%rsi
          │  0x00007f2414640ede:   mov    0x78(%rsp),%rax
   0.00%  │  0x00007f2414640ee3:   imul   %rdi,%rax
   0.20%  │  0x00007f2414640ee7:   vmovq  %xmm5,%rbx
          │  0x00007f2414640eec:   imul   %rdi,%rbx
          │  0x00007f2414640ef0:   mov    %rcx,%rdi
          │  0x00007f2414640ef3:   imul   0xd0(%rsp),%rdi
   0.23%  │  0x00007f2414640efc:   mov    %rdi,0x190(%rsp)
   0.17%  │  0x00007f2414640f04:   mov    %rcx,%rdi
          │  0x00007f2414640f07:   imul   0xb8(%rsp),%rdi
          │  0x00007f2414640f10:   mov    %rdi,0x198(%rsp)
   0.25%  │  0x00007f2414640f18:   mov    %rcx,%rdi
          │  0x00007f2414640f1b:   imul   0xb0(%rsp),%rdi
          │  0x00007f2414640f24:   mov    %rdi,0x1a0(%rsp)
   0.22%  │  0x00007f2414640f2c:   mov    %rcx,%rdi
   0.01%  │  0x00007f2414640f2f:   imul   0xa0(%rsp),%rdi
          │  0x00007f2414640f38:   mov    %rdi,0x1a8(%rsp)
   0.24%  │  0x00007f2414640f40:   mov    %rcx,%rdi
          │  0x00007f2414640f43:   imul   0x98(%rsp),%rdi
   0.00%  │  0x00007f2414640f4c:   mov    %rdi,0x1b0(%rsp)             ;   {no_reloc}
   0.16%  │  0x00007f2414640f54:   mov    %rcx,%rbp
   0.03%  │  0x00007f2414640f57:   imul   0x88(%rsp),%rbp
   0.00%  │  0x00007f2414640f60:   mov    0x80(%rsp),%r14
          │  0x00007f2414640f68:   imul   %rcx,%r14
   0.19%  │  0x00007f2414640f6c:   mov    0x78(%rsp),%rdi
   0.03%  │  0x00007f2414640f71:   imul   %rcx,%rdi
          │  0x00007f2414640f75:   add    %rdi,%rbx
   0.19%  │  0x00007f2414640f78:   add    %r10,%rbx
   0.87%  │  0x00007f2414640f7b:   add    %r8,%rbx
   0.05%  │  0x00007f2414640f7e:   add    %r13,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@122 (line 229)
   0.03%  │  0x00007f2414640f81:   vmovq  %rbx,%xmm2
   0.09%  │  0x00007f2414640f86:   vmovq  %xmm5,%r10
   0.15%  │  0x00007f2414640f8b:   imul   %rcx,%r10
          │  0x00007f2414640f8f:   add    %r11,%r10
          │  0x00007f2414640f92:   add    %r9,%r10
   0.06%  │  0x00007f2414640f95:   add    0x90(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@81 (line 228)
   0.20%  │  0x00007f2414640f9d:   vmovq  %r10,%xmm10
   0.07%  │  0x00007f2414640fa2:   vmovq  %xmm1,%r10
          │  0x00007f2414640fa7:   mov    0x38(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@130 (line 230)
   0.01%  │  0x00007f2414640fab:   vmovq  %xmm1,%r11
   0.18%  │  0x00007f2414640fb0:   mov    0x40(%r11),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@180 (line 231)
   0.05%  │  0x00007f2414640fb4:   mov    %r10,%r11
          │  0x00007f2414640fb7:   imul   0xd8(%rsp),%r11
   0.01%  │  0x00007f2414640fc0:   mov    %r11,0x90(%rsp)
   0.12%  │  0x00007f2414640fc8:   mov    %r8,%r11
   0.05%  │  0x00007f2414640fcb:   imul   0xd8(%rsp),%r11
          │  0x00007f2414640fd4:   mov    %r11,0x1b8(%rsp)
   0.01%  │  0x00007f2414640fdc:   mov    %r8,%r11
   0.15%  │  0x00007f2414640fdf:   imul   0xd0(%rsp),%r11
   0.04%  │  0x00007f2414640fe8:   mov    %r11,0x1c0(%rsp)
   0.03%  │  0x00007f2414640ff0:   mov    %r8,%r11
   0.01%  │  0x00007f2414640ff3:   imul   0xb8(%rsp),%r11
   0.15%  │  0x00007f2414640ffc:   mov    %r11,0x1c8(%rsp)
   0.04%  │  0x00007f2414641004:   mov    %r8,%r11
   0.03%  │  0x00007f2414641007:   imul   0xb0(%rsp),%r11
          │  0x00007f2414641010:   mov    %r11,0x1d0(%rsp)
   0.15%  │  0x00007f2414641018:   mov    0xa0(%rsp),%r11
   0.02%  │  0x00007f2414641020:   imul   %r8,%r11
   0.03%  │  0x00007f2414641024:   mov    %r11,0x1d8(%rsp)
   0.04%  │  0x00007f241464102c:   mov    0x98(%rsp),%r11
   0.09%  │  0x00007f2414641034:   imul   %r8,%r11
   0.03%  │  0x00007f2414641038:   mov    %r11,0x1e0(%rsp)
   0.08%  │  0x00007f2414641040:   mov    0x88(%rsp),%r11
   0.01%  │  0x00007f2414641048:   imul   %r8,%r11
   0.12%  │  0x00007f241464104c:   mov    %r11,0x1e8(%rsp)             ;   {no_reloc}
   0.11%  │  0x00007f2414641054:   mov    0x80(%rsp),%rbx
          │  0x00007f241464105c:   imul   %r8,%rbx
   0.00%  │  0x00007f2414641060:   mov    0x78(%rsp),%r11
   0.15%  │  0x00007f2414641065:   imul   %r8,%r11
   0.07%  │  0x00007f2414641069:   mov    %r11,0x1f0(%rsp)
   0.08%  │  0x00007f2414641071:   vmovq  %xmm5,%r11
   0.01%  │  0x00007f2414641076:   imul   %r8,%r11
   0.10%  │  0x00007f241464107a:   mov    %r10,%r8
   0.02%  │  0x00007f241464107d:   imul   0xd0(%rsp),%r8
   0.08%  │  0x00007f2414641086:   mov    %r8,0x1f8(%rsp)
   0.10%  │  0x00007f241464108e:   mov    %r10,%r8
   0.09%  │  0x00007f2414641091:   imul   0xb8(%rsp),%r8
   0.03%  │  0x00007f241464109a:   mov    %r8,0x200(%rsp)
   0.09%  │  0x00007f24146410a2:   mov    %r10,%r8
   0.00%  │  0x00007f24146410a5:   imul   0xb0(%rsp),%r8
   0.09%  │  0x00007f24146410ae:   mov    %r8,0x208(%rsp)
   0.11%  │  0x00007f24146410b6:   mov    %r10,%r8
          │  0x00007f24146410b9:   imul   0xa0(%rsp),%r8
   0.00%  │  0x00007f24146410c2:   mov    %r8,0x210(%rsp)
   0.26%  │  0x00007f24146410ca:   mov    0x98(%rsp),%r8
   0.02%  │  0x00007f24146410d2:   imul   %r10,%r8
          │  0x00007f24146410d6:   mov    %r8,0x218(%rsp)
   0.14%  │  0x00007f24146410de:   mov    0x88(%rsp),%rdi
   0.08%  │  0x00007f24146410e6:   imul   %r10,%rdi
   0.02%  │  0x00007f24146410ea:   mov    0x80(%rsp),%r13
          │  0x00007f24146410f2:   imul   %r10,%r13
   0.11%  │  0x00007f24146410f6:   mov    0x78(%rsp),%r8
   0.10%  │  0x00007f24146410fb:   imul   %r10,%r8
   0.02%  │  0x00007f24146410ff:   add    %r8,%r11
   0.09%  │  0x00007f2414641102:   add    %rsi,%r11
   0.12%  │  0x00007f2414641105:   add    %rbp,%r11
   0.19%  │  0x00007f2414641108:   add    0x120(%rsp),%r11
   0.20%  │  0x00007f2414641110:   add    %rdx,%r11
   0.22%  │  0x00007f2414641113:   add    0xc0(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@230 (line 231)
   0.25%  │  0x00007f241464111b:   vmovq  %r11,%xmm3
   0.44%  │  0x00007f2414641120:   vmovq  %xmm5,%r11
          │  0x00007f2414641125:   imul   %r10,%r11
          │  0x00007f2414641129:   add    %rax,%r11
          │  0x00007f241464112c:   add    %r14,%r11
   0.23%  │  0x00007f241464112f:   add    0x128(%rsp),%r11
          │  0x00007f2414641137:   add    0x148(%rsp),%r11
          │  0x00007f241464113f:   add    0xa8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@171 (line 230)
          │  0x00007f2414641147:   vmovq  %r11,%xmm4
   0.27%  │  0x00007f241464114c:   vmovq  %xmm1,%r10                   ;   {no_reloc}
          │  0x00007f2414641151:   mov    0x48(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@239 (line 232)
   0.00%  │  0x00007f2414641155:   vmovq  %xmm1,%r11
          │  0x00007f241464115a:   mov    0x50(%r11),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@308 (line 233)
   0.20%  │  0x00007f241464115e:   mov    %r10,%r11
   0.00%  │  0x00007f2414641161:   imul   0xd8(%rsp),%r11
          │  0x00007f241464116a:   mov    %r11,0xa8(%rsp)
   0.05%  │  0x00007f2414641172:   mov    %rdx,%r11
   0.22%  │  0x00007f2414641175:   imul   0xd8(%rsp),%r11
          │  0x00007f241464117e:   mov    %rdx,%r8
          │  0x00007f2414641181:   imul   0xd0(%rsp),%r8
   0.05%  │  0x00007f241464118a:   mov    0xb8(%rsp),%r9
   0.20%  │  0x00007f2414641192:   imul   %rdx,%r9
          │  0x00007f2414641196:   mov    %r9,0xc0(%rsp)
   0.06%  │  0x00007f241464119e:   mov    0xb0(%rsp),%r9
   0.00%  │  0x00007f24146411a6:   imul   %rdx,%r9
   0.15%  │  0x00007f24146411aa:   mov    %r9,0x120(%rsp)
   0.08%  │  0x00007f24146411b2:   mov    0xa0(%rsp),%r9
          │  0x00007f24146411ba:   imul   %rdx,%r9
          │  0x00007f24146411be:   mov    %r9,0x128(%rsp)
   0.23%  │  0x00007f24146411c6:   mov    0x98(%rsp),%r9
          │  0x00007f24146411ce:   imul   %rdx,%r9
          │  0x00007f24146411d2:   mov    %r9,0x148(%rsp)
   0.12%  │  0x00007f24146411da:   mov    0x88(%rsp),%r9
   0.11%  │  0x00007f24146411e2:   imul   %rdx,%r9
          │  0x00007f24146411e6:   mov    %r9,0x220(%rsp)
   0.14%  │  0x00007f24146411ee:   mov    0x80(%rsp),%r9
          │  0x00007f24146411f6:   imul   %rdx,%r9
   0.09%  │  0x00007f24146411fa:   mov    %r9,0x228(%rsp)
   0.13%  │  0x00007f2414641202:   mov    0x78(%rsp),%r9
          │  0x00007f2414641207:   imul   %rdx,%r9
          │  0x00007f241464120b:   vmovq  %xmm5,%rcx
   0.08%  │  0x00007f2414641210:   imul   %rdx,%rcx
   0.13%  │  0x00007f2414641214:   mov    %r10,%rdx
          │  0x00007f2414641217:   imul   0xd0(%rsp),%rdx
          │  0x00007f2414641220:   mov    %r10,%rsi
   0.09%  │  0x00007f2414641223:   imul   0xb8(%rsp),%rsi
   0.12%  │  0x00007f241464122c:   mov    0xb0(%rsp),%rax
          │  0x00007f2414641234:   imul   %r10,%rax
   0.17%  │  0x00007f2414641238:   mov    0xa0(%rsp),%rbp
   0.06%  │  0x00007f2414641240:   imul   %r10,%rbp
   0.14%  │  0x00007f2414641244:   mov    %rbp,0x230(%rsp)
   0.30%  │  0x00007f241464124c:   mov    0x98(%rsp),%rbp              ;   {no_reloc}
          │  0x00007f2414641254:   imul   %r10,%rbp
   0.05%  │  0x00007f2414641258:   mov    %rbp,0x238(%rsp)
   0.15%  │  0x00007f2414641260:   mov    0x88(%rsp),%rbp
          │  0x00007f2414641268:   imul   %r10,%rbp
          │  0x00007f241464126c:   mov    %rbp,0x240(%rsp)
   0.25%  │  0x00007f2414641274:   mov    0x80(%rsp),%rbp
          │  0x00007f241464127c:   imul   %r10,%rbp
          │  0x00007f2414641280:   mov    0x78(%rsp),%r14
          │  0x00007f2414641285:   imul   %r10,%r14
   0.25%  │  0x00007f2414641289:   add    %r14,%rcx
   0.01%  │  0x00007f241464128c:   add    %rbx,%rcx
   0.32%  │  0x00007f241464128f:   add    %rdi,%rcx
   0.02%  │  0x00007f2414641292:   add    0x180(%rsp),%rcx
   0.27%  │  0x00007f241464129a:   add    0x1a8(%rsp),%rcx
   0.15%  │  0x00007f24146412a2:   add    0x110(%rsp),%rcx
   0.20%  │  0x00007f24146412aa:   add    0x138(%rsp),%rcx
   0.21%  │  0x00007f24146412b2:   add    0xe0(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@378 (line 233)
   0.21%  │  0x00007f24146412ba:   mov    %rcx,%r14
          │  0x00007f24146412bd:   vmovq  %xmm5,%rcx
          │  0x00007f24146412c2:   imul   %r10,%rcx
          │  0x00007f24146412c6:   add    0x1f0(%rsp),%rcx
   0.23%  │  0x00007f24146412ce:   add    %r13,%rcx
          │  0x00007f24146412d1:   add    0x188(%rsp),%rcx
          │  0x00007f24146412d9:   add    0x1b0(%rsp),%rcx
          │  0x00007f24146412e1:   add    0x118(%rsp),%rcx
   0.20%  │  0x00007f24146412e9:   add    0x140(%rsp),%rcx
   0.00%  │  0x00007f24146412f1:   add    0xc8(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@299 (line 232)
   0.16%  │  0x00007f24146412f9:   mov    %rcx,%r13
          │  0x00007f24146412fc:   vmovq  %xmm1,%r10
   0.07%  │  0x00007f2414641301:   mov    0x58(%r10),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@387 (line 234)
          │  0x00007f2414641305:   vmovq  %xmm5,%r10
   0.15%  │  0x00007f241464130a:   imul   %rcx,%r10
   0.00%  │  0x00007f241464130e:   add    %r9,%r10
   0.05%  │  0x00007f2414641311:   add    %rbp,%r10
          │  0x00007f2414641314:   add    0x1e8(%rsp),%r10
   0.30%  │  0x00007f241464131c:   add    0x218(%rsp),%r10
   0.01%  │  0x00007f2414641324:   add    0x178(%rsp),%r10
   0.20%  │  0x00007f241464132c:   add    0x1a0(%rsp),%r10
   0.18%  │  0x00007f2414641334:   add    0x108(%rsp),%r10
   0.21%  │  0x00007f241464133c:   add    0x130(%rsp),%r10
   0.20%  │  0x00007f2414641344:   add    0xe8(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@467 (line 234)
   0.23%  │  0x00007f241464134c:   mov    %r10,%rbp                    ;   {no_reloc}
          │  0x00007f241464134f:   mov    %rcx,%r10
   0.00%  │  0x00007f2414641352:   imul   0xd8(%rsp),%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@896 (line 243)
          │  0x00007f241464135b:   vmovq  %r10,%xmm1
   0.23%  │  0x00007f2414641360:   mov    0xd0(%rsp),%r10
          │  0x00007f2414641368:   imul   %rcx,%r10
          │  0x00007f241464136c:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@885 (line 242)
          │  0x00007f241464136f:   vmovq  %r10,%xmm5
   0.25%  │  0x00007f2414641374:   mov    0xb8(%rsp),%r9
          │  0x00007f241464137c:   imul   %rcx,%r9
   0.00%  │  0x00007f2414641380:   add    %r8,%r9
          │  0x00007f2414641383:   add    0xa8(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@864 (line 241)
   0.22%  │  0x00007f241464138b:   mov    0xb0(%rsp),%r8
          │  0x00007f2414641393:   imul   %rcx,%r8
          │  0x00007f2414641397:   add    0xc0(%rsp),%r8
          │  0x00007f241464139f:   add    %rdx,%r8
   0.21%  │  0x00007f24146413a2:   add    0x1b8(%rsp),%r8              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@833 (line 240)
          │  0x00007f24146413aa:   mov    0xa0(%rsp),%rbx
   0.01%  │  0x00007f24146413b2:   imul   %rcx,%rbx
          │  0x00007f24146413b6:   add    0x120(%rsp),%rbx
   0.26%  │  0x00007f24146413be:   add    %rsi,%rbx
          │  0x00007f24146413c1:   add    0x1c0(%rsp),%rbx
   0.00%  │  0x00007f24146413c9:   add    0x90(%rsp),%rbx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@792 (line 239)
          │  0x00007f24146413d1:   mov    0x98(%rsp),%rdi
   0.21%  │  0x00007f24146413d9:   imul   %rcx,%rdi
          │  0x00007f24146413dd:   add    0x128(%rsp),%rdi
          │  0x00007f24146413e5:   add    %rax,%rdi
          │  0x00007f24146413e8:   add    0x1c8(%rsp),%rdi
   0.19%  │  0x00007f24146413f0:   add    0x1f8(%rsp),%rdi
   0.00%  │  0x00007f24146413f8:   add    0x158(%rsp),%rdi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@743 (line 238)
   0.13%  │  0x00007f2414641400:   mov    0x88(%rsp),%r10
          │  0x00007f2414641408:   imul   %rcx,%r10
   0.13%  │  0x00007f241464140c:   add    0x148(%rsp),%r10
          │  0x00007f2414641414:   add    0x230(%rsp),%r10
   0.11%  │  0x00007f241464141c:   add    0x1d0(%rsp),%r10
          │  0x00007f2414641424:   add    0x200(%rsp),%r10
   0.13%  │  0x00007f241464142c:   add    0x160(%rsp),%r10
   0.11%  │  0x00007f2414641434:   add    0x150(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@686 (line 237)
   0.14%  │  0x00007f241464143c:   mov    0x80(%rsp),%r11
          │  0x00007f2414641444:   imul   %rcx,%r11
   0.09%  │  0x00007f2414641448:   add    0x220(%rsp),%r11             ;   {no_reloc}
          │  0x00007f2414641450:   add    0x238(%rsp),%r11
   0.14%  │  0x00007f2414641458:   add    0x1d8(%rsp),%r11
   0.01%  │  0x00007f2414641460:   add    0x208(%rsp),%r11
   0.10%  │  0x00007f2414641468:   add    0x168(%rsp),%r11
   0.13%  │  0x00007f2414641470:   add    0x190(%rsp),%r11
   0.18%  │  0x00007f2414641478:   add    0xf8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@621 (line 236)
   0.22%  │  0x00007f2414641480:   mov    0x78(%rsp),%rsi
   0.01%  │  0x00007f2414641485:   imul   %rcx,%rsi
          │  0x00007f2414641489:   add    0x228(%rsp),%rsi
   0.01%  │  0x00007f2414641491:   add    0x240(%rsp),%rsi
   0.21%  │  0x00007f2414641499:   add    0x1e0(%rsp),%rsi
   0.07%  │  0x00007f24146414a1:   add    0x210(%rsp),%rsi
   0.10%  │  0x00007f24146414a9:   add    0x170(%rsp),%rsi
   0.21%  │  0x00007f24146414b1:   add    0x198(%rsp),%rsi
   0.27%  │  0x00007f24146414b9:   add    0x100(%rsp),%rsi
   0.22%  │  0x00007f24146414c1:   add    0xf0(%rsp),%rsi              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@548 (line 235)
   0.23%  │  0x00007f24146414c9:   vmovq  %xmm0,%rdx
   0.00%  │  0x00007f24146414ce:   vmovsd %xmm2,(%rsp)
   0.07%  │  0x00007f24146414d3:   vmovsd %xmm4,0x8(%rsp)
   0.02%  │  0x00007f24146414d9:   vmovsd %xmm3,0x10(%rsp)
   0.18%  │  0x00007f24146414df:   mov    %r13,0x18(%rsp)
   0.09%  │  0x00007f24146414e4:   mov    %r14,0x20(%rsp)
   0.05%  │  0x00007f24146414e9:   mov    %rbp,0x28(%rsp)
   0.05%  │  0x00007f24146414ee:   mov    %rsi,0x30(%rsp)
   0.25%  │  0x00007f24146414f3:   mov    %r11,0x38(%rsp)
   0.01%  │  0x00007f24146414f8:   mov    %r10,0x40(%rsp)
   0.10%  │  0x00007f24146414fd:   mov    %rdi,0x48(%rsp)
   0.03%  │  0x00007f2414641502:   mov    %rbx,0x50(%rsp)
   0.15%  │  0x00007f2414641507:   mov    %r8,0x58(%rsp)
   0.01%  │  0x00007f241464150c:   mov    %r9,0x60(%rsp)
   0.10%  │  0x00007f2414641511:   vmovsd %xmm5,0x68(%rsp)
   0.11%  │  0x00007f2414641517:   vmovsd %xmm1,0x70(%rsp)
   0.21%  │  0x00007f241464151d:   vmovq  %xmm6,%rsi
   0.01%  │  0x00007f2414641522:   vmovq  %xmm7,%rcx
   0.01%  │  0x00007f2414641527:   vmovq  %xmm9,%r8
   0.03%  │  0x00007f241464152c:   vmovq  %xmm8,%r9
   0.19%  │  0x00007f2414641531:   vmovq  %xmm10,%rdi
   0.00%  │  0x00007f2414641536:   nop
   0.01%  │  0x00007f2414641537:   call   0x00007f24140c4380           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │                                                            ;   {optimized virtual_call}
   0.01%  │  0x00007f241464153c:   nopl   0xbac(%rax,%rax,1)           ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │                                                            ;   {other}
          │  0x00007f2414641544:   add    $0x260,%rsp
   0.23%  │  0x00007f241464154b:   pop    %rbp
   0.01%  │  0x00007f241464154c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f2414641553:   ja     0x00007f24146415f4
   0.20%  │  0x00007f2414641559:   ret    
          ↘  0x00007f241464155a:   mov    %rsi,%rbp
             0x00007f241464155d:   mov    %rcx,0x80(%rsp)
             0x00007f2414641565:   mov    %r8,0x88(%rsp)
             0x00007f241464156d:   mov    %rdx,0x90(%rsp)
             0x00007f2414641575:   mov    $0xffffffe4,%esi
             0x00007f241464157a:   nop
             0x00007f241464157b:   call   0x00007f24140c9f00           ; ImmutableOopMap {rbp=Oop [128]=Oop [136]=Oop [144]=Oop }
                                                                       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  34.14%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 615 

             # parm18:   [sp+0x88]   = long
             # parm19:   [sp+0x90]   = long
             0x00007f241463b7a0:   mov    0x8(%rsi),%r10d
             0x00007f241463b7a4:   movabs $0x7f239b000000,%r11
             0x00007f241463b7ae:   add    %r11,%r10
             0x00007f241463b7b1:   cmp    %r10,%rax
             0x00007f241463b7b4:   jne    0x00007f24140c4080           ;   {runtime_call ic_miss_stub}
             0x00007f241463b7ba:   xchg   %ax,%ax
             0x00007f241463b7bc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.32%     0x00007f241463b7c0:   mov    %eax,-0x14000(%rsp)
   0.02%     0x00007f241463b7c7:   push   %rbp
   0.25%     0x00007f241463b7c8:   sub    $0x10,%rsp
   0.07%     0x00007f241463b7cc:   cmpl   $0x1,0x20(%r15)
   0.02%     0x00007f241463b7d4:   jne    0x00007f241463bb52           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@-1 (line 68)
   0.24%     0x00007f241463b7da:   imul   $0x13,0x88(%rsp),%rsi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@8 (line 70)
   0.54%     0x00007f241463b7e3:   imul   $0x13,0x90(%rsp),%r11        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@39 (line 74)
   0.16%     0x00007f241463b7ec:   mov    %rsi,%r10
   0.01%     0x00007f241463b7ef:   sar    $0x15,%r10
   0.18%     0x00007f241463b7f3:   mov    0x40(%rsp),%rbx
   0.03%     0x00007f241463b7f8:   add    %r10,%rbx
   0.26%     0x00007f241463b7fb:   mov    %r11,%rax
   0.01%     0x00007f241463b7fe:   sar    $0x15,%rax
   0.04%     0x00007f241463b802:   mov    0x48(%rsp),%r10
   0.02%     0x00007f241463b807:   add    %rax,%r10
   0.29%     0x00007f241463b80a:   shl    $0x5,%r11
   0.02%     0x00007f241463b80e:   and    $0x3ffffff,%r11
   0.17%     0x00007f241463b815:   add    %r11,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@52 (line 75)
   0.55%     0x00007f241463b818:   lea    0x2000000(%rbx),%rax
   0.25%     0x00007f241463b81f:   mov    %rax,%r11
   0.03%     0x00007f241463b822:   sar    $0x1a,%r11
   0.07%     0x00007f241463b826:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@90 (line 80)
   0.54%     0x00007f241463b829:   lea    0x2000000(%r10),%rbp
   0.11%     0x00007f241463b830:   mov    %rbp,%r11
   0.01%     0x00007f241463b833:   sar    $0x1a,%r11
   0.15%     0x00007f241463b837:   mov    0x50(%rsp),%r13
   0.17%     0x00007f241463b83c:   add    %r11,%r13
   0.12%     0x00007f241463b83f:   imul   $0x13,%r13,%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@126 (line 86)
   1.23%     0x00007f241463b843:   mov    %r13,%r11
   0.05%     0x00007f241463b846:   shl    $0x5,%r11
   0.03%     0x00007f241463b84a:   and    $0x3ffffff,%r11
   0.01%     0x00007f241463b851:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@138 (line 87)
   0.73%     0x00007f241463b854:   lea    0x2000000(%rcx),%r14
   0.13%     0x00007f241463b85b:   mov    %r14,%r11
   0.01%     0x00007f241463b85e:   and    $0xfffffffffc000000,%r11
             0x00007f241463b865:   sub    %r11,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@352 (line 115)
   0.24%     0x00007f241463b868:   mov    0xc(%rdx),%r11d              ; implicit exception: dispatches to 0x00007f241463bb24
   0.07%     0x00007f241463b86c:   vmovq  %rdi,%xmm4
   0.00%     0x00007f241463b871:   vmovq  %r9,%xmm3
             0x00007f241463b876:   vmovq  %r8,%xmm2
   0.22%     0x00007f241463b87b:   vmovq  %rcx,%xmm1
   0.30%     0x00007f241463b880:   vmovq  %rdx,%xmm0
   0.01%     0x00007f241463b885:   imul   $0x13,0x80(%rsp),%rdi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@310 (line 110)
   0.00%     0x00007f241463b88e:   imul   $0x13,0x78(%rsp),%r8         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@279 (line 106)
             0x00007f241463b894:   mov    %rdi,%r9
   0.33%     0x00007f241463b897:   shl    $0x5,%r9
   0.00%     0x00007f241463b89b:   mov    %r8,%rcx
             0x00007f241463b89e:   shl    $0x5,%rcx
             0x00007f241463b8a2:   and    $0x3ffffff,%r9
   0.28%     0x00007f241463b8a9:   and    $0x3ffffff,%rcx
   0.00%     0x00007f241463b8b0:   sar    $0x15,%r8                    ;   {no_reloc}
   0.00%     0x00007f241463b8b4:   mov    0x30(%rsp),%rdx
             0x00007f241463b8b9:   add    %r8,%rdx
   0.31%     0x00007f241463b8bc:   add    %r9,%rdx
   0.01%     0x00007f241463b8bf:   mov    %rdx,%r8
             0x00007f241463b8c2:   sar    $0x15,%rdi
             0x00007f241463b8c6:   sar    $0x1a,%r14
   0.29%     0x00007f241463b8ca:   sar    $0x15,%r13
   0.01%     0x00007f241463b8ce:   vmovq  %xmm2,%r9
             0x00007f241463b8d3:   add    %r13,%r9
             0x00007f241463b8d6:   mov    %r9,%r13
   0.32%     0x00007f241463b8d9:   and    $0xfffffffffc000000,%rbp
   0.01%     0x00007f241463b8e0:   sub    %rbp,%r10
             0x00007f241463b8e3:   and    $0xfffffffffc000000,%rax
             0x00007f241463b8e9:   sub    %rax,%rbx
   0.28%     0x00007f241463b8ec:   shl    $0x5,%rsi
   0.01%     0x00007f241463b8f0:   imul   $0x13,0x58(%rsp),%rdx        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@155 (line 90)
             0x00007f241463b8f6:   and    $0x3ffffff,%rsi
             0x00007f241463b8fd:   mov    0x38(%rsp),%r9
   0.29%     0x00007f241463b902:   add    %rsi,%r9
   0.00%     0x00007f241463b905:   add    %rdi,%r9
             0x00007f241463b908:   mov    %rdx,%rdi
             0x00007f241463b90b:   shl    $0x5,%rdi
   0.28%     0x00007f241463b90f:   sar    $0x15,%rdx
   0.01%     0x00007f241463b913:   vmovq  %xmm3,%rsi
             0x00007f241463b918:   add    %rdx,%rsi
             0x00007f241463b91b:   mov    %rsi,%rax
   0.28%     0x00007f241463b91e:   and    $0x3ffffff,%rdi
   0.01%     0x00007f241463b925:   lea    (%rdi,%r13,1),%rbp
             0x00007f241463b929:   add    %r14,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@358 (line 116)
             0x00007f241463b92c:   imul   $0x13,0x60(%rsp),%rdi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@186 (line 94)
   0.31%     0x00007f241463b932:   lea    0x2000000(%rbp),%rdx
   0.01%     0x00007f241463b939:   mov    %rdi,%rsi
             0x00007f241463b93c:   shl    $0x5,%rsi
             0x00007f241463b940:   mov    %rdx,%r13
   0.30%     0x00007f241463b943:   and    $0xfffffffffc000000,%r13
   0.00%     0x00007f241463b94a:   sub    %r13,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@379 (line 119)
             0x00007f241463b94d:   mov    %rbp,%r14
             0x00007f241463b950:   and    $0x3ffffff,%rsi
   0.30%     0x00007f241463b957:   add    %rsi,%rax
   0.01%     0x00007f241463b95a:   sar    $0x1a,%rdx
             0x00007f241463b95e:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@386 (line 120)
             0x00007f241463b961:   sar    $0x15,%rdi
   0.30%     0x00007f241463b965:   vmovq  %xmm4,%rdx
   0.00%     0x00007f241463b96a:   add    %rdi,%rdx
   0.00%     0x00007f241463b96d:   lea    0x2000000(%rax),%rsi
             0x00007f241463b974:   imul   $0x13,0x68(%rsp),%rbp        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@217 (line 98)
   0.35%     0x00007f241463b97a:   mov    %rsi,%rdi
   0.01%     0x00007f241463b97d:   and    $0xfffffffffc000000,%rdi
             0x00007f241463b984:   sub    %rdi,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@407 (line 123)
             0x00007f241463b987:   vmovq  %rax,%xmm2
   0.27%     0x00007f241463b98c:   mov    %rbp,%rdi
   0.01%     0x00007f241463b98f:   shl    $0x5,%rdi
             0x00007f241463b993:   sar    $0x15,%rbp
             0x00007f241463b997:   mov    0x20(%rsp),%rax
   0.27%     0x00007f241463b99c:   add    %rbp,%rax
   0.01%     0x00007f241463b99f:   mov    %rax,%rbp
   0.00%     0x00007f241463b9a2:   and    $0x3ffffff,%rdi
             0x00007f241463b9a9:   add    %rdi,%rdx
   0.29%     0x00007f241463b9ac:   sar    $0x1a,%rsi
   0.01%     0x00007f241463b9b0:   add    %rsi,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@414 (line 124)
                                                                       ;   {no_reloc}
             0x00007f241463b9b3:   mov    %rdx,%r13
             0x00007f241463b9b6:   imul   $0x13,0x70(%rsp),%rdi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@248 (line 102)
   0.27%     0x00007f241463b9bc:   add    $0x2000000,%rdx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@422 (line 126)
   0.00%     0x00007f241463b9c3:   mov    %rdi,%rsi
             0x00007f241463b9c6:   shl    $0x5,%rsi
             0x00007f241463b9ca:   mov    %rdx,%rax
   0.29%     0x00007f241463b9cd:   and    $0xfffffffffc000000,%rax
   0.01%     0x00007f241463b9d3:   sub    %rax,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@435 (line 127)
   0.00%     0x00007f241463b9d6:   and    $0x3ffffff,%rsi
             0x00007f241463b9dd:   add    %rsi,%rbp
   0.30%     0x00007f241463b9e0:   sar    $0x1a,%rdx
   0.00%     0x00007f241463b9e4:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@442 (line 128)
             0x00007f241463b9e7:   sar    $0x15,%rdi
             0x00007f241463b9eb:   mov    0x28(%rsp),%rdx
   0.27%     0x00007f241463b9f0:   add    %rdi,%rdx
   0.01%     0x00007f241463b9f3:   add    %rcx,%rdx
             0x00007f241463b9f6:   lea    0x2000000(%rbp),%rcx
             0x00007f241463b9fd:   mov    %rcx,%rdi
   0.26%     0x00007f241463ba00:   sar    $0x1a,%rdi
             0x00007f241463ba04:   add    %rdi,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@470 (line 132)
   0.00%     0x00007f241463ba07:   and    $0xfffffffffc000000,%rcx
             0x00007f241463ba0e:   sub    %rcx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@463 (line 131)
   0.32%     0x00007f241463ba11:   mov    %rbp,%rcx
   0.01%     0x00007f241463ba14:   lea    0x2000000(%rdx),%rdi
             0x00007f241463ba1b:   mov    %rdi,%rsi
             0x00007f241463ba1e:   sar    $0x1a,%rsi
   0.29%     0x00007f241463ba22:   lea    (%r8,%rsi,1),%rax
   0.00%     0x00007f241463ba26:   and    $0xfffffffffc000000,%rdi
             0x00007f241463ba2d:   sub    %rdi,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@491 (line 135)
             0x00007f241463ba30:   mov    %rdx,%r8
   0.33%     0x00007f241463ba33:   lea    0x2000000(%rax),%rdi
   0.00%     0x00007f241463ba3a:   mov    %rdi,%rdx
             0x00007f241463ba3d:   sar    $0x1a,%rdx
             0x00007f241463ba41:   lea    (%r9,%rdx,1),%rsi
   0.28%     0x00007f241463ba45:   and    $0xfffffffffc000000,%rdi
   0.01%     0x00007f241463ba4c:   sub    %rdi,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@519 (line 139)
             0x00007f241463ba4f:   lea    0x2000000(%rsi),%rdi
             0x00007f241463ba56:   mov    %rdi,%rdx
   0.32%     0x00007f241463ba59:   sar    $0x1a,%rdx
   0.00%     0x00007f241463ba5d:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@554 (line 144)
   0.01%     0x00007f241463ba60:   and    $0xfffffffffc000000,%rdi
             0x00007f241463ba67:   sub    %rdi,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@547 (line 143)
   0.27%     0x00007f241463ba6a:   mov    %rsi,%rdi
   0.01%     0x00007f241463ba6d:   lea    0x2000000(%rbx),%rdx
   0.04%     0x00007f241463ba74:   mov    %rdx,%rsi
             0x00007f241463ba77:   sar    $0x1a,%rsi
   0.39%     0x00007f241463ba7b:   add    %rsi,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@582 (line 148)
   0.05%     0x00007f241463ba7e:   and    $0xfffffffffc000000,%rdx
   0.01%     0x00007f241463ba85:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@575 (line 147)
             0x00007f241463ba88:   cmp    $0x9,%r11d
          ╭  0x00007f241463ba8c:   jbe    0x00007f241463bad8
   0.23%  │  0x00007f241463ba8e:   vmovq  %xmm0,%r11
   0.06%  │  0x00007f241463ba93:   vmovq  %xmm1,%rdx
   0.01%  │  0x00007f241463ba98:   mov    %rdx,0x10(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │  0x00007f241463ba9c:   mov    %r14,0x18(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@593 (line 151)
   0.23%  │  0x00007f241463baa0:   vmovq  %xmm2,%rdx
   0.05%  │  0x00007f241463baa5:   mov    %rdx,0x20(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@598 (line 152)
   0.02%  │  0x00007f241463baa9:   mov    %r13,0x28(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@603 (line 153)
          │  0x00007f241463baad:   mov    %rbp,0x30(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@608 (line 154)
   0.26%  │  0x00007f241463bab1:   mov    %r8,0x38(%r11)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@613 (line 155)
          │                                                            ;   {no_reloc}
   0.04%  │  0x00007f241463bab5:   mov    %rax,0x40(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@619 (line 156)
   0.01%  │  0x00007f241463bab9:   mov    %rdi,0x48(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@625 (line 157)
          │  0x00007f241463babd:   mov    %rbx,0x50(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@631 (line 158)
   0.25%  │  0x00007f241463bac1:   mov    %r10,0x58(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@637 (line 159)
   0.05%  │  0x00007f241463bac5:   add    $0x10,%rsp
   0.02%  │  0x00007f241463bac9:   pop    %rbp
          │  0x00007f241463baca:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f241463bad1:   ja     0x00007f241463bb3c
   0.29%  │  0x00007f241463bad7:   ret    
          ↘  0x00007f241463bad8:   mov    $0xffffffe4,%esi
             0x00007f241463badd:   vmovq  %xmm0,%rbp
             0x00007f241463bae2:   mov    %r14,0x20(%rsp)
             0x00007f241463bae7:   vmovsd %xmm2,0x28(%rsp)
             0x00007f241463baed:   mov    %r13,0x30(%rsp)
             0x00007f241463baf2:   mov    %rbx,0x38(%rsp)
             0x00007f241463baf7:   mov    %r10,0x40(%rsp)
             0x00007f241463bafc:   vmovsd %xmm1,0x50(%rsp)
             0x00007f241463bb02:   mov    %rcx,0x58(%rsp)
             0x00007f241463bb07:   mov    %r8,0x60(%rsp)
....................................................................................................
  18.11%  <total for region 2>

....[Hottest Regions]...............................................................................
  34.14%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 650 
  18.11%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 615 
   8.64%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   7.94%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 700 
   3.48%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 658 
   1.74%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 734 
   1.51%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 738 
   1.42%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 738 
   1.32%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 734 
   1.09%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 852 
   1.09%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 852 
   1.06%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 734 
   1.06%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 734 
   1.03%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 738 
   0.99%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 734 
   0.99%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 734 
   0.94%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 734 
   0.94%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 738 
   0.93%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 734 
   0.92%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 734 
  10.64%  <...other 533 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  34.14%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 650 
  18.11%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 615 
  11.54%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 734 
   8.64%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   7.94%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 700 
   7.42%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 738 
   3.48%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 658 
   2.36%         c2, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 736 
   2.21%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 852 
   1.52%              kernel  [unknown] 
   0.74%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.54%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 827 
   0.48%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 697 
   0.14%        runtime stub  StubRoutines::sha512_implCompress 
   0.09%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::asByteArray, version 2, compile id 947 
   0.06%         c2, level 4  sun.security.util.math.IntegerFieldModuloP::getElement, version 2, compile id 999 
   0.06%         c2, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 1001 
   0.04%         c2, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::mutable, version 2, compile id 984 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark::sign, version 2, compile id 1046 
   0.03%         c2, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1047 
   0.43%  <...other 93 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.61%         c2, level 4
   9.54%        runtime stub
   1.52%              kernel
   0.11%           libjvm.so
   0.11%        libc-2.31.so
   0.04%         interpreter
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%    Unknown, level 0
   0.00%      hsdis-amd64.so
   0.00%    perf-1934717.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed25519, messageLength = 16384)

# Run progress: 37.50% complete, ETA 00:09:14
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2497.023 us/op
# Warmup Iteration   2: 1351.827 us/op
# Warmup Iteration   3: 1350.964 us/op
# Warmup Iteration   4: 1350.494 us/op
# Warmup Iteration   5: 1349.500 us/op
Iteration   1: 1350.132 us/op
Iteration   2: 1348.310 us/op
Iteration   3: 1347.758 us/op
Iteration   4: 1349.621 us/op
Iteration   5: 1349.576 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  1349.079 ±(99.9%) 3.844 us/op [Average]
  (min, avg, max) = (1347.758, 1349.079, 1350.132), stdev = 0.998
  CI (99.9%): [1345.235, 1352.924] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 254391 total address lines.
Perf output processed (skipped 57.056 seconds):
 Column 1: cycles (50887 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 652 

             # parm2:    r8:r8     = &apos;[J&apos;
             #           [sp+0x270]  (sp of caller)
             0x00007fbc7463fd40:   mov    0x8(%rsi),%r10d
             0x00007fbc7463fd44:   movabs $0x7fbbfb000000,%r11
             0x00007fbc7463fd4e:   add    %r11,%r10
             0x00007fbc7463fd51:   cmp    %r10,%rax
             0x00007fbc7463fd54:   jne    0x00007fbc740c4080           ;   {runtime_call ic_miss_stub}
             0x00007fbc7463fd5a:   xchg   %ax,%ax
             0x00007fbc7463fd5c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.09%     0x00007fbc7463fd60:   mov    %eax,-0x14000(%rsp)
   0.26%     0x00007fbc7463fd67:   push   %rbp
   0.06%     0x00007fbc7463fd68:   sub    $0x260,%rsp
   0.10%     0x00007fbc7463fd6f:   nop
   0.04%     0x00007fbc7463fd70:   cmpl   $0x0,0x20(%r15)
   0.05%     0x00007fbc7463fd78:   jne    0x00007fbc7464080a           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@-1 (line 225)
   0.07%     0x00007fbc7463fd7e:   vmovq  %r8,%xmm0
   0.04%     0x00007fbc7463fd83:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007fbc746407cc
   0.06%     0x00007fbc7463fd87:   cmp    $0x9,%r10d
          ╭  0x00007fbc7463fd8b:   jbe    0x00007fbc7464075a
   0.04%  │  0x00007fbc7463fd91:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007fbc746407e0
   0.07%  │  0x00007fbc7463fd95:   mov    0x10(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
   0.06%  │  0x00007fbc7463fd99:   nopl   0x0(%rax)
   0.07%  │  0x00007fbc7463fda0:   cmp    $0x9,%r11d
          │  0x00007fbc7463fda4:   jbe    0x00007fbc74640788
   0.05%  │  0x00007fbc7463fdaa:   vmovq  %rsi,%xmm6
   0.05%  │  0x00007fbc7463fdaf:   vmovq  %rcx,%xmm1
   0.06%  │  0x00007fbc7463fdb4:   mov    0x10(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@5 (line 225)
   0.08%  │  0x00007fbc7463fdb8:   mov    0x18(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@18 (line 226)
   0.04%  │  0x00007fbc7463fdbc:   vmovq  %r10,%xmm5
   0.07%  │  0x00007fbc7463fdc1:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@6 (line 225)
   0.08%  │  0x00007fbc7463fdc5:   vmovq  %r10,%xmm7
   0.13%  │  0x00007fbc7463fdca:   mov    %r11,%rdi
   0.04%  │  0x00007fbc7463fdcd:   mov    %r8,0x78(%rsp)
   0.04%  │  0x00007fbc7463fdd2:   imul   %r8,%rdi
   0.03%  │  0x00007fbc7463fdd6:   mov    0x20(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@43 (line 227)
   0.08%  │  0x00007fbc7463fdda:   mov    0x28(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@76 (line 228)
   0.03%  │  0x00007fbc7463fdde:   mov    %r11,%rsi
   0.04%  │  0x00007fbc7463fde1:   mov    %r10,0x80(%rsp)
   0.02%  │  0x00007fbc7463fde9:   imul   %r10,%rsi
   0.08%  │  0x00007fbc7463fded:   mov    %r11,%r10
   0.03%  │  0x00007fbc7463fdf0:   mov    %r8,0x88(%rsp)
   0.04%  │  0x00007fbc7463fdf8:   imul   %r8,%r11
   0.03%  │  0x00007fbc7463fdfc:   mov    %r11,0x90(%rsp)
   0.10%  │  0x00007fbc7463fe04:   mov    0x30(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@117 (line 229)
   0.05%  │  0x00007fbc7463fe08:   mov    %r11,0x98(%rsp)
   0.05%  │  0x00007fbc7463fe10:   mov    0x38(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@166 (line 230)
   0.04%  │  0x00007fbc7463fe14:   mov    %r11,0xa0(%rsp)
   0.09%  │  0x00007fbc7463fe1c:   mov    %r10,%r13
   0.05%  │  0x00007fbc7463fe1f:   imul   0x98(%rsp),%r13
   0.30%  │  0x00007fbc7463fe28:   mov    %r10,%r11
   0.03%  │  0x00007fbc7463fe2b:   imul   0xa0(%rsp),%r11
   0.20%  │  0x00007fbc7463fe34:   mov    %r11,0xa8(%rsp)
   0.28%  │  0x00007fbc7463fe3c:   mov    0x40(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@225 (line 231)
   0.03%  │  0x00007fbc7463fe40:   mov    %r11,0xb0(%rsp)
   0.03%  │  0x00007fbc7463fe48:   mov    0x48(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@294 (line 232)
   0.04%  │  0x00007fbc7463fe4c:   mov    %r11,0xb8(%rsp)              ;   {no_reloc}
   0.16%  │  0x00007fbc7463fe54:   mov    %r10,%r11
   0.01%  │  0x00007fbc7463fe57:   imul   0xb0(%rsp),%r11
   0.10%  │  0x00007fbc7463fe60:   mov    %r11,0xc0(%rsp)
   0.20%  │  0x00007fbc7463fe68:   mov    %r10,%r11
   0.06%  │  0x00007fbc7463fe6b:   imul   0xb8(%rsp),%r11
   0.06%  │  0x00007fbc7463fe74:   mov    %r11,0xc8(%rsp)
   0.21%  │  0x00007fbc7463fe7c:   mov    0x50(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@373 (line 233)
   0.05%  │  0x00007fbc7463fe80:   mov    %r11,0xd0(%rsp)
   0.01%  │  0x00007fbc7463fe88:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@462 (line 234)
   0.00%  │  0x00007fbc7463fe8c:   mov    %r11,0xd8(%rsp)
   0.16%  │  0x00007fbc7463fe94:   mov    %r10,%r11
   0.05%  │  0x00007fbc7463fe97:   imul   0xd0(%rsp),%r11
   0.05%  │  0x00007fbc7463fea0:   mov    %r11,0xe0(%rsp)
   0.23%  │  0x00007fbc7463fea8:   imul   0xd8(%rsp),%r10
   0.05%  │  0x00007fbc7463feb1:   mov    %r10,0xe8(%rsp)
   0.23%  │  0x00007fbc7463feb9:   mov    0x18(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@14 (line 226)
   0.01%  │  0x00007fbc7463febd:   vmovq  %xmm1,%r10
   0.02%  │  0x00007fbc7463fec2:   mov    0x20(%r10),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@31 (line 227)
   0.02%  │  0x00007fbc7463fec6:   mov    %rcx,%r10
   0.17%  │  0x00007fbc7463fec9:   imul   0xd8(%rsp),%r10
   0.01%  │  0x00007fbc7463fed2:   mov    %r10,0xf0(%rsp)
   0.13%  │  0x00007fbc7463feda:   mov    %r8,%r10
   0.02%  │  0x00007fbc7463fedd:   imul   0xd8(%rsp),%r10
   0.08%  │  0x00007fbc7463fee6:   mov    %r10,0xf8(%rsp)
   0.03%  │  0x00007fbc7463feee:   mov    %r8,%r10
   0.07%  │  0x00007fbc7463fef1:   imul   0xd0(%rsp),%r10
   0.01%  │  0x00007fbc7463fefa:   mov    %r10,0x100(%rsp)
   0.09%  │  0x00007fbc7463ff02:   mov    %r8,%r10
   0.04%  │  0x00007fbc7463ff05:   imul   0xb8(%rsp),%r10
   0.09%  │  0x00007fbc7463ff0e:   mov    %r10,0x108(%rsp)
   0.04%  │  0x00007fbc7463ff16:   mov    %r8,%r10
   0.07%  │  0x00007fbc7463ff19:   imul   0xb0(%rsp),%r10
   0.02%  │  0x00007fbc7463ff22:   mov    %r10,0x110(%rsp)
   0.07%  │  0x00007fbc7463ff2a:   mov    %r8,%r10
   0.01%  │  0x00007fbc7463ff2d:   imul   0xa0(%rsp),%r10
   0.11%  │  0x00007fbc7463ff36:   mov    %r10,0x118(%rsp)
   0.03%  │  0x00007fbc7463ff3e:   mov    %r8,%r10
   0.06%  │  0x00007fbc7463ff41:   imul   0x98(%rsp),%r10
   0.01%  │  0x00007fbc7463ff4a:   mov    %r10,0x120(%rsp)
   0.11%  │  0x00007fbc7463ff52:   mov    %r8,%r10                     ;   {no_reloc}
   0.01%  │  0x00007fbc7463ff55:   imul   0x88(%rsp),%r10
   0.06%  │  0x00007fbc7463ff5e:   mov    %r10,0x128(%rsp)
   0.07%  │  0x00007fbc7463ff66:   mov    %r8,%r10
   0.04%  │  0x00007fbc7463ff69:   imul   0x80(%rsp),%r10
   0.01%  │  0x00007fbc7463ff72:   mov    0x78(%rsp),%r11
   0.05%  │  0x00007fbc7463ff77:   imul   %r8,%r11
   0.09%  │  0x00007fbc7463ff7b:   vmovq  %xmm5,%r9
   0.05%  │  0x00007fbc7463ff80:   imul   %r8,%r9
   0.01%  │  0x00007fbc7463ff84:   mov    %r9,%rax
   0.03%  │  0x00007fbc7463ff87:   mov    %rcx,%r8
   0.08%  │  0x00007fbc7463ff8a:   imul   0xd0(%rsp),%r8
   0.06%  │  0x00007fbc7463ff93:   mov    %r8,0x130(%rsp)
   0.30%  │  0x00007fbc7463ff9b:   mov    %rcx,%r8
   0.00%  │  0x00007fbc7463ff9e:   imul   0xb8(%rsp),%r8
          │  0x00007fbc7463ffa7:   mov    %r8,0x138(%rsp)
   0.22%  │  0x00007fbc7463ffaf:   mov    %rcx,%r8
   0.00%  │  0x00007fbc7463ffb2:   imul   0xb0(%rsp),%r8
   0.01%  │  0x00007fbc7463ffbb:   mov    %r8,0x140(%rsp)
   0.21%  │  0x00007fbc7463ffc3:   mov    %rcx,%rdx
   0.01%  │  0x00007fbc7463ffc6:   imul   0xa0(%rsp),%rdx
          │  0x00007fbc7463ffcf:   mov    %rcx,%r8
   0.00%  │  0x00007fbc7463ffd2:   imul   0x98(%rsp),%r8
   0.17%  │  0x00007fbc7463ffdb:   mov    %r8,0x148(%rsp)
   0.18%  │  0x00007fbc7463ffe3:   mov    %rcx,%r8
   0.00%  │  0x00007fbc7463ffe6:   imul   0x88(%rsp),%r8
          │  0x00007fbc7463ffef:   mov    %rcx,%r9
   0.01%  │  0x00007fbc7463fff2:   imul   0x80(%rsp),%r9
   0.21%  │  0x00007fbc7463fffb:   mov    %rcx,%rbx
   0.00%  │  0x00007fbc7463fffe:   imul   0x78(%rsp),%rbx
   0.00%  │  0x00007fbc74640004:   add    %rbx,%rax
   0.20%  │  0x00007fbc74640007:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@48 (line 227)
   0.22%  │  0x00007fbc7464000a:   vmovq  %rax,%xmm8
   0.38%  │  0x00007fbc7464000f:   vmovq  %xmm5,%rbx
   0.01%  │  0x00007fbc74640014:   imul   %rcx,%rbx
          │  0x00007fbc74640018:   add    %rdi,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@23 (line 226)
          │  0x00007fbc7464001b:   vmovq  %rbx,%xmm9
   0.23%  │  0x00007fbc74640020:   vmovq  %xmm1,%rcx
          │  0x00007fbc74640025:   mov    0x28(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@56 (line 228)
   0.00%  │  0x00007fbc74640029:   vmovq  %xmm1,%rbx
          │  0x00007fbc7464002e:   mov    0x30(%rbx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@89 (line 229)
   0.16%  │  0x00007fbc74640032:   mov    %rcx,%rbx
          │  0x00007fbc74640035:   imul   0xd8(%rsp),%rbx
   0.01%  │  0x00007fbc7464003e:   mov    %rbx,0x150(%rsp)
   0.01%  │  0x00007fbc74640046:   mov    %rdi,%rbx
   0.15%  │  0x00007fbc74640049:   imul   0xd8(%rsp),%rbx              ;   {no_reloc}
   0.00%  │  0x00007fbc74640052:   mov    %rbx,0x158(%rsp)
   0.00%  │  0x00007fbc7464005a:   mov    %rdi,%rbx
          │  0x00007fbc7464005d:   imul   0xd0(%rsp),%rbx
   0.17%  │  0x00007fbc74640066:   mov    %rbx,0x160(%rsp)
          │  0x00007fbc7464006e:   mov    %rdi,%rbx
          │  0x00007fbc74640071:   imul   0xb8(%rsp),%rbx
          │  0x00007fbc7464007a:   mov    %rbx,0x168(%rsp)
   0.22%  │  0x00007fbc74640082:   mov    %rdi,%rbx
   0.00%  │  0x00007fbc74640085:   imul   0xb0(%rsp),%rbx
          │  0x00007fbc7464008e:   mov    %rbx,0x170(%rsp)
   0.00%  │  0x00007fbc74640096:   mov    %rdi,%rbx
   0.20%  │  0x00007fbc74640099:   imul   0xa0(%rsp),%rbx
          │  0x00007fbc746400a2:   mov    %rbx,0x178(%rsp)
   0.01%  │  0x00007fbc746400aa:   mov    %rdi,%rbx
          │  0x00007fbc746400ad:   imul   0x98(%rsp),%rbx
   0.22%  │  0x00007fbc746400b6:   mov    %rbx,0x180(%rsp)
   0.00%  │  0x00007fbc746400be:   mov    0x88(%rsp),%rbx
          │  0x00007fbc746400c6:   imul   %rdi,%rbx
          │  0x00007fbc746400ca:   mov    %rbx,0x188(%rsp)
   0.20%  │  0x00007fbc746400d2:   mov    0x80(%rsp),%rsi
          │  0x00007fbc746400da:   imul   %rdi,%rsi
          │  0x00007fbc746400de:   mov    0x78(%rsp),%rax
          │  0x00007fbc746400e3:   imul   %rdi,%rax
   0.19%  │  0x00007fbc746400e7:   vmovq  %xmm5,%rbx
          │  0x00007fbc746400ec:   imul   %rdi,%rbx
          │  0x00007fbc746400f0:   mov    %rcx,%rdi
          │  0x00007fbc746400f3:   imul   0xd0(%rsp),%rdi
   0.26%  │  0x00007fbc746400fc:   mov    %rdi,0x190(%rsp)
   0.19%  │  0x00007fbc74640104:   mov    %rcx,%rdi
          │  0x00007fbc74640107:   imul   0xb8(%rsp),%rdi
          │  0x00007fbc74640110:   mov    %rdi,0x198(%rsp)
   0.22%  │  0x00007fbc74640118:   mov    %rcx,%rdi
          │  0x00007fbc7464011b:   imul   0xb0(%rsp),%rdi
          │  0x00007fbc74640124:   mov    %rdi,0x1a0(%rsp)
   0.21%  │  0x00007fbc7464012c:   mov    %rcx,%rdi
   0.00%  │  0x00007fbc7464012f:   imul   0xa0(%rsp),%rdi
          │  0x00007fbc74640138:   mov    %rdi,0x1a8(%rsp)
   0.21%  │  0x00007fbc74640140:   mov    %rcx,%rdi
          │  0x00007fbc74640143:   imul   0x98(%rsp),%rdi
   0.00%  │  0x00007fbc7464014c:   mov    %rdi,0x1b0(%rsp)             ;   {no_reloc}
   0.16%  │  0x00007fbc74640154:   mov    %rcx,%rbp
   0.03%  │  0x00007fbc74640157:   imul   0x88(%rsp),%rbp
   0.00%  │  0x00007fbc74640160:   mov    0x80(%rsp),%r14
   0.00%  │  0x00007fbc74640168:   imul   %rcx,%r14
   0.16%  │  0x00007fbc7464016c:   mov    0x78(%rsp),%rdi
   0.05%  │  0x00007fbc74640171:   imul   %rcx,%rdi
          │  0x00007fbc74640175:   add    %rdi,%rbx
   0.14%  │  0x00007fbc74640178:   add    %r10,%rbx
   0.92%  │  0x00007fbc7464017b:   add    %r8,%rbx
   0.03%  │  0x00007fbc7464017e:   add    %r13,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@122 (line 229)
   0.03%  │  0x00007fbc74640181:   vmovq  %rbx,%xmm2
   0.08%  │  0x00007fbc74640186:   vmovq  %xmm5,%r10
   0.16%  │  0x00007fbc7464018b:   imul   %rcx,%r10
          │  0x00007fbc7464018f:   add    %r11,%r10
          │  0x00007fbc74640192:   add    %r9,%r10
   0.06%  │  0x00007fbc74640195:   add    0x90(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@81 (line 228)
   0.15%  │  0x00007fbc7464019d:   vmovq  %r10,%xmm10
   0.03%  │  0x00007fbc746401a2:   vmovq  %xmm1,%r10
          │  0x00007fbc746401a7:   mov    0x38(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@130 (line 230)
   0.01%  │  0x00007fbc746401ab:   vmovq  %xmm1,%r11
   0.15%  │  0x00007fbc746401b0:   mov    0x40(%r11),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@180 (line 231)
   0.04%  │  0x00007fbc746401b4:   mov    %r10,%r11
          │  0x00007fbc746401b7:   imul   0xd8(%rsp),%r11
   0.01%  │  0x00007fbc746401c0:   mov    %r11,0x90(%rsp)
   0.15%  │  0x00007fbc746401c8:   mov    %r8,%r11
   0.04%  │  0x00007fbc746401cb:   imul   0xd8(%rsp),%r11
          │  0x00007fbc746401d4:   mov    %r11,0x1b8(%rsp)
   0.02%  │  0x00007fbc746401dc:   mov    %r8,%r11
   0.17%  │  0x00007fbc746401df:   imul   0xd0(%rsp),%r11
   0.04%  │  0x00007fbc746401e8:   mov    %r11,0x1c0(%rsp)
   0.04%  │  0x00007fbc746401f0:   mov    %r8,%r11
   0.00%  │  0x00007fbc746401f3:   imul   0xb8(%rsp),%r11
   0.19%  │  0x00007fbc746401fc:   mov    %r11,0x1c8(%rsp)
   0.01%  │  0x00007fbc74640204:   mov    %r8,%r11
   0.03%  │  0x00007fbc74640207:   imul   0xb0(%rsp),%r11
          │  0x00007fbc74640210:   mov    %r11,0x1d0(%rsp)
   0.16%  │  0x00007fbc74640218:   mov    0xa0(%rsp),%r11
   0.00%  │  0x00007fbc74640220:   imul   %r8,%r11
   0.05%  │  0x00007fbc74640224:   mov    %r11,0x1d8(%rsp)
   0.06%  │  0x00007fbc7464022c:   mov    0x98(%rsp),%r11
   0.14%  │  0x00007fbc74640234:   imul   %r8,%r11
   0.01%  │  0x00007fbc74640238:   mov    %r11,0x1e0(%rsp)
   0.07%  │  0x00007fbc74640240:   mov    0x88(%rsp),%r11
   0.00%  │  0x00007fbc74640248:   imul   %r8,%r11
   0.14%  │  0x00007fbc7464024c:   mov    %r11,0x1e8(%rsp)             ;   {no_reloc}
   0.10%  │  0x00007fbc74640254:   mov    0x80(%rsp),%rbx
          │  0x00007fbc7464025c:   imul   %r8,%rbx
   0.00%  │  0x00007fbc74640260:   mov    0x78(%rsp),%r11
   0.11%  │  0x00007fbc74640265:   imul   %r8,%r11
   0.06%  │  0x00007fbc74640269:   mov    %r11,0x1f0(%rsp)
   0.08%  │  0x00007fbc74640271:   vmovq  %xmm5,%r11
   0.01%  │  0x00007fbc74640276:   imul   %r8,%r11
   0.11%  │  0x00007fbc7464027a:   mov    %r10,%r8
   0.01%  │  0x00007fbc7464027d:   imul   0xd0(%rsp),%r8
   0.10%  │  0x00007fbc74640286:   mov    %r8,0x1f8(%rsp)
   0.12%  │  0x00007fbc7464028e:   mov    %r10,%r8
   0.10%  │  0x00007fbc74640291:   imul   0xb8(%rsp),%r8
   0.01%  │  0x00007fbc7464029a:   mov    %r8,0x200(%rsp)
   0.14%  │  0x00007fbc746402a2:   mov    %r10,%r8
   0.00%  │  0x00007fbc746402a5:   imul   0xb0(%rsp),%r8
   0.09%  │  0x00007fbc746402ae:   mov    %r8,0x208(%rsp)
   0.14%  │  0x00007fbc746402b6:   mov    %r10,%r8
          │  0x00007fbc746402b9:   imul   0xa0(%rsp),%r8
   0.00%  │  0x00007fbc746402c2:   mov    %r8,0x210(%rsp)
   0.22%  │  0x00007fbc746402ca:   mov    0x98(%rsp),%r8
   0.00%  │  0x00007fbc746402d2:   imul   %r10,%r8
          │  0x00007fbc746402d6:   mov    %r8,0x218(%rsp)
   0.19%  │  0x00007fbc746402de:   mov    0x88(%rsp),%rdi
   0.06%  │  0x00007fbc746402e6:   imul   %r10,%rdi
   0.00%  │  0x00007fbc746402ea:   mov    0x80(%rsp),%r13
          │  0x00007fbc746402f2:   imul   %r10,%r13
   0.17%  │  0x00007fbc746402f6:   mov    0x78(%rsp),%r8
   0.06%  │  0x00007fbc746402fb:   imul   %r10,%r8
   0.00%  │  0x00007fbc746402ff:   add    %r8,%r11
   0.07%  │  0x00007fbc74640302:   add    %rsi,%r11
   0.15%  │  0x00007fbc74640305:   add    %rbp,%r11
   0.21%  │  0x00007fbc74640308:   add    0x120(%rsp),%r11
   0.20%  │  0x00007fbc74640310:   add    %rdx,%r11
   0.19%  │  0x00007fbc74640313:   add    0xc0(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@230 (line 231)
   0.19%  │  0x00007fbc7464031b:   vmovq  %r11,%xmm3
   0.41%  │  0x00007fbc74640320:   vmovq  %xmm5,%r11
          │  0x00007fbc74640325:   imul   %r10,%r11
          │  0x00007fbc74640329:   add    %rax,%r11
          │  0x00007fbc7464032c:   add    %r14,%r11
   0.21%  │  0x00007fbc7464032f:   add    0x128(%rsp),%r11
          │  0x00007fbc74640337:   add    0x148(%rsp),%r11
          │  0x00007fbc7464033f:   add    0xa8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@171 (line 230)
          │  0x00007fbc74640347:   vmovq  %r11,%xmm4
   0.20%  │  0x00007fbc7464034c:   vmovq  %xmm1,%r10                   ;   {no_reloc}
          │  0x00007fbc74640351:   mov    0x48(%r10),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@239 (line 232)
   0.00%  │  0x00007fbc74640355:   vmovq  %xmm1,%r11
          │  0x00007fbc7464035a:   mov    0x50(%r11),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@308 (line 233)
   0.22%  │  0x00007fbc7464035e:   mov    %r10,%r11
          │  0x00007fbc74640361:   imul   0xd8(%rsp),%r11
   0.01%  │  0x00007fbc7464036a:   mov    %r11,0xa8(%rsp)
   0.05%  │  0x00007fbc74640372:   mov    %rdx,%r11
   0.18%  │  0x00007fbc74640375:   imul   0xd8(%rsp),%r11
          │  0x00007fbc7464037e:   mov    %rdx,%r8
          │  0x00007fbc74640381:   imul   0xd0(%rsp),%r8
   0.04%  │  0x00007fbc7464038a:   mov    0xb8(%rsp),%r9
   0.14%  │  0x00007fbc74640392:   imul   %rdx,%r9
          │  0x00007fbc74640396:   mov    %r9,0xc0(%rsp)
   0.06%  │  0x00007fbc7464039e:   mov    0xb0(%rsp),%r9
          │  0x00007fbc746403a6:   imul   %rdx,%r9
   0.10%  │  0x00007fbc746403aa:   mov    %r9,0x120(%rsp)
   0.07%  │  0x00007fbc746403b2:   mov    0xa0(%rsp),%r9
          │  0x00007fbc746403ba:   imul   %rdx,%r9
   0.00%  │  0x00007fbc746403be:   mov    %r9,0x128(%rsp)
   0.17%  │  0x00007fbc746403c6:   mov    0x98(%rsp),%r9
          │  0x00007fbc746403ce:   imul   %rdx,%r9
          │  0x00007fbc746403d2:   mov    %r9,0x148(%rsp)
   0.12%  │  0x00007fbc746403da:   mov    0x88(%rsp),%r9
   0.08%  │  0x00007fbc746403e2:   imul   %rdx,%r9
          │  0x00007fbc746403e6:   mov    %r9,0x220(%rsp)
   0.14%  │  0x00007fbc746403ee:   mov    0x80(%rsp),%r9
          │  0x00007fbc746403f6:   imul   %rdx,%r9
   0.07%  │  0x00007fbc746403fa:   mov    %r9,0x228(%rsp)
   0.16%  │  0x00007fbc74640402:   mov    0x78(%rsp),%r9
          │  0x00007fbc74640407:   imul   %rdx,%r9
          │  0x00007fbc7464040b:   vmovq  %xmm5,%rcx
   0.06%  │  0x00007fbc74640410:   imul   %rdx,%rcx
   0.16%  │  0x00007fbc74640414:   mov    %r10,%rdx
          │  0x00007fbc74640417:   imul   0xd0(%rsp),%rdx
          │  0x00007fbc74640420:   mov    %r10,%rsi
   0.06%  │  0x00007fbc74640423:   imul   0xb8(%rsp),%rsi
   0.17%  │  0x00007fbc7464042c:   mov    0xb0(%rsp),%rax
          │  0x00007fbc74640434:   imul   %r10,%rax
   0.15%  │  0x00007fbc74640438:   mov    0xa0(%rsp),%rbp
   0.05%  │  0x00007fbc74640440:   imul   %r10,%rbp
   0.17%  │  0x00007fbc74640444:   mov    %rbp,0x230(%rsp)
   0.38%  │  0x00007fbc7464044c:   mov    0x98(%rsp),%rbp              ;   {no_reloc}
          │  0x00007fbc74640454:   imul   %r10,%rbp
   0.03%  │  0x00007fbc74640458:   mov    %rbp,0x238(%rsp)
   0.16%  │  0x00007fbc74640460:   mov    0x88(%rsp),%rbp
          │  0x00007fbc74640468:   imul   %r10,%rbp
          │  0x00007fbc7464046c:   mov    %rbp,0x240(%rsp)
   0.22%  │  0x00007fbc74640474:   mov    0x80(%rsp),%rbp
          │  0x00007fbc7464047c:   imul   %r10,%rbp
          │  0x00007fbc74640480:   mov    0x78(%rsp),%r14
   0.00%  │  0x00007fbc74640485:   imul   %r10,%r14
   0.21%  │  0x00007fbc74640489:   add    %r14,%rcx
   0.01%  │  0x00007fbc7464048c:   add    %rbx,%rcx
   0.34%  │  0x00007fbc7464048f:   add    %rdi,%rcx
   0.02%  │  0x00007fbc74640492:   add    0x180(%rsp),%rcx
   0.22%  │  0x00007fbc7464049a:   add    0x1a8(%rsp),%rcx
   0.20%  │  0x00007fbc746404a2:   add    0x110(%rsp),%rcx
   0.20%  │  0x00007fbc746404aa:   add    0x138(%rsp),%rcx
   0.23%  │  0x00007fbc746404b2:   add    0xe0(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@378 (line 233)
   0.19%  │  0x00007fbc746404ba:   mov    %rcx,%r14
          │  0x00007fbc746404bd:   vmovq  %xmm5,%rcx
          │  0x00007fbc746404c2:   imul   %r10,%rcx
          │  0x00007fbc746404c6:   add    0x1f0(%rsp),%rcx
   0.17%  │  0x00007fbc746404ce:   add    %r13,%rcx
          │  0x00007fbc746404d1:   add    0x188(%rsp),%rcx
          │  0x00007fbc746404d9:   add    0x1b0(%rsp),%rcx
          │  0x00007fbc746404e1:   add    0x118(%rsp),%rcx
   0.21%  │  0x00007fbc746404e9:   add    0x140(%rsp),%rcx
          │  0x00007fbc746404f1:   add    0xc8(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@299 (line 232)
   0.16%  │  0x00007fbc746404f9:   mov    %rcx,%r13
          │  0x00007fbc746404fc:   vmovq  %xmm1,%r10
   0.04%  │  0x00007fbc74640501:   mov    0x58(%r10),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@387 (line 234)
   0.00%  │  0x00007fbc74640505:   vmovq  %xmm5,%r10
   0.21%  │  0x00007fbc7464050a:   imul   %rcx,%r10
   0.00%  │  0x00007fbc7464050e:   add    %r9,%r10
   0.04%  │  0x00007fbc74640511:   add    %rbp,%r10
          │  0x00007fbc74640514:   add    0x1e8(%rsp),%r10
   0.33%  │  0x00007fbc7464051c:   add    0x218(%rsp),%r10
   0.01%  │  0x00007fbc74640524:   add    0x178(%rsp),%r10
   0.24%  │  0x00007fbc7464052c:   add    0x1a0(%rsp),%r10
   0.19%  │  0x00007fbc74640534:   add    0x108(%rsp),%r10
   0.17%  │  0x00007fbc7464053c:   add    0x130(%rsp),%r10
   0.20%  │  0x00007fbc74640544:   add    0xe8(%rsp),%r10              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@467 (line 234)
   0.21%  │  0x00007fbc7464054c:   mov    %r10,%rbp                    ;   {no_reloc}
          │  0x00007fbc7464054f:   mov    %rcx,%r10
          │  0x00007fbc74640552:   imul   0xd8(%rsp),%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@896 (line 243)
          │  0x00007fbc7464055b:   vmovq  %r10,%xmm1
   0.17%  │  0x00007fbc74640560:   mov    0xd0(%rsp),%r10
          │  0x00007fbc74640568:   imul   %rcx,%r10
          │  0x00007fbc7464056c:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@885 (line 242)
          │  0x00007fbc7464056f:   vmovq  %r10,%xmm5
   0.27%  │  0x00007fbc74640574:   mov    0xb8(%rsp),%r9
          │  0x00007fbc7464057c:   imul   %rcx,%r9
          │  0x00007fbc74640580:   add    %r8,%r9
          │  0x00007fbc74640583:   add    0xa8(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@864 (line 241)
   0.16%  │  0x00007fbc7464058b:   mov    0xb0(%rsp),%r8
          │  0x00007fbc74640593:   imul   %rcx,%r8
          │  0x00007fbc74640597:   add    0xc0(%rsp),%r8
          │  0x00007fbc7464059f:   add    %rdx,%r8
   0.19%  │  0x00007fbc746405a2:   add    0x1b8(%rsp),%r8              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@833 (line 240)
          │  0x00007fbc746405aa:   mov    0xa0(%rsp),%rbx
          │  0x00007fbc746405b2:   imul   %rcx,%rbx
          │  0x00007fbc746405b6:   add    0x120(%rsp),%rbx
   0.20%  │  0x00007fbc746405be:   add    %rsi,%rbx
          │  0x00007fbc746405c1:   add    0x1c0(%rsp),%rbx
          │  0x00007fbc746405c9:   add    0x90(%rsp),%rbx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@792 (line 239)
          │  0x00007fbc746405d1:   mov    0x98(%rsp),%rdi
   0.23%  │  0x00007fbc746405d9:   imul   %rcx,%rdi
          │  0x00007fbc746405dd:   add    0x128(%rsp),%rdi
          │  0x00007fbc746405e5:   add    %rax,%rdi
          │  0x00007fbc746405e8:   add    0x1c8(%rsp),%rdi
   0.18%  │  0x00007fbc746405f0:   add    0x1f8(%rsp),%rdi
          │  0x00007fbc746405f8:   add    0x158(%rsp),%rdi             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@743 (line 238)
   0.11%  │  0x00007fbc74640600:   mov    0x88(%rsp),%r10
          │  0x00007fbc74640608:   imul   %rcx,%r10
   0.11%  │  0x00007fbc7464060c:   add    0x148(%rsp),%r10
          │  0x00007fbc74640614:   add    0x230(%rsp),%r10
   0.11%  │  0x00007fbc7464061c:   add    0x1d0(%rsp),%r10
          │  0x00007fbc74640624:   add    0x200(%rsp),%r10
   0.09%  │  0x00007fbc7464062c:   add    0x160(%rsp),%r10
   0.10%  │  0x00007fbc74640634:   add    0x150(%rsp),%r10             ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@686 (line 237)
   0.12%  │  0x00007fbc7464063c:   mov    0x80(%rsp),%r11
          │  0x00007fbc74640644:   imul   %rcx,%r11
   0.08%  │  0x00007fbc74640648:   add    0x220(%rsp),%r11             ;   {no_reloc}
          │  0x00007fbc74640650:   add    0x238(%rsp),%r11
   0.12%  │  0x00007fbc74640658:   add    0x1d8(%rsp),%r11
   0.00%  │  0x00007fbc74640660:   add    0x208(%rsp),%r11
   0.10%  │  0x00007fbc74640668:   add    0x168(%rsp),%r11
   0.13%  │  0x00007fbc74640670:   add    0x190(%rsp),%r11
   0.18%  │  0x00007fbc74640678:   add    0xf8(%rsp),%r11              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@621 (line 236)
   0.23%  │  0x00007fbc74640680:   mov    0x78(%rsp),%rsi
   0.01%  │  0x00007fbc74640685:   imul   %rcx,%rsi
          │  0x00007fbc74640689:   add    0x228(%rsp),%rsi
          │  0x00007fbc74640691:   add    0x240(%rsp),%rsi
   0.20%  │  0x00007fbc74640699:   add    0x1e0(%rsp),%rsi
   0.07%  │  0x00007fbc746406a1:   add    0x210(%rsp),%rsi
   0.12%  │  0x00007fbc746406a9:   add    0x170(%rsp),%rsi
   0.19%  │  0x00007fbc746406b1:   add    0x198(%rsp),%rsi
   0.22%  │  0x00007fbc746406b9:   add    0x100(%rsp),%rsi
   0.23%  │  0x00007fbc746406c1:   add    0xf0(%rsp),%rsi              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@548 (line 235)
   0.19%  │  0x00007fbc746406c9:   vmovq  %xmm0,%rdx
          │  0x00007fbc746406ce:   vmovsd %xmm2,(%rsp)
   0.05%  │  0x00007fbc746406d3:   vmovsd %xmm4,0x8(%rsp)
   0.02%  │  0x00007fbc746406d9:   vmovsd %xmm3,0x10(%rsp)
   0.15%  │  0x00007fbc746406df:   mov    %r13,0x18(%rsp)
   0.10%  │  0x00007fbc746406e4:   mov    %r14,0x20(%rsp)
   0.05%  │  0x00007fbc746406e9:   mov    %rbp,0x28(%rsp)
   0.05%  │  0x00007fbc746406ee:   mov    %rsi,0x30(%rsp)
   0.24%  │  0x00007fbc746406f3:   mov    %r11,0x38(%rsp)
   0.01%  │  0x00007fbc746406f8:   mov    %r10,0x40(%rsp)
   0.08%  │  0x00007fbc746406fd:   mov    %rdi,0x48(%rsp)
   0.03%  │  0x00007fbc74640702:   mov    %rbx,0x50(%rsp)
   0.10%  │  0x00007fbc74640707:   mov    %r8,0x58(%rsp)
   0.02%  │  0x00007fbc7464070c:   mov    %r9,0x60(%rsp)
   0.12%  │  0x00007fbc74640711:   vmovsd %xmm5,0x68(%rsp)
   0.10%  │  0x00007fbc74640717:   vmovsd %xmm1,0x70(%rsp)
   0.19%  │  0x00007fbc7464071d:   vmovq  %xmm6,%rsi
          │  0x00007fbc74640722:   vmovq  %xmm7,%rcx
   0.01%  │  0x00007fbc74640727:   vmovq  %xmm9,%r8
   0.03%  │  0x00007fbc7464072c:   vmovq  %xmm8,%r9
   0.18%  │  0x00007fbc74640731:   vmovq  %xmm10,%rdi
          │  0x00007fbc74640736:   nop
   0.00%  │  0x00007fbc74640737:   call   0x00007fbc740c4380           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │                                                            ;   {optimized virtual_call}
   0.01%  │  0x00007fbc7464073c:   nopl   0xbac(%rax,%rax,1)           ;*invokevirtual carryReduce {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │                                                            ;   {other}
   0.00%  │  0x00007fbc74640744:   add    $0x260,%rsp
   0.18%  │  0x00007fbc7464074b:   pop    %rbp
   0.01%  │  0x00007fbc7464074c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fbc74640753:   ja     0x00007fbc746407f4
   0.17%  │  0x00007fbc74640759:   ret    
          ↘  0x00007fbc7464075a:   mov    %rsi,%rbp
             0x00007fbc7464075d:   mov    %rcx,0x80(%rsp)
             0x00007fbc74640765:   mov    %r8,0x88(%rsp)
             0x00007fbc7464076d:   mov    %rdx,0x90(%rsp)
             0x00007fbc74640775:   mov    $0xffffffe4,%esi
             0x00007fbc7464077a:   nop
             0x00007fbc7464077b:   call   0x00007fbc740c9f00           ; ImmutableOopMap {rbp=Oop [128]=Oop [136]=Oop [144]=Oop }
                                                                       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  32.13%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 633 

             # parm18:   [sp+0x88]   = long
             # parm19:   [sp+0x90]   = long
             0x00007fbc7463bd20:   mov    0x8(%rsi),%r10d
             0x00007fbc7463bd24:   movabs $0x7fbbfb000000,%r11
             0x00007fbc7463bd2e:   add    %r11,%r10
             0x00007fbc7463bd31:   cmp    %r10,%rax
             0x00007fbc7463bd34:   jne    0x00007fbc740c4080           ;   {runtime_call ic_miss_stub}
             0x00007fbc7463bd3a:   xchg   %ax,%ax
             0x00007fbc7463bd3c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.30%     0x00007fbc7463bd40:   mov    %eax,-0x14000(%rsp)
   0.01%     0x00007fbc7463bd47:   push   %rbp
   0.23%     0x00007fbc7463bd48:   sub    $0x10,%rsp
   0.03%     0x00007fbc7463bd4c:   cmpl   $0x1,0x20(%r15)
   0.02%     0x00007fbc7463bd54:   jne    0x00007fbc7463c0d2           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@-1 (line 68)
   0.24%     0x00007fbc7463bd5a:   imul   $0x13,0x88(%rsp),%rsi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@8 (line 70)
   0.52%     0x00007fbc7463bd63:   imul   $0x13,0x90(%rsp),%r11        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@39 (line 74)
   0.19%     0x00007fbc7463bd6c:   mov    %rsi,%r10
   0.01%     0x00007fbc7463bd6f:   sar    $0x15,%r10
   0.19%     0x00007fbc7463bd73:   mov    0x40(%rsp),%rbx
   0.02%     0x00007fbc7463bd78:   add    %r10,%rbx
   0.22%     0x00007fbc7463bd7b:   mov    %r11,%rax
             0x00007fbc7463bd7e:   sar    $0x15,%rax
   0.05%     0x00007fbc7463bd82:   mov    0x48(%rsp),%r10
   0.01%     0x00007fbc7463bd87:   add    %rax,%r10
   0.28%     0x00007fbc7463bd8a:   shl    $0x5,%r11
   0.01%     0x00007fbc7463bd8e:   and    $0x3ffffff,%r11
   0.19%     0x00007fbc7463bd95:   add    %r11,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@52 (line 75)
   0.53%     0x00007fbc7463bd98:   lea    0x2000000(%rbx),%rax
   0.20%     0x00007fbc7463bd9f:   mov    %rax,%r11
   0.01%     0x00007fbc7463bda2:   sar    $0x1a,%r11
   0.07%     0x00007fbc7463bda6:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@90 (line 80)
   0.57%     0x00007fbc7463bda9:   lea    0x2000000(%r10),%rbp
   0.06%     0x00007fbc7463bdb0:   mov    %rbp,%r11
   0.00%     0x00007fbc7463bdb3:   sar    $0x1a,%r11
   0.15%     0x00007fbc7463bdb7:   mov    0x50(%rsp),%r13
   0.15%     0x00007fbc7463bdbc:   add    %r11,%r13
   0.09%     0x00007fbc7463bdbf:   imul   $0x13,%r13,%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@126 (line 86)
   1.11%     0x00007fbc7463bdc3:   mov    %r13,%r11
   0.06%     0x00007fbc7463bdc6:   shl    $0x5,%r11
   0.03%     0x00007fbc7463bdca:   and    $0x3ffffff,%r11
   0.01%     0x00007fbc7463bdd1:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@138 (line 87)
   0.68%     0x00007fbc7463bdd4:   lea    0x2000000(%rcx),%r14
   0.13%     0x00007fbc7463bddb:   mov    %r14,%r11
   0.02%     0x00007fbc7463bdde:   and    $0xfffffffffc000000,%r11
   0.00%     0x00007fbc7463bde5:   sub    %r11,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@352 (line 115)
   0.20%     0x00007fbc7463bde8:   mov    0xc(%rdx),%r11d              ; implicit exception: dispatches to 0x00007fbc7463c0a4
   0.08%     0x00007fbc7463bdec:   vmovq  %rdi,%xmm4
   0.00%     0x00007fbc7463bdf1:   vmovq  %r9,%xmm3
             0x00007fbc7463bdf6:   vmovq  %r8,%xmm2
   0.22%     0x00007fbc7463bdfb:   vmovq  %rcx,%xmm1
   0.29%     0x00007fbc7463be00:   vmovq  %rdx,%xmm0
   0.00%     0x00007fbc7463be05:   imul   $0x13,0x80(%rsp),%rdi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@310 (line 110)
   0.00%     0x00007fbc7463be0e:   imul   $0x13,0x78(%rsp),%r8         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@279 (line 106)
             0x00007fbc7463be14:   mov    %rdi,%r9
   0.30%     0x00007fbc7463be17:   shl    $0x5,%r9
   0.01%     0x00007fbc7463be1b:   mov    %r8,%rcx
             0x00007fbc7463be1e:   shl    $0x5,%rcx
             0x00007fbc7463be22:   and    $0x3ffffff,%r9
   0.33%     0x00007fbc7463be29:   and    $0x3ffffff,%rcx
             0x00007fbc7463be30:   sar    $0x15,%r8                    ;   {no_reloc}
             0x00007fbc7463be34:   mov    0x30(%rsp),%rdx
             0x00007fbc7463be39:   add    %r8,%rdx
   0.27%     0x00007fbc7463be3c:   add    %r9,%rdx
   0.01%     0x00007fbc7463be3f:   mov    %rdx,%r8
             0x00007fbc7463be42:   sar    $0x15,%rdi
             0x00007fbc7463be46:   sar    $0x1a,%r14
   0.28%     0x00007fbc7463be4a:   sar    $0x15,%r13
             0x00007fbc7463be4e:   vmovq  %xmm2,%r9
             0x00007fbc7463be53:   add    %r13,%r9
             0x00007fbc7463be56:   mov    %r9,%r13
   0.31%     0x00007fbc7463be59:   and    $0xfffffffffc000000,%rbp
   0.00%     0x00007fbc7463be60:   sub    %rbp,%r10
             0x00007fbc7463be63:   and    $0xfffffffffc000000,%rax
             0x00007fbc7463be69:   sub    %rax,%rbx
   0.32%     0x00007fbc7463be6c:   shl    $0x5,%rsi
             0x00007fbc7463be70:   imul   $0x13,0x58(%rsp),%rdx        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@155 (line 90)
             0x00007fbc7463be76:   and    $0x3ffffff,%rsi
             0x00007fbc7463be7d:   mov    0x38(%rsp),%r9
   0.28%     0x00007fbc7463be82:   add    %rsi,%r9
   0.01%     0x00007fbc7463be85:   add    %rdi,%r9
             0x00007fbc7463be88:   mov    %rdx,%rdi
             0x00007fbc7463be8b:   shl    $0x5,%rdi
   0.27%     0x00007fbc7463be8f:   sar    $0x15,%rdx
   0.01%     0x00007fbc7463be93:   vmovq  %xmm3,%rsi
             0x00007fbc7463be98:   add    %rdx,%rsi
             0x00007fbc7463be9b:   mov    %rsi,%rax
   0.29%     0x00007fbc7463be9e:   and    $0x3ffffff,%rdi
   0.00%     0x00007fbc7463bea5:   lea    (%rdi,%r13,1),%rbp
             0x00007fbc7463bea9:   add    %r14,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@358 (line 116)
             0x00007fbc7463beac:   imul   $0x13,0x60(%rsp),%rdi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@186 (line 94)
   0.28%     0x00007fbc7463beb2:   lea    0x2000000(%rbp),%rdx
   0.00%     0x00007fbc7463beb9:   mov    %rdi,%rsi
             0x00007fbc7463bebc:   shl    $0x5,%rsi
             0x00007fbc7463bec0:   mov    %rdx,%r13
   0.26%     0x00007fbc7463bec3:   and    $0xfffffffffc000000,%r13
   0.00%     0x00007fbc7463beca:   sub    %r13,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@379 (line 119)
             0x00007fbc7463becd:   mov    %rbp,%r14
             0x00007fbc7463bed0:   and    $0x3ffffff,%rsi
   0.30%     0x00007fbc7463bed7:   add    %rsi,%rax
             0x00007fbc7463beda:   sar    $0x1a,%rdx
   0.00%     0x00007fbc7463bede:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@386 (line 120)
             0x00007fbc7463bee1:   sar    $0x15,%rdi
   0.33%     0x00007fbc7463bee5:   vmovq  %xmm4,%rdx
   0.01%     0x00007fbc7463beea:   add    %rdi,%rdx
             0x00007fbc7463beed:   lea    0x2000000(%rax),%rsi
             0x00007fbc7463bef4:   imul   $0x13,0x68(%rsp),%rbp        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@217 (line 98)
   0.31%     0x00007fbc7463befa:   mov    %rsi,%rdi
   0.00%     0x00007fbc7463befd:   and    $0xfffffffffc000000,%rdi
             0x00007fbc7463bf04:   sub    %rdi,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@407 (line 123)
             0x00007fbc7463bf07:   vmovq  %rax,%xmm2
   0.25%     0x00007fbc7463bf0c:   mov    %rbp,%rdi
   0.00%     0x00007fbc7463bf0f:   shl    $0x5,%rdi
             0x00007fbc7463bf13:   sar    $0x15,%rbp
             0x00007fbc7463bf17:   mov    0x20(%rsp),%rax
   0.31%     0x00007fbc7463bf1c:   add    %rbp,%rax
   0.00%     0x00007fbc7463bf1f:   mov    %rax,%rbp
             0x00007fbc7463bf22:   and    $0x3ffffff,%rdi
             0x00007fbc7463bf29:   add    %rdi,%rdx
   0.31%     0x00007fbc7463bf2c:   sar    $0x1a,%rsi
   0.01%     0x00007fbc7463bf30:   add    %rsi,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@414 (line 124)
                                                                       ;   {no_reloc}
             0x00007fbc7463bf33:   mov    %rdx,%r13
             0x00007fbc7463bf36:   imul   $0x13,0x70(%rsp),%rdi        ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@248 (line 102)
   0.30%     0x00007fbc7463bf3c:   add    $0x2000000,%rdx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@422 (line 126)
   0.00%     0x00007fbc7463bf43:   mov    %rdi,%rsi
             0x00007fbc7463bf46:   shl    $0x5,%rsi
             0x00007fbc7463bf4a:   mov    %rdx,%rax
   0.31%     0x00007fbc7463bf4d:   and    $0xfffffffffc000000,%rax
   0.00%     0x00007fbc7463bf53:   sub    %rax,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@435 (line 127)
             0x00007fbc7463bf56:   and    $0x3ffffff,%rsi
             0x00007fbc7463bf5d:   add    %rsi,%rbp
   0.26%     0x00007fbc7463bf60:   sar    $0x1a,%rdx
   0.00%     0x00007fbc7463bf64:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@442 (line 128)
             0x00007fbc7463bf67:   sar    $0x15,%rdi
   0.00%     0x00007fbc7463bf6b:   mov    0x28(%rsp),%rdx
   0.27%     0x00007fbc7463bf70:   add    %rdi,%rdx
   0.00%     0x00007fbc7463bf73:   add    %rcx,%rdx
             0x00007fbc7463bf76:   lea    0x2000000(%rbp),%rcx
             0x00007fbc7463bf7d:   mov    %rcx,%rdi
   0.31%     0x00007fbc7463bf80:   sar    $0x1a,%rdi
             0x00007fbc7463bf84:   add    %rdi,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@470 (line 132)
             0x00007fbc7463bf87:   and    $0xfffffffffc000000,%rcx
             0x00007fbc7463bf8e:   sub    %rcx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@463 (line 131)
   0.30%     0x00007fbc7463bf91:   mov    %rbp,%rcx
   0.00%     0x00007fbc7463bf94:   lea    0x2000000(%rdx),%rdi
             0x00007fbc7463bf9b:   mov    %rdi,%rsi
             0x00007fbc7463bf9e:   sar    $0x1a,%rsi
   0.33%     0x00007fbc7463bfa2:   lea    (%r8,%rsi,1),%rax
   0.00%     0x00007fbc7463bfa6:   and    $0xfffffffffc000000,%rdi
             0x00007fbc7463bfad:   sub    %rdi,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@491 (line 135)
             0x00007fbc7463bfb0:   mov    %rdx,%r8
   0.28%     0x00007fbc7463bfb3:   lea    0x2000000(%rax),%rdi
   0.00%     0x00007fbc7463bfba:   mov    %rdi,%rdx
             0x00007fbc7463bfbd:   sar    $0x1a,%rdx
             0x00007fbc7463bfc1:   lea    (%r9,%rdx,1),%rsi
   0.29%     0x00007fbc7463bfc5:   and    $0xfffffffffc000000,%rdi
   0.01%     0x00007fbc7463bfcc:   sub    %rdi,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@519 (line 139)
             0x00007fbc7463bfcf:   lea    0x2000000(%rsi),%rdi
             0x00007fbc7463bfd6:   mov    %rdi,%rdx
   0.32%     0x00007fbc7463bfd9:   sar    $0x1a,%rdx
   0.00%     0x00007fbc7463bfdd:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@554 (line 144)
   0.01%     0x00007fbc7463bfe0:   and    $0xfffffffffc000000,%rdi
             0x00007fbc7463bfe7:   sub    %rdi,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@547 (line 143)
   0.28%     0x00007fbc7463bfea:   mov    %rsi,%rdi
   0.01%     0x00007fbc7463bfed:   lea    0x2000000(%rbx),%rdx
   0.05%     0x00007fbc7463bff4:   mov    %rdx,%rsi
             0x00007fbc7463bff7:   sar    $0x1a,%rsi
   0.36%     0x00007fbc7463bffb:   add    %rsi,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@582 (line 148)
   0.03%     0x00007fbc7463bffe:   and    $0xfffffffffc000000,%rdx
   0.01%     0x00007fbc7463c005:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@575 (line 147)
             0x00007fbc7463c008:   cmp    $0x9,%r11d
          ╭  0x00007fbc7463c00c:   jbe    0x00007fbc7463c058
   0.23%  │  0x00007fbc7463c00e:   vmovq  %xmm0,%r11
   0.04%  │  0x00007fbc7463c013:   vmovq  %xmm1,%rdx
   0.01%  │  0x00007fbc7463c018:   mov    %rdx,0x10(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │  0x00007fbc7463c01c:   mov    %r14,0x18(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@593 (line 151)
   0.23%  │  0x00007fbc7463c020:   vmovq  %xmm2,%rdx
   0.06%  │  0x00007fbc7463c025:   mov    %rdx,0x20(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@598 (line 152)
   0.01%  │  0x00007fbc7463c029:   mov    %r13,0x28(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@603 (line 153)
          │  0x00007fbc7463c02d:   mov    %rbp,0x30(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@608 (line 154)
   0.26%  │  0x00007fbc7463c031:   mov    %r8,0x38(%r11)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@613 (line 155)
          │                                                            ;   {no_reloc}
   0.04%  │  0x00007fbc7463c035:   mov    %rax,0x40(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@619 (line 156)
   0.02%  │  0x00007fbc7463c039:   mov    %rdi,0x48(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@625 (line 157)
          │  0x00007fbc7463c03d:   mov    %rbx,0x50(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@631 (line 158)
   0.24%  │  0x00007fbc7463c041:   mov    %r10,0x58(%r11)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@637 (line 159)
   0.04%  │  0x00007fbc7463c045:   add    $0x10,%rsp
   0.01%  │  0x00007fbc7463c049:   pop    %rbp
   0.00%  │  0x00007fbc7463c04a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fbc7463c051:   ja     0x00007fbc7463c0bc
   0.26%  │  0x00007fbc7463c057:   ret    
          ↘  0x00007fbc7463c058:   mov    $0xffffffe4,%esi
             0x00007fbc7463c05d:   vmovq  %xmm0,%rbp
             0x00007fbc7463c062:   mov    %r14,0x20(%rsp)
             0x00007fbc7463c067:   vmovsd %xmm2,0x28(%rsp)
             0x00007fbc7463c06d:   mov    %r13,0x30(%rsp)
             0x00007fbc7463c072:   mov    %rbx,0x38(%rsp)
             0x00007fbc7463c077:   mov    %r10,0x40(%rsp)
             0x00007fbc7463c07c:   vmovsd %xmm1,0x50(%rsp)
             0x00007fbc7463c082:   mov    %rcx,0x58(%rsp)
             0x00007fbc7463c087:   mov    %r8,0x60(%rsp)
....................................................................................................
  17.46%  <total for region 2>

....[Hottest Regions]...............................................................................
  32.13%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 652 
  17.46%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 633 
   8.38%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   7.41%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 715 
   5.53%        runtime stub  StubRoutines::sha512_implCompressMB 
   3.17%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 661 
   2.00%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 891 
   1.58%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 738 
   1.57%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 747 
   1.41%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 738 
   1.33%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 747 
   1.02%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 738 
   1.01%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 738 
   0.93%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 738 
   0.91%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 738 
   0.91%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 747 
   0.88%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 738 
   0.85%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 738 
   0.84%              kernel  [unknown] 
   0.83%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 738 
   9.84%  <...other 553 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  32.13%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 652 
  17.46%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 633 
  10.77%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 738 
   8.38%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   7.41%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 715 
   6.92%         c2, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 747 
   5.55%        runtime stub  StubRoutines::sha512_implCompressMB 
   3.17%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 661 
   2.11%         c2, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 743 
   2.04%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 891 
   1.98%              kernel  [unknown] 
   0.51%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 706 
   0.51%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 839 
   0.15%        runtime stub  StubRoutines::sha512_implCompress 
   0.10%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::asByteArray, version 2, compile id 958 
   0.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark::sign, version 2, compile id 1040 
   0.08%         c2, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::mutable, version 2, compile id 980 
   0.07%         c2, level 4  sun.security.util.math.IntegerFieldModuloP::getElement, version 2, compile id 999 
   0.04%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%         c2, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 996 
   0.49%  <...other 109 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  83.53%         c2, level 4
  14.13%        runtime stub
   1.98%              kernel
   0.15%           libjvm.so
   0.10%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.02%          ld-2.31.so
   0.01%    perf-1934782.map
   0.01%              [vdso]
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed448, messageLength = 64)

# Run progress: 50.00% complete, ETA 00:07:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5988.506 us/op
# Warmup Iteration   2: 4074.314 us/op
# Warmup Iteration   3: 4041.663 us/op
# Warmup Iteration   4: 4037.118 us/op
# Warmup Iteration   5: 4036.691 us/op
Iteration   1: 4036.012 us/op
Iteration   2: 4036.696 us/op
Iteration   3: 4036.348 us/op
Iteration   4: 4037.655 us/op
Iteration   5: 4036.845 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  4036.711 ±(99.9%) 2.381 us/op [Average]
  (min, avg, max) = (4036.012, 4036.711, 4037.655), stdev = 0.618
  CI (99.9%): [4034.330, 4039.092] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 237510 total address lines.
Perf output processed (skipped 57.116 seconds):
 Column 1: cycles (50800 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 644 

 <region is too big to display, has 1167 lines, but threshold is 1000>
....................................................................................................
  51.53%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0, version 2, compile id 629 

             # parm31:   [sp+0xf0]   = long
             # parm32:   [sp+0xf8]   = long
             0x00007f69c463a5a0:   mov    0x8(%rsi),%r10d
             0x00007f69c463a5a4:   movabs $0x7f6947000000,%r11
             0x00007f69c463a5ae:   add    %r11,%r10
             0x00007f69c463a5b1:   cmp    %r10,%rax
             0x00007f69c463a5b4:   jne    0x00007f69c40c4080           ;   {runtime_call ic_miss_stub}
             0x00007f69c463a5ba:   xchg   %ax,%ax
             0x00007f69c463a5bc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.16%     0x00007f69c463a5c0:   mov    %eax,-0x14000(%rsp)
             0x00007f69c463a5c7:   push   %rbp
   0.16%     0x00007f69c463a5c8:   sub    $0x10,%rsp
             0x00007f69c463a5cc:   cmpl   $0x1,0x20(%r15)
             0x00007f69c463a5d4:   jne    0x00007f69c463a9a2           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@-1 (line 107)
   0.19%     0x00007f69c463a5da:   mov    0x70(%rsp),%rbx
             0x00007f69c463a5df:   add    $0x8000000,%rbx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@5 (line 107)
             0x00007f69c463a5e6:   mov    %rbx,%r10
   0.00%     0x00007f69c463a5e9:   sar    $0x1c,%r10
   0.19%     0x00007f69c463a5ed:   mov    0x78(%rsp),%r11
             0x00007f69c463a5f2:   add    %r10,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@25 (line 109)
             0x00007f69c463a5f5:   lea    0x8000000(%r11),%rsi
   0.00%     0x00007f69c463a5fc:   mov    %rsi,%r10
   0.18%     0x00007f69c463a5ff:   sar    $0x1c,%r10
             0x00007f69c463a603:   mov    0x80(%rsp),%r14
             0x00007f69c463a60b:   add    %r10,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@53 (line 113)
             0x00007f69c463a60e:   add    %r14,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@66 (line 116)
   0.20%     0x00007f69c463a611:   lea    0x8000000(%rcx),%rax
             0x00007f69c463a618:   mov    %rax,%r10
             0x00007f69c463a61b:   and    $0xfffffffff0000000,%r10
             0x00007f69c463a622:   sub    %r10,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@126 (line 128)
   0.18%     0x00007f69c463a625:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f69c463a974
   0.01%     0x00007f69c463a629:   mov    0x58(%rsp),%rbp
             0x00007f69c463a62e:   add    0x98(%rsp),%rbp
             0x00007f69c463a636:   mov    0x50(%rsp),%r13
   0.19%     0x00007f69c463a63b:   add    0x90(%rsp),%r13
   0.00%     0x00007f69c463a643:   vmovq  %r13,%xmm0
             0x00007f69c463a648:   mov    0x48(%rsp),%r13
             0x00007f69c463a64d:   add    0x88(%rsp),%r13
   0.18%     0x00007f69c463a655:   vmovq  %r13,%xmm1
             0x00007f69c463a65a:   mov    0x40(%rsp),%r13
             0x00007f69c463a65f:   add    %r14,%r13
             0x00007f69c463a662:   mov    %r13,%r14
   0.19%     0x00007f69c463a665:   add    0x98(%rsp),%rdi
   0.00%     0x00007f69c463a66d:   add    0x88(%rsp),%r8
             0x00007f69c463a675:   add    0x90(%rsp),%r9
             0x00007f69c463a67d:   sar    $0x1c,%rax
   0.16%     0x00007f69c463a681:   add    %rax,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@132 (line 129)
   0.01%     0x00007f69c463a684:   and    $0xfffffffff0000000,%rbx
             0x00007f69c463a68b:   mov    0x70(%rsp),%rax
             0x00007f69c463a690:   sub    %rbx,%rax
   0.19%     0x00007f69c463a693:   vmovq  %rax,%xmm2
             0x00007f69c463a698:   lea    0x8000000(%r8),%rbx
             0x00007f69c463a69f:   and    $0xfffffffff0000000,%rsi
             0x00007f69c463a6a6:   sub    %rsi,%r11
   0.21%     0x00007f69c463a6a9:   mov    %rbx,%rsi
   0.00%     0x00007f69c463a6ac:   and    $0xfffffffff0000000,%rsi
             0x00007f69c463a6b3:   sub    %rsi,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@153 (line 132)
                                                                       ;   {no_reloc}
             0x00007f69c463a6b6:   sar    $0x1c,%rbx
   0.20%     0x00007f69c463a6ba:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@160 (line 133)
             0x00007f69c463a6bd:   lea    0x8000000(%r9),%rbx
             0x00007f69c463a6c4:   mov    %rbx,%rsi
             0x00007f69c463a6c7:   sar    $0x1c,%rsi
   0.17%     0x00007f69c463a6cb:   add    %rsi,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@188 (line 137)
   0.00%     0x00007f69c463a6ce:   and    $0xfffffffff0000000,%rbx
             0x00007f69c463a6d5:   sub    %rbx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@181 (line 136)
             0x00007f69c463a6d8:   lea    0x8000000(%rdi),%rbx
   0.18%     0x00007f69c463a6df:   mov    %rbx,%rsi
   0.00%     0x00007f69c463a6e2:   sar    $0x1c,%rsi
             0x00007f69c463a6e6:   mov    0x20(%rsp),%r13
             0x00007f69c463a6eb:   add    %rsi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@216 (line 141)
   0.19%     0x00007f69c463a6ee:   and    $0xfffffffff0000000,%rbx
   0.00%     0x00007f69c463a6f5:   sub    %rbx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@209 (line 140)
             0x00007f69c463a6f8:   lea    0x8000000(%r13),%rax
             0x00007f69c463a6ff:   mov    %rax,%rbx
   0.17%     0x00007f69c463a702:   sar    $0x1c,%rbx
   0.00%     0x00007f69c463a706:   mov    0x28(%rsp),%rsi
             0x00007f69c463a70b:   add    %rbx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@244 (line 145)
             0x00007f69c463a70e:   and    $0xfffffffff0000000,%rax
   0.16%     0x00007f69c463a714:   sub    %rax,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@237 (line 144)
             0x00007f69c463a717:   vmovq  %r13,%xmm3
   0.02%     0x00007f69c463a71c:   lea    0x8000000(%rsi),%r13
             0x00007f69c463a723:   mov    %r13,%rbx
   0.15%     0x00007f69c463a726:   sar    $0x1c,%rbx
   0.01%     0x00007f69c463a72a:   mov    0x30(%rsp),%rax
   0.01%     0x00007f69c463a72f:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@272 (line 149)
   0.02%     0x00007f69c463a732:   and    $0xfffffffff0000000,%r13
   0.16%     0x00007f69c463a739:   sub    %r13,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@265 (line 148)
   0.00%     0x00007f69c463a73c:   vmovq  %rsi,%xmm4
   0.26%     0x00007f69c463a741:   lea    0x8000000(%rax),%rsi
             0x00007f69c463a748:   mov    %rsi,%rbx
   0.06%     0x00007f69c463a74b:   sar    $0x1c,%rbx
   0.05%     0x00007f69c463a74f:   mov    0x38(%rsp),%r13
   0.08%     0x00007f69c463a754:   add    %rbx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@300 (line 153)
   0.05%     0x00007f69c463a757:   and    $0xfffffffff0000000,%rsi
   0.04%     0x00007f69c463a75e:   sub    %rsi,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@293 (line 152)
   0.03%     0x00007f69c463a761:   vmovq  %rax,%xmm5
   0.28%     0x00007f69c463a766:   lea    0x8000000(%r13),%rbx
             0x00007f69c463a76d:   mov    %rbx,%rsi
   0.03%     0x00007f69c463a770:   sar    $0x1c,%rsi
   0.19%     0x00007f69c463a774:   lea    (%r14,%rsi,1),%rax
   0.11%     0x00007f69c463a778:   and    $0xfffffffff0000000,%rbx
   0.05%     0x00007f69c463a77f:   sub    %rbx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@321 (line 156)
   0.06%     0x00007f69c463a782:   mov    %r13,%r14
   0.04%     0x00007f69c463a785:   lea    0x8000000(%rax),%rbx
   0.09%     0x00007f69c463a78c:   mov    %rbx,%rsi
             0x00007f69c463a78f:   sar    $0x1c,%rsi
   0.17%     0x00007f69c463a793:   vmovq  %xmm1,%r13
   0.05%     0x00007f69c463a798:   add    %rsi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@356 (line 161)
   0.50%     0x00007f69c463a79b:   and    $0xfffffffff0000000,%rbx
             0x00007f69c463a7a2:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@349 (line 160)
   0.01%     0x00007f69c463a7a5:   vmovq  %rax,%xmm1
   0.08%     0x00007f69c463a7aa:   lea    0x8000000(%r13),%rbx
   0.18%     0x00007f69c463a7b1:   mov    %rbx,%rsi                    ;   {no_reloc}
             0x00007f69c463a7b4:   sar    $0x1c,%rsi
   0.06%     0x00007f69c463a7b8:   vmovq  %xmm0,%rax
   0.05%     0x00007f69c463a7bd:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@384 (line 165)
   0.36%     0x00007f69c463a7c0:   and    $0xfffffffff0000000,%rbx
             0x00007f69c463a7c7:   sub    %rbx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@377 (line 164)
   0.00%     0x00007f69c463a7ca:   lea    0x8000000(%rax),%rbx
   0.02%     0x00007f69c463a7d1:   mov    %rbx,%rsi
   0.28%     0x00007f69c463a7d4:   sar    $0x1c,%rsi
             0x00007f69c463a7d8:   add    %rsi,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@412 (line 169)
   0.28%     0x00007f69c463a7db:   and    $0xfffffffff0000000,%rbx
   0.00%     0x00007f69c463a7e2:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@405 (line 168)
   0.12%     0x00007f69c463a7e5:   vmovq  %rax,%xmm0
   0.21%     0x00007f69c463a7ea:   lea    0x8000000(%rbp),%rsi
   0.07%     0x00007f69c463a7f1:   mov    %rsi,%rbx
   0.00%     0x00007f69c463a7f4:   sar    $0x1c,%rbx
   0.00%     0x00007f69c463a7f8:   mov    0x60(%rsp),%rax
   0.15%     0x00007f69c463a7fd:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@440 (line 173)
   0.07%     0x00007f69c463a800:   and    $0xfffffffff0000000,%rsi
   0.00%     0x00007f69c463a807:   sub    %rsi,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@433 (line 172)
             0x00007f69c463a80a:   vmovq  %rbp,%xmm6
   0.30%     0x00007f69c463a80f:   lea    0x8000000(%rax),%rbx
   0.01%     0x00007f69c463a816:   mov    %rbx,%rsi
             0x00007f69c463a819:   sar    $0x1c,%rsi
   0.04%     0x00007f69c463a81d:   mov    0x68(%rsp),%rbp
   0.17%     0x00007f69c463a822:   add    %rsi,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@468 (line 177)
   0.04%     0x00007f69c463a825:   and    $0xfffffffff0000000,%rbx
   0.01%     0x00007f69c463a82c:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@461 (line 176)
   0.04%     0x00007f69c463a82f:   vmovq  %rax,%xmm7
   0.33%     0x00007f69c463a834:   lea    0x8000000(%rbp),%rbx
   0.00%     0x00007f69c463a83b:   mov    %rbx,%rsi
             0x00007f69c463a83e:   sar    $0x1c,%rsi
   0.19%     0x00007f69c463a842:   vmovq  %xmm2,%rax
   0.15%     0x00007f69c463a847:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@496 (line 181)
   0.11%     0x00007f69c463a84a:   and    $0xfffffffff0000000,%rbx
             0x00007f69c463a851:   sub    %rbx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@489 (line 180)
             0x00007f69c463a854:   vmovq  %rbp,%xmm2
   0.29%     0x00007f69c463a859:   lea    0x8000000(%rax),%rbx
   0.21%     0x00007f69c463a860:   mov    %rbx,%rsi
             0x00007f69c463a863:   sar    $0x1c,%rsi
             0x00007f69c463a867:   add    %rsi,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@524 (line 185)
   0.12%     0x00007f69c463a86a:   and    $0xfffffffff0000000,%rbx
   0.08%     0x00007f69c463a871:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@517 (line 184)
   0.06%     0x00007f69c463a874:   cmp    $0xf,%r10d
          ╭  0x00007f69c463a878:   jbe    0x00007f69c463a8f6
          │  0x00007f69c463a87a:   mov    %rcx,0x10(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@530 (line 187)
   0.07%  │  0x00007f69c463a87e:   mov    %r8,0x18(%rdx)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@535 (line 188)
   0.07%  │  0x00007f69c463a882:   mov    %r9,0x20(%rdx)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@540 (line 189)
   0.06%  │  0x00007f69c463a886:   mov    %rdi,0x28(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@545 (line 190)
          │  0x00007f69c463a88a:   vmovq  %xmm3,%r10
   0.07%  │  0x00007f69c463a88f:   mov    %r10,0x30(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@550 (line 191)
   0.07%  │  0x00007f69c463a893:   vmovq  %xmm4,%r10
   0.05%  │  0x00007f69c463a898:   mov    %r10,0x38(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@555 (line 192)
          │  0x00007f69c463a89c:   vmovq  %xmm5,%r10
   0.04%  │  0x00007f69c463a8a1:   mov    %r10,0x40(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@561 (line 193)
   0.07%  │  0x00007f69c463a8a5:   mov    %r14,0x48(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@567 (line 194)
   0.07%  │  0x00007f69c463a8a9:   vmovq  %xmm1,%r10
          │  0x00007f69c463a8ae:   mov    %r10,0x50(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@573 (line 195)
          │                                                            ;   {no_reloc}
   0.05%  │  0x00007f69c463a8b2:   mov    %r13,0x58(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@579 (line 196)
   0.07%  │  0x00007f69c463a8b6:   vmovq  %xmm0,%r10
   0.05%  │  0x00007f69c463a8bb:   mov    %r10,0x60(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@585 (line 197)
          │  0x00007f69c463a8bf:   vmovq  %xmm6,%r10
   0.05%  │  0x00007f69c463a8c4:   mov    %r10,0x68(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@591 (line 198)
   0.08%  │  0x00007f69c463a8c8:   vmovq  %xmm7,%r10
   0.05%  │  0x00007f69c463a8cd:   mov    %r10,0x70(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@597 (line 199)
          │  0x00007f69c463a8d1:   mov    %rbp,0x78(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@603 (line 200)
   0.06%  │  0x00007f69c463a8d5:   mov    %rax,0x80(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@609 (line 201)
   0.08%  │  0x00007f69c463a8dc:   mov    %r11,0x88(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@615 (line 202)
   0.05%  │  0x00007f69c463a8e3:   add    $0x10,%rsp
          │  0x00007f69c463a8e7:   pop    %rbp
   0.07%  │  0x00007f69c463a8e8:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f69c463a8ef:   ja     0x00007f69c463a98c
   0.12%  │  0x00007f69c463a8f5:   ret    
          ↘  0x00007f69c463a8f6:   mov    $0xffffffe4,%esi
             0x00007f69c463a8fb:   mov    %r8,0x20(%rsp)
             0x00007f69c463a900:   mov    %r9,0x28(%rsp)
             0x00007f69c463a905:   mov    %rdi,0x30(%rsp)
             0x00007f69c463a90a:   mov    %r11,0x38(%rsp)
             0x00007f69c463a90f:   mov    %rdx,0x40(%rsp)
             0x00007f69c463a914:   mov    %rcx,0x48(%rsp)
             0x00007f69c463a919:   vmovsd %xmm3,0x50(%rsp)
             0x00007f69c463a91f:   vmovsd %xmm4,0x58(%rsp)
             0x00007f69c463a925:   vmovsd %xmm5,0x60(%rsp)
....................................................................................................
  11.40%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.53%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 644 
  11.40%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0, version 2, compile id 629 
   4.86%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 686 
   4.79%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 686 
   3.44%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 644 
   3.02%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 719 
   2.70%         c2, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 728 
   2.32%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 676 
   1.89%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.89%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 719 
   1.70%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 686 
   1.64%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 686 
   1.28%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 821 
   1.25%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.95%              kernel  [unknown] 
   0.82%         c2, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 728 
   0.77%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 821 
   0.64%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 686 
   0.45%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 688 
   0.43%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 686 
   2.22%  <...other 368 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.98%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 644 
  14.06%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 686 
  11.40%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0, version 2, compile id 629 
   5.18%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 719 
   3.64%         c2, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 728 
   3.14%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.32%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 676 
   2.06%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 821 
   1.84%              kernel  [unknown] 
   0.45%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 688 
   0.37%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 804 
   0.06%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 865 
   0.06%                      <unknown> 
   0.04%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::asByteArray, version 2, compile id 906 
   0.03%         c2, level 4  sun.security.util.math.IntegerFieldModuloP::getElement, version 2, compile id 927 
   0.01%         c2, level 4  sun.security.util.math.intpoly.Curve448OrderField::mult, version 2, compile id 982 
   0.01%         c2, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 980 
   0.01%         c2, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 928 
   0.01%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.01%           libjvm.so  fileStream::write 
   0.31%  <...other 93 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.69%         c2, level 4
   3.16%        runtime stub
   1.84%              kernel
   0.13%           libjvm.so
   0.07%        libc-2.31.so
   0.06%                    
   0.02%         interpreter
   0.01%         c1, level 1
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%    perf-1934850.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed448, messageLength = 512)

# Run progress: 62.50% complete, ETA 00:05:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6005.256 us/op
# Warmup Iteration   2: 4035.356 us/op
# Warmup Iteration   3: 4029.924 us/op
# Warmup Iteration   4: 4029.030 us/op
# Warmup Iteration   5: 4028.655 us/op
Iteration   1: 4028.490 us/op
Iteration   2: 4029.072 us/op
Iteration   3: 4028.676 us/op
Iteration   4: 4030.544 us/op
Iteration   5: 4029.627 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  4029.282 ±(99.9%) 3.193 us/op [Average]
  (min, avg, max) = (4028.490, 4029.282, 4030.544), stdev = 0.829
  CI (99.9%): [4026.089, 4032.475] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 237301 total address lines.
Perf output processed (skipped 56.917 seconds):
 Column 1: cycles (50546 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 630 

 <region is too big to display, has 1239 lines, but threshold is 1000>
....................................................................................................
  54.88%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0, version 2, compile id 615 

             # parm31:   [sp+0xf0]   = long
             # parm32:   [sp+0xf8]   = long
             0x00007eff5c63cf20:   mov    0x8(%rsi),%r10d
             0x00007eff5c63cf24:   movabs $0x7efedf000000,%r11
             0x00007eff5c63cf2e:   add    %r11,%r10
             0x00007eff5c63cf31:   cmp    %r10,%rax
             0x00007eff5c63cf34:   jne    0x00007eff5c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007eff5c63cf3a:   xchg   %ax,%ax
             0x00007eff5c63cf3c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.23%     0x00007eff5c63cf40:   mov    %eax,-0x14000(%rsp)
             0x00007eff5c63cf47:   push   %rbp
   0.19%     0x00007eff5c63cf48:   sub    $0x10,%rsp
             0x00007eff5c63cf4c:   cmpl   $0x1,0x20(%r15)
             0x00007eff5c63cf54:   jne    0x00007eff5c63d322           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@-1 (line 107)
   0.19%     0x00007eff5c63cf5a:   mov    0x70(%rsp),%rbx
             0x00007eff5c63cf5f:   add    $0x8000000,%rbx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@5 (line 107)
             0x00007eff5c63cf66:   mov    %rbx,%r10
             0x00007eff5c63cf69:   sar    $0x1c,%r10
   0.21%     0x00007eff5c63cf6d:   mov    0x78(%rsp),%r11
             0x00007eff5c63cf72:   add    %r10,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@25 (line 109)
             0x00007eff5c63cf75:   lea    0x8000000(%r11),%rsi
             0x00007eff5c63cf7c:   mov    %rsi,%r10
   0.22%     0x00007eff5c63cf7f:   sar    $0x1c,%r10
             0x00007eff5c63cf83:   mov    0x80(%rsp),%r14
             0x00007eff5c63cf8b:   add    %r10,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@53 (line 113)
             0x00007eff5c63cf8e:   add    %r14,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@66 (line 116)
   0.17%     0x00007eff5c63cf91:   lea    0x8000000(%rcx),%rax
             0x00007eff5c63cf98:   mov    %rax,%r10
             0x00007eff5c63cf9b:   and    $0xfffffffff0000000,%r10
   0.00%     0x00007eff5c63cfa2:   sub    %r10,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@126 (line 128)
   0.22%     0x00007eff5c63cfa5:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007eff5c63d2f4
   0.01%     0x00007eff5c63cfa9:   mov    0x58(%rsp),%rbp
             0x00007eff5c63cfae:   add    0x98(%rsp),%rbp
             0x00007eff5c63cfb6:   mov    0x50(%rsp),%r13
   0.20%     0x00007eff5c63cfbb:   add    0x90(%rsp),%r13
   0.00%     0x00007eff5c63cfc3:   vmovq  %r13,%xmm0
             0x00007eff5c63cfc8:   mov    0x48(%rsp),%r13
             0x00007eff5c63cfcd:   add    0x88(%rsp),%r13
   0.20%     0x00007eff5c63cfd5:   vmovq  %r13,%xmm1
   0.00%     0x00007eff5c63cfda:   mov    0x40(%rsp),%r13
             0x00007eff5c63cfdf:   add    %r14,%r13
             0x00007eff5c63cfe2:   mov    %r13,%r14
   0.17%     0x00007eff5c63cfe5:   add    0x98(%rsp),%rdi
             0x00007eff5c63cfed:   add    0x88(%rsp),%r8
             0x00007eff5c63cff5:   add    0x90(%rsp),%r9
             0x00007eff5c63cffd:   sar    $0x1c,%rax
   0.16%     0x00007eff5c63d001:   add    %rax,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@132 (line 129)
             0x00007eff5c63d004:   and    $0xfffffffff0000000,%rbx
             0x00007eff5c63d00b:   mov    0x70(%rsp),%rax
             0x00007eff5c63d010:   sub    %rbx,%rax
   0.19%     0x00007eff5c63d013:   vmovq  %rax,%xmm2
   0.00%     0x00007eff5c63d018:   lea    0x8000000(%r8),%rbx
             0x00007eff5c63d01f:   and    $0xfffffffff0000000,%rsi
             0x00007eff5c63d026:   sub    %rsi,%r11
   0.20%     0x00007eff5c63d029:   mov    %rbx,%rsi
             0x00007eff5c63d02c:   and    $0xfffffffff0000000,%rsi
             0x00007eff5c63d033:   sub    %rsi,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@153 (line 132)
                                                                       ;   {no_reloc}
             0x00007eff5c63d036:   sar    $0x1c,%rbx
   0.20%     0x00007eff5c63d03a:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@160 (line 133)
             0x00007eff5c63d03d:   lea    0x8000000(%r9),%rbx
             0x00007eff5c63d044:   mov    %rbx,%rsi
             0x00007eff5c63d047:   sar    $0x1c,%rsi
   0.17%     0x00007eff5c63d04b:   add    %rsi,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@188 (line 137)
   0.00%     0x00007eff5c63d04e:   and    $0xfffffffff0000000,%rbx
             0x00007eff5c63d055:   sub    %rbx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@181 (line 136)
             0x00007eff5c63d058:   lea    0x8000000(%rdi),%rbx
   0.17%     0x00007eff5c63d05f:   mov    %rbx,%rsi
   0.00%     0x00007eff5c63d062:   sar    $0x1c,%rsi
             0x00007eff5c63d066:   mov    0x20(%rsp),%r13
             0x00007eff5c63d06b:   add    %rsi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@216 (line 141)
   0.20%     0x00007eff5c63d06e:   and    $0xfffffffff0000000,%rbx
             0x00007eff5c63d075:   sub    %rbx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@209 (line 140)
             0x00007eff5c63d078:   lea    0x8000000(%r13),%rax
             0x00007eff5c63d07f:   mov    %rax,%rbx
   0.17%     0x00007eff5c63d082:   sar    $0x1c,%rbx
             0x00007eff5c63d086:   mov    0x28(%rsp),%rsi
             0x00007eff5c63d08b:   add    %rbx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@244 (line 145)
             0x00007eff5c63d08e:   and    $0xfffffffff0000000,%rax
   0.18%     0x00007eff5c63d094:   sub    %rax,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@237 (line 144)
   0.00%     0x00007eff5c63d097:   vmovq  %r13,%xmm3
   0.02%     0x00007eff5c63d09c:   lea    0x8000000(%rsi),%r13
             0x00007eff5c63d0a3:   mov    %r13,%rbx
   0.22%     0x00007eff5c63d0a6:   sar    $0x1c,%rbx
   0.01%     0x00007eff5c63d0aa:   mov    0x30(%rsp),%rax
   0.01%     0x00007eff5c63d0af:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@272 (line 149)
   0.04%     0x00007eff5c63d0b2:   and    $0xfffffffff0000000,%r13
   0.17%     0x00007eff5c63d0b9:   sub    %r13,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@265 (line 148)
   0.01%     0x00007eff5c63d0bc:   vmovq  %rsi,%xmm4
   0.25%     0x00007eff5c63d0c1:   lea    0x8000000(%rax),%rsi
             0x00007eff5c63d0c8:   mov    %rsi,%rbx
   0.07%     0x00007eff5c63d0cb:   sar    $0x1c,%rbx
   0.06%     0x00007eff5c63d0cf:   mov    0x38(%rsp),%r13
   0.07%     0x00007eff5c63d0d4:   add    %rbx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@300 (line 153)
   0.04%     0x00007eff5c63d0d7:   and    $0xfffffffff0000000,%rsi
   0.05%     0x00007eff5c63d0de:   sub    %rsi,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@293 (line 152)
   0.03%     0x00007eff5c63d0e1:   vmovq  %rax,%xmm5
   0.31%     0x00007eff5c63d0e6:   lea    0x8000000(%r13),%rbx
             0x00007eff5c63d0ed:   mov    %rbx,%rsi
   0.03%     0x00007eff5c63d0f0:   sar    $0x1c,%rsi
   0.15%     0x00007eff5c63d0f4:   lea    (%r14,%rsi,1),%rax
   0.14%     0x00007eff5c63d0f8:   and    $0xfffffffff0000000,%rbx
   0.05%     0x00007eff5c63d0ff:   sub    %rbx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@321 (line 156)
   0.06%     0x00007eff5c63d102:   mov    %r13,%r14
   0.05%     0x00007eff5c63d105:   lea    0x8000000(%rax),%rbx
   0.07%     0x00007eff5c63d10c:   mov    %rbx,%rsi
             0x00007eff5c63d10f:   sar    $0x1c,%rsi
   0.18%     0x00007eff5c63d113:   vmovq  %xmm1,%r13
   0.04%     0x00007eff5c63d118:   add    %rsi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@356 (line 161)
   0.54%     0x00007eff5c63d11b:   and    $0xfffffffff0000000,%rbx
             0x00007eff5c63d122:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@349 (line 160)
   0.02%     0x00007eff5c63d125:   vmovq  %rax,%xmm1
   0.07%     0x00007eff5c63d12a:   lea    0x8000000(%r13),%rbx
   0.15%     0x00007eff5c63d131:   mov    %rbx,%rsi                    ;   {no_reloc}
             0x00007eff5c63d134:   sar    $0x1c,%rsi
   0.07%     0x00007eff5c63d138:   vmovq  %xmm0,%rax
   0.01%     0x00007eff5c63d13d:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@384 (line 165)
   0.33%     0x00007eff5c63d140:   and    $0xfffffffff0000000,%rbx
             0x00007eff5c63d147:   sub    %rbx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@377 (line 164)
   0.01%     0x00007eff5c63d14a:   lea    0x8000000(%rax),%rbx
   0.03%     0x00007eff5c63d151:   mov    %rbx,%rsi
   0.26%     0x00007eff5c63d154:   sar    $0x1c,%rsi
             0x00007eff5c63d158:   add    %rsi,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@412 (line 169)
   0.24%     0x00007eff5c63d15b:   and    $0xfffffffff0000000,%rbx
   0.03%     0x00007eff5c63d162:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@405 (line 168)
   0.11%     0x00007eff5c63d165:   vmovq  %rax,%xmm0
   0.25%     0x00007eff5c63d16a:   lea    0x8000000(%rbp),%rsi
   0.07%     0x00007eff5c63d171:   mov    %rsi,%rbx
             0x00007eff5c63d174:   sar    $0x1c,%rbx
   0.00%     0x00007eff5c63d178:   mov    0x60(%rsp),%rax
   0.14%     0x00007eff5c63d17d:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@440 (line 173)
   0.06%     0x00007eff5c63d180:   and    $0xfffffffff0000000,%rsi
   0.00%     0x00007eff5c63d187:   sub    %rsi,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@433 (line 172)
   0.00%     0x00007eff5c63d18a:   vmovq  %rbp,%xmm6
   0.33%     0x00007eff5c63d18f:   lea    0x8000000(%rax),%rbx
   0.02%     0x00007eff5c63d196:   mov    %rbx,%rsi
             0x00007eff5c63d199:   sar    $0x1c,%rsi
   0.02%     0x00007eff5c63d19d:   mov    0x68(%rsp),%rbp
   0.17%     0x00007eff5c63d1a2:   add    %rsi,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@468 (line 177)
   0.02%     0x00007eff5c63d1a5:   and    $0xfffffffff0000000,%rbx
             0x00007eff5c63d1ac:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@461 (line 176)
   0.05%     0x00007eff5c63d1af:   vmovq  %rax,%xmm7
   0.29%     0x00007eff5c63d1b4:   lea    0x8000000(%rbp),%rbx
   0.00%     0x00007eff5c63d1bb:   mov    %rbx,%rsi
             0x00007eff5c63d1be:   sar    $0x1c,%rsi
   0.17%     0x00007eff5c63d1c2:   vmovq  %xmm2,%rax
   0.15%     0x00007eff5c63d1c7:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@496 (line 181)
   0.11%     0x00007eff5c63d1ca:   and    $0xfffffffff0000000,%rbx
             0x00007eff5c63d1d1:   sub    %rbx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@489 (line 180)
             0x00007eff5c63d1d4:   vmovq  %rbp,%xmm2
   0.27%     0x00007eff5c63d1d9:   lea    0x8000000(%rax),%rbx
   0.23%     0x00007eff5c63d1e0:   mov    %rbx,%rsi
             0x00007eff5c63d1e3:   sar    $0x1c,%rsi
             0x00007eff5c63d1e7:   add    %rsi,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@524 (line 185)
   0.12%     0x00007eff5c63d1ea:   and    $0xfffffffff0000000,%rbx
   0.09%     0x00007eff5c63d1f1:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@517 (line 184)
   0.04%     0x00007eff5c63d1f4:   cmp    $0xf,%r10d
          ╭  0x00007eff5c63d1f8:   jbe    0x00007eff5c63d276
          │  0x00007eff5c63d1fa:   mov    %rcx,0x10(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@530 (line 187)
   0.06%  │  0x00007eff5c63d1fe:   mov    %r8,0x18(%rdx)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@535 (line 188)
   0.08%  │  0x00007eff5c63d202:   mov    %r9,0x20(%rdx)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@540 (line 189)
   0.05%  │  0x00007eff5c63d206:   mov    %rdi,0x28(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@545 (line 190)
          │  0x00007eff5c63d20a:   vmovq  %xmm3,%r10
   0.08%  │  0x00007eff5c63d20f:   mov    %r10,0x30(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@550 (line 191)
   0.07%  │  0x00007eff5c63d213:   vmovq  %xmm4,%r10
   0.05%  │  0x00007eff5c63d218:   mov    %r10,0x38(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@555 (line 192)
          │  0x00007eff5c63d21c:   vmovq  %xmm5,%r10
   0.05%  │  0x00007eff5c63d221:   mov    %r10,0x40(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@561 (line 193)
   0.07%  │  0x00007eff5c63d225:   mov    %r14,0x48(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@567 (line 194)
   0.05%  │  0x00007eff5c63d229:   vmovq  %xmm1,%r10
          │  0x00007eff5c63d22e:   mov    %r10,0x50(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@573 (line 195)
          │                                                            ;   {no_reloc}
   0.07%  │  0x00007eff5c63d232:   mov    %r13,0x58(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@579 (line 196)
   0.09%  │  0x00007eff5c63d236:   vmovq  %xmm0,%r10
   0.05%  │  0x00007eff5c63d23b:   mov    %r10,0x60(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@585 (line 197)
          │  0x00007eff5c63d23f:   vmovq  %xmm6,%r10
   0.06%  │  0x00007eff5c63d244:   mov    %r10,0x68(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@591 (line 198)
   0.09%  │  0x00007eff5c63d248:   vmovq  %xmm7,%r10
   0.05%  │  0x00007eff5c63d24d:   mov    %r10,0x70(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@597 (line 199)
          │  0x00007eff5c63d251:   mov    %rbp,0x78(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@603 (line 200)
   0.06%  │  0x00007eff5c63d255:   mov    %rax,0x80(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@609 (line 201)
   0.09%  │  0x00007eff5c63d25c:   mov    %r11,0x88(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@615 (line 202)
   0.05%  │  0x00007eff5c63d263:   add    $0x10,%rsp
          │  0x00007eff5c63d267:   pop    %rbp
   0.06%  │  0x00007eff5c63d268:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007eff5c63d26f:   ja     0x00007eff5c63d30c
   0.13%  │  0x00007eff5c63d275:   ret    
          ↘  0x00007eff5c63d276:   mov    $0xffffffe4,%esi
             0x00007eff5c63d27b:   mov    %r8,0x20(%rsp)
             0x00007eff5c63d280:   mov    %r9,0x28(%rsp)
             0x00007eff5c63d285:   mov    %rdi,0x30(%rsp)
             0x00007eff5c63d28a:   mov    %r11,0x38(%rsp)
             0x00007eff5c63d28f:   mov    %rdx,0x40(%rsp)
             0x00007eff5c63d294:   mov    %rcx,0x48(%rsp)
             0x00007eff5c63d299:   vmovsd %xmm3,0x50(%rsp)
             0x00007eff5c63d29f:   vmovsd %xmm4,0x58(%rsp)
             0x00007eff5c63d2a5:   vmovsd %xmm5,0x60(%rsp)
....................................................................................................
  11.61%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.88%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 630 
  11.61%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0, version 2, compile id 615 
   4.96%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 672 
   4.86%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 672 
   3.54%         c2, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 710 
   2.76%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 708 
   2.27%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 657 
   1.98%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.84%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 708 
   1.75%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 815 
   1.62%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 672 
   1.60%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 672 
   1.22%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.70%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 672 
   0.49%              kernel  [unknown] 
   0.44%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 672 
   0.38%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 673 
   0.37%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 815 
   0.30%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 792 
   0.20%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 708 
   2.23%  <...other 409 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.88%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 630 
  14.24%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 672 
  11.61%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0, version 2, compile id 615 
   5.05%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 708 
   3.73%         c2, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 710 
   3.21%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.27%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 657 
   2.12%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 815 
   1.54%              kernel  [unknown] 
   0.38%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 673 
   0.30%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 792 
   0.19%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 791 
   0.04%         c2, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 915 
   0.04%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::asByteArray, version 2, compile id 891 
   0.04%         c2, level 4  sun.security.util.math.IntegerFieldModuloP::getElement, version 2, compile id 912 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         c2, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 964 
   0.01%         c1, level 1  sun.security.util.math.intpoly.Curve448OrderField::carryReduce0, version 2, compile id 975 
   0.01%           libjvm.so  fileStream::write 
   0.28%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.94%         c2, level 4
   3.21%        runtime stub
   1.54%              kernel
   0.15%           libjvm.so
   0.06%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%         c1, level 1
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%    perf-1934918.map
   0.00%         c1, level 3
   0.00%          libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed448, messageLength = 2048)

# Run progress: 75.00% complete, ETA 00:03:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6127.525 us/op
# Warmup Iteration   2: 4055.260 us/op
# Warmup Iteration   3: 4052.127 us/op
# Warmup Iteration   4: 4045.219 us/op
# Warmup Iteration   5: 4045.263 us/op
Iteration   1: 4045.410 us/op
Iteration   2: 4045.870 us/op
Iteration   3: 4045.125 us/op
Iteration   4: 4047.470 us/op
Iteration   5: 4045.271 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  4045.829 ±(99.9%) 3.692 us/op [Average]
  (min, avg, max) = (4045.125, 4045.829, 4047.470), stdev = 0.959
  CI (99.9%): [4042.138, 4049.521] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 241047 total address lines.
Perf output processed (skipped 57.113 seconds):
 Column 1: cycles (50889 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 656 

 <region is too big to display, has 1239 lines, but threshold is 1000>
....................................................................................................
  54.06%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0, version 2, compile id 641 

             # parm31:   [sp+0xf0]   = long
             # parm32:   [sp+0xf8]   = long
             0x00007f871063fa20:   mov    0x8(%rsi),%r10d
             0x00007f871063fa24:   movabs $0x7f8697000000,%r11
             0x00007f871063fa2e:   add    %r11,%r10
             0x00007f871063fa31:   cmp    %r10,%rax
             0x00007f871063fa34:   jne    0x00007f87100c4080           ;   {runtime_call ic_miss_stub}
             0x00007f871063fa3a:   xchg   %ax,%ax
             0x00007f871063fa3c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.19%     0x00007f871063fa40:   mov    %eax,-0x14000(%rsp)
             0x00007f871063fa47:   push   %rbp
   0.21%     0x00007f871063fa48:   sub    $0x10,%rsp
             0x00007f871063fa4c:   cmpl   $0x1,0x20(%r15)
             0x00007f871063fa54:   jne    0x00007f871063fe22           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@-1 (line 107)
   0.17%     0x00007f871063fa5a:   mov    0x70(%rsp),%rbx
             0x00007f871063fa5f:   add    $0x8000000,%rbx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@5 (line 107)
             0x00007f871063fa66:   mov    %rbx,%r10
             0x00007f871063fa69:   sar    $0x1c,%r10
   0.19%     0x00007f871063fa6d:   mov    0x78(%rsp),%r11
             0x00007f871063fa72:   add    %r10,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@25 (line 109)
             0x00007f871063fa75:   lea    0x8000000(%r11),%rsi
             0x00007f871063fa7c:   mov    %rsi,%r10
   0.17%     0x00007f871063fa7f:   sar    $0x1c,%r10
             0x00007f871063fa83:   mov    0x80(%rsp),%r14
             0x00007f871063fa8b:   add    %r10,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@53 (line 113)
             0x00007f871063fa8e:   add    %r14,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@66 (line 116)
   0.19%     0x00007f871063fa91:   lea    0x8000000(%rcx),%rax
             0x00007f871063fa98:   mov    %rax,%r10
             0x00007f871063fa9b:   and    $0xfffffffff0000000,%r10
             0x00007f871063faa2:   sub    %r10,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@126 (line 128)
   0.20%     0x00007f871063faa5:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f871063fdf4
   0.00%     0x00007f871063faa9:   mov    0x58(%rsp),%rbp
             0x00007f871063faae:   add    0x98(%rsp),%rbp
             0x00007f871063fab6:   mov    0x50(%rsp),%r13
   0.21%     0x00007f871063fabb:   add    0x90(%rsp),%r13
             0x00007f871063fac3:   vmovq  %r13,%xmm0
             0x00007f871063fac8:   mov    0x48(%rsp),%r13
             0x00007f871063facd:   add    0x88(%rsp),%r13
   0.19%     0x00007f871063fad5:   vmovq  %r13,%xmm1
   0.01%     0x00007f871063fada:   mov    0x40(%rsp),%r13
             0x00007f871063fadf:   add    %r14,%r13
             0x00007f871063fae2:   mov    %r13,%r14
   0.20%     0x00007f871063fae5:   add    0x98(%rsp),%rdi
             0x00007f871063faed:   add    0x88(%rsp),%r8
             0x00007f871063faf5:   add    0x90(%rsp),%r9
             0x00007f871063fafd:   sar    $0x1c,%rax
   0.18%     0x00007f871063fb01:   add    %rax,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@132 (line 129)
   0.00%     0x00007f871063fb04:   and    $0xfffffffff0000000,%rbx
             0x00007f871063fb0b:   mov    0x70(%rsp),%rax
             0x00007f871063fb10:   sub    %rbx,%rax
   0.20%     0x00007f871063fb13:   vmovq  %rax,%xmm2
   0.00%     0x00007f871063fb18:   lea    0x8000000(%r8),%rbx
             0x00007f871063fb1f:   and    $0xfffffffff0000000,%rsi
             0x00007f871063fb26:   sub    %rsi,%r11
   0.15%     0x00007f871063fb29:   mov    %rbx,%rsi
             0x00007f871063fb2c:   and    $0xfffffffff0000000,%rsi
             0x00007f871063fb33:   sub    %rsi,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@153 (line 132)
                                                                       ;   {no_reloc}
             0x00007f871063fb36:   sar    $0x1c,%rbx
   0.20%     0x00007f871063fb3a:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@160 (line 133)
             0x00007f871063fb3d:   lea    0x8000000(%r9),%rbx
             0x00007f871063fb44:   mov    %rbx,%rsi
             0x00007f871063fb47:   sar    $0x1c,%rsi
   0.15%     0x00007f871063fb4b:   add    %rsi,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@188 (line 137)
             0x00007f871063fb4e:   and    $0xfffffffff0000000,%rbx
             0x00007f871063fb55:   sub    %rbx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@181 (line 136)
             0x00007f871063fb58:   lea    0x8000000(%rdi),%rbx
   0.20%     0x00007f871063fb5f:   mov    %rbx,%rsi
             0x00007f871063fb62:   sar    $0x1c,%rsi
             0x00007f871063fb66:   mov    0x20(%rsp),%r13
             0x00007f871063fb6b:   add    %rsi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@216 (line 141)
   0.18%     0x00007f871063fb6e:   and    $0xfffffffff0000000,%rbx
             0x00007f871063fb75:   sub    %rbx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@209 (line 140)
             0x00007f871063fb78:   lea    0x8000000(%r13),%rax
             0x00007f871063fb7f:   mov    %rax,%rbx
   0.17%     0x00007f871063fb82:   sar    $0x1c,%rbx
             0x00007f871063fb86:   mov    0x28(%rsp),%rsi
             0x00007f871063fb8b:   add    %rbx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@244 (line 145)
   0.00%     0x00007f871063fb8e:   and    $0xfffffffff0000000,%rax
   0.19%     0x00007f871063fb94:   sub    %rax,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@237 (line 144)
   0.01%     0x00007f871063fb97:   vmovq  %r13,%xmm3
   0.01%     0x00007f871063fb9c:   lea    0x8000000(%rsi),%r13
   0.00%     0x00007f871063fba3:   mov    %r13,%rbx
   0.21%     0x00007f871063fba6:   sar    $0x1c,%rbx
   0.01%     0x00007f871063fbaa:   mov    0x30(%rsp),%rax
   0.01%     0x00007f871063fbaf:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@272 (line 149)
   0.02%     0x00007f871063fbb2:   and    $0xfffffffff0000000,%r13
   0.16%     0x00007f871063fbb9:   sub    %r13,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@265 (line 148)
   0.01%     0x00007f871063fbbc:   vmovq  %rsi,%xmm4
   0.21%     0x00007f871063fbc1:   lea    0x8000000(%rax),%rsi
             0x00007f871063fbc8:   mov    %rsi,%rbx
   0.06%     0x00007f871063fbcb:   sar    $0x1c,%rbx
   0.06%     0x00007f871063fbcf:   mov    0x38(%rsp),%r13
   0.10%     0x00007f871063fbd4:   add    %rbx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@300 (line 153)
   0.07%     0x00007f871063fbd7:   and    $0xfffffffff0000000,%rsi
   0.06%     0x00007f871063fbde:   sub    %rsi,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@293 (line 152)
   0.02%     0x00007f871063fbe1:   vmovq  %rax,%xmm5
   0.31%     0x00007f871063fbe6:   lea    0x8000000(%r13),%rbx
             0x00007f871063fbed:   mov    %rbx,%rsi
   0.04%     0x00007f871063fbf0:   sar    $0x1c,%rsi
   0.21%     0x00007f871063fbf4:   lea    (%r14,%rsi,1),%rax
   0.13%     0x00007f871063fbf8:   and    $0xfffffffff0000000,%rbx
   0.06%     0x00007f871063fbff:   sub    %rbx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@321 (line 156)
   0.06%     0x00007f871063fc02:   mov    %r13,%r14
   0.03%     0x00007f871063fc05:   lea    0x8000000(%rax),%rbx
   0.09%     0x00007f871063fc0c:   mov    %rbx,%rsi
             0x00007f871063fc0f:   sar    $0x1c,%rsi
   0.15%     0x00007f871063fc13:   vmovq  %xmm1,%r13
   0.04%     0x00007f871063fc18:   add    %rsi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@356 (line 161)
   0.47%     0x00007f871063fc1b:   and    $0xfffffffff0000000,%rbx
             0x00007f871063fc22:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@349 (line 160)
   0.01%     0x00007f871063fc25:   vmovq  %rax,%xmm1
   0.08%     0x00007f871063fc2a:   lea    0x8000000(%r13),%rbx
   0.16%     0x00007f871063fc31:   mov    %rbx,%rsi                    ;   {no_reloc}
             0x00007f871063fc34:   sar    $0x1c,%rsi
   0.05%     0x00007f871063fc38:   vmovq  %xmm0,%rax
   0.03%     0x00007f871063fc3d:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@384 (line 165)
   0.33%     0x00007f871063fc40:   and    $0xfffffffff0000000,%rbx
             0x00007f871063fc47:   sub    %rbx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@377 (line 164)
   0.00%     0x00007f871063fc4a:   lea    0x8000000(%rax),%rbx
   0.03%     0x00007f871063fc51:   mov    %rbx,%rsi
   0.24%     0x00007f871063fc54:   sar    $0x1c,%rsi
   0.00%     0x00007f871063fc58:   add    %rsi,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@412 (line 169)
   0.25%     0x00007f871063fc5b:   and    $0xfffffffff0000000,%rbx
   0.03%     0x00007f871063fc62:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@405 (line 168)
   0.12%     0x00007f871063fc65:   vmovq  %rax,%xmm0
   0.26%     0x00007f871063fc6a:   lea    0x8000000(%rbp),%rsi
   0.06%     0x00007f871063fc71:   mov    %rsi,%rbx
   0.00%     0x00007f871063fc74:   sar    $0x1c,%rbx
             0x00007f871063fc78:   mov    0x60(%rsp),%rax
   0.13%     0x00007f871063fc7d:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@440 (line 173)
   0.09%     0x00007f871063fc80:   and    $0xfffffffff0000000,%rsi
             0x00007f871063fc87:   sub    %rsi,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@433 (line 172)
   0.01%     0x00007f871063fc8a:   vmovq  %rbp,%xmm6
   0.28%     0x00007f871063fc8f:   lea    0x8000000(%rax),%rbx
   0.00%     0x00007f871063fc96:   mov    %rbx,%rsi
             0x00007f871063fc99:   sar    $0x1c,%rsi
   0.05%     0x00007f871063fc9d:   mov    0x68(%rsp),%rbp
   0.15%     0x00007f871063fca2:   add    %rsi,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@468 (line 177)
   0.05%     0x00007f871063fca5:   and    $0xfffffffff0000000,%rbx
             0x00007f871063fcac:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@461 (line 176)
   0.05%     0x00007f871063fcaf:   vmovq  %rax,%xmm7
   0.32%     0x00007f871063fcb4:   lea    0x8000000(%rbp),%rbx
   0.00%     0x00007f871063fcbb:   mov    %rbx,%rsi
             0x00007f871063fcbe:   sar    $0x1c,%rsi
   0.15%     0x00007f871063fcc2:   vmovq  %xmm2,%rax
   0.13%     0x00007f871063fcc7:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@496 (line 181)
   0.15%     0x00007f871063fcca:   and    $0xfffffffff0000000,%rbx
             0x00007f871063fcd1:   sub    %rbx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@489 (line 180)
             0x00007f871063fcd4:   vmovq  %rbp,%xmm2
   0.31%     0x00007f871063fcd9:   lea    0x8000000(%rax),%rbx
   0.23%     0x00007f871063fce0:   mov    %rbx,%rsi
             0x00007f871063fce3:   sar    $0x1c,%rsi
             0x00007f871063fce7:   add    %rsi,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@524 (line 185)
   0.09%     0x00007f871063fcea:   and    $0xfffffffff0000000,%rbx
   0.08%     0x00007f871063fcf1:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@517 (line 184)
   0.05%     0x00007f871063fcf4:   cmp    $0xf,%r10d
          ╭  0x00007f871063fcf8:   jbe    0x00007f871063fd76
          │  0x00007f871063fcfa:   mov    %rcx,0x10(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@530 (line 187)
   0.05%  │  0x00007f871063fcfe:   mov    %r8,0x18(%rdx)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@535 (line 188)
   0.07%  │  0x00007f871063fd02:   mov    %r9,0x20(%rdx)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@540 (line 189)
   0.05%  │  0x00007f871063fd06:   mov    %rdi,0x28(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@545 (line 190)
          │  0x00007f871063fd0a:   vmovq  %xmm3,%r10
   0.08%  │  0x00007f871063fd0f:   mov    %r10,0x30(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@550 (line 191)
   0.05%  │  0x00007f871063fd13:   vmovq  %xmm4,%r10
   0.07%  │  0x00007f871063fd18:   mov    %r10,0x38(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@555 (line 192)
          │  0x00007f871063fd1c:   vmovq  %xmm5,%r10
   0.06%  │  0x00007f871063fd21:   mov    %r10,0x40(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@561 (line 193)
   0.07%  │  0x00007f871063fd25:   mov    %r14,0x48(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@567 (line 194)
   0.05%  │  0x00007f871063fd29:   vmovq  %xmm1,%r10
          │  0x00007f871063fd2e:   mov    %r10,0x50(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@573 (line 195)
          │                                                            ;   {no_reloc}
   0.08%  │  0x00007f871063fd32:   mov    %r13,0x58(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@579 (line 196)
   0.08%  │  0x00007f871063fd36:   vmovq  %xmm0,%r10
   0.05%  │  0x00007f871063fd3b:   mov    %r10,0x60(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@585 (line 197)
          │  0x00007f871063fd3f:   vmovq  %xmm6,%r10
   0.05%  │  0x00007f871063fd44:   mov    %r10,0x68(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@591 (line 198)
   0.06%  │  0x00007f871063fd48:   vmovq  %xmm7,%r10
   0.06%  │  0x00007f871063fd4d:   mov    %r10,0x70(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@597 (line 199)
          │  0x00007f871063fd51:   mov    %rbp,0x78(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@603 (line 200)
   0.06%  │  0x00007f871063fd55:   mov    %rax,0x80(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@609 (line 201)
   0.09%  │  0x00007f871063fd5c:   mov    %r11,0x88(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@615 (line 202)
   0.03%  │  0x00007f871063fd63:   add    $0x10,%rsp
          │  0x00007f871063fd67:   pop    %rbp
   0.07%  │  0x00007f871063fd68:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f871063fd6f:   ja     0x00007f871063fe0c
   0.15%  │  0x00007f871063fd75:   ret    
          ↘  0x00007f871063fd76:   mov    $0xffffffe4,%esi
             0x00007f871063fd7b:   mov    %r8,0x20(%rsp)
             0x00007f871063fd80:   mov    %r9,0x28(%rsp)
             0x00007f871063fd85:   mov    %rdi,0x30(%rsp)
             0x00007f871063fd8a:   mov    %r11,0x38(%rsp)
             0x00007f871063fd8f:   mov    %rdx,0x40(%rsp)
             0x00007f871063fd94:   mov    %rcx,0x48(%rsp)
             0x00007f871063fd99:   vmovsd %xmm3,0x50(%rsp)
             0x00007f871063fd9f:   vmovsd %xmm4,0x58(%rsp)
             0x00007f871063fda5:   vmovsd %xmm5,0x60(%rsp)
....................................................................................................
  11.47%  <total for region 2>

....[Hottest Regions]...............................................................................
  54.06%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 656 
  11.47%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0, version 2, compile id 641 
   4.99%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 710 
   4.98%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 710 
   2.78%         c2, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 752 
   2.74%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 748 
   2.22%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 678 
   2.09%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 861 
   2.00%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.95%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 748 
   1.70%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 710 
   1.60%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 710 
   1.23%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.13%              kernel  [unknown] 
   0.73%         c2, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 752 
   0.68%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 710 
   0.44%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 710 
   0.44%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 808 
   0.38%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 720 
   0.37%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 832 
   2.01%  <...other 345 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.06%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 656 
  14.46%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 710 
  11.47%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0, version 2, compile id 641 
   4.95%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 748 
   3.65%         c2, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 752 
   3.23%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.22%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 678 
   2.09%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 861 
   2.05%              kernel  [unknown] 
   0.51%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 808 
   0.38%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 832 
   0.38%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 720 
   0.08%         c2, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 960 
   0.05%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 2, compile id 936 
   0.04%         c2, level 4  sun.security.util.math.IntegerFieldModuloP::getElement, version 2, compile id 957 
   0.04%                      <unknown> 
   0.02%         c2, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1003 
   0.02%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%         c2, level 4  sun.security.ec.point.ProjectivePoint::mutable, version 2, compile id 942 
   0.02%         c2, level 4  sun.security.util.math.intpoly.Curve448OrderField::reduceIn, version 2, compile id 795 
   0.26%  <...other 77 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.43%         c2, level 4
   3.26%        runtime stub
   2.05%              kernel
   0.10%           libjvm.so
   0.07%        libc-2.31.so
   0.04%                    
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%         c1, level 1
   0.01%    perf-1934982.map
   0.00%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed448, messageLength = 16384)

# Run progress: 87.50% complete, ETA 00:01:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6170.620 us/op
# Warmup Iteration   2: 4221.184 us/op
# Warmup Iteration   3: 4214.324 us/op
# Warmup Iteration   4: 4209.169 us/op
# Warmup Iteration   5: 4209.279 us/op
Iteration   1: 4206.753 us/op
Iteration   2: 4206.440 us/op
Iteration   3: 4209.327 us/op
Iteration   4: 4208.136 us/op
Iteration   5: 4206.308 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  4207.393 ±(99.9%) 5.016 us/op [Average]
  (min, avg, max) = (4206.308, 4207.393, 4209.327), stdev = 1.303
  CI (99.9%): [4202.376, 4212.409] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 241272 total address lines.
Perf output processed (skipped 57.130 seconds):
 Column 1: cycles (50468 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 659 

 <region is too big to display, has 1239 lines, but threshold is 1000>
....................................................................................................
  52.98%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0, version 2, compile id 642 

             # parm31:   [sp+0xf0]   = long
             # parm32:   [sp+0xf8]   = long
             0x00007ff4d063de20:   mov    0x8(%rsi),%r10d
             0x00007ff4d063de24:   movabs $0x7ff457000000,%r11
             0x00007ff4d063de2e:   add    %r11,%r10
             0x00007ff4d063de31:   cmp    %r10,%rax
             0x00007ff4d063de34:   jne    0x00007ff4d00c4080           ;   {runtime_call ic_miss_stub}
             0x00007ff4d063de3a:   xchg   %ax,%ax
             0x00007ff4d063de3c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.19%     0x00007ff4d063de40:   mov    %eax,-0x14000(%rsp)
             0x00007ff4d063de47:   push   %rbp
   0.20%     0x00007ff4d063de48:   sub    $0x10,%rsp
             0x00007ff4d063de4c:   cmpl   $0x1,0x20(%r15)
             0x00007ff4d063de54:   jne    0x00007ff4d063e222           ;*synchronization entry
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@-1 (line 107)
   0.18%     0x00007ff4d063de5a:   mov    0x70(%rsp),%rbx
             0x00007ff4d063de5f:   add    $0x8000000,%rbx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@5 (line 107)
             0x00007ff4d063de66:   mov    %rbx,%r10
             0x00007ff4d063de69:   sar    $0x1c,%r10
   0.17%     0x00007ff4d063de6d:   mov    0x78(%rsp),%r11
             0x00007ff4d063de72:   add    %r10,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@25 (line 109)
             0x00007ff4d063de75:   lea    0x8000000(%r11),%rsi
             0x00007ff4d063de7c:   mov    %rsi,%r10
   0.20%     0x00007ff4d063de7f:   sar    $0x1c,%r10
             0x00007ff4d063de83:   mov    0x80(%rsp),%r14
             0x00007ff4d063de8b:   add    %r10,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@53 (line 113)
             0x00007ff4d063de8e:   add    %r14,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@66 (line 116)
   0.16%     0x00007ff4d063de91:   lea    0x8000000(%rcx),%rax
             0x00007ff4d063de98:   mov    %rax,%r10
             0x00007ff4d063de9b:   and    $0xfffffffff0000000,%r10
             0x00007ff4d063dea2:   sub    %r10,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@126 (line 128)
   0.17%     0x00007ff4d063dea5:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007ff4d063e1f4
   0.01%     0x00007ff4d063dea9:   mov    0x58(%rsp),%rbp
             0x00007ff4d063deae:   add    0x98(%rsp),%rbp
             0x00007ff4d063deb6:   mov    0x50(%rsp),%r13
   0.21%     0x00007ff4d063debb:   add    0x90(%rsp),%r13
             0x00007ff4d063dec3:   vmovq  %r13,%xmm0
             0x00007ff4d063dec8:   mov    0x48(%rsp),%r13
             0x00007ff4d063decd:   add    0x88(%rsp),%r13
   0.17%     0x00007ff4d063ded5:   vmovq  %r13,%xmm1
             0x00007ff4d063deda:   mov    0x40(%rsp),%r13
             0x00007ff4d063dedf:   add    %r14,%r13
             0x00007ff4d063dee2:   mov    %r13,%r14
   0.15%     0x00007ff4d063dee5:   add    0x98(%rsp),%rdi
   0.00%     0x00007ff4d063deed:   add    0x88(%rsp),%r8
             0x00007ff4d063def5:   add    0x90(%rsp),%r9
             0x00007ff4d063defd:   sar    $0x1c,%rax
   0.17%     0x00007ff4d063df01:   add    %rax,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@132 (line 129)
   0.00%     0x00007ff4d063df04:   and    $0xfffffffff0000000,%rbx
             0x00007ff4d063df0b:   mov    0x70(%rsp),%rax
             0x00007ff4d063df10:   sub    %rbx,%rax
   0.20%     0x00007ff4d063df13:   vmovq  %rax,%xmm2
   0.00%     0x00007ff4d063df18:   lea    0x8000000(%r8),%rbx
             0x00007ff4d063df1f:   and    $0xfffffffff0000000,%rsi
             0x00007ff4d063df26:   sub    %rsi,%r11
   0.14%     0x00007ff4d063df29:   mov    %rbx,%rsi
             0x00007ff4d063df2c:   and    $0xfffffffff0000000,%rsi
             0x00007ff4d063df33:   sub    %rsi,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@153 (line 132)
                                                                       ;   {no_reloc}
             0x00007ff4d063df36:   sar    $0x1c,%rbx
   0.18%     0x00007ff4d063df3a:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@160 (line 133)
             0x00007ff4d063df3d:   lea    0x8000000(%r9),%rbx
             0x00007ff4d063df44:   mov    %rbx,%rsi
   0.00%     0x00007ff4d063df47:   sar    $0x1c,%rsi
   0.16%     0x00007ff4d063df4b:   add    %rsi,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@188 (line 137)
             0x00007ff4d063df4e:   and    $0xfffffffff0000000,%rbx
             0x00007ff4d063df55:   sub    %rbx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@181 (line 136)
             0x00007ff4d063df58:   lea    0x8000000(%rdi),%rbx
   0.18%     0x00007ff4d063df5f:   mov    %rbx,%rsi
             0x00007ff4d063df62:   sar    $0x1c,%rsi
             0x00007ff4d063df66:   mov    0x20(%rsp),%r13
             0x00007ff4d063df6b:   add    %rsi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@216 (line 141)
   0.17%     0x00007ff4d063df6e:   and    $0xfffffffff0000000,%rbx
             0x00007ff4d063df75:   sub    %rbx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@209 (line 140)
             0x00007ff4d063df78:   lea    0x8000000(%r13),%rax
             0x00007ff4d063df7f:   mov    %rax,%rbx
   0.19%     0x00007ff4d063df82:   sar    $0x1c,%rbx
   0.00%     0x00007ff4d063df86:   mov    0x28(%rsp),%rsi
             0x00007ff4d063df8b:   add    %rbx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@244 (line 145)
   0.00%     0x00007ff4d063df8e:   and    $0xfffffffff0000000,%rax
   0.17%     0x00007ff4d063df94:   sub    %rax,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@237 (line 144)
   0.00%     0x00007ff4d063df97:   vmovq  %r13,%xmm3
   0.01%     0x00007ff4d063df9c:   lea    0x8000000(%rsi),%r13
             0x00007ff4d063dfa3:   mov    %r13,%rbx
   0.21%     0x00007ff4d063dfa6:   sar    $0x1c,%rbx
   0.01%     0x00007ff4d063dfaa:   mov    0x30(%rsp),%rax
   0.00%     0x00007ff4d063dfaf:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@272 (line 149)
   0.02%     0x00007ff4d063dfb2:   and    $0xfffffffff0000000,%r13
   0.15%     0x00007ff4d063dfb9:   sub    %r13,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@265 (line 148)
   0.01%     0x00007ff4d063dfbc:   vmovq  %rsi,%xmm4
   0.24%     0x00007ff4d063dfc1:   lea    0x8000000(%rax),%rsi
             0x00007ff4d063dfc8:   mov    %rsi,%rbx
   0.06%     0x00007ff4d063dfcb:   sar    $0x1c,%rbx
   0.07%     0x00007ff4d063dfcf:   mov    0x38(%rsp),%r13
   0.10%     0x00007ff4d063dfd4:   add    %rbx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@300 (line 153)
   0.07%     0x00007ff4d063dfd7:   and    $0xfffffffff0000000,%rsi
   0.04%     0x00007ff4d063dfde:   sub    %rsi,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@293 (line 152)
   0.04%     0x00007ff4d063dfe1:   vmovq  %rax,%xmm5
   0.28%     0x00007ff4d063dfe6:   lea    0x8000000(%r13),%rbx
             0x00007ff4d063dfed:   mov    %rbx,%rsi
   0.03%     0x00007ff4d063dff0:   sar    $0x1c,%rsi
   0.19%     0x00007ff4d063dff4:   lea    (%r14,%rsi,1),%rax
   0.13%     0x00007ff4d063dff8:   and    $0xfffffffff0000000,%rbx
   0.04%     0x00007ff4d063dfff:   sub    %rbx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@321 (line 156)
   0.05%     0x00007ff4d063e002:   mov    %r13,%r14
   0.05%     0x00007ff4d063e005:   lea    0x8000000(%rax),%rbx
   0.07%     0x00007ff4d063e00c:   mov    %rbx,%rsi
             0x00007ff4d063e00f:   sar    $0x1c,%rsi
   0.13%     0x00007ff4d063e013:   vmovq  %xmm1,%r13
   0.07%     0x00007ff4d063e018:   add    %rsi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@356 (line 161)
   0.41%     0x00007ff4d063e01b:   and    $0xfffffffff0000000,%rbx
             0x00007ff4d063e022:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@349 (line 160)
   0.01%     0x00007ff4d063e025:   vmovq  %rax,%xmm1
   0.06%     0x00007ff4d063e02a:   lea    0x8000000(%r13),%rbx
   0.13%     0x00007ff4d063e031:   mov    %rbx,%rsi                    ;   {no_reloc}
             0x00007ff4d063e034:   sar    $0x1c,%rsi
   0.06%     0x00007ff4d063e038:   vmovq  %xmm0,%rax
   0.03%     0x00007ff4d063e03d:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@384 (line 165)
   0.32%     0x00007ff4d063e040:   and    $0xfffffffff0000000,%rbx
             0x00007ff4d063e047:   sub    %rbx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@377 (line 164)
             0x00007ff4d063e04a:   lea    0x8000000(%rax),%rbx
   0.03%     0x00007ff4d063e051:   mov    %rbx,%rsi
   0.29%     0x00007ff4d063e054:   sar    $0x1c,%rsi
             0x00007ff4d063e058:   add    %rsi,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@412 (line 169)
   0.23%     0x00007ff4d063e05b:   and    $0xfffffffff0000000,%rbx
   0.01%     0x00007ff4d063e062:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@405 (line 168)
   0.14%     0x00007ff4d063e065:   vmovq  %rax,%xmm0
   0.24%     0x00007ff4d063e06a:   lea    0x8000000(%rbp),%rsi
   0.05%     0x00007ff4d063e071:   mov    %rsi,%rbx
             0x00007ff4d063e074:   sar    $0x1c,%rbx
             0x00007ff4d063e078:   mov    0x60(%rsp),%rax
   0.12%     0x00007ff4d063e07d:   add    %rbx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@440 (line 173)
   0.05%     0x00007ff4d063e080:   and    $0xfffffffff0000000,%rsi
             0x00007ff4d063e087:   sub    %rsi,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@433 (line 172)
             0x00007ff4d063e08a:   vmovq  %rbp,%xmm6
   0.33%     0x00007ff4d063e08f:   lea    0x8000000(%rax),%rbx
   0.01%     0x00007ff4d063e096:   mov    %rbx,%rsi
             0x00007ff4d063e099:   sar    $0x1c,%rsi
   0.03%     0x00007ff4d063e09d:   mov    0x68(%rsp),%rbp
   0.15%     0x00007ff4d063e0a2:   add    %rsi,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@468 (line 177)
   0.05%     0x00007ff4d063e0a5:   and    $0xfffffffff0000000,%rbx
             0x00007ff4d063e0ac:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@461 (line 176)
   0.03%     0x00007ff4d063e0af:   vmovq  %rax,%xmm7
   0.32%     0x00007ff4d063e0b4:   lea    0x8000000(%rbp),%rbx
             0x00007ff4d063e0bb:   mov    %rbx,%rsi
   0.00%     0x00007ff4d063e0be:   sar    $0x1c,%rsi
   0.13%     0x00007ff4d063e0c2:   vmovq  %xmm2,%rax
   0.18%     0x00007ff4d063e0c7:   add    %rsi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@496 (line 181)
   0.11%     0x00007ff4d063e0ca:   and    $0xfffffffff0000000,%rbx
             0x00007ff4d063e0d1:   sub    %rbx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@489 (line 180)
             0x00007ff4d063e0d4:   vmovq  %rbp,%xmm2
   0.31%     0x00007ff4d063e0d9:   lea    0x8000000(%rax),%rbx
   0.21%     0x00007ff4d063e0e0:   mov    %rbx,%rsi
             0x00007ff4d063e0e3:   sar    $0x1c,%rsi
             0x00007ff4d063e0e7:   add    %rsi,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@524 (line 185)
   0.12%     0x00007ff4d063e0ea:   and    $0xfffffffff0000000,%rbx
   0.07%     0x00007ff4d063e0f1:   sub    %rbx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@517 (line 184)
   0.05%     0x00007ff4d063e0f4:   cmp    $0xf,%r10d
          ╭  0x00007ff4d063e0f8:   jbe    0x00007ff4d063e176
          │  0x00007ff4d063e0fa:   mov    %rcx,0x10(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@530 (line 187)
   0.06%  │  0x00007ff4d063e0fe:   mov    %r8,0x18(%rdx)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@535 (line 188)
   0.09%  │  0x00007ff4d063e102:   mov    %r9,0x20(%rdx)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@540 (line 189)
   0.06%  │  0x00007ff4d063e106:   mov    %rdi,0x28(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@545 (line 190)
          │  0x00007ff4d063e10a:   vmovq  %xmm3,%r10
   0.06%  │  0x00007ff4d063e10f:   mov    %r10,0x30(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@550 (line 191)
   0.08%  │  0x00007ff4d063e113:   vmovq  %xmm4,%r10
   0.04%  │  0x00007ff4d063e118:   mov    %r10,0x38(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@555 (line 192)
          │  0x00007ff4d063e11c:   vmovq  %xmm5,%r10
   0.08%  │  0x00007ff4d063e121:   mov    %r10,0x40(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@561 (line 193)
   0.08%  │  0x00007ff4d063e125:   mov    %r14,0x48(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@567 (line 194)
   0.05%  │  0x00007ff4d063e129:   vmovq  %xmm1,%r10
          │  0x00007ff4d063e12e:   mov    %r10,0x50(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@573 (line 195)
          │                                                            ;   {no_reloc}
   0.06%  │  0x00007ff4d063e132:   mov    %r13,0x58(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@579 (line 196)
   0.10%  │  0x00007ff4d063e136:   vmovq  %xmm0,%r10
   0.04%  │  0x00007ff4d063e13b:   mov    %r10,0x60(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@585 (line 197)
          │  0x00007ff4d063e13f:   vmovq  %xmm6,%r10
   0.05%  │  0x00007ff4d063e144:   mov    %r10,0x68(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@591 (line 198)
   0.05%  │  0x00007ff4d063e148:   vmovq  %xmm7,%r10
   0.05%  │  0x00007ff4d063e14d:   mov    %r10,0x70(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@597 (line 199)
          │  0x00007ff4d063e151:   mov    %rbp,0x78(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@603 (line 200)
   0.05%  │  0x00007ff4d063e155:   mov    %rax,0x80(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@609 (line 201)
   0.07%  │  0x00007ff4d063e15c:   mov    %r11,0x88(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0@615 (line 202)
   0.04%  │  0x00007ff4d063e163:   add    $0x10,%rsp
          │  0x00007ff4d063e167:   pop    %rbp
   0.06%  │  0x00007ff4d063e168:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007ff4d063e16f:   ja     0x00007ff4d063e20c
   0.14%  │  0x00007ff4d063e175:   ret    
          ↘  0x00007ff4d063e176:   mov    $0xffffffe4,%esi
             0x00007ff4d063e17b:   mov    %r8,0x20(%rsp)
             0x00007ff4d063e180:   mov    %r9,0x28(%rsp)
             0x00007ff4d063e185:   mov    %rdi,0x30(%rsp)
             0x00007ff4d063e18a:   mov    %r11,0x38(%rsp)
             0x00007ff4d063e18f:   mov    %rdx,0x40(%rsp)
             0x00007ff4d063e194:   mov    %rcx,0x48(%rsp)
             0x00007ff4d063e199:   vmovsd %xmm3,0x50(%rsp)
             0x00007ff4d063e19f:   vmovsd %xmm4,0x58(%rsp)
             0x00007ff4d063e1a5:   vmovsd %xmm5,0x60(%rsp)
....................................................................................................
  11.01%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.98%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 659 
  11.01%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0, version 2, compile id 642 
   4.83%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 721 
   4.64%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 721 
   3.09%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 757 
   2.48%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 765 
   2.29%         c2, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 770 
   2.23%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 765 
   2.21%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 677 
   1.93%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.57%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 721 
   1.52%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 721 
   1.17%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.15%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 860 
   1.07%         c2, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 770 
   0.85%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 860 
   0.62%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 721 
   0.55%         c2, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 957 
   0.45%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 721 
   0.39%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 836 
   2.96%  <...other 367 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.98%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 659 
  13.62%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 721 
  11.01%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce0, version 2, compile id 642 
   4.91%         c2, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 765 
   3.55%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 757 
   3.49%         c2, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 770 
   3.10%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.21%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 677 
   2.01%         c2, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 860 
   1.19%              kernel  [unknown] 
   0.61%         c2, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 957 
   0.40%         c2, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 836 
   0.37%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 722 
   0.05%         c2, level 4  sun.security.util.math.IntegerFieldModuloP::getElement, version 2, compile id 955 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark::sign, version 2, compile id 1006 
   0.04%         c2, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::asByteArray, version 2, compile id 938 
   0.04%                      <unknown> 
   0.02%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         c2, level 4  sun.security.ec.point.ProjectivePoint::asAffine, version 2, compile id 993 
   0.32%  <...other 106 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.36%         c2, level 4
   3.12%        runtime stub
   1.19%              kernel
   0.14%           libjvm.so
   0.06%        libc-2.31.so
   0.04%                    
   0.03%         interpreter
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         c1, level 1
   0.00%    perf-1935047.map
   0.00%          ld-2.31.so
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:45

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

Benchmark                         (algorithm)  (messageLength)  Mode  Cnt     Score   Error  Units
DsaEdSignatureBenchmark.sign          Ed25519               64  avgt    5  1245.665 ± 6.100  us/op
DsaEdSignatureBenchmark.sign:asm      Ed25519               64  avgt            NaN            ---
DsaEdSignatureBenchmark.sign          Ed25519              512  avgt    5  1271.314 ± 9.008  us/op
DsaEdSignatureBenchmark.sign:asm      Ed25519              512  avgt            NaN            ---
DsaEdSignatureBenchmark.sign          Ed25519             2048  avgt    5  1277.877 ± 3.027  us/op
DsaEdSignatureBenchmark.sign:asm      Ed25519             2048  avgt            NaN            ---
DsaEdSignatureBenchmark.sign          Ed25519            16384  avgt    5  1349.079 ± 3.844  us/op
DsaEdSignatureBenchmark.sign:asm      Ed25519            16384  avgt            NaN            ---
DsaEdSignatureBenchmark.sign            Ed448               64  avgt    5  4036.711 ± 2.381  us/op
DsaEdSignatureBenchmark.sign:asm        Ed448               64  avgt            NaN            ---
DsaEdSignatureBenchmark.sign            Ed448              512  avgt    5  4029.282 ± 3.193  us/op
DsaEdSignatureBenchmark.sign:asm        Ed448              512  avgt            NaN            ---
DsaEdSignatureBenchmark.sign            Ed448             2048  avgt    5  4045.829 ± 3.692  us/op
DsaEdSignatureBenchmark.sign:asm        Ed448             2048  avgt            NaN            ---
DsaEdSignatureBenchmark.sign            Ed448            16384  avgt    5  4207.393 ± 5.016  us/op
DsaEdSignatureBenchmark.sign:asm        Ed448            16384  avgt            NaN            ---
