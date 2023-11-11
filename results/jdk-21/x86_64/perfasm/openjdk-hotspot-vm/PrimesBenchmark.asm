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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.eratosthenes_sieve
# Parameters: (n = 8388608)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 35.247 ms/op
# Warmup Iteration   2: 34.635 ms/op
# Warmup Iteration   3: 34.759 ms/op
# Warmup Iteration   4: 35.156 ms/op
# Warmup Iteration   5: 35.122 ms/op
Iteration   1: 35.143 ms/op
Iteration   2: 35.118 ms/op
Iteration   3: 35.151 ms/op
Iteration   4: 34.692 ms/op
Iteration   5: 34.472 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.eratosthenes_sieve":
  34.915 ±(99.9%) 1.209 ms/op [Average]
  (min, avg, max) = (34.472, 34.915, 35.151), stdev = 0.314
  CI (99.9%): [33.706, 36.125] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.eratosthenes_sieve:asm":
PrintAssembly processed: 142323 total address lines.
Perf output processed (skipped 70.457 seconds):
 Column 1: cycles (50691 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 3, compile id 658 

                    0x00007fa3f864ade6:   cmp    $0x1,%r8d
          ╭         0x00007fa3f864adea:   je     0x00007fa3f864aec2
          │      ↗  0x00007fa3f864adf0:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@80 (line 45)
          │      │  0x00007fa3f864adf2:   cmp    %ebp,%edi
          │      │  0x00007fa3f864adf4:   jl     0x00007fa3f864ade0
          │      │  0x00007fa3f864adf6:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@67 (line 45)
          │      │  0x00007fa3f864adf9:   add    $0x30,%rsp
          │      │  0x00007fa3f864adfd:   pop    %rbp
   0.00%  │      │  0x00007fa3f864adfe:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │      │  0x00007fa3f864ae05:   ja     0x00007fa3f864af5a
          │      │  0x00007fa3f864ae0b:   ret    
   1.69%  │      │  0x00007fa3f864ae0c:   inc    %r10d
   0.95%  │      │  0x00007fa3f864ae0f:   jmp    0x00007fa3f864ad4a
          │      │  0x00007fa3f864ae14:   inc    %r10d
          │      │  0x00007fa3f864ae17:   jmp    0x00007fa3f864ad5a
   1.88%  │      │  0x00007fa3f864ae1c:   inc    %r10d
   0.95%  │      │  0x00007fa3f864ae1f:   nop
          │      │  0x00007fa3f864ae20:   jmp    0x00007fa3f864ad6a
          │      │  0x00007fa3f864ae25:   inc    %r10d
          │      │  0x00007fa3f864ae28:   jmp    0x00007fa3f864ad7a
   1.86%  │      │  0x00007fa3f864ae2d:   inc    %r10d
   0.93%  │      │  0x00007fa3f864ae30:   jmp    0x00007fa3f864ad8a
          │      │  0x00007fa3f864ae35:   inc    %r10d
          │      │  0x00007fa3f864ae38:   jmp    0x00007fa3f864ad9a
   1.66%  │      │  0x00007fa3f864ae3d:   inc    %r10d
   0.90%  │      │  0x00007fa3f864ae40:   jmp    0x00007fa3f864adaa
          │      │  0x00007fa3f864ae45:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@77 (line 47)
          │      │  0x00007fa3f864ae48:   jmp    0x00007fa3f864adba
   0.00%  │ ↗    │  0x00007fa3f864ae4d:   mov    %rcx,(%rsp)                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@24 (line 38)
   0.04%  │ │    │  0x00007fa3f864ae51:   cmp    %ebp,%r11d
          │ │    │  0x00007fa3f864ae54:   jae    0x00007fa3f864af10
          │ │    │  0x00007fa3f864ae5a:   mov    (%rsp),%rcx
   0.01%  │ │    │  0x00007fa3f864ae5e:   movzbl 0x10(%rcx,%r11,1),%r8d
   0.06%  │ │    │  0x00007fa3f864ae64:   cmp    $0x1,%r8d
          │╭│    │  0x00007fa3f864ae68:   je     0x00007fa3f864ae8b           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@53 (line 39)
   0.01%  │││↗  ↗│  0x00007fa3f864ae6a:   mov    0x458(%r15),%r9
   0.01%  ││││  ││  0x00007fa3f864ae71:   inc    %r11d                        ; ImmutableOopMap {rcx=Oop }
          ││││  ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││││  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@59 (line 37)
   0.00%  ││││  ││  0x00007fa3f864ae74:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@59 (line 37)
          ││││  ││                                                            ;   {poll}
   0.00%  ││││  ││  0x00007fa3f864ae77:   vcvtsi2sd %r11d,%xmm1,%xmm1
   0.00%  ││││  ││  0x00007fa3f864ae7c:   nopl   0x0(%rax)
          ││││  ││  0x00007fa3f864ae80:   vucomisd %xmm1,%xmm0
          ││╰│  ││  0x00007fa3f864ae84:   ja     0x00007fa3f864ae4d           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@21 (line 37)
          ││ │  ││  0x00007fa3f864ae86:   jmp    0x00007fa3f864acc5
          │↘ │  ││  0x00007fa3f864ae8b:   mov    %r11d,%r9d
          │  │  ││  0x00007fa3f864ae8e:   imul   %r11d,%r9d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@33 (line 39)
   0.01%  │  │  ││  0x00007fa3f864ae92:   cmp    %ebp,%r9d
          │  ╰  ││  0x00007fa3f864ae95:   jge    0x00007fa3f864ae6a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@39 (line 39)
          │     ││  0x00007fa3f864ae97:   nopw   0x0(%rax,%rax,1)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@42 (line 40)
   6.30%  │    ↗││  0x00007fa3f864aea0:   cmp    %ebp,%r9d
   0.01%  │   ╭│││  0x00007fa3f864aea3:   jae    0x00007fa3f864aeca
   5.86%  │   ││││  0x00007fa3f864aea5:   mov    %r12b,0x10(%rcx,%r9,1)
  29.50%  │   ││││  0x00007fa3f864aeaa:   add    %r11d,%r9d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@53 (line 39)
   5.51%  │   ││││  0x00007fa3f864aead:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rcx=Oop }
          │   ││││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │   ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@53 (line 39)
   6.31%  │   ││││  0x00007fa3f864aeb4:   test   %eax,(%rbx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@53 (line 39)
          │   ││││                                                            ;   {poll}
  16.38%  │   ││││  0x00007fa3f864aeb6:   cmp    %ebp,%r9d
   0.00%  │   │╰││  0x00007fa3f864aeb9:   jl     0x00007fa3f864aea0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@39 (line 39)
          │   │ ││  0x00007fa3f864aebb:   nopl   0x0(%rax,%rax,1)
          │   │ ╰│  0x00007fa3f864aec0:   jmp    0x00007fa3f864ae6a
          ↘   │  │  0x00007fa3f864aec2:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@77 (line 47)
              │  ╰  0x00007fa3f864aec5:   jmp    0x00007fa3f864adf0
              ↘     0x00007fa3f864aeca:   mov    $0xffffffe4,%esi
                    0x00007fa3f864aecf:   mov    %rcx,(%rsp)
                    0x00007fa3f864aed3:   mov    %r11d,0x8(%rsp)
                    0x00007fa3f864aed8:   mov    %r9d,0x18(%rsp)
....................................................................................................
  80.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 3, compile id 658 

              0x00007fa3f864ad04:   jle    0x00007fa3f864addb           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@83 (line 45)
              0x00007fa3f864ad0a:   mov    $0x1f40,%ebx
           ↗  0x00007fa3f864ad0f:   mov    %ebp,%esi
           │  0x00007fa3f864ad11:   sub    %edi,%esi
           │  0x00007fa3f864ad13:   add    $0xfffffff9,%esi
           │  0x00007fa3f864ad16:   cmp    %edi,%r9d
           │  0x00007fa3f864ad19:   cmovl  %eax,%esi
           │  0x00007fa3f864ad1c:   cmp    $0x1f40,%esi
           │  0x00007fa3f864ad22:   cmova  %ebx,%esi
   0.00%   │  0x00007fa3f864ad25:   add    %edi,%esi
           │  0x00007fa3f864ad27:   nopw   0x0(%rax,%rax,1)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@70 (line 46)
   0.29%  ↗│  0x00007fa3f864ad30:   movslq %edi,%rdx
   1.03%  ││  0x00007fa3f864ad33:   movzbl 0x10(%rcx,%rdx,1),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@72 (line 46)
   0.31%  ││  0x00007fa3f864ad39:   nopl   0x0(%rax)
   0.14%  ││  0x00007fa3f864ad40:   cmp    $0x1,%r11d
          ││  0x00007fa3f864ad44:   je     0x00007fa3f864ae0c           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@80 (line 45)
   1.21%  ││  0x00007fa3f864ad4a:   movzbl 0x11(%rcx,%rdx,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@72 (line 46)
   1.14%  ││  0x00007fa3f864ad50:   cmp    $0x1,%r8d
          ││  0x00007fa3f864ad54:   je     0x00007fa3f864ae14           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@80 (line 45)
   0.71%  ││  0x00007fa3f864ad5a:   movzbl 0x12(%rcx,%rdx,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@72 (line 46)
   0.08%  ││  0x00007fa3f864ad60:   cmp    $0x1,%r8d
          ││  0x00007fa3f864ad64:   je     0x00007fa3f864ae1c           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@80 (line 45)
   1.33%  ││  0x00007fa3f864ad6a:   movzbl 0x13(%rcx,%rdx,1),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@72 (line 46)
   0.86%  ││  0x00007fa3f864ad70:   cmp    $0x1,%r11d
          ││  0x00007fa3f864ad74:   je     0x00007fa3f864ae25           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@80 (line 45)
   0.84%  ││  0x00007fa3f864ad7a:   movzbl 0x14(%rcx,%rdx,1),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@72 (line 46)
   0.02%  ││  0x00007fa3f864ad80:   cmp    $0x1,%r11d
          ││  0x00007fa3f864ad84:   je     0x00007fa3f864ae2d           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@80 (line 45)
   1.25%  ││  0x00007fa3f864ad8a:   movzbl 0x15(%rcx,%rdx,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@72 (line 46)
   1.16%  ││  0x00007fa3f864ad90:   cmp    $0x1,%r8d
          ││  0x00007fa3f864ad94:   je     0x00007fa3f864ae35           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@80 (line 45)
   0.95%  ││  0x00007fa3f864ad9a:   movzbl 0x16(%rcx,%rdx,1),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@72 (line 46)
          ││                                                            ;   {no_reloc}
   0.11%  ││  0x00007fa3f864ada0:   cmp    $0x1,%r11d
          ││  0x00007fa3f864ada4:   je     0x00007fa3f864ae3d           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@80 (line 45)
   1.46%  ││  0x00007fa3f864adaa:   movzbl 0x17(%rcx,%rdx,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@72 (line 46)
   0.92%  ││  0x00007fa3f864adb0:   cmp    $0x1,%r8d
          ││  0x00007fa3f864adb4:   je     0x00007fa3f864ae45
   0.84%  ││  0x00007fa3f864adba:   add    $0x8,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@80 (line 45)
   0.01%  ││  0x00007fa3f864adbd:   data16 xchg %ax,%ax
   0.26%  ││  0x00007fa3f864adc0:   cmp    %esi,%edi
          ╰│  0x00007fa3f864adc2:   jl     0x00007fa3f864ad30           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@53 (line 39)
   0.01%   │  0x00007fa3f864adc8:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rcx=Oop }
           │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@83 (line 45)
   0.02%   │  0x00007fa3f864adcf:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@83 (line 45)
           │                                                            ;   {poll}
   0.01%   │  0x00007fa3f864add2:   cmp    %r9d,%edi
           ╰  0x00007fa3f864add5:   jl     0x00007fa3f864ad0f
              0x00007fa3f864addb:   cmp    %ebp,%edi
              0x00007fa3f864addd:   jge    0x00007fa3f864adf6
              0x00007fa3f864addf:   nop                                 ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@70 (line 46)
              0x00007fa3f864ade0:   movzbl 0x10(%rcx,%rdi,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes@72 (line 46)
              0x00007fa3f864ade6:   cmp    $0x1,%r8d
....................................................................................................
  14.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  80.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 3, compile id 658 
  14.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 3, compile id 658 
   1.26%        libc-2.31.so  __memset_avx2_erms 
   1.13%         c2, level 4  java.util.Arrays::fill, version 6, compile id 677 
   0.24%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.92%  <...other 285 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve::primes, version 3, compile id 658 
   1.38%              kernel  [unknown] 
   1.26%        libc-2.31.so  __memset_avx2_erms 
   1.14%         c2, level 4  java.util.Arrays::fill, version 6, compile id 677 
   0.04%                      <unknown> 
   0.04%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.01%           libjvm.so  HeapRegionManager::find_contiguous_in_free_list 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  G1CardSet::reset_table_scanner 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  HeapRegionManager::par_iterate 
   0.23%  <...other 93 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.92%         c2, level 4
   1.38%              kernel
   1.35%        libc-2.31.so
   0.26%           libjvm.so
   0.04%                    
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%    perf-1953204.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.miller_rabin
# Parameters: (n = 8388608)

# Run progress: 33.33% complete, ETA 00:04:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5354.477 ms/op
# Warmup Iteration   2: 5316.715 ms/op
# Warmup Iteration   3: 5317.212 ms/op
# Warmup Iteration   4: 5317.556 ms/op
# Warmup Iteration   5: 5317.198 ms/op
Iteration   1: 5314.567 ms/op
Iteration   2: 5317.050 ms/op
Iteration   3: 5318.737 ms/op
Iteration   4: 5318.023 ms/op
Iteration   5: 5316.007 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.miller_rabin":
  5316.877 ±(99.9%) 6.356 ms/op [Average]
  (min, avg, max) = (5314.567, 5316.877, 5318.737), stdev = 1.651
  CI (99.9%): [5310.521, 5323.233] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.miller_rabin:asm":
PrintAssembly processed: 143687 total address lines.
Perf output processed (skipped 73.690 seconds):
 Column 1: cycles (53846 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 661 

                                             0x00007f737064fe75:   mov    %esi,%r10d
                                             0x00007f737064fe78:   inc    %r10d
                                             0x00007f737064fe7b:   xor    %edx,%edx
                                             0x00007f737064fe7d:   mov    $0x2,%edi
          ╭                                  0x00007f737064fe82:   jmp    0x00007f7370650010
          │              ↗                   0x00007f737064fe87:   mov    0x4(%rsp),%r9d
          │              │                   0x00007f737064fe8c:   mov    0x8(%rsp),%rdx
          │              │                   0x00007f737064fe91:   mov    0x14(%rsp),%r10d
          │              │                   0x00007f737064fe96:   mov    0x10(%rsp),%edi
          │╭             │                   0x00007f737064fe9a:   jmp    0x00007f7370650005
   0.05%  ││             │         ↗         0x00007f737064fe9f:   mov    0x4(%rsp),%r9d
   0.06%  ││             │         │         0x00007f737064fea4:   mov    0x8(%rsp),%rdx
   0.01%  ││             │         │         0x00007f737064fea9:   mov    0x14(%rsp),%r10d
          ││             │         │         0x00007f737064feae:   mov    0x10(%rsp),%edi              ;*invokestatic isPrime {reexecute=0 rethrow=0 return_oop=0}
          ││             │         │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
          ││             │    ↗    │         0x00007f737064feb2:   add    $0x1,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││             │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@20 (line 40)
   0.00%  ││╭            │    │    │         0x00007f737064feb6:   jmp    0x00007f7370650005
          │││            │    │    │         0x00007f737064febb:   nopl   0x0(%rax,%rax,1)
   0.14%  │││     ↗      │    │    │         0x00007f737064fec0:   mov    %rcx,%rax
   0.34%  │││     │      │    │    │         0x00007f737064fec3:   imul   %r9,%rax
   0.02%  │││     │      │    │    │         0x00007f737064fec7:   mov    0x18(%rsp),%r11
   0.40%  │││     │      │    │    │         0x00007f737064fecc:   movabs $0x8000000000000000,%rdx
   0.17%  │││     │      │    │    │         0x00007f737064fed6:   cmp    %rdx,%rax
          │││╭    │      │    │    │         0x00007f737064fed9:   jne    0x00007f737064fee3
          ││││    │      │    │    │         0x00007f737064fedb:   xor    %edx,%edx
          ││││    │      │    │    │         0x00007f737064fedd:   cmp    $0xffffffffffffffff,%r11
          ││││╭   │      │    │    │         0x00007f737064fee1:   je     0x00007f737064fee8
   0.34%  │││↘│   │      │    │    │         0x00007f737064fee3:   cqto   
   0.03%  │││ │   │      │    │    │         0x00007f737064fee5:   idiv   %r11                         ;*lrem {reexecute=0 rethrow=0 return_oop=0}
          │││ │   │      │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@30 (line 96)
          │││ │   │      │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │││ │   │      │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
  34.16%  │││ ↘   │      │    │    │         0x00007f737064fee8:   mov    %rdx,%r9                     ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││     │      │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@46 (line 56)
          │││     │      │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.28%  │││     │↗     │    │    │         0x00007f737064feeb:   mov    0x458(%r15),%r11
   0.11%  │││     ││     │    │    │         0x00007f737064fef2:   mov    %rcx,%rax
   1.14%  │││     ││     │    │    │         0x00007f737064fef5:   imul   %rcx,%rax
   0.19%  │││     ││     │    │    │         0x00007f737064fef9:   mov    0x18(%rsp),%rcx
   0.27%  │││     ││     │    │    │         0x00007f737064fefe:   movabs $0x8000000000000000,%rdx
   0.04%  │││     ││     │    │    │         0x00007f737064ff08:   cmp    %rdx,%rax
          │││  ╭  ││     │    │    │         0x00007f737064ff0b:   jne    0x00007f737064ff15
          │││  │  ││     │    │    │         0x00007f737064ff0d:   xor    %edx,%edx
          │││  │  ││     │    │    │         0x00007f737064ff0f:   cmp    $0xffffffffffffffff,%rcx
          │││  │╭ ││     │    │    │         0x00007f737064ff13:   je     0x00007f737064ff1a
   1.03%  │││  ↘│ ││     │    │    │         0x00007f737064ff15:   cqto   
   0.18%  │││   │ ││     │    │    │         0x00007f737064ff17:   idiv   %rcx                         ;*lrem {reexecute=0 rethrow=0 return_oop=0}
          │││   │ ││     │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@42 (line 99)
          │││   │ ││     │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │││   │ ││     │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
  43.56%  │││   ↘ ││     │    │    │         0x00007f737064ff1a:   mov    %rdx,%rcx
   0.64%  │││     ││     │    │    │         0x00007f737064ff1d:   sar    %r10                         ; ImmutableOopMap {}
          │││     ││     │    │    │                                                                   ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││     ││     │    │    │                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@44 (line 99)
          │││     ││     │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │││     ││     │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
          │││     ││     │    │    │         0x00007f737064ff20:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││     ││     │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@44 (line 99)
          │││     ││     │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │││     ││     │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
          │││     ││     │    │    │                                                                   ;   {poll}
   0.77%  │││     ││     │    │    │         0x00007f737064ff23:   test   %r10,%r10
          │││    ╭││     │    │    │         0x00007f737064ff26:   jle    0x00007f737064ff4c           ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││    │││     │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@14 (line 95)
          │││    │││     │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │││    │││     │    │    │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.20%  │││    │││     │    │    │      ↗  0x00007f737064ff28:   mov    %r10,%r11
   0.55%  │││    │││     │    │    │      │  0x00007f737064ff2b:   shr    $0x3f,%r11
          │││    │││     │    │    │      │  0x00007f737064ff2f:   add    %r10,%r11
   0.80%  │││    │││     │    │    │      │  0x00007f737064ff32:   and    $0xfffffffffffffffe,%r11
   0.21%  │││    │││     │    │    │      │  0x00007f737064ff36:   mov    %r10,%rbx
   0.54%  │││    │││     │    │    │      │  0x00007f737064ff39:   sub    %r11,%rbx
          │││    │││     │    │    │      │  0x00007f737064ff3c:   nopl   0x0(%rax)
   0.81%  │││    │││     │    │    │      │  0x00007f737064ff40:   cmp    $0x1,%rbx
          │││    │╰│     │    │    │      │  0x00007f737064ff44:   je     0x00007f737064fec0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││    │ │     │    │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@21 (line 95)
          │││    │ │     │    │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
          │││    │ │     │    │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.06%  │││    │ ╰     │    │    │      │  0x00007f737064ff4a:   jmp    0x00007f737064feeb
   0.00%  │││    ↘       │    │    │      │  0x00007f737064ff4c:   cmp    $0x1,%r9
          │││       ╭    │    │    │      │  0x00007f737064ff50:   je     0x00007f73706500a9           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││       │    │    │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@88 (line 63)
          │││       │    │    │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.06%  │││       │    │    │    │      │  0x00007f737064ff56:   data16 nopw 0x0(%rax,%rax,1)
          │││       │    │    │    │      │  0x00007f737064ff60:   cmp    0x30(%rsp),%r9
          │││       │╭   │    │    │      │  0x00007f737064ff65:   je     0x00007f73706500a9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││       ││   │    │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@97 (line 63)
          │││       ││   │    │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%  │││       ││   │    │    │      │  0x00007f737064ff6b:   cmp    0x30(%rsp),%r8
          │││       ││╭  │    │    │      │  0x00007f737064ff70:   je     0x00007f737064fff2           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││       │││  │    │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@111 (line 68)
          │││       │││  │    │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%  │││       │││  │    │    │      │  0x00007f737064ff76:   data16 nopw 0x0(%rax,%rax,1)        ;*lload {reexecute=0 rethrow=0 return_oop=0}
          │││       │││  │    │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@114 (line 69)
          │││       │││  │    │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.03%  │││       │││  │  ↗ │    │      │  0x00007f737064ff80:   mov    %r9,%rax
          │││       │││  │  │ │    │      │  0x00007f737064ff83:   imul   %r9,%rax
   0.02%  │││       │││  │  │ │    │      │  0x00007f737064ff87:   mov    0x18(%rsp),%r10
   0.03%  │││       │││  │  │ │    │      │  0x00007f737064ff8c:   movabs $0x8000000000000000,%rdx
   0.02%  │││       │││  │  │ │    │      │  0x00007f737064ff96:   cmp    %rdx,%rax
          │││       │││╭ │  │ │    │      │  0x00007f737064ff99:   jne    0x00007f737064ffa3
          │││       ││││ │  │ │    │      │  0x00007f737064ff9b:   xor    %edx,%edx
          │││       ││││ │  │ │    │      │  0x00007f737064ff9d:   cmp    $0xffffffffffffffff,%r10
          │││       ││││╭│  │ │    │      │  0x00007f737064ffa1:   je     0x00007f737064ffa8
          │││       │││↘││  │ │    │      │  0x00007f737064ffa3:   cqto   
          │││       │││ ││  │ │    │      │  0x00007f737064ffa5:   idiv   %r10                         ;*lrem {reexecute=0 rethrow=0 return_oop=0}
          │││       │││ ││  │ │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@120 (line 69)
          │││       │││ ││  │ │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   2.26%  │││       │││ ↘│  │ │    │      │  0x00007f737064ffa8:   mov    %rdx,%r9
          │││       │││  │  │ │    │      │  0x00007f737064ffab:   cmp    $0x1,%rdx
          │││       │││  ╰  │ │    │      │  0x00007f737064ffaf:   je     0x00007f737064fe87           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││       │││     │ │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@46 (line 56)
          │││       │││     │ │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
          │││       │││     │ │    │      │  0x00007f737064ffb5:   mov    0x458(%r15),%r11
   0.04%  │││       │││     │ │    │      │  0x00007f737064ffbc:   mov    0x30(%rsp),%r10
   0.02%  │││       │││     │ │    │      │  0x00007f737064ffc1:   cmp    %r10,%rdx
          │││       │││     │ │    │      │  0x00007f737064ffc4:   mov    $0xffffffff,%r10d
          │││       │││   ╭ │ │    │      │  0x00007f737064ffca:   jl     0x00007f737064ffd4
   0.02%  │││       │││   │ │ │    │      │  0x00007f737064ffcc:   setne  %r10b
   0.02%  │││       │││   │ │ │    │      │  0x00007f737064ffd0:   movzbl %r10b,%r10d                  ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
          │││       │││   │ │ │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@143 (line 75)
          │││       │││   │ │ │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.05%  │││       │││   ↘ │ │    │      │  0x00007f737064ffd4:   shl    %r8                          ; ImmutableOopMap {}
          │││       │││     │ │    │      │                                                            ;*ifne {reexecute=1 rethrow=0 return_oop=0}
          │││       │││     │ │    │      │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@144 (line 75)
          │││       │││     │ │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.02%  │││       │││     │ │    │      │  0x00007f737064ffd7:   test   %eax,(%r11)                  ;   {poll}
   0.01%  │││       │││     │ │    │      │  0x00007f737064ffda:   nopw   0x0(%rax,%rax,1)
          │││       │││     │ │    │      │  0x00007f737064ffe0:   cmp    0x30(%rsp),%rdx
          │││       │││    ╭│ │    │      │  0x00007f737064ffe5:   je     0x00007f73706500a9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││       │││    ││ │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@144 (line 75)
          │││       │││    ││ │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.05%  │││       │││    ││ │    │      │  0x00007f737064ffeb:   cmp    0x30(%rsp),%r8
          │││       │││    │╰ │    │      │  0x00007f737064fff0:   jne    0x00007f737064ff80           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││       │││    │  │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@155 (line 81)
          │││       │││    │  │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%  │││       ││↘    │  │    │      │  0x00007f737064fff2:   mov    0x4(%rsp),%r9d
   0.08%  │││       ││     │  │    │      │  0x00007f737064fff7:   mov    0x8(%rsp),%rdx
          │││       ││     │  │    │      │  0x00007f737064fffc:   mov    0x14(%rsp),%r10d
   0.02%  │││       ││     │  │    │      │  0x00007f7370650001:   mov    0x10(%rsp),%edi
   0.03%  │↘↘       ││     │ ↗│    │      │  0x00007f7370650005:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │         ││     │ ││    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@22 (line 38)
   0.05%  │         ││     │ ││    │      │  0x00007f7370650007:   cmp    %r10d,%edi
          │         ││     │ ││    │      │  0x00007f737065000a:   jge    0x00007f737065022c           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │         ││     │ ││    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@9 (line 39)
   0.04%  ↘         ││     │ ││    │      │  0x00007f7370650010:   cmp    $0x4,%edi
                    ││     │ ╰│    │      │  0x00007f7370650013:   je     0x00007f7370650005           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                    ││     │  │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@11 (line 47)
                    ││     │  │    │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.02%            ││     │  │    │      │  0x00007f7370650015:   cmp    $0x3,%edi
                    ││     │  ╰    │      │  0x00007f7370650018:   jle    0x00007f737064feb2           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                    ││     │       │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@21 (line 50)
                    ││     │       │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.04%            ││     │       │      │  0x00007f737065001e:   movslq %edi,%rbx                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                    ││     │       │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@10 (line 39)
   0.02%            ││     │       │      │  0x00007f7370650021:   mov    %rbx,%rsi
                    ││     │       │      │  0x00007f7370650024:   dec    %rsi                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                    ││     │       │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@28 (line 54)
                    ││     │       │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%            ││     │       │      │  0x00007f7370650027:   mov    %rsi,%r11
   0.03%            ││     │       │      │  0x00007f737065002a:   and    $0xfffffffffffffffe,%r11
   0.02%            ││     │       │      │  0x00007f737065002e:   mov    %rbx,%r8
                    ││     │       │      │  0x00007f7370650031:   sub    %r11,%r8
   0.01%            ││     │       │      │  0x00007f7370650034:   dec    %r8
   0.04%            ││     │       │      │  0x00007f7370650037:   test   %r8,%r8
                    ││     │   ╭   │      │  0x00007f737065003a:   jne    0x00007f7370650062           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                    ││     │   │   │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@37 (line 55)
                    ││     │   │   │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.03%            ││     │   │   │      │  0x00007f737065003c:   mov    %rsi,%rcx
                    ││     │   │   │      │  0x00007f737065003f:   nop                                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
                    ││     │   │   │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@46 (line 56)
                    ││     │   │   │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.14%            ││     │   │↗  │      │  0x00007f7370650040:   mov    0x458(%r15),%rax
   0.23%            ││     │   ││  │      │  0x00007f7370650047:   sar    %rcx                         ; ImmutableOopMap {}
                    ││     │   ││  │      │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                    ││     │   ││  │      │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@46 (line 56)
                    ││     │   ││  │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%            ││     │   ││  │      │  0x00007f737065004a:   test   %eax,(%rax)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                    ││     │   ││  │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@46 (line 56)
                    ││     │   ││  │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                    ││     │   ││  │      │                                                            ;   {poll}
   0.11%            ││     │   ││  │      │  0x00007f737065004c:   mov    %rcx,%r11
                    ││     │   ││  │      │  0x00007f737065004f:   and    $0xfffffffffffffffe,%r11
                    ││     │   ││  │      │  0x00007f7370650053:   mov    %rcx,%r8
   0.02%            ││     │   ││  │      │  0x00007f7370650056:   sub    %r11,%r8
   0.05%            ││     │   ││  │      │  0x00007f7370650059:   test   %r8,%r8
                    ││     │   │╰  │      │  0x00007f737065005c:   je     0x00007f7370650040
   0.11%            ││     │   │   │      │  0x00007f737065005e:   xchg   %ax,%ax
   0.01%            ││     │   │ ╭ │      │  0x00007f7370650060:   jmp    0x00007f7370650065
   0.02%            ││     │   ↘ │ │      │  0x00007f7370650062:   mov    %rsi,%rcx                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                    ││     │     │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@37 (line 55)
                    ││     │     │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.10%            ││     │     ↘ │      │  0x00007f7370650065:   lea    -0x4(%rdi),%r11d
   0.02%            ││     │       │      │  0x00007f7370650069:   test   %r11d,%r11d
                    ││     │       │      │  0x00007f737065006c:   jle    0x00007f7370650242
   0.03%            ││     │       │      │  0x00007f7370650072:   lea    -0x5(%rdi),%r8d
   0.01%            ││     │       │      │  0x00007f7370650076:   xor    %ebp,%ebp
   0.01%            ││     │       │      │  0x00007f7370650078:   mov    %r9d,0x4(%rsp)
   0.08%            ││     │       │      │  0x00007f737065007d:   mov    %rdx,0x8(%rsp)
   0.06%            ││     │       │      │  0x00007f7370650082:   mov    %r10d,0x14(%rsp)
   0.06%            ││     │       │      │  0x00007f7370650087:   mov    %edi,0x10(%rsp)
   0.05%            ││     │       │      │  0x00007f737065008b:   mov    %rbx,0x18(%rsp)
   0.04%            ││     │       │      │  0x00007f7370650090:   mov    %rsi,0x30(%rsp)
   0.04%            ││     │       │      │  0x00007f7370650095:   mov    %rcx,0x20(%rsp)
   0.02%            ││     │       │      │  0x00007f737065009a:   mov    %r11d,0x2c(%rsp)
   0.04%            ││     │       │      │  0x00007f737065009f:   mov    %r8d,(%rsp)
   0.01%            ││     │       │      │  0x00007f73706500a3:   mov    %ebp,0x28(%rsp)
   0.01%            ││     │      ╭│      │  0x00007f73706500a7:   jmp    0x00007f73706500c5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                    ││     │      ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@155 (line 81)
                    ││     │      ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.02%            ↘↘     ↘      ││   ↗  │  0x00007f73706500a9:   mov    0x28(%rsp),%r10d
   0.03%                          ││   │  │  0x00007f73706500ae:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                  ││   │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@160 (line 59)
                                  ││   │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.02%                          ││   │  │  0x00007f73706500b1:   cmp    $0x5,%r10d
                                  │╰   │  │  0x00007f73706500b5:   jge    0x00007f737064fe9f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                  │    │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@55 (line 59)
                                  │    │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%                          │    │  │  0x00007f73706500bb:   mov    %r8,0x20(%rsp)
   0.01%                          │    │  │  0x00007f73706500c0:   mov    %r10d,0x28(%rsp)             ;*iconst_2 {reexecute=0 rethrow=0 return_oop=0}
                                  │    │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@58 (line 60)
                                  │    │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%                          ↘    │  │  0x00007f73706500c5:   movabs $0x7f0763bc8,%r10            ;   {oop(a &apos;java/util/Random&apos;{0x00000007f0763bc8})}
   0.02%                               │  │  0x00007f73706500cf:   mov    0x18(%r10),%r11d             ;*getfield seed {reexecute=0 rethrow=0 return_oop=0}
                                       │  │                                                            ; - java.util.Random::next@1 (line 440)
                                       │  │                                                            ; - java.util.Random::nextInt@17 (line 558)
                                       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.01%                               │  │  0x00007f73706500d3:   mov    0x10(%r12,%r11,8),%rax       ; implicit exception: dispatches to 0x00007f73706502e8
                                       │  │                                                            ;*invokevirtual compareAndSetLong {reexecute=0 rethrow=0 return_oop=0}
                                       │  │                                                            ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 151)
                                       │  │                                                            ; - java.util.Random::next@32 (line 444)
                                       │  │                                                            ; - java.util.Random::nextInt@17 (line 558)
                                       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.12%                               │  │  0x00007f73706500d8:   mov    %rax,%r8
   0.01%                               │  │  0x00007f73706500db:   movabs $0x5deece66d,%r10
   0.01%                               │  │  0x00007f73706500e5:   imul   %r10,%r8
   0.14%                               │  │  0x00007f73706500e9:   add    $0xb,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                       │  │                                                            ; - java.util.Random::next@20 (line 443)
                                       │  │                                                            ; - java.util.Random::nextInt@17 (line 558)
                                       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.07%                               │  │  0x00007f73706500ed:   mov    %r8,%r10
                                       │  │  0x00007f73706500f0:   movabs $0xffffffffffff,%r9
   0.00%                               │  │  0x00007f73706500fa:   and    %r9,%r10
   0.07%                               │  │  0x00007f73706500fd:   lock cmpxchg %r10,0x10(%r12,%r11,8)
   1.51%                               │  │  0x00007f7370650104:   sete   %r10b
                                       │  │  0x00007f7370650108:   movzbl %r10b,%r10d                  ;*invokevirtual compareAndSetLong {reexecute=0 rethrow=0 return_oop=0}
                                       │  │                                                            ; - java.util.concurrent.atomic.AtomicLong::compareAndSet@9 (line 151)
                                       │  │                                                            ; - java.util.Random::next@32 (line 444)
                                       │  │                                                            ; - java.util.Random::nextInt@17 (line 558)
                                       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.08%                               │  │  0x00007f737065010c:   test   %r10d,%r10d
                                       │  │  0x00007f737065010f:   je     0x00007f737065026c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                       │  │                                                            ; - java.util.Random::next@35 (line 444)
                                       │  │                                                            ; - java.util.Random::nextInt@17 (line 558)
                                       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                                       │  │  0x00007f7370650115:   shr    $0x11,%r8
                                       │  │  0x00007f7370650119:   and    $0x7fffffff,%r8              ;*lushr {reexecute=0 rethrow=0 return_oop=0}
                                       │  │                                                            ; - java.util.Random::next@44 (line 445)
                                       │  │                                                            ; - java.util.Random::nextInt@17 (line 558)
                                       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                       │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                                       │  │  0x00007f7370650120:   mov    (%rsp),%r11d
   0.08%                               │  │  0x00007f7370650124:   test   %r11d,0x2c(%rsp)
                                    ╭  │  │  0x00007f7370650129:   je     0x00007f73706501a7           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                    │  │  │                                                            ; - java.util.Random::nextInt@28 (line 560)
                                    │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                    │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                                    │  │  │  0x00007f737065012f:   mov    %r8d,%r11d                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                    │  │  │                                                            ; - java.util.Random::next@45 (line 445)
                                    │  │  │                                                            ; - java.util.Random::nextInt@17 (line 558)
                                    │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                    │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                                    │  │  │  0x00007f7370650132:   mov    %r11d,%eax
   0.00%                            │  │  │  0x00007f7370650135:   mov    0x2c(%rsp),%ebp
   0.07%                            │  │  │  0x00007f7370650139:   cmp    $0x80000000,%eax
                                    │╭ │  │  0x00007f737065013e:   jne    0x00007f7370650147
                                    ││ │  │  0x00007f7370650140:   xor    %edx,%edx
                                    ││ │  │  0x00007f7370650142:   cmp    $0xffffffff,%ebp
                                    ││╭│  │  0x00007f7370650145:   je     0x00007f737065014a
                                    │↘││  │  0x00007f7370650147:   cltd   
                                    │ ││  │  0x00007f7370650148:   idiv   %ebp                         ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                    │ ││  │                                                            ; - java.util.Random::nextInt@52 (line 564)
                                    │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                    │ ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.67%                            │ ↘│  │  0x00007f737065014a:   sub    %edx,%r11d
   0.08%                            │  │  │  0x00007f737065014d:   add    0x10(%rsp),%r11d
   0.04%                            │  │  │  0x00007f7370650152:   add    $0xfffffffb,%r11d
   0.09%                            │  │  │  0x00007f7370650156:   test   %r11d,%r11d
                                    │  │  │  0x00007f7370650159:   jl     0x00007f73706501d0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                    │  │  │                                                            ; - java.util.Random::nextInt@58 (line 564)
                                    │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                    │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.09%                            │  │  │  0x00007f737065015f:   mov    0x20(%rsp),%r8
                                    │  │  │  0x00007f7370650164:   test   %r8,%r8
                                    │  ╰  │  0x00007f7370650167:   jle    0x00007f73706500a9           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                    │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@11 (line 94)
                                    │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                    │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   0.00%                            │     │  0x00007f737065016d:   add    $0x2,%edx
   0.01%                            │     │  0x00007f7370650170:   movslq %edx,%rax
   0.05%                            │     │  0x00007f7370650173:   mov    0x18(%rsp),%r10
                                    │     │  0x00007f7370650178:   movabs $0x8000000000000000,%rdx
                                    │     │  0x00007f7370650182:   cmp    %rdx,%rax
                                    │   ╭ │  0x00007f7370650185:   jne    0x00007f737065018f
                                    │   │ │  0x00007f7370650187:   xor    %edx,%edx
                                    │   │ │  0x00007f7370650189:   cmp    $0xffffffffffffffff,%r10
                                    │   │╭│  0x00007f737065018d:   je     0x00007f7370650194
   0.03%                            │   ↘││  0x00007f737065018f:   cqto   
   0.05%                            │    ││  0x00007f7370650191:   idiv   %r10                         ;*lrem {reexecute=0 rethrow=0 return_oop=0}
                                    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::power@6 (line 92)
                                    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@79 (line 61)
                                    │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
   3.28%                            │    ↘│  0x00007f7370650194:   mov    %rdx,%rcx
                                    │     │  0x00007f7370650197:   mov    0x20(%rsp),%r10
                                    │     │  0x00007f737065019c:   mov    $0x1,%r9d
   0.04%                            │     ╰  0x00007f73706501a2:   jmp    0x00007f737064ff28
                                    ↘        0x00007f73706501a7:   mov    0x18(%rsp),%r10
                                             0x00007f73706501ac:   add    $0xfffffffffffffffc,%r10
                                             0x00007f73706501b0:   imul   %r8,%r10
                                             0x00007f73706501b4:   sar    $0x1f,%r10
                                             0x00007f73706501b8:   mov    %r10d,%edx                   ;*l2i {reexecute=0 rethrow=0 return_oop=0}
                                                                                                       ; - java.util.Random::nextInt@39 (line 561)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::isPrime@68 (line 60)
                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes@12 (line 39)
                                             0x00007f73706501bb:   nopl   0x0(%rax,%rax,1)
                                             0x00007f73706501c0:   jmp    0x00007f737065015f
....................................................................................................
  98.20%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 661 
   0.43%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.76%  <...other 253 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin::primes, version 5, compile id 661 
   1.56%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  os::write 
   0.00%         c2, level 4  java.util.Random::next, version 2, compile id 650 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%         interpreter  invokevirtual  182 invokevirtual  
   0.00%           libjvm.so  defaultStream::write 
   0.10%  <...other 49 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.21%         c2, level 4
   1.56%              kernel
   0.11%           libjvm.so
   0.06%        libc-2.31.so
   0.02%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.trial_division
# Parameters: (n = 8388608)

# Run progress: 66.67% complete, ETA 00:02:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7349.715 ms/op
# Warmup Iteration   2: 7561.240 ms/op
# Warmup Iteration   3: 7558.849 ms/op
# Warmup Iteration   4: 7556.947 ms/op
# Warmup Iteration   5: 7558.859 ms/op
Iteration   1: 7557.660 ms/op
Iteration   2: 7559.983 ms/op
Iteration   3: 7556.981 ms/op
Iteration   4: 7559.728 ms/op
Iteration   5: 7554.900 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.trial_division":
  7557.850 ±(99.9%) 8.070 ms/op [Average]
  (min, avg, max) = (7554.900, 7557.850, 7559.983), stdev = 2.096
  CI (99.9%): [7549.780, 7565.921] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.PrimesBenchmark.trial_division:asm":
PrintAssembly processed: 146477 total address lines.
Perf output processed (skipped 95.733 seconds):
 Column 1: cycles (76541 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 5, compile id 696 

                         0x00007f646c655681:   mov    0x18(%rsp),%rcx
                         0x00007f646c655686:   mov    0x8(%rsp),%r10d              ;*invokevirtual getAndClearState {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@20 (line 230)
                                                                                   ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
                                                                                   ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                                   ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
                                                                                   ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
                                                                                   ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.02%     ↗↗          0x00007f646c65568b:   movzbl 0xd(%r9),%r8d
   0.01%     ││          0x00007f646c655690:   test   %r8d,%r8d
          ╭  ││          0x00007f646c655693:   jne    0x00007f646c655a45           ;*return {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                                    ; - java.util.stream.IntPipeline$10$1::accept@26 (line 394)
          │  ││                                                                    ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.00%  │  ││      ↗   0x00007f646c655699:   nopl   0x0(%rax)
   0.01%  │  ││      │   0x00007f646c6556a0:   cmp    0xc(%rsp),%r10d
          │  ││      │   0x00007f646c6556a5:   jge    0x00007f646c655d8f
   0.02%  │  ││      │   0x00007f646c6556ab:   mov    %r10d,%edx                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@39 (line 104)
   0.01%  │  ││      │   0x00007f646c6556ae:   mov    0x10(%rcx),%r10d             ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@1 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.00%  │  ││      │   0x00007f646c6556b2:   mov    0x34(%r12,%r10,8),%r11d      ; implicit exception: dispatches to 0x00007f646c6560e0
          │  ││      │                                                             ;*getfield val$predicate {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@4 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.02%  │  ││      │   0x00007f646c6556b7:   nopw   0x0(%rax,%rax,1)
   0.03%  │  ││      │   0x00007f646c6556c0:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f646c6560f4
   0.06%  │  ││      │   0x00007f646c6556c5:   mov    %edx,%r10d
          │  ││      │   0x00007f646c6556c8:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@41 (line 104)
   0.01%  │  ││      │   0x00007f646c6556cb:   cmp    $0x102ab08,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/prime/trialdivision/StreamBasedTrialDivision$$Lambda+0x00007f63f402ab08&apos;)}
          │  ││      │   0x00007f646c6556d2:   jne    0x00007f646c655dc7           ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.01%  │  ││      │   0x00007f646c6556d8:   cmp    $0x1,%edx
          │  ││      │   0x00007f646c6556db:   nopl   0x0(%rax,%rax,1)
          │  ││      │   0x00007f646c6556e0:   jle    0x00007f646c655e30           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@2 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.02%  │  ││      │   0x00007f646c6556e6:   vcvtsi2sd %edx,%xmm0,%xmm0
   0.05%  │  ││      │   0x00007f646c6556ea:   vsqrtsd %xmm0,%xmm0,%xmm0
   0.23%  │  ││      │   0x00007f646c6556ee:   vcvttsd2si %xmm0,%ebp
   0.10%  │  ││      │   0x00007f646c6556f2:   cmp    $0x80000000,%ebp
          │  ││      │   0x00007f646c6556f8:   je     0x00007f646c6561d3
          │  ││      │   0x00007f646c6556fe:   inc    %ebp                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@13 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │  ││      │   0x00007f646c655700:   cmp    $0x2,%ebp
          │  ││      │   0x00007f646c655703:   jle    0x00007f646c655aa5
   0.02%  │  ││      │   0x00007f646c655709:   mov    0x1b8(%r15),%r8
   0.04%  │  ││      │   0x00007f646c655710:   mov    %r8,%r11
          │  ││      │   0x00007f646c655713:   add    $0x18,%r11
          │  ││      │   0x00007f646c655717:   nopw   0x0(%rax,%rax,1)
   0.01%  │  ││      │   0x00007f646c655720:   cmp    0x1c8(%r15),%r11
          │  ││      │   0x00007f646c655727:   jae    0x00007f646c655beb           ;*putfield inputShape {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.MatchOps$MatchOp::&lt;init&gt;@6 (line 212)
          │  ││      │                                                             ; - java.util.stream.MatchOps::makeInt@25 (line 126)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::noneMatch@5 (line 547)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.03%  │  ││      │   0x00007f646c65572d:   mov    %r11,0x1b8(%r15)
          │  ││      │   0x00007f646c655734:   prefetchw 0xc0(%r11)
          │  ││      │   0x00007f646c65573c:   movq   $0x1,(%r8)
   0.01%  │  ││      │   0x00007f646c655743:   movl   $0x1033928,0x8(%r8)          ;   {metadata(&apos;java/util/stream/Streams$RangeIntSpliterator&apos;)}
   0.02%  │  ││      │   0x00007f646c65574b:   mov    %r12d,0x14(%r8)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.IntStream::range@9 (line 1083)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@14 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │  ││      │   0x00007f646c65574f:   movl   $0x2,0xc(%r8)                ;*putfield from {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::&lt;init&gt;@6 (line 70)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::&lt;init&gt;@12 (line 66)
          │  ││      │                                                             ; - java.util.stream.IntStream::range@16 (line 1083)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@14 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │  ││      │   0x00007f646c655757:   mov    %ebp,0x10(%r8)
   0.02%  │  ││      │   0x00007f646c65575b:   mov    0x1b8(%r15),%r11
   0.02%  │  ││      │   0x00007f646c655762:   mov    %r11,%r9
          │  ││      │   0x00007f646c655765:   add    $0x38,%r9
   0.00%  │  ││      │   0x00007f646c655769:   cmp    0x1c8(%r15),%r9
          │  ││      │   0x00007f646c655770:   jae    0x00007f646c655c2e           ;*putfield inputShape {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.MatchOps$MatchOp::&lt;init&gt;@6 (line 212)
          │  ││      │                                                             ; - java.util.stream.MatchOps::makeInt@25 (line 126)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::noneMatch@5 (line 547)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.01%  │  ││      │   0x00007f646c655776:   mov    %r9,0x1b8(%r15)
   0.02%  │  ││      │   0x00007f646c65577d:   prefetchw 0xc0(%r9)
   0.00%  │  ││      │   0x00007f646c655785:   movq   $0x1,(%r11)
          │  ││      │   0x00007f646c65578c:   movl   $0x351808,0x8(%r11)          ;   {metadata(&apos;java/util/stream/IntPipeline$Head&apos;)}
   0.02%  │  ││      │   0x00007f646c655794:   mov    %r12,0x18(%r11)
   0.02%  │  ││      │   0x00007f646c655798:   mov    %r12,0x20(%r11)
   0.00%  │  ││      │   0x00007f646c65579c:   mov    %r12d,0x2c(%r11)
          │  ││      │   0x00007f646c6557a0:   mov    %r12,0x30(%r11)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.StreamSupport::intStream@0 (line 138)
          │  ││      │                                                             ; - java.util.stream.IntStream::range@20 (line 1083)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@14 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.02%  │  ││      │   0x00007f646c6557a4:   movl   $0x55,0xc(%r11)              ;*putfield sourceOrOpFlags {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.AbstractPipeline::&lt;init&gt;@25 (line 185)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::&lt;init&gt;@4 (line 80)
          │  ││      │                                                             ; - java.util.stream.IntPipeline$Head::&lt;init&gt;@4 (line 599)
          │  ││      │                                                             ; - java.util.stream.StreamSupport::intStream@10 (line 139)
          │  ││      │                                                             ; - java.util.stream.IntStream::range@20 (line 1083)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@14 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.02%  │  ││      │   0x00007f646c6557ac:   movabs $0x5500000000,%r9
   0.00%  │  ││      │   0x00007f646c6557b6:   mov    %r9,0x10(%r11)               ;*putfield combinedFlags {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.AbstractPipeline::&lt;init&gt;@41 (line 188)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::&lt;init&gt;@4 (line 80)
          │  ││      │                                                             ; - java.util.stream.IntPipeline$Head::&lt;init&gt;@4 (line 599)
          │  ││      │                                                             ; - java.util.stream.StreamSupport::intStream@10 (line 139)
          │  ││      │                                                             ; - java.util.stream.IntStream::range@20 (line 1083)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@14 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │  ││      │   0x00007f646c6557ba:   shr    $0x3,%r8
   0.02%  │  ││      │   0x00007f646c6557be:   mov    %r8d,0x28(%r11)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.StreamSupport::intStream@0 (line 138)
          │  ││      │                                                             ; - java.util.stream.IntStream::range@20 (line 1083)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@14 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.03%  │  ││      │   0x00007f646c6557c2:   mov    %r11,%r8
   0.00%  │  ││      │   0x00007f646c6557c5:   shr    $0x3,%r8
          │  ││      │   0x00007f646c6557c9:   mov    %r8d,0x1c(%r11)
   0.02%  │  ││      │   0x00007f646c6557cd:   mov    0x1b8(%r15),%rbp
   0.03%  │  ││      │   0x00007f646c6557d4:   mov    %rbp,%r8
   0.00%  │  ││      │   0x00007f646c6557d7:   add    $0x10,%r8
          │  ││      │   0x00007f646c6557db:   nopl   0x0(%rax,%rax,1)
   0.02%  │  ││      │   0x00007f646c6557e0:   cmp    0x1c8(%r15),%r8
          │  ││      │   0x00007f646c6557e7:   jae    0x00007f646c655b38           ;*putfield inputShape {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.MatchOps$MatchOp::&lt;init&gt;@6 (line 212)
          │  ││      │                                                             ; - java.util.stream.MatchOps::makeInt@25 (line 126)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::noneMatch@5 (line 547)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.04%  │  ││      │   0x00007f646c6557ed:   mov    %r8,0x1b8(%r15)
   0.00%  │  ││      │   0x00007f646c6557f4:   prefetchw 0xc0(%r8)
   0.01%  │  ││      │   0x00007f646c6557fc:   movq   $0x1,0x0(%rbp)
   0.02%  │  ││      │   0x00007f646c655804:   movl   $0x102ad50,0x8(%rbp)         ;*invokevirtual allocateInstance {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
          │  ││      │                                                             ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
          │  ││      │                                                             ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@18 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │  ││      │                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/prime/trialdivision/StreamBasedTrialDivision$$Lambda+0x00007f63f402ad50&apos;)}
   0.04%  │  ││      │   0x00007f646c65580b:   mov    %edx,0xc(%rbp)               ;*synchronization entry
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ad50::&lt;init&gt;@-1
          │  ││      │                                                             ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@16
          │  ││      │                                                             ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@18 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │  ││      │   0x00007f646c65580e:   mov    0x8(%r11),%r8d               ; implicit exception: dispatches to 0x00007f646c656108
   0.00%  │  ││      │   0x00007f646c655812:   data16 nopw 0x0(%rax,%rax,1)
   0.01%  │  ││      │   0x00007f646c65581c:   data16 data16 xchg %ax,%ax
   0.03%  │  ││      │   0x00007f646c655820:   cmp    $0x351808,%r8d               ;   {metadata(&apos;java/util/stream/IntPipeline$Head&apos;)}
          │  ││      │   0x00007f646c655827:   jne    0x00007f646c655e04           ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.MatchOps::makeInt@25 (line 126)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::noneMatch@5 (line 547)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │  ││      │   0x00007f646c65582d:   movzbl 0x18(%r11),%r8d              ;*getfield linkedOrConsumed {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.AbstractPipeline::evaluate@28 (line 228)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │  ││      │   0x00007f646c655832:   test   %r8d,%r8d
          │  ││      │   0x00007f646c655835:   jne    0x00007f646c655f13           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.AbstractPipeline::evaluate@31 (line 228)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.02%  │  ││      │   0x00007f646c65583b:   movb   $0x1,0x18(%r11)              ;*putfield linkedOrConsumed {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.AbstractPipeline::evaluate@46 (line 230)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.03%  │  ││      │   0x00007f646c655840:   mov    0x1c(%r11),%r13d             ;*getfield sourceStage {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.AbstractPipeline::isParallel@1 (line 373)
          │  ││      │                                                             ; - java.util.stream.AbstractPipeline::evaluate@50 (line 232)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.00%  │  ││      │   0x00007f646c655844:   movzbl 0x1a(%r12,%r13,8),%r9d       ; implicit exception: dispatches to 0x00007f646c65611c
          │  ││      │                                                             ;*getfield parallel {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.AbstractPipeline::isParallel@4 (line 373)
          │  ││      │                                                             ; - java.util.stream.AbstractPipeline::evaluate@50 (line 232)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │  ││      │   0x00007f646c65584a:   test   %r9d,%r9d
          │  ││      │   0x00007f646c65584d:   jne    0x00007f646c655f50           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.AbstractPipeline::evaluate@53 (line 232)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.01%  │  ││      │   0x00007f646c655853:   mov    0x28(%r12,%r13,8),%r8d       ;*getfield sourceSpliterator {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.AbstractPipeline::sourceSpliterator@6 (line 400)
          │  ││      │                                                             ; - java.util.stream.AbstractPipeline::evaluate@85 (line 234)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.03%  │  ││      │   0x00007f646c655858:   nopl   0x0(%rax,%rax,1)
          │  ││      │   0x00007f646c655860:   mov    0x8(%r12,%r8,8),%ebx         ; implicit exception: dispatches to 0x00007f646c656130
          │  ││      │                                                             ;*putfield inputShape {reexecute=0 rethrow=0 return_oop=0}
          │  ││      │                                                             ; - java.util.stream.MatchOps$MatchOp::&lt;init&gt;@6 (line 212)
          │  ││      │                                                             ; - java.util.stream.MatchOps::makeInt@25 (line 126)
          │  ││      │                                                             ; - java.util.stream.IntPipeline::noneMatch@5 (line 547)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │  ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │  ││      │                                                             ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │  ││      │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │  ││      │   0x00007f646c655865:   cmpb   $0x0,0x40(%r15)
   0.02%  │╭ ││      │   0x00007f646c65586a:   jne    0x00007f646c655a68
   0.02%  ││ ││      │↗  0x00007f646c655870:   mov    %r12d,0x28(%r12,%r13,8)      ;*putfield sourceSpliterator {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::sourceSpliterator@25 (line 402)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@85 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.00%  ││ ││      ││  0x00007f646c655875:   mov    0x14(%r11),%esi              ;*putfield inputShape {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::&lt;init&gt;@6 (line 212)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps::makeInt@25 (line 126)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@5 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.00%  ││ ││      ││  0x00007f646c655879:   mov    0x1b8(%r15),%r9
   0.01%  ││ ││      ││  0x00007f646c655880:   mov    %r9,%rdi
   0.03%  ││ ││      ││  0x00007f646c655883:   add    $0x18,%rdi
          ││ ││      ││  0x00007f646c655887:   mov    %esi,%r13d
   0.00%  ││ ││      ││  0x00007f646c65588a:   and    $0xfeffffcf,%r13d
   0.02%  ││ ││      ││  0x00007f646c655891:   or     $0x1000020,%r13d             ;*ior {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.StreamOpFlag::combineOpFlags@7 (line 708)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::sourceSpliterator@257 (line 449)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@85 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.02%  ││ ││      ││  0x00007f646c655898:   mov    %r13d,0x3c(%rsp)
   0.00%  ││ ││      ││  0x00007f646c65589d:   mov    %r13d,0x14(%r11)
   0.00%  ││ ││      ││  0x00007f646c6558a1:   cmp    0x1c8(%r15),%rdi
          ││ ││      ││  0x00007f646c6558a8:   jae    0x00007f646c655b85           ;*putfield inputShape {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::&lt;init&gt;@6 (line 212)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps::makeInt@25 (line 126)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@5 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.01%  ││ ││      ││  0x00007f646c6558ae:   mov    %rdi,0x1b8(%r15)
   0.02%  ││ ││      ││  0x00007f646c6558b5:   prefetchw 0xc0(%rdi)
   0.00%  ││ ││      ││  0x00007f646c6558bc:   movq   $0x1,(%r9)
          ││ ││      ││  0x00007f646c6558c3:   movl   $0x10352b0,0x8(%r9)          ;   {metadata(&apos;java/util/stream/MatchOps$2MatchSink&apos;)}
   0.01%  ││ ││      ││  0x00007f646c6558cb:   mov    %r12d,0xc(%r9)
   0.03%  ││ ││      ││  0x00007f646c6558cf:   mov    %r12d,0x14(%r9)
   0.00%  ││ ││      ││  0x00007f646c6558d3:   movl   $0xfe503f30,0x10(%r9)        ;*new {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.MatchOps::lambda$makeInt$1@0 (line 126)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$$Lambda/0x00007f63f4035090::get@8
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@5 (line 230)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          ││ ││      ││                                                            ;   {oop(a &apos;java/util/stream/MatchOps$MatchKind&apos;{0x00000007f281f980})}
   0.00%  ││ ││      ││  0x00007f646c6558db:   mov    $0xfe503f30,%r13d            ;   {oop(a &apos;java/util/stream/MatchOps$MatchKind&apos;{0x00000007f281f980})}
   0.01%  ││ ││      ││  0x00007f646c6558e1:   movzbl 0x19(%r12,%r13,8),%r13d      ;*getfield shortCircuitResult {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$BooleanTerminalSink::&lt;init&gt;@6 (line 257)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$2MatchSink::&lt;init&gt;@12 (line 114)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps::lambda$makeInt$1@6 (line 126)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$$Lambda/0x00007f63f4035090::get@8
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@5 (line 230)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.03%  ││ ││      ││  0x00007f646c6558e7:   mov    %rbp,%rdi
   0.00%  ││ ││      ││  0x00007f646c6558ea:   shr    $0x3,%rdi
   0.00%  ││ ││      ││  0x00007f646c6558ee:   mov    %edi,0x14(%r9)               ;*putfield val$predicate {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$2MatchSink::&lt;init&gt;@7 (line 113)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps::lambda$makeInt$1@6 (line 126)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$$Lambda/0x00007f63f4035090::get@8
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@5 (line 230)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.01%  ││ ││      ││  0x00007f646c6558f2:   test   %r13d,%r13d
          ││ ││      ││  0x00007f646c6558f5:   jne    0x00007f646c655e68           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$BooleanTerminalSink::&lt;init&gt;@9 (line 257)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$2MatchSink::&lt;init&gt;@12 (line 114)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps::lambda$makeInt$1@6 (line 126)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$$Lambda/0x00007f63f4035090::get@8
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@5 (line 230)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.02%  ││ ││      ││  0x00007f646c6558fb:   movb   $0x1,0xd(%r9)                ;*synchronization entry
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$2MatchSink::&lt;init&gt;@-1 (line 113)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps::lambda$makeInt$1@6 (line 126)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$$Lambda/0x00007f63f4035090::get@8
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@5 (line 230)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.00%  ││ ││      ││  0x00007f646c655900:   mov    0x10(%r11),%edi
          ││ ││      ││  0x00007f646c655904:   test   %edi,%edi
          ││ ││      ││  0x00007f646c655906:   jg     0x00007f646c655c79           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::wrapSink@11 (line 546)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.01%  ││ ││      ││  0x00007f646c65590c:   movabs $0x7f281f9a0,%rdi            ;   {oop(a &apos;java/util/stream/StreamOpFlag&apos;{0x00000007f281f9a0})}
   0.02%  ││ ││      ││  0x00007f646c655916:   mov    0x3c(%rsp),%ebp
   0.01%  ││ ││      ││  0x00007f646c65591a:   and    0x24(%rdi),%ebp
   0.00%  ││ ││      ││  0x00007f646c65591d:   mov    %ebp,%edi
   0.02%  ││ ││      ││  0x00007f646c65591f:   movabs $0x7f281f9a0,%rsi            ;   {oop(a &apos;java/util/stream/StreamOpFlag&apos;{0x00000007f281f9a0})}
   0.03%  ││ ││      ││  0x00007f646c655929:   mov    0x1c(%rsi),%r13d
   0.00%  ││ ││      ││  0x00007f646c65592d:   lea    (%r12,%r8,8),%rbp
   0.00%  ││ ││      ││  0x00007f646c655931:   cmp    %r13d,%edi
          ││ ││      ││  0x00007f646c655934:   jne    0x00007f646c655c9c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@15 (line 507)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.01%  ││ ││      ││  0x00007f646c65593a:   nopw   0x0(%rax,%rax,1)
   0.02%  ││ ││      ││  0x00007f646c655940:   cmp    $0x1033928,%ebx              ;   {metadata(&apos;java/util/stream/Streams$RangeIntSpliterator&apos;)}
          ││ ││      ││  0x00007f646c655946:   jne    0x00007f646c655adc           ;*invokeinterface getExactSizeIfKnown {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@19 (line 526)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.00%  ││ ││      ││  0x00007f646c65594c:   mov    0x8(%rbp),%r8d
   0.00%  ││ ││      ││  0x00007f646c655950:   cmp    $0x1033928,%r8d              ;   {metadata(&apos;java/util/stream/Streams$RangeIntSpliterator&apos;)}
          ││ ││      ││  0x00007f646c655957:   jne    0x00007f646c655cec
   0.01%  ││ ││      ││  0x00007f646c65595d:   mov    %rbp,%rbx                    ;*invokeinterface tryAdvance {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.03%  ││ ││      ││  0x00007f646c655960:   mov    $0xfe503f30,%r11d            ;   {oop(a &apos;java/util/stream/MatchOps$MatchKind&apos;{0x00000007f281f980})}
          ││ ││      ││  0x00007f646c655966:   movzbl 0x19(%r12,%r11,8),%r13d      ;*getfield shortCircuitResult {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$2MatchSink::accept@37 (line 121)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.01%  ││ ││      ││  0x00007f646c65596c:   mov    0x10(%rbx),%esi              ;*getfield upTo {reexecute=0 rethrow=0 return_oop=0}
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@12 (line 80)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││ ││      ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││ ││      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││ ││      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││ ││      ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││ ││      ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.01%  ││ ││      ││  0x00007f646c65596f:   mov    $0xfe503f30,%edi             ;   {oop(a &apos;java/util/stream/MatchOps$MatchKind&apos;{0x00000007f281f980})}
   0.02%  ││ ││      ││  0x00007f646c655974:   movzbl 0x18(%r12,%rdi,8),%edi
   0.00%  ││ ││      ││  0x00007f646c65597a:   xor    %r8d,%r8d
   0.00%  ││╭││      ││  0x00007f646c65597d:   jmp    0x00007f646c6559b7
          │││││      ││  0x00007f646c65597f:   nop
   3.36%  │││││   ↗  ││  0x00007f646c655980:   vmovq  %xmm0,%r9                    ;*return {reexecute=0 rethrow=0 return_oop=0}
          │││││   │  ││                                                            ; - java.util.stream.MatchOps$2MatchSink::accept@43 (line 123)
          │││││   │  ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
          │││││   │  ││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          │││││   │  ││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          │││││   │  ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          │││││   │  ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │││││   │  ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          │││││   │  ││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          │││││   │  ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │││││   │  ││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │││││   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │││││   │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │││││   │  ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │││││   │  ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   3.44%  │││││   │↗ ││  0x00007f646c655985:   mov    $0x1,%r8d
   0.09%  │││││   ││ ││  0x00007f646c65598b:   mov    %r10d,%edx
   0.02%  │││││   ││ ││  0x00007f646c65598e:   vmovd  %xmm1,%r10d                  ;*putfield inputShape {reexecute=0 rethrow=0 return_oop=0}
          │││││   ││ ││                                                            ; - java.util.stream.MatchOps$MatchOp::&lt;init&gt;@6 (line 212)
          │││││   ││ ││                                                            ; - java.util.stream.MatchOps::makeInt@25 (line 126)
          │││││   ││ ││                                                            ; - java.util.stream.IntPipeline::noneMatch@5 (line 547)
          │││││   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │││││   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │││││   ││ ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │││││   ││ ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   3.32%  │││││   ││↗││  0x00007f646c655993:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r9=Oop rcx=Oop rbx=Oop rbp=Oop [16]=Oop }
          │││││   │││││                                                            ;*ifne {reexecute=1 rethrow=0 return_oop=0}
          │││││   │││││                                                            ; - (reexecute) java.util.stream.IntPipeline::forEachWithCancel@31 (line 163)
          │││││   │││││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          │││││   │││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          │││││   │││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │││││   │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          │││││   │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          │││││   │││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │││││   │││││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │││││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │││││   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │││││   │││││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │││││   │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   3.29%  │││││   │││││  0x00007f646c65599a:   test   %eax,(%r11)                  ;   {poll}
   0.11%  │││││   │││││  0x00007f646c65599d:   data16 xchg %ax,%ax
   0.02%  │││││   │││││  0x00007f646c6559a0:   test   %r8d,%r8d
          │││╰│   │││││  0x00007f646c6559a3:   je     0x00007f646c65568b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ │   │││││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@31 (line 163)
          │││ │   │││││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          │││ │   │││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          │││ │   │││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │││ │   │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          │││ │   │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          │││ │   │││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │││ │   │││││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │││ │   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │││ │   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │││ │   │││││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │││ │   │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   3.39%  │││ │   │││││  0x00007f646c6559a9:   movzbl 0xc(%r9),%r8d                ;*getfield stop {reexecute=0 rethrow=0 return_oop=0}
          │││ │   │││││                                                            ; - java.util.stream.MatchOps$BooleanTerminalSink::cancellationRequested@1 (line 266)
          │││ │   │││││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@12 (line 163)
          │││ │   │││││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          │││ │   │││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          │││ │   │││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │││ │   │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          │││ │   │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          │││ │   │││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │││ │   │││││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │││ │   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │││ │   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │││ │   │││││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │││ │   │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   3.34%  │││ │   │││││  0x00007f646c6559ae:   test   %r8d,%r8d
          │││ ╰   │││││  0x00007f646c6559b1:   jne    0x00007f646c65568b           ;*aload_3 {reexecute=0 rethrow=0 return_oop=0}
          │││     │││││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@23 (line 163)
          │││     │││││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          │││     │││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          │││     │││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │││     │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          │││     │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          │││     │││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │││     │││││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          │││     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          │││     │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          │││     │││││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │││     │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.10%  ││↘     │││││  0x00007f646c6559b7:   mov    0xc(%rbx),%r11d              ;*getfield from {reexecute=0 rethrow=0 return_oop=0}
          ││      │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@6 (line 79)
          ││      │││││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││      │││││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││      │││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││      │││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││      │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││      │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││      │││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││      │││││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││      │││││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││      │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.04%  ││      │││││  0x00007f646c6559bb:   nopl   0x0(%rax,%rax,1)
   3.50%  ││      │││││  0x00007f646c6559c0:   cmp    %esi,%r11d
          ││   ╭  │││││  0x00007f646c6559c3:   jge    0x00007f646c655a2c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││   │  │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@15 (line 80)
          ││   │  │││││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││   │  │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││   │  │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││   │  │││││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││   │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││   │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││   │  │││││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││   │  │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   3.39%  ││   │  │││││  0x00007f646c6559c9:   vmovq  %r9,%xmm0
   0.10%  ││   │  │││││  0x00007f646c6559ce:   vmovd  %r10d,%xmm1
   0.04%  ││   │  │││││  0x00007f646c6559d3:   mov    %edx,%r10d
   3.41%  ││   │  │││││  0x00007f646c6559d6:   mov    %r11d,%r9d
   3.42%  ││   │  │││││  0x00007f646c6559d9:   inc    %r9d
   0.09%  ││   │  │││││  0x00007f646c6559dc:   mov    %r9d,0xc(%rbx)               ;*putfield from {reexecute=0 rethrow=0 return_oop=0}
          ││   │  │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@25 (line 81)
          ││   │  │││││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││   │  │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││   │  │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││   │  │││││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││   │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││   │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││   │  │││││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││   │  │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.04%  ││   │  │││││  0x00007f646c6559e0:   test   %r8d,%r8d
          ││   │  │││││  0x00007f646c6559e3:   jne    0x00007f646c655d3c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││   │  │││││                                                            ; - java.util.stream.MatchOps$2MatchSink::accept@4 (line 119)
          ││   │  │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
          ││   │  │││││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││   │  │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││   │  │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││   │  │││││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││   │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││   │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││   │  │││││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││   │  │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   3.43%  ││   │  │││││  0x00007f646c6559e9:   test   %r11d,%r11d
          ││   │  │││││  0x00007f646c6559ec:   je     0x00007f646c655d25           ;*irem {reexecute=0 rethrow=0 return_oop=0}
          ││   │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::lambda$isPrime$0@2 (line 35)
          ││   │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ad50::test@5
          ││   │  │││││                                                            ; - java.util.stream.MatchOps$2MatchSink::accept@12 (line 119)
          ││   │  │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
          ││   │  │││││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││   │  │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││   │  │││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││   │  │││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││   │  │││││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││   │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││   │  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││   │  │││││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││   │  │││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   3.31%  ││   │  │││││  0x00007f646c6559f2:   mov    %edx,%eax
   0.09%  ││   │  │││││  0x00007f646c6559f4:   cmp    $0x80000000,%eax
          ││   │╭ │││││  0x00007f646c6559f9:   jne    0x00007f646c655a03
          ││   ││ │││││  0x00007f646c6559fb:   xor    %edx,%edx
          ││   ││ │││││  0x00007f646c6559fd:   cmp    $0xffffffff,%r11d
          ││   ││╭│││││  0x00007f646c655a01:   je     0x00007f646c655a07
   0.03%  ││   │↘││││││  0x00007f646c655a03:   cltd   
   3.41%  ││   │ ││││││  0x00007f646c655a04:   idiv   %r11d
  39.07%  ││   │ ↘│││││  0x00007f646c655a07:   xor    %r11d,%r11d
   9.92%  ││   │  │││││  0x00007f646c655a0a:   test   %edx,%edx
   0.91%  ││   │  │││││  0x00007f646c655a0c:   sete   %r11b
   1.40%  ││   │  │││││  0x00007f646c655a10:   cmp    %edi,%r11d
          ││   │  ╰││││  0x00007f646c655a13:   jne    0x00007f646c655980           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││   │   ││││                                                            ; - java.util.stream.MatchOps$2MatchSink::accept@24 (line 119)
          ││   │   ││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
          ││   │   ││││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││   │   ││││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││   │   ││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││   │   ││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││   │   ││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││   │   ││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││   │   ││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││   │   ││││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││   │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││   │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││   │   ││││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││   │   ││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.16%  ││   │   ││││  0x00007f646c655a19:   vmovq  %xmm0,%r9
   0.16%  ││   │   ││││  0x00007f646c655a1e:   mov    %r13b,0xd(%r9)               ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
          ││   │   ││││                                                            ; - java.util.stream.MatchOps$2MatchSink::accept@40 (line 121)
          ││   │   ││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
          ││   │   ││││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││   │   ││││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││   │   ││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││   │   ││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││   │   ││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││   │   ││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││   │   ││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││   │   ││││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││   │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││   │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││   │   ││││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││   │   ││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.15%  ││   │   ││││  0x00007f646c655a22:   movb   $0x1,0xc(%r9)                ;*putfield stop {reexecute=0 rethrow=0 return_oop=0}
          ││   │   ││││                                                            ; - java.util.stream.MatchOps$2MatchSink::accept@29 (line 120)
          ││   │   ││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@30 (line 82)
          ││   │   ││││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││   │   ││││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││   │   ││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││   │   ││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││   │   ││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││   │   ││││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││   │   ││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││   │   ││││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││   │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││   │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││   │   ││││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││   │   ││││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          ││   │   ╰│││  0x00007f646c655a27:   jmp    0x00007f646c655985
          ││   ↘    │││  0x00007f646c655a2c:   mov    0x14(%rbx),%r8d              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
          ││        │││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@38 (line 85)
          ││        │││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││        │││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││        │││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││        │││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││        │││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││        │││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││        │││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││        │││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││        │││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││        │││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          ││        │││  0x00007f646c655a30:   test   %r8d,%r8d
          ││        │││  0x00007f646c655a33:   jg     0x00007f646c655f80           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││        │││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::tryAdvance@41 (line 85)
          ││        │││                                                            ; - java.util.stream.IntPipeline::forEachWithCancel@26 (line 163)
          ││        │││                                                            ; - java.util.stream.AbstractPipeline::copyIntoWithCancel@32 (line 527)
          ││        │││                                                            ; - java.util.stream.AbstractPipeline::copyInto@49 (line 513)
          ││        │││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││        │││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@14 (line 230)
          ││        │││                                                            ; - java.util.stream.MatchOps$MatchOp::evaluateSequential@3 (line 196)
          ││        │││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││        │││                                                            ; - java.util.stream.IntPipeline::noneMatch@8 (line 547)
          ││        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision::isPrime@23 (line 35)
          ││        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision$$Lambda/0x00007f63f402ab08::test@1
          ││        │││                                                            ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          ││        │││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          ││        │││  0x00007f646c655a39:   xor    %r8d,%r8d
   0.00%  ││        │││  0x00007f646c655a3c:   nopl   0x0(%rax)
          ││        ╰││  0x00007f646c655a40:   jmp    0x00007f646c655993
   0.00%  ↘│         ││  0x00007f646c655a45:   mov    0xc(%rcx),%r8d               ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
           │         ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@17 (line 393)
           │         ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.00%   │         ││  0x00007f646c655a49:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007f646c656160
   0.01%   │         ││  0x00007f646c655a4e:   cmp    $0x10341f0,%r11d             ;   {metadata(&apos;java/util/stream/ReduceOps$CountingSink$OfInt&apos;)}
           │         ││  0x00007f646c655a55:   jne    0x00007f646c655fd0
   0.00%   │         ││  0x00007f646c655a5b:   lea    (%r12,%r8,8),%r11            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │         ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@21 (line 393)
           │         ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
           │         ││  0x00007f646c655a5f:   incq   0x10(%r11)                   ;*putfield count {reexecute=0 rethrow=0 return_oop=0}
           │         ││                                                            ; - java.util.stream.ReduceOps$CountingSink$OfInt::accept@7 (line 838)
           │         ││                                                            ; - java.util.stream.IntPipeline$10$1::accept@21 (line 393)
           │         ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
   0.01%   │         ╰│  0x00007f646c655a63:   jmp    0x00007f646c655699
           ↘          │  0x00007f646c655a68:   mov    0x28(%r12,%r13,8),%r9d
                      │  0x00007f646c655a6d:   test   %r9d,%r9d
                      ╰  0x00007f646c655a70:   je     0x00007f646c655870
                         0x00007f646c655a76:   mov    0x28(%r15),%rsi
                         0x00007f646c655a7a:   mov    %r9,%rdi
                         0x00007f646c655a7d:   shl    $0x3,%rdi
                         0x00007f646c655a81:   test   %rsi,%rsi
....................................................................................................
  98.33%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.33%         c2, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 5, compile id 696 
   0.61%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.63%  <...other 295 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.33%         c2, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 5, compile id 696 
   1.39%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  fileStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%        libc-2.31.so  _IO_fflush 
   0.00%           libjvm.so  G1RemSet::prepare_region_for_scan 
   0.00%    perf-1953343.map  [unknown] 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.14%  <...other 86 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.33%         c2, level 4
   1.39%              kernel
   0.15%           libjvm.so
   0.05%        libc-2.31.so
   0.03%                    
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%    perf-1953343.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:07

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

Benchmark                                   (n)  Mode  Cnt     Score   Error  Units
PrimesBenchmark.eratosthenes_sieve      8388608  avgt    5    34.915 ± 1.209  ms/op
PrimesBenchmark.eratosthenes_sieve:asm  8388608  avgt            NaN            ---
PrimesBenchmark.miller_rabin            8388608  avgt    5  5316.877 ± 6.356  ms/op
PrimesBenchmark.miller_rabin:asm        8388608  avgt            NaN            ---
PrimesBenchmark.trial_division          8388608  avgt    5  7557.850 ± 8.070  ms/op
PrimesBenchmark.trial_division:asm      8388608  avgt            NaN            ---
