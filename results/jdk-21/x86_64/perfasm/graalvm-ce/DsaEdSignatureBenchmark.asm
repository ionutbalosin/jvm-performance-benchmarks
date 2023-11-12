# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 2399.361 us/op
# Warmup Iteration   2: 1027.089 us/op
# Warmup Iteration   3: 1023.031 us/op
# Warmup Iteration   4: 1022.222 us/op
# Warmup Iteration   5: 1022.154 us/op
Iteration   1: 1022.223 us/op
Iteration   2: 1020.278 us/op
Iteration   3: 1021.580 us/op
Iteration   4: 1021.914 us/op
Iteration   5: 1021.243 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  1021.447 ±(99.9%) 2.885 us/op [Average]
  (min, avg, max) = (1020.278, 1021.447, 1022.223), stdev = 0.749
  CI (99.9%): [1018.562, 1024.333] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 357955 total address lines.
Perf output processed (skipped 61.087 seconds):
 Column 1: cycles (50909 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1063 

               # parm2:    r8:r8     = &apos;[J&apos;
               #           [sp+0xb0]  (sp of caller)
               0x00007fa327247820:   mov    0x8(%rsi),%r10d
               0x00007fa327247824:   movabs $0x7fa2ab000000,%r12
               0x00007fa32724782e:   add    %r12,%r10
               0x00007fa327247831:   xor    %r12,%r12
               0x00007fa327247834:   cmp    %r10,%rax
               0x00007fa327247837:   jne    0x00007fa326c2f080           ;   {runtime_call ic_miss_stub}
               0x00007fa32724783d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   2.13%       0x00007fa327247840:   mov    %eax,-0x14000(%rsp)
   3.37%       0x00007fa327247847:   sub    $0xa8,%rsp
   0.02%       0x00007fa32724784e:   xchg   %ax,%ax
   0.01%       0x00007fa327247850:   cmpl   $0x1,0x20(%r15)
               0x00007fa327247858:   jne    0x00007fa3272480d6
   0.25%       0x00007fa32724785e:   mov    %rbp,0xa0(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
   0.02%       0x00007fa327247866:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007fa3272480fd
                                                                         ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
   0.01%       0x00007fa32724786a:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007fa327248120
                                                                         ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
   0.01%       0x00007fa32724786e:   mov    0xc(%r8),%r9d                ; implicit exception: dispatches to 0x00007fa327248143
   0.26%       0x00007fa327247872:   cmp    $0xa,%r10d
          ╭    0x00007fa327247876:   jb     0x00007fa3272480b0           ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
   0.03%  │    0x00007fa32724787c:   nopl   0x0(%rax)
   0.00%  │    0x00007fa327247880:   cmp    $0xa,%r11d
          │╭   0x00007fa327247884:   jb     0x00007fa3272480b0           ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@5 (line 225)
          ││   0x00007fa32724788a:   cmp    $0xa,%r9d
          ││╭  0x00007fa32724788e:   jb     0x00007fa3272480b0           ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.23%  │││  0x00007fa327247894:   mov    %r8,0x8(%rsp)
   0.16%  │││  0x00007fa327247899:   mov    0x48(%rcx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@239 (line 232)
   0.02%  │││  0x00007fa32724789d:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@462 (line 234)
   0.01%  │││  0x00007fa3272478a1:   mov    0x50(%rdx),%r9               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@373 (line 233)
   0.25%  │││  0x00007fa3272478a5:   mov    0x48(%rdx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@294 (line 232)
   0.06%  │││  0x00007fa3272478a9:   mov    0x40(%rdx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@225 (line 231)
   0.04%  │││  0x00007fa3272478ad:   mov    0x38(%rdx),%rsi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@166 (line 230)
   0.01%  │││  0x00007fa3272478b1:   mov    0x30(%rdx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@117 (line 229)
   0.25%  │││  0x00007fa3272478b5:   mov    0x28(%rdx),%rbp              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@76 (line 228)
   0.04%  │││  0x00007fa3272478b9:   mov    0x20(%rdx),%r13              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@43 (line 227)
   0.06%  │││  0x00007fa3272478bd:   mov    0x18(%rdx),%r14              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@18 (line 226)
   0.14%  │││  0x00007fa3272478c1:   mov    0x10(%rdx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
   0.12%  │││  0x00007fa3272478c5:   mov    0x58(%rcx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@387 (line 234)
   0.03%  │││  0x00007fa3272478c9:   mov    %r11,0x90(%rsp)
   0.05%  │││  0x00007fa3272478d1:   mov    0x50(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@308 (line 233)
   0.19%  │││  0x00007fa3272478d5:   mov    %r9,0x88(%rsp)
   0.05%  │││  0x00007fa3272478dd:   mov    0x10(%rcx),%r9               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@5 (line 225)
   0.03%  │││  0x00007fa3272478e1:   mov    %rbx,0x80(%rsp)
   0.13%  │││  0x00007fa3272478e9:   mov    0x18(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@14 (line 226)
   0.18%  │││  0x00007fa3272478ed:   mov    %rbx,0x78(%rsp)
   0.43%  │││  0x00007fa3272478f2:   mov    0x20(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@31 (line 227)
   0.01%  │││  0x00007fa3272478f6:   mov    %rbx,0x70(%rsp)
   0.23%  │││  0x00007fa3272478fb:   mov    0x28(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@56 (line 228)
   0.01%  │││  0x00007fa3272478ff:   mov    %rbx,0x68(%rsp)
   0.71%  │││  0x00007fa327247904:   mov    0x30(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@89 (line 229)
   0.01%  │││  0x00007fa327247908:   mov    %rbx,0x60(%rsp)
   0.20%  │││  0x00007fa32724790d:   mov    0x38(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@130 (line 230)
   0.01%  │││  0x00007fa327247911:   mov    0x40(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@180 (line 231)
   0.11%  │││  0x00007fa327247915:   mov    %rdi,0x58(%rsp)
   0.02%  │││  0x00007fa32724791a:   mov    %rdx,%rdi
   0.18%  │││  0x00007fa32724791d:   imul   %r9,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@6 (line 225)
   0.00%  │││  0x00007fa327247921:   mov    %rdi,0x50(%rsp)
   0.16%  │││  0x00007fa327247926:   mov    %r14,%rdi
   0.01%  │││  0x00007fa327247929:   imul   %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@477 (line 235)
   0.16%  │││  0x00007fa32724792d:   mov    %r9,0x48(%rsp)
   0.04%  │││  0x00007fa327247932:   mov    %r13,%r9
   0.10%  │││  0x00007fa327247935:   imul   %r11,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@485 (line 235)
          │││                                                            ;   {no_reloc}
   0.01%  │││  0x00007fa327247939:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@486 (line 235)
   0.13%  │││  0x00007fa32724793c:   mov    %r10,%r9
   0.02%  │││  0x00007fa32724793f:   imul   %rbp,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@494 (line 235)
   0.13%  │││  0x00007fa327247943:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@495 (line 235)
   0.01%  │││  0x00007fa327247946:   mov    %rax,%r9
   0.13%  │││  0x00007fa327247949:   imul   %rcx,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@503 (line 235)
   0.02%  │││  0x00007fa32724794d:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@504 (line 235)
   0.15%  │││  0x00007fa327247950:   mov    %rsi,%r9
   0.01%  │││  0x00007fa327247953:   imul   %rbx,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@511 (line 235)
   0.16%  │││  0x00007fa327247957:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@512 (line 235)
   0.03%  │││  0x00007fa32724795a:   mov    0x58(%rsp),%r9
   0.12%  │││  0x00007fa32724795f:   imul   0x60(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@520 (line 235)
   0.17%  │││  0x00007fa327247965:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@521 (line 235)
   0.19%  │││  0x00007fa327247968:   mov    0x80(%rsp),%r9
   0.03%  │││  0x00007fa327247970:   imul   0x68(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@529 (line 235)
   0.07%  │││  0x00007fa327247976:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@530 (line 235)
   0.08%  │││  0x00007fa327247979:   mov    0x88(%rsp),%r9
   0.08%  │││  0x00007fa327247981:   imul   0x70(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@538 (line 235)
   0.03%  │││  0x00007fa327247987:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@539 (line 235)
   0.15%  │││  0x00007fa32724798a:   mov    0x90(%rsp),%r9
   0.00%  │││  0x00007fa327247992:   imul   0x78(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@547 (line 235)
   0.11%  │││  0x00007fa327247998:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@548 (line 235)
   0.13%  │││  0x00007fa32724799b:   mov    %rdx,%r9
   0.08%  │││  0x00007fa32724799e:   imul   %r8,%r9                      ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@388 (line 234)
   0.00%  │││  0x00007fa3272479a2:   mov    %rdi,0x40(%rsp)
   0.30%  │││  0x00007fa3272479a7:   mov    %r14,%rdi
          │││  0x00007fa3272479aa:   imul   %r11,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@396 (line 234)
   0.05%  │││  0x00007fa3272479ae:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@397 (line 234)
          │││  0x00007fa3272479b1:   mov    %r10,%rdi
   0.20%  │││  0x00007fa3272479b4:   imul   %r13,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@405 (line 234)
          │││  0x00007fa3272479b8:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@406 (line 234)
   0.07%  │││  0x00007fa3272479bb:   mov    %rbp,%rdi
          │││  0x00007fa3272479be:   imul   %rcx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@414 (line 234)
   0.20%  │││  0x00007fa3272479c2:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@415 (line 234)
          │││  0x00007fa3272479c5:   mov    %rax,%rdi
   0.07%  │││  0x00007fa3272479c8:   imul   %rbx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@422 (line 234)
   0.00%  │││  0x00007fa3272479cc:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@423 (line 234)
   0.23%  │││  0x00007fa3272479cf:   mov    %rsi,%rdi
          │││  0x00007fa3272479d2:   imul   0x60(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@430 (line 234)
   0.06%  │││  0x00007fa3272479d8:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@431 (line 234)
          │││  0x00007fa3272479db:   mov    0x58(%rsp),%rdi
   0.20%  │││  0x00007fa3272479e0:   imul   0x68(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@439 (line 234)
   0.00%  │││  0x00007fa3272479e6:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@440 (line 234)
   0.06%  │││  0x00007fa3272479e9:   mov    0x80(%rsp),%rdi
   0.00%  │││  0x00007fa3272479f1:   imul   0x70(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@448 (line 234)
   0.24%  │││  0x00007fa3272479f7:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@449 (line 234)
   0.04%  │││  0x00007fa3272479fa:   mov    0x88(%rsp),%rdi
   0.03%  │││  0x00007fa327247a02:   imul   0x78(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@457 (line 234)
          │││  0x00007fa327247a08:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@458 (line 234)
   0.23%  │││  0x00007fa327247a0b:   mov    0x90(%rsp),%rdi
          │││  0x00007fa327247a13:   imul   0x48(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@466 (line 234)
   0.04%  │││  0x00007fa327247a19:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@467 (line 234)
   0.07%  │││  0x00007fa327247a1c:   mov    0x90(%rsp),%rdi
   0.14%  │││  0x00007fa327247a24:   imul   %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@896 (line 243)
          │││  0x00007fa327247a28:   imul   $0x13,%rdi,%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@39 (line 74)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.26%  │││  0x00007fa327247a2c:   mov    %r8,0x38(%rsp)
          │││  0x00007fa327247a31:   mov    %rdi,%r8
   0.12%  │││  0x00007fa327247a34:   sar    $0x15,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@61 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││                                                            ;   {no_reloc}
   0.20%  │││  0x00007fa327247a38:   add    %r8,%r9                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@62 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.18%  │││  0x00007fa327247a3b:   mov    %rdx,%r8
          │││  0x00007fa327247a3e:   imul   %r11,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@309 (line 233)
   0.08%  │││  0x00007fa327247a42:   mov    %rdx,0x30(%rsp)
   0.00%  │││  0x00007fa327247a47:   mov    %r10,%rdx
   0.15%  │││  0x00007fa327247a4a:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@317 (line 233)
          │││  0x00007fa327247a4e:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@318 (line 233)
   0.09%  │││  0x00007fa327247a51:   mov    %r13,%rdx
          │││  0x00007fa327247a54:   imul   %rcx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@326 (line 233)
   0.14%  │││  0x00007fa327247a58:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@327 (line 233)
          │││  0x00007fa327247a5b:   mov    %rbp,%rdx
   0.08%  │││  0x00007fa327247a5e:   imul   %rbx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@334 (line 233)
   0.00%  │││  0x00007fa327247a62:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@335 (line 233)
   0.17%  │││  0x00007fa327247a65:   mov    %rax,%rdx
   0.00%  │││  0x00007fa327247a68:   imul   0x60(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@342 (line 233)
   0.10%  │││  0x00007fa327247a6e:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@343 (line 233)
          │││  0x00007fa327247a71:   mov    %rsi,%rdx
   0.14%  │││  0x00007fa327247a74:   imul   0x68(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@350 (line 233)
          │││  0x00007fa327247a7a:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@351 (line 233)
   0.12%  │││  0x00007fa327247a7d:   mov    0x58(%rsp),%rdx
          │││  0x00007fa327247a82:   imul   0x70(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@359 (line 233)
   0.18%  │││  0x00007fa327247a88:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@360 (line 233)
   0.00%  │││  0x00007fa327247a8b:   mov    0x80(%rsp),%rdx
   0.10%  │││  0x00007fa327247a93:   imul   0x78(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@368 (line 233)
          │││  0x00007fa327247a99:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@369 (line 233)
   0.16%  │││  0x00007fa327247a9c:   mov    0x88(%rsp),%rdx
          │││  0x00007fa327247aa4:   imul   0x48(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@377 (line 233)
   0.10%  │││  0x00007fa327247aaa:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@378 (line 233)
   0.06%  │││  0x00007fa327247aad:   mov    0x88(%rsp),%rdx
   0.07%  │││  0x00007fa327247ab5:   imul   0x38(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@875 (line 242)
          │││  0x00007fa327247abb:   mov    %rbx,0x28(%rsp)
   0.10%  │││  0x00007fa327247ac0:   mov    0x90(%rsp),%rbx
   0.09%  │││  0x00007fa327247ac8:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@884 (line 242)
   0.08%  │││  0x00007fa327247acc:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@885 (line 242)
          │││  0x00007fa327247acf:   imul   $0x13,%rdx,%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@8 (line 70)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   1.19%  │││  0x00007fa327247ad3:   mov    %rbx,%rdx
          │││  0x00007fa327247ad6:   sar    $0x15,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@30 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007fa327247ada:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@31 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007fa327247add:   shl    $0x5,%rdi                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@47 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.48%  │││  0x00007fa327247ae1:   and    $0x3ffffff,%rdi              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@51 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007fa327247ae8:   add    %rdi,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@52 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247aeb:   lea    0x2000000(%r8),%rdi          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@70 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007fa327247af2:   mov    %rdi,%rdx
   0.75%  │││  0x00007fa327247af5:   sar    $0x1a,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@73 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247af9:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@90 (line 80)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007fa327247afc:   lea    0x2000000(%r9),%rdx          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@98 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007fa327247b03:   mov    %r9,0x20(%rsp)
   0.54%  │││  0x00007fa327247b08:   mov    %rdx,%r9
          │││  0x00007fa327247b0b:   sar    $0x1a,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@101 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007fa327247b0f:   add    0x40(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@118 (line 84)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007fa327247b14:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@126 (line 86)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.81%  │││  0x00007fa327247b18:   mov    %rdx,0x40(%rsp)
          │││  0x00007fa327247b1d:   mov    %r9,%rdx
          │││  0x00007fa327247b20:   shl    $0x5,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@133 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.23%  │││  0x00007fa327247b24:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@137 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.24%  │││  0x00007fa327247b2b:   add    0x50(%rsp),%rdx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@138 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.33%  │││  0x00007fa327247b30:   mov    %r8,0x50(%rsp)               ;   {no_reloc}
          │││  0x00007fa327247b35:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@340 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.30%  │││  0x00007fa327247b3c:   mov    %rdi,0x18(%rsp)
          │││  0x00007fa327247b41:   mov    %r8,%rdi
          │││  0x00007fa327247b44:   and    $0xfffffffffc000000,%rdi     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@351 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.25%  │││  0x00007fa327247b4b:   sub    %rdi,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@352 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.30%  │││  0x00007fa327247b4e:   mov    0x8(%rsp),%rdi
   0.00%  │││  0x00007fa327247b53:   mov    %rdx,0x10(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.67%  │││  0x00007fa327247b57:   mov    0x30(%rsp),%rdx
          │││  0x00007fa327247b5c:   imul   0x78(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@15 (line 226)
          │││  0x00007fa327247b62:   mov    %rbx,0x10(%rsp)
          │││  0x00007fa327247b67:   mov    %r14,%rbx
   0.26%  │││  0x00007fa327247b6a:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@22 (line 226)
          │││  0x00007fa327247b70:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@23 (line 226)
          │││  0x00007fa327247b73:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@146 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007fa327247b77:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@147 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.31%  │││  0x00007fa327247b7a:   mov    %r13,%r9
          │││  0x00007fa327247b7d:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@558 (line 236)
          │││  0x00007fa327247b83:   mov    %rbp,%rbx
          │││  0x00007fa327247b86:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@566 (line 236)
   0.30%  │││  0x00007fa327247b8a:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@567 (line 236)
   0.00%  │││  0x00007fa327247b8d:   mov    %r10,%rbx
          │││  0x00007fa327247b90:   imul   %rax,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@575 (line 236)
          │││  0x00007fa327247b94:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@576 (line 236)
   0.29%  │││  0x00007fa327247b97:   mov    %rsi,%rbx
          │││  0x00007fa327247b9a:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@584 (line 236)
          │││  0x00007fa327247b9e:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@585 (line 236)
   0.00%  │││  0x00007fa327247ba1:   mov    0x58(%rsp),%rbx
   0.27%  │││  0x00007fa327247ba6:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@593 (line 236)
          │││  0x00007fa327247bac:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@594 (line 236)
          │││  0x00007fa327247baf:   mov    0x80(%rsp),%rbx
          │││  0x00007fa327247bb7:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@602 (line 236)
   0.27%  │││  0x00007fa327247bbd:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@603 (line 236)
          │││  0x00007fa327247bc0:   mov    0x88(%rsp),%rbx
          │││  0x00007fa327247bc8:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@611 (line 236)
          │││  0x00007fa327247bce:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@612 (line 236)
   0.25%  │││  0x00007fa327247bd1:   mov    0x90(%rsp),%rbx
          │││  0x00007fa327247bd9:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@620 (line 236)
   0.00%  │││  0x00007fa327247bdf:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@621 (line 236)
   0.01%  │││  0x00007fa327247be2:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@155 (line 90)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.28%  │││  0x00007fa327247be6:   mov    %r9,%rbx
          │││  0x00007fa327247be9:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@163 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007fa327247bed:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@167 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007fa327247bf4:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@168 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.29%  │││  0x00007fa327247bf7:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@343 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007fa327247bfb:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@358 (line 116)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007fa327247bfe:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@366 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007fa327247c05:   mov    %r8,%rbx
   0.34%  │││  0x00007fa327247c08:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@378 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007fa327247c0f:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@379 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247c12:   mov    %rdx,0x18(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@593 (line 151)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007fa327247c16:   mov    0x30(%rsp),%rdx
   0.28%  │││  0x00007fa327247c1b:   imul   0x70(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@32 (line 227)
          │││  0x00007fa327247c21:   mov    %r14,%rbx
          │││  0x00007fa327247c24:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@39 (line 227)
   0.02%  │││  0x00007fa327247c2a:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@40 (line 227)
   0.20%  │││  0x00007fa327247c2d:   mov    %r13,%rbx
          │││  0x00007fa327247c30:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@47 (line 227)
          │││                                                            ;   {no_reloc}
          │││  0x00007fa327247c36:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@48 (line 227)
   0.01%  │││  0x00007fa327247c39:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@177 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.29%  │││  0x00007fa327247c3d:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@178 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247c40:   mov    %rbp,%r9
          │││  0x00007fa327247c43:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@631 (line 237)
   0.02%  │││  0x00007fa327247c49:   mov    %rax,%rbx
   0.25%  │││  0x00007fa327247c4c:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@639 (line 237)
          │││  0x00007fa327247c50:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@640 (line 237)
   0.00%  │││  0x00007fa327247c53:   mov    %r10,%rbx
   0.03%  │││  0x00007fa327247c56:   imul   %rsi,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@648 (line 237)
   0.24%  │││  0x00007fa327247c5a:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@649 (line 237)
          │││  0x00007fa327247c5d:   mov    0x58(%rsp),%rbx
          │││  0x00007fa327247c62:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@658 (line 237)
   0.02%  │││  0x00007fa327247c66:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@659 (line 237)
   0.26%  │││  0x00007fa327247c69:   mov    0x80(%rsp),%rbx
          │││  0x00007fa327247c71:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@667 (line 237)
          │││  0x00007fa327247c77:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@668 (line 237)
   0.02%  │││  0x00007fa327247c7a:   mov    0x88(%rsp),%rbx
   0.26%  │││  0x00007fa327247c82:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@676 (line 237)
          │││  0x00007fa327247c88:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@677 (line 237)
          │││  0x00007fa327247c8b:   mov    0x90(%rsp),%rbx
   0.02%  │││  0x00007fa327247c93:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@685 (line 237)
   0.25%  │││  0x00007fa327247c99:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@686 (line 237)
   0.00%  │││  0x00007fa327247c9c:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@186 (line 94)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247ca0:   mov    %r9,%rbx
   0.02%  │││  0x00007fa327247ca3:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@194 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.24%  │││  0x00007fa327247ca7:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@198 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007fa327247cae:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@199 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007fa327247cb1:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@369 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247cb5:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@386 (line 120)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.67%  │││  0x00007fa327247cb8:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@394 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   2.76%  │││  0x00007fa327247cbf:   mov    %r8,%rbx
   0.01%  │││  0x00007fa327247cc2:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@406 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.12%  │││  0x00007fa327247cc9:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@407 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.39%  │││  0x00007fa327247ccc:   mov    %rdx,0x20(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@598 (line 152)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.26%  │││  0x00007fa327247cd0:   mov    0x30(%rsp),%rdx
          │││  0x00007fa327247cd5:   imul   0x68(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@57 (line 228)
   0.02%  │││  0x00007fa327247cdb:   mov    %r14,%rbx
   0.09%  │││  0x00007fa327247cde:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@64 (line 228)
   0.13%  │││  0x00007fa327247ce4:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@65 (line 228)
   0.12%  │││  0x00007fa327247ce7:   mov    %r13,%rbx
   0.01%  │││  0x00007fa327247cea:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@72 (line 228)
   0.09%  │││  0x00007fa327247cf0:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@73 (line 228)
   0.16%  │││  0x00007fa327247cf3:   mov    %rbp,%rbx
          │││  0x00007fa327247cf6:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@80 (line 228)
   0.01%  │││  0x00007fa327247cfc:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@81 (line 228)
   0.13%  │││  0x00007fa327247cff:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@208 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.14%  │││  0x00007fa327247d03:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@209 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247d06:   mov    %rax,%r9
   0.01%  │││  0x00007fa327247d09:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@696 (line 238)
   0.11%  │││  0x00007fa327247d0f:   mov    %rsi,%rbx
   0.16%  │││  0x00007fa327247d12:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@704 (line 238)
   0.01%  │││  0x00007fa327247d16:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@705 (line 238)
   0.04%  │││  0x00007fa327247d19:   mov    %r10,%rbx
   0.11%  │││  0x00007fa327247d1c:   imul   0x58(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@714 (line 238)
   0.15%  │││  0x00007fa327247d22:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@715 (line 238)
   0.02%  │││  0x00007fa327247d25:   mov    0x80(%rsp),%rbx
   0.02%  │││  0x00007fa327247d2d:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@724 (line 238)
   0.10%  │││  0x00007fa327247d31:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@725 (line 238)
          │││                                                            ;   {no_reloc}
   0.14%  │││  0x00007fa327247d34:   mov    0x88(%rsp),%rbx
   0.02%  │││  0x00007fa327247d3c:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@733 (line 238)
   0.00%  │││  0x00007fa327247d42:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@734 (line 238)
   0.13%  │││  0x00007fa327247d45:   mov    0x90(%rsp),%rbx
   0.15%  │││  0x00007fa327247d4d:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@742 (line 238)
   0.02%  │││  0x00007fa327247d53:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@743 (line 238)
   0.03%  │││  0x00007fa327247d56:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@217 (line 98)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.18%  │││  0x00007fa327247d5a:   mov    %r9,%rbx
   0.14%  │││  0x00007fa327247d5d:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@225 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247d61:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@229 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007fa327247d68:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@230 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.24%  │││  0x00007fa327247d6b:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@397 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.15%  │││  0x00007fa327247d6f:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@414 (line 124)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247d72:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@422 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.64%  │││  0x00007fa327247d79:   mov    %r8,%rbx
   0.12%  │││  0x00007fa327247d7c:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@434 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.15%  │││  0x00007fa327247d83:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@435 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247d86:   mov    %rdx,0x28(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@603 (line 153)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.15%  │││  0x00007fa327247d8a:   mov    0x30(%rsp),%rdx
   0.05%  │││  0x00007fa327247d8f:   imul   0x60(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@90 (line 229)
   0.12%  │││  0x00007fa327247d95:   mov    %r14,%rbx
   0.01%  │││  0x00007fa327247d98:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@97 (line 229)
   0.08%  │││  0x00007fa327247d9e:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@98 (line 229)
   0.06%  │││  0x00007fa327247da1:   mov    %r13,%rbx
   0.12%  │││  0x00007fa327247da4:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@105 (line 229)
   0.00%  │││  0x00007fa327247daa:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@106 (line 229)
   0.06%  │││  0x00007fa327247dad:   mov    %rbp,%rbx
   0.05%  │││  0x00007fa327247db0:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@113 (line 229)
   0.11%  │││  0x00007fa327247db6:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@114 (line 229)
   0.01%  │││  0x00007fa327247db9:   mov    %rax,%rbx
   0.08%  │││  0x00007fa327247dbc:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@121 (line 229)
   0.06%  │││  0x00007fa327247dc2:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@122 (line 229)
   0.11%  │││  0x00007fa327247dc5:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@239 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247dc9:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@240 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.07%  │││  0x00007fa327247dcc:   mov    %rsi,%r9
   0.05%  │││  0x00007fa327247dcf:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@753 (line 239)
   0.13%  │││  0x00007fa327247dd5:   mov    0x58(%rsp),%rbx
   0.01%  │││  0x00007fa327247dda:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@762 (line 239)
   0.10%  │││  0x00007fa327247dde:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@763 (line 239)
   0.06%  │││  0x00007fa327247de1:   mov    %r10,%rbx
   0.16%  │││  0x00007fa327247de4:   imul   0x80(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@772 (line 239)
   0.00%  │││  0x00007fa327247ded:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@773 (line 239)
   0.11%  │││  0x00007fa327247df0:   mov    0x88(%rsp),%rbx
   0.05%  │││  0x00007fa327247df8:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@782 (line 239)
   0.14%  │││  0x00007fa327247dfc:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@783 (line 239)
   0.00%  │││  0x00007fa327247dff:   mov    0x90(%rsp),%rbx
   0.08%  │││  0x00007fa327247e07:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@791 (line 239)
   0.06%  │││  0x00007fa327247e0d:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@792 (line 239)
   0.14%  │││  0x00007fa327247e10:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@248 (line 102)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247e14:   mov    %r9,%rbx
   0.07%  │││  0x00007fa327247e17:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@256 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007fa327247e1b:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@260 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.15%  │││  0x00007fa327247e22:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@261 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007fa327247e25:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@425 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.09%  │││  0x00007fa327247e29:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@442 (line 128)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.11%  │││  0x00007fa327247e2c:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@450 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││                                                            ;   {no_reloc}
   0.53%  │││  0x00007fa327247e33:   mov    %r8,%rbx
   0.01%  │││  0x00007fa327247e36:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@462 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.08%  │││  0x00007fa327247e3d:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@463 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007fa327247e40:   mov    %rdx,0x30(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@608 (line 154)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.15%  │││  0x00007fa327247e44:   mov    0x30(%rsp),%rdx
   0.00%  │││  0x00007fa327247e49:   imul   0x28(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@131 (line 230)
   0.06%  │││  0x00007fa327247e4f:   mov    %r14,%rbx
   0.04%  │││  0x00007fa327247e52:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@138 (line 230)
   0.18%  │││  0x00007fa327247e58:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@139 (line 230)
   0.01%  │││  0x00007fa327247e5b:   mov    %r13,%rbx
   0.07%  │││  0x00007fa327247e5e:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@146 (line 230)
   0.04%  │││  0x00007fa327247e64:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@147 (line 230)
   0.17%  │││  0x00007fa327247e67:   mov    %rbp,%rbx
   0.01%  │││  0x00007fa327247e6a:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@154 (line 230)
   0.07%  │││  0x00007fa327247e70:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@155 (line 230)
   0.05%  │││  0x00007fa327247e73:   mov    %rax,%rbx
   0.17%  │││  0x00007fa327247e76:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@162 (line 230)
   0.00%  │││  0x00007fa327247e7c:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@163 (line 230)
   0.07%  │││  0x00007fa327247e7f:   mov    %rsi,%rbx
   0.03%  │││  0x00007fa327247e82:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@170 (line 230)
   0.14%  │││  0x00007fa327247e88:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@171 (line 230)
   0.01%  │││  0x00007fa327247e8b:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@270 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007fa327247e8f:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@271 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007fa327247e92:   mov    0x58(%rsp),%r9
   0.17%  │││  0x00007fa327247e97:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@803 (line 240)
   0.01%  │││  0x00007fa327247e9d:   mov    0x80(%rsp),%rbx
   0.06%  │││  0x00007fa327247ea5:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@812 (line 240)
   0.04%  │││  0x00007fa327247ea9:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@813 (line 240)
   0.16%  │││  0x00007fa327247eac:   mov    %r10,%rbx
   0.00%  │││  0x00007fa327247eaf:   imul   0x88(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@822 (line 240)
   0.05%  │││  0x00007fa327247eb8:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@823 (line 240)
   0.04%  │││  0x00007fa327247ebb:   mov    0x90(%rsp),%rbx
   0.19%  │││  0x00007fa327247ec3:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@832 (line 240)
   0.01%  │││  0x00007fa327247ec7:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@833 (line 240)
   0.05%  │││  0x00007fa327247eca:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@279 (line 106)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007fa327247ece:   mov    %r9,%rbx
   0.20%  │││  0x00007fa327247ed1:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@287 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007fa327247ed5:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@291 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.08%  │││  0x00007fa327247edc:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@292 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007fa327247edf:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@453 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.15%  │││  0x00007fa327247ee3:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@470 (line 132)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247ee6:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@478 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.11%  │││  0x00007fa327247eed:   mov    %r8,%rbx
   0.04%  │││  0x00007fa327247ef0:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@490 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.16%  │││  0x00007fa327247ef7:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@491 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247efa:   mov    %rdx,0x38(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@613 (line 155)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.10%  │││  0x00007fa327247efe:   mov    0x30(%rsp),%rdx
   0.01%  │││  0x00007fa327247f03:   imul   %rcx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@181 (line 231)
   0.18%  │││  0x00007fa327247f07:   mov    %r14,%rbx
   0.01%  │││  0x00007fa327247f0a:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@188 (line 231)
   0.07%  │││  0x00007fa327247f10:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@189 (line 231)
   0.03%  │││  0x00007fa327247f13:   mov    %r13,%rbx
   0.16%  │││  0x00007fa327247f16:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@196 (line 231)
   0.01%  │││  0x00007fa327247f1c:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@197 (line 231)
   0.06%  │││  0x00007fa327247f1f:   mov    %rbp,%rbx
   0.02%  │││  0x00007fa327247f22:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@204 (line 231)
   0.15%  │││  0x00007fa327247f28:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@205 (line 231)
   0.01%  │││  0x00007fa327247f2b:   mov    %rax,%rbx
   0.06%  │││  0x00007fa327247f2e:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@212 (line 231)
          │││                                                            ;   {no_reloc}
   0.03%  │││  0x00007fa327247f34:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@213 (line 231)
   0.14%  │││  0x00007fa327247f37:   mov    %rsi,%rbx
   0.01%  │││  0x00007fa327247f3a:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@220 (line 231)
   0.09%  │││  0x00007fa327247f40:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@221 (line 231)
   0.03%  │││  0x00007fa327247f43:   mov    0x58(%rsp),%rbx
   0.16%  │││  0x00007fa327247f48:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@229 (line 231)
   0.01%  │││  0x00007fa327247f4e:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@230 (line 231)
   0.06%  │││  0x00007fa327247f51:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@301 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007fa327247f55:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@302 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.15%  │││  0x00007fa327247f58:   mov    0x80(%rsp),%rbx
   0.01%  │││  0x00007fa327247f60:   imul   0x38(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@844 (line 241)
   0.06%  │││  0x00007fa327247f66:   mov    0x88(%rsp),%r9
   0.02%  │││  0x00007fa327247f6e:   imul   %r11,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@853 (line 241)
   0.14%  │││  0x00007fa327247f72:   add    %r9,%rbx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@854 (line 241)
   0.01%  │││  0x00007fa327247f75:   mov    %r10,%r11
   0.09%  │││  0x00007fa327247f78:   imul   0x90(%rsp),%r11              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@863 (line 241)
   0.02%  │││  0x00007fa327247f81:   add    %r11,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@864 (line 241)
   0.21%  │││  0x00007fa327247f84:   imul   $0x13,%rbx,%r11              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@310 (line 110)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007fa327247f88:   mov    %r11,%r9
   0.05%  │││  0x00007fa327247f8b:   shl    $0x5,%r9                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@318 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007fa327247f8f:   and    $0x3ffffff,%r9               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@322 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.17%  │││  0x00007fa327247f96:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@323 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327247f99:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@481 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.09%  │││  0x00007fa327247f9d:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@498 (line 136)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007fa327247fa0:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@506 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.16%  │││  0x00007fa327247fa7:   mov    %r8,%r9
   0.01%  │││  0x00007fa327247faa:   and    $0xfffffffffc000000,%r9      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@518 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.10%  │││  0x00007fa327247fb1:   sub    %r9,%rdx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@519 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007fa327247fb4:   mov    %rdx,0x40(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@619 (line 156)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.17%  │││  0x00007fa327247fb8:   imul   0x30(%rsp),%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@240 (line 232)
   0.01%  │││  0x00007fa327247fbe:   imul   %rcx,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@248 (line 232)
   0.08%  │││  0x00007fa327247fc2:   add    %r14,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@249 (line 232)
   0.02%  │││  0x00007fa327247fc5:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@256 (line 232)
   0.18%  │││  0x00007fa327247fcb:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@257 (line 232)
   0.01%  │││  0x00007fa327247fce:   imul   0x60(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@264 (line 232)
   0.06%  │││  0x00007fa327247fd4:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@265 (line 232)
   0.02%  │││  0x00007fa327247fd7:   imul   0x68(%rsp),%rax              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@272 (line 232)
   0.18%  │││  0x00007fa327247fdd:   add    %rax,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@273 (line 232)
   0.01%  │││  0x00007fa327247fe0:   imul   0x70(%rsp),%rsi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@280 (line 232)
   0.09%  │││  0x00007fa327247fe6:   add    %rsi,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@281 (line 232)
   0.02%  │││  0x00007fa327247fe9:   mov    0x58(%rsp),%r9
   0.17%  │││  0x00007fa327247fee:   imul   0x78(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@289 (line 232)
   0.01%  │││  0x00007fa327247ff4:   add    %r9,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@290 (line 232)
   0.08%  │││  0x00007fa327247ff7:   mov    0x80(%rsp),%rbx
   0.02%  │││  0x00007fa327247fff:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@298 (line 232)
   0.17%  │││  0x00007fa327248005:   add    %rbx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@299 (line 232)
   0.01%  │││  0x00007fa327248008:   mov    0x10(%rsp),%rbx
   0.09%  │││  0x00007fa32724800d:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@16 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007fa327248011:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@20 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.16%  │││  0x00007fa327248018:   add    %rbx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@21 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa32724801b:   sar    $0x15,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@332 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007fa32724801f:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@333 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007fa327248022:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@509 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.20%  │││  0x00007fa327248026:   add    %r8,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@526 (line 140)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007fa327248029:   lea    0x2000000(%r10),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@534 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││                                                            ;   {no_reloc}
   0.06%  │││  0x00007fa327248030:   mov    %r11,%r8
   0.01%  │││  0x00007fa327248033:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@546 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.18%  │││  0x00007fa32724803a:   sub    %r8,%r10                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@547 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa32724803d:   mov    %r10,0x48(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@625 (line 157)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007fa327248041:   mov    0x18(%rsp),%r10
   0.01%  │││  0x00007fa327248046:   and    $0xfffffffffc000000,%r10     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@82 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.17%  │││  0x00007fa32724804d:   mov    0x50(%rsp),%r8
   0.01%  │││  0x00007fa327248052:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@83 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.07%  │││  0x00007fa327248055:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@537 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327248059:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@554 (line 144)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.18%  │││  0x00007fa32724805c:   lea    0x2000000(%r8),%r10          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@562 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327248063:   mov    %r10,%r11
   0.09%  │││  0x00007fa327248066:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@574 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007fa32724806d:   sub    %r11,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@575 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.14%  │││  0x00007fa327248070:   mov    %r8,0x50(%rdi)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@631 (line 158)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327248074:   mov    0x40(%rsp),%rdx
   0.07%  │││  0x00007fa327248079:   and    $0xfffffffffc000000,%rdx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@110 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007fa327248080:   mov    0x20(%rsp),%r9
   0.18%  │││  0x00007fa327248085:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@111 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007fa327248088:   sar    $0x1a,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@565 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007fa32724808c:   add    %r10,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@582 (line 148)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007fa32724808f:   mov    %r9,0x58(%rdi)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@637 (line 159)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.15%  │││  0x00007fa327248093:   mov    0xa0(%rsp),%rbp
   0.01%  │││  0x00007fa32724809b:   add    $0xa8,%rsp
   0.08%  │││  0x00007fa3272480a2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007fa3272480a9:   ja     0x00007fa3272480e9
   0.01%  │││  0x00007fa3272480af:   ret    
          ↘↘↘  0x00007fa3272480b0:   mov    %r8,%rdi
               0x00007fa3272480b3:   movl   $0xffffffe5,0x484(%r15)      ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
               0x00007fa3272480be:   movq   $0x0,0x490(%r15)
               0x00007fa3272480c9:   call   0x00007fa326c3517a           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop rdi=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
                                                                         ;   {runtime_call DeoptimizationBlob}
               0x00007fa3272480ce:   nopl   0x0(%rax,%rax,1)
               0x00007fa3272480d6:   mov    %rbp,0xa0(%rsp)
....................................................................................................
  49.94%  <total for region 1>

....[Hottest Regions]...............................................................................
  49.94%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1063 
   6.62%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1149 
   4.96%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.97%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1298 
   2.65%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1149 
   1.92%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1144 
   1.86%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 5, compile id 1329 
   1.69%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 1050 
   1.60%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1144 
   1.46%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1144 
   1.45%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1149 
   1.41%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1144 
   1.08%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1144 
   1.05%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1149 
   0.93%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 1139 
   0.87%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1144 
   0.83%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1097 
   0.80%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1144 
   0.77%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1149 
   0.74%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1144 
  14.39%  <...other 609 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.94%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1063 
  16.41%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1149 
  13.75%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1144 
   4.96%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.75%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 1139 
   2.98%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1298 
   2.55%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 5, compile id 1329 
   2.15%              kernel  [unknown] 
   1.69%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 1050 
   0.83%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1097 
   0.18%                      <unknown> 
   0.09%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1418 
   0.06%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::finalReduce, version 4, compile id 1323 
   0.06%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1450 
   0.03%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1428 
   0.03%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::asAffine, version 2, compile id 1427 
   0.03%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::basePointMultiply, version 2, compile id 1430 
   0.02%      jvmci, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 1413 
   0.02%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1421 
   0.02%      jvmci, level 4  sun.security.ec.ed.EdDSAParameters$MessageDigester::digest, version 2, compile id 1426 
   0.45%  <...other 99 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.33%      jvmci, level 4
   4.97%        runtime stub
   2.15%              kernel
   0.18%                    
   0.16%           libjvm.so
   0.14%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.00%          ld-2.31.so
   0.00%    perf-2107637.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed25519, messageLength = 512)

# Run progress: 12.50% complete, ETA 00:13:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2162.936 us/op
# Warmup Iteration   2: 1034.883 us/op
# Warmup Iteration   3: 1030.082 us/op
# Warmup Iteration   4: 1030.490 us/op
# Warmup Iteration   5: 1029.958 us/op
Iteration   1: 1029.841 us/op
Iteration   2: 1029.082 us/op
Iteration   3: 1029.257 us/op
Iteration   4: 1028.349 us/op
Iteration   5: 1028.527 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  1029.011 ±(99.9%) 2.300 us/op [Average]
  (min, avg, max) = (1028.349, 1029.011, 1029.841), stdev = 0.597
  CI (99.9%): [1026.712, 1031.311] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 363580 total address lines.
Perf output processed (skipped 61.421 seconds):
 Column 1: cycles (50686 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1100 

               # parm2:    r8:r8     = &apos;[J&apos;
               #           [sp+0xb0]  (sp of caller)
               0x00007f2b0724f420:   mov    0x8(%rsi),%r10d
               0x00007f2b0724f424:   movabs $0x7f2a8b000000,%r12
               0x00007f2b0724f42e:   add    %r12,%r10
               0x00007f2b0724f431:   xor    %r12,%r12
               0x00007f2b0724f434:   cmp    %r10,%rax
               0x00007f2b0724f437:   jne    0x00007f2b06c2f080           ;   {runtime_call ic_miss_stub}
               0x00007f2b0724f43d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   2.02%       0x00007f2b0724f440:   mov    %eax,-0x14000(%rsp)
   3.28%       0x00007f2b0724f447:   sub    $0xa8,%rsp
   0.01%       0x00007f2b0724f44e:   xchg   %ax,%ax
               0x00007f2b0724f450:   cmpl   $0x0,0x20(%r15)
               0x00007f2b0724f458:   jne    0x00007f2b0724fcd6
   0.23%       0x00007f2b0724f45e:   mov    %rbp,0xa0(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
   0.03%       0x00007f2b0724f466:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f2b0724fcfd
                                                                         ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
   0.00%       0x00007f2b0724f46a:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f2b0724fd20
                                                                         ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
   0.00%       0x00007f2b0724f46e:   mov    0xc(%r8),%r9d                ; implicit exception: dispatches to 0x00007f2b0724fd43
   0.28%       0x00007f2b0724f472:   cmp    $0xa,%r10d
          ╭    0x00007f2b0724f476:   jb     0x00007f2b0724fcb0           ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
   0.03%  │    0x00007f2b0724f47c:   nopl   0x0(%rax)
          │    0x00007f2b0724f480:   cmp    $0xa,%r11d
          │╭   0x00007f2b0724f484:   jb     0x00007f2b0724fcb0           ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@5 (line 225)
          ││   0x00007f2b0724f48a:   cmp    $0xa,%r9d
          ││╭  0x00007f2b0724f48e:   jb     0x00007f2b0724fcb0           ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.24%  │││  0x00007f2b0724f494:   mov    %r8,0x8(%rsp)
   0.07%  │││  0x00007f2b0724f499:   mov    0x48(%rcx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@239 (line 232)
   0.02%  │││  0x00007f2b0724f49d:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@462 (line 234)
   0.01%  │││  0x00007f2b0724f4a1:   mov    0x50(%rdx),%r9               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@373 (line 233)
   0.26%  │││  0x00007f2b0724f4a5:   mov    0x48(%rdx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@294 (line 232)
   0.05%  │││  0x00007f2b0724f4a9:   mov    0x40(%rdx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@225 (line 231)
   0.04%  │││  0x00007f2b0724f4ad:   mov    0x38(%rdx),%rsi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@166 (line 230)
   0.00%  │││  0x00007f2b0724f4b1:   mov    0x30(%rdx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@117 (line 229)
   0.21%  │││  0x00007f2b0724f4b5:   mov    0x28(%rdx),%rbp              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@76 (line 228)
   0.04%  │││  0x00007f2b0724f4b9:   mov    0x20(%rdx),%r13              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@43 (line 227)
   0.05%  │││  0x00007f2b0724f4bd:   mov    0x18(%rdx),%r14              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@18 (line 226)
   0.14%  │││  0x00007f2b0724f4c1:   mov    0x10(%rdx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
   0.11%  │││  0x00007f2b0724f4c5:   mov    0x58(%rcx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@387 (line 234)
   0.01%  │││  0x00007f2b0724f4c9:   mov    %r11,0x90(%rsp)
   0.02%  │││  0x00007f2b0724f4d1:   mov    0x50(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@308 (line 233)
   0.20%  │││  0x00007f2b0724f4d5:   mov    %r9,0x88(%rsp)
   0.07%  │││  0x00007f2b0724f4dd:   mov    0x10(%rcx),%r9               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@5 (line 225)
   0.03%  │││  0x00007f2b0724f4e1:   mov    %rbx,0x80(%rsp)
   0.09%  │││  0x00007f2b0724f4e9:   mov    0x18(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@14 (line 226)
   0.19%  │││  0x00007f2b0724f4ed:   mov    %rbx,0x78(%rsp)
   0.43%  │││  0x00007f2b0724f4f2:   mov    0x20(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@31 (line 227)
   0.01%  │││  0x00007f2b0724f4f6:   mov    %rbx,0x70(%rsp)
   0.25%  │││  0x00007f2b0724f4fb:   mov    0x28(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@56 (line 228)
   0.01%  │││  0x00007f2b0724f4ff:   mov    %rbx,0x68(%rsp)
   0.78%  │││  0x00007f2b0724f504:   mov    0x30(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@89 (line 229)
   0.01%  │││  0x00007f2b0724f508:   mov    %rbx,0x60(%rsp)
   0.24%  │││  0x00007f2b0724f50d:   mov    0x38(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@130 (line 230)
   0.01%  │││  0x00007f2b0724f511:   mov    0x40(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@180 (line 231)
   0.09%  │││  0x00007f2b0724f515:   mov    %rdi,0x58(%rsp)
   0.02%  │││  0x00007f2b0724f51a:   mov    %rdx,%rdi
   0.19%  │││  0x00007f2b0724f51d:   imul   %r9,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@6 (line 225)
   0.00%  │││  0x00007f2b0724f521:   mov    %rdi,0x50(%rsp)
   0.08%  │││  0x00007f2b0724f526:   mov    %r14,%rdi
   0.01%  │││  0x00007f2b0724f529:   imul   %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@477 (line 235)
   0.16%  │││  0x00007f2b0724f52d:   mov    %r9,0x48(%rsp)
   0.03%  │││  0x00007f2b0724f532:   mov    %r13,%r9
   0.09%  │││  0x00007f2b0724f535:   imul   %r11,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@485 (line 235)
          │││                                                            ;   {no_reloc}
   0.00%  │││  0x00007f2b0724f539:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@486 (line 235)
   0.16%  │││  0x00007f2b0724f53c:   mov    %r10,%r9
   0.03%  │││  0x00007f2b0724f53f:   imul   %rbp,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@494 (line 235)
   0.11%  │││  0x00007f2b0724f543:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@495 (line 235)
   0.01%  │││  0x00007f2b0724f546:   mov    %rax,%r9
   0.14%  │││  0x00007f2b0724f549:   imul   %rcx,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@503 (line 235)
   0.03%  │││  0x00007f2b0724f54d:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@504 (line 235)
   0.11%  │││  0x00007f2b0724f550:   mov    %rsi,%r9
          │││  0x00007f2b0724f553:   imul   %rbx,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@511 (line 235)
   0.22%  │││  0x00007f2b0724f557:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@512 (line 235)
   0.03%  │││  0x00007f2b0724f55a:   mov    0x58(%rsp),%r9
   0.11%  │││  0x00007f2b0724f55f:   imul   0x60(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@520 (line 235)
   0.22%  │││  0x00007f2b0724f565:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@521 (line 235)
   0.17%  │││  0x00007f2b0724f568:   mov    0x80(%rsp),%r9
   0.01%  │││  0x00007f2b0724f570:   imul   0x68(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@529 (line 235)
   0.06%  │││  0x00007f2b0724f576:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@530 (line 235)
   0.11%  │││  0x00007f2b0724f579:   mov    0x88(%rsp),%r9
   0.09%  │││  0x00007f2b0724f581:   imul   0x70(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@538 (line 235)
   0.02%  │││  0x00007f2b0724f587:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@539 (line 235)
   0.15%  │││  0x00007f2b0724f58a:   mov    0x90(%rsp),%r9
   0.00%  │││  0x00007f2b0724f592:   imul   0x78(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@547 (line 235)
   0.08%  │││  0x00007f2b0724f598:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@548 (line 235)
   0.09%  │││  0x00007f2b0724f59b:   mov    %rdx,%r9
   0.06%  │││  0x00007f2b0724f59e:   imul   %r8,%r9                      ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@388 (line 234)
          │││  0x00007f2b0724f5a2:   mov    %rdi,0x40(%rsp)
   0.33%  │││  0x00007f2b0724f5a7:   mov    %r14,%rdi
          │││  0x00007f2b0724f5aa:   imul   %r11,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@396 (line 234)
   0.04%  │││  0x00007f2b0724f5ae:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@397 (line 234)
   0.00%  │││  0x00007f2b0724f5b1:   mov    %r10,%rdi
   0.19%  │││  0x00007f2b0724f5b4:   imul   %r13,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@405 (line 234)
          │││  0x00007f2b0724f5b8:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@406 (line 234)
   0.07%  │││  0x00007f2b0724f5bb:   mov    %rbp,%rdi
   0.00%  │││  0x00007f2b0724f5be:   imul   %rcx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@414 (line 234)
   0.21%  │││  0x00007f2b0724f5c2:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@415 (line 234)
          │││  0x00007f2b0724f5c5:   mov    %rax,%rdi
   0.05%  │││  0x00007f2b0724f5c8:   imul   %rbx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@422 (line 234)
   0.00%  │││  0x00007f2b0724f5cc:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@423 (line 234)
   0.22%  │││  0x00007f2b0724f5cf:   mov    %rsi,%rdi
          │││  0x00007f2b0724f5d2:   imul   0x60(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@430 (line 234)
   0.06%  │││  0x00007f2b0724f5d8:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@431 (line 234)
          │││  0x00007f2b0724f5db:   mov    0x58(%rsp),%rdi
   0.23%  │││  0x00007f2b0724f5e0:   imul   0x68(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@439 (line 234)
   0.00%  │││  0x00007f2b0724f5e6:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@440 (line 234)
   0.05%  │││  0x00007f2b0724f5e9:   mov    0x80(%rsp),%rdi
   0.00%  │││  0x00007f2b0724f5f1:   imul   0x70(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@448 (line 234)
   0.23%  │││  0x00007f2b0724f5f7:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@449 (line 234)
   0.02%  │││  0x00007f2b0724f5fa:   mov    0x88(%rsp),%rdi
   0.04%  │││  0x00007f2b0724f602:   imul   0x78(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@457 (line 234)
          │││  0x00007f2b0724f608:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@458 (line 234)
   0.26%  │││  0x00007f2b0724f60b:   mov    0x90(%rsp),%rdi
   0.00%  │││  0x00007f2b0724f613:   imul   0x48(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@466 (line 234)
   0.03%  │││  0x00007f2b0724f619:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@467 (line 234)
   0.04%  │││  0x00007f2b0724f61c:   mov    0x90(%rsp),%rdi
   0.16%  │││  0x00007f2b0724f624:   imul   %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@896 (line 243)
          │││  0x00007f2b0724f628:   imul   $0x13,%rdi,%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@39 (line 74)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f2b0724f62c:   mov    %r8,0x38(%rsp)
   0.00%  │││  0x00007f2b0724f631:   mov    %rdi,%r8
   0.13%  │││  0x00007f2b0724f634:   sar    $0x15,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@61 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││                                                            ;   {no_reloc}
   0.15%  │││  0x00007f2b0724f638:   add    %r8,%r9                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@62 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.15%  │││  0x00007f2b0724f63b:   mov    %rdx,%r8
          │││  0x00007f2b0724f63e:   imul   %r11,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@309 (line 233)
   0.11%  │││  0x00007f2b0724f642:   mov    %rdx,0x30(%rsp)
   0.00%  │││  0x00007f2b0724f647:   mov    %r10,%rdx
   0.15%  │││  0x00007f2b0724f64a:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@317 (line 233)
   0.00%  │││  0x00007f2b0724f64e:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@318 (line 233)
   0.10%  │││  0x00007f2b0724f651:   mov    %r13,%rdx
          │││  0x00007f2b0724f654:   imul   %rcx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@326 (line 233)
   0.13%  │││  0x00007f2b0724f658:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@327 (line 233)
          │││  0x00007f2b0724f65b:   mov    %rbp,%rdx
   0.11%  │││  0x00007f2b0724f65e:   imul   %rbx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@334 (line 233)
          │││  0x00007f2b0724f662:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@335 (line 233)
   0.15%  │││  0x00007f2b0724f665:   mov    %rax,%rdx
          │││  0x00007f2b0724f668:   imul   0x60(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@342 (line 233)
   0.12%  │││  0x00007f2b0724f66e:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@343 (line 233)
   0.00%  │││  0x00007f2b0724f671:   mov    %rsi,%rdx
   0.19%  │││  0x00007f2b0724f674:   imul   0x68(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@350 (line 233)
          │││  0x00007f2b0724f67a:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@351 (line 233)
   0.11%  │││  0x00007f2b0724f67d:   mov    0x58(%rsp),%rdx
          │││  0x00007f2b0724f682:   imul   0x70(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@359 (line 233)
   0.14%  │││  0x00007f2b0724f688:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@360 (line 233)
          │││  0x00007f2b0724f68b:   mov    0x80(%rsp),%rdx
   0.12%  │││  0x00007f2b0724f693:   imul   0x78(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@368 (line 233)
   0.00%  │││  0x00007f2b0724f699:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@369 (line 233)
   0.13%  │││  0x00007f2b0724f69c:   mov    0x88(%rsp),%rdx
          │││  0x00007f2b0724f6a4:   imul   0x48(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@377 (line 233)
   0.12%  │││  0x00007f2b0724f6aa:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@378 (line 233)
   0.08%  │││  0x00007f2b0724f6ad:   mov    0x88(%rsp),%rdx
   0.09%  │││  0x00007f2b0724f6b5:   imul   0x38(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@875 (line 242)
          │││  0x00007f2b0724f6bb:   mov    %rbx,0x28(%rsp)
   0.13%  │││  0x00007f2b0724f6c0:   mov    0x90(%rsp),%rbx
   0.06%  │││  0x00007f2b0724f6c8:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@884 (line 242)
   0.11%  │││  0x00007f2b0724f6cc:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@885 (line 242)
          │││  0x00007f2b0724f6cf:   imul   $0x13,%rdx,%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@8 (line 70)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   1.26%  │││  0x00007f2b0724f6d3:   mov    %rbx,%rdx
          │││  0x00007f2b0724f6d6:   sar    $0x15,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@30 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724f6da:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@31 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007f2b0724f6dd:   shl    $0x5,%rdi                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@47 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.52%  │││  0x00007f2b0724f6e1:   and    $0x3ffffff,%rdi              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@51 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f2b0724f6e8:   add    %rdi,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@52 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f2b0724f6eb:   lea    0x2000000(%r8),%rdi          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@70 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.07%  │││  0x00007f2b0724f6f2:   mov    %rdi,%rdx
   0.71%  │││  0x00007f2b0724f6f5:   sar    $0x1a,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@73 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724f6f9:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@90 (line 80)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f2b0724f6fc:   lea    0x2000000(%r9),%rdx          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@98 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.07%  │││  0x00007f2b0724f703:   mov    %r9,0x20(%rsp)
   0.53%  │││  0x00007f2b0724f708:   mov    %rdx,%r9
          │││  0x00007f2b0724f70b:   sar    $0x1a,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@101 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f2b0724f70f:   add    0x40(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@118 (line 84)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724f714:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@126 (line 86)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.79%  │││  0x00007f2b0724f718:   mov    %rdx,0x40(%rsp)
          │││  0x00007f2b0724f71d:   mov    %r9,%rdx
          │││  0x00007f2b0724f720:   shl    $0x5,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@133 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.26%  │││  0x00007f2b0724f724:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@137 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.27%  │││  0x00007f2b0724f72b:   add    0x50(%rsp),%rdx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@138 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.22%  │││  0x00007f2b0724f730:   mov    %r8,0x50(%rsp)               ;   {no_reloc}
          │││  0x00007f2b0724f735:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@340 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.28%  │││  0x00007f2b0724f73c:   mov    %rdi,0x18(%rsp)
          │││  0x00007f2b0724f741:   mov    %r8,%rdi
          │││  0x00007f2b0724f744:   and    $0xfffffffffc000000,%rdi     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@351 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.26%  │││  0x00007f2b0724f74b:   sub    %rdi,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@352 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.27%  │││  0x00007f2b0724f74e:   mov    0x8(%rsp),%rdi
          │││  0x00007f2b0724f753:   mov    %rdx,0x10(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.65%  │││  0x00007f2b0724f757:   mov    0x30(%rsp),%rdx
          │││  0x00007f2b0724f75c:   imul   0x78(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@15 (line 226)
          │││  0x00007f2b0724f762:   mov    %rbx,0x10(%rsp)
          │││  0x00007f2b0724f767:   mov    %r14,%rbx
   0.29%  │││  0x00007f2b0724f76a:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@22 (line 226)
          │││  0x00007f2b0724f770:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@23 (line 226)
          │││  0x00007f2b0724f773:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@146 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f2b0724f777:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@147 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.26%  │││  0x00007f2b0724f77a:   mov    %r13,%r9
          │││  0x00007f2b0724f77d:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@558 (line 236)
          │││  0x00007f2b0724f783:   mov    %rbp,%rbx
          │││  0x00007f2b0724f786:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@566 (line 236)
   0.31%  │││  0x00007f2b0724f78a:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@567 (line 236)
   0.00%  │││  0x00007f2b0724f78d:   mov    %r10,%rbx
          │││  0x00007f2b0724f790:   imul   %rax,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@575 (line 236)
          │││  0x00007f2b0724f794:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@576 (line 236)
   0.25%  │││  0x00007f2b0724f797:   mov    %rsi,%rbx
          │││  0x00007f2b0724f79a:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@584 (line 236)
          │││  0x00007f2b0724f79e:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@585 (line 236)
          │││  0x00007f2b0724f7a1:   mov    0x58(%rsp),%rbx
   0.29%  │││  0x00007f2b0724f7a6:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@593 (line 236)
          │││  0x00007f2b0724f7ac:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@594 (line 236)
   0.00%  │││  0x00007f2b0724f7af:   mov    0x80(%rsp),%rbx
          │││  0x00007f2b0724f7b7:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@602 (line 236)
   0.24%  │││  0x00007f2b0724f7bd:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@603 (line 236)
          │││  0x00007f2b0724f7c0:   mov    0x88(%rsp),%rbx
          │││  0x00007f2b0724f7c8:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@611 (line 236)
          │││  0x00007f2b0724f7ce:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@612 (line 236)
   0.29%  │││  0x00007f2b0724f7d1:   mov    0x90(%rsp),%rbx
          │││  0x00007f2b0724f7d9:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@620 (line 236)
          │││  0x00007f2b0724f7df:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@621 (line 236)
   0.00%  │││  0x00007f2b0724f7e2:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@155 (line 90)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.29%  │││  0x00007f2b0724f7e6:   mov    %r9,%rbx
          │││  0x00007f2b0724f7e9:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@163 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f2b0724f7ed:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@167 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f2b0724f7f4:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@168 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.30%  │││  0x00007f2b0724f7f7:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@343 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f2b0724f7fb:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@358 (line 116)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f2b0724f7fe:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@366 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724f805:   mov    %r8,%rbx
   0.32%  │││  0x00007f2b0724f808:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@378 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f2b0724f80f:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@379 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f2b0724f812:   mov    %rdx,0x18(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@593 (line 151)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007f2b0724f816:   mov    0x30(%rsp),%rdx
   0.27%  │││  0x00007f2b0724f81b:   imul   0x70(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@32 (line 227)
          │││  0x00007f2b0724f821:   mov    %r14,%rbx
          │││  0x00007f2b0724f824:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@39 (line 227)
   0.02%  │││  0x00007f2b0724f82a:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@40 (line 227)
   0.25%  │││  0x00007f2b0724f82d:   mov    %r13,%rbx
          │││  0x00007f2b0724f830:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@47 (line 227)
          │││                                                            ;   {no_reloc}
          │││  0x00007f2b0724f836:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@48 (line 227)
   0.01%  │││  0x00007f2b0724f839:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@177 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.28%  │││  0x00007f2b0724f83d:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@178 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724f840:   mov    %rbp,%r9
          │││  0x00007f2b0724f843:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@631 (line 237)
   0.02%  │││  0x00007f2b0724f849:   mov    %rax,%rbx
   0.27%  │││  0x00007f2b0724f84c:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@639 (line 237)
   0.00%  │││  0x00007f2b0724f850:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@640 (line 237)
   0.00%  │││  0x00007f2b0724f853:   mov    %r10,%rbx
   0.02%  │││  0x00007f2b0724f856:   imul   %rsi,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@648 (line 237)
   0.24%  │││  0x00007f2b0724f85a:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@649 (line 237)
   0.00%  │││  0x00007f2b0724f85d:   mov    0x58(%rsp),%rbx
          │││  0x00007f2b0724f862:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@658 (line 237)
   0.02%  │││  0x00007f2b0724f866:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@659 (line 237)
   0.22%  │││  0x00007f2b0724f869:   mov    0x80(%rsp),%rbx
          │││  0x00007f2b0724f871:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@667 (line 237)
          │││  0x00007f2b0724f877:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@668 (line 237)
   0.02%  │││  0x00007f2b0724f87a:   mov    0x88(%rsp),%rbx
   0.26%  │││  0x00007f2b0724f882:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@676 (line 237)
          │││  0x00007f2b0724f888:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@677 (line 237)
          │││  0x00007f2b0724f88b:   mov    0x90(%rsp),%rbx
   0.02%  │││  0x00007f2b0724f893:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@685 (line 237)
   0.21%  │││  0x00007f2b0724f899:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@686 (line 237)
          │││  0x00007f2b0724f89c:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@186 (line 94)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724f8a0:   mov    %r9,%rbx
   0.02%  │││  0x00007f2b0724f8a3:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@194 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.25%  │││  0x00007f2b0724f8a7:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@198 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f2b0724f8ae:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@199 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724f8b1:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@369 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724f8b5:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@386 (line 120)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.74%  │││  0x00007f2b0724f8b8:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@394 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   3.69%  │││  0x00007f2b0724f8bf:   mov    %r8,%rbx
          │││  0x00007f2b0724f8c2:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@406 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.18%  │││  0x00007f2b0724f8c9:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@407 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.42%  │││  0x00007f2b0724f8cc:   mov    %rdx,0x20(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@598 (line 152)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.34%  │││  0x00007f2b0724f8d0:   mov    0x30(%rsp),%rdx
          │││  0x00007f2b0724f8d5:   imul   0x68(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@57 (line 228)
   0.02%  │││  0x00007f2b0724f8db:   mov    %r14,%rbx
   0.07%  │││  0x00007f2b0724f8de:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@64 (line 228)
   0.14%  │││  0x00007f2b0724f8e4:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@65 (line 228)
   0.12%  │││  0x00007f2b0724f8e7:   mov    %r13,%rbx
   0.01%  │││  0x00007f2b0724f8ea:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@72 (line 228)
   0.07%  │││  0x00007f2b0724f8f0:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@73 (line 228)
   0.21%  │││  0x00007f2b0724f8f3:   mov    %rbp,%rbx
          │││  0x00007f2b0724f8f6:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@80 (line 228)
   0.01%  │││  0x00007f2b0724f8fc:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@81 (line 228)
   0.09%  │││  0x00007f2b0724f8ff:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@208 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f2b0724f903:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@209 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724f906:   mov    %rax,%r9
   0.02%  │││  0x00007f2b0724f909:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@696 (line 238)
   0.08%  │││  0x00007f2b0724f90f:   mov    %rsi,%rbx
   0.16%  │││  0x00007f2b0724f912:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@704 (line 238)
   0.01%  │││  0x00007f2b0724f916:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@705 (line 238)
   0.05%  │││  0x00007f2b0724f919:   mov    %r10,%rbx
   0.09%  │││  0x00007f2b0724f91c:   imul   0x58(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@714 (line 238)
   0.16%  │││  0x00007f2b0724f922:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@715 (line 238)
   0.01%  │││  0x00007f2b0724f925:   mov    0x80(%rsp),%rbx
   0.02%  │││  0x00007f2b0724f92d:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@724 (line 238)
   0.09%  │││  0x00007f2b0724f931:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@725 (line 238)
          │││                                                            ;   {no_reloc}
   0.14%  │││  0x00007f2b0724f934:   mov    0x88(%rsp),%rbx
   0.01%  │││  0x00007f2b0724f93c:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@733 (line 238)
   0.01%  │││  0x00007f2b0724f942:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@734 (line 238)
   0.07%  │││  0x00007f2b0724f945:   mov    0x90(%rsp),%rbx
   0.18%  │││  0x00007f2b0724f94d:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@742 (line 238)
   0.01%  │││  0x00007f2b0724f953:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@743 (line 238)
   0.01%  │││  0x00007f2b0724f956:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@217 (line 98)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.17%  │││  0x00007f2b0724f95a:   mov    %r9,%rbx
   0.18%  │││  0x00007f2b0724f95d:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@225 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f2b0724f961:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@229 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007f2b0724f968:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@230 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.14%  │││  0x00007f2b0724f96b:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@397 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.17%  │││  0x00007f2b0724f96f:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@414 (line 124)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724f972:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@422 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.43%  │││  0x00007f2b0724f979:   mov    %r8,%rbx
   0.07%  │││  0x00007f2b0724f97c:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@434 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.16%  │││  0x00007f2b0724f983:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@435 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724f986:   mov    %rdx,0x28(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@603 (line 153)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.15%  │││  0x00007f2b0724f98a:   mov    0x30(%rsp),%rdx
   0.03%  │││  0x00007f2b0724f98f:   imul   0x60(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@90 (line 229)
   0.18%  │││  0x00007f2b0724f995:   mov    %r14,%rbx
   0.01%  │││  0x00007f2b0724f998:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@97 (line 229)
   0.07%  │││  0x00007f2b0724f99e:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@98 (line 229)
   0.05%  │││  0x00007f2b0724f9a1:   mov    %r13,%rbx
   0.16%  │││  0x00007f2b0724f9a4:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@105 (line 229)
   0.01%  │││  0x00007f2b0724f9aa:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@106 (line 229)
   0.07%  │││  0x00007f2b0724f9ad:   mov    %rbp,%rbx
   0.05%  │││  0x00007f2b0724f9b0:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@113 (line 229)
   0.15%  │││  0x00007f2b0724f9b6:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@114 (line 229)
   0.00%  │││  0x00007f2b0724f9b9:   mov    %rax,%rbx
   0.05%  │││  0x00007f2b0724f9bc:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@121 (line 229)
   0.03%  │││  0x00007f2b0724f9c2:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@122 (line 229)
   0.14%  │││  0x00007f2b0724f9c5:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@239 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f2b0724f9c9:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@240 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.07%  │││  0x00007f2b0724f9cc:   mov    %rsi,%r9
   0.03%  │││  0x00007f2b0724f9cf:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@753 (line 239)
   0.14%  │││  0x00007f2b0724f9d5:   mov    0x58(%rsp),%rbx
   0.01%  │││  0x00007f2b0724f9da:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@762 (line 239)
   0.08%  │││  0x00007f2b0724f9de:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@763 (line 239)
   0.04%  │││  0x00007f2b0724f9e1:   mov    %r10,%rbx
   0.18%  │││  0x00007f2b0724f9e4:   imul   0x80(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@772 (line 239)
   0.01%  │││  0x00007f2b0724f9ed:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@773 (line 239)
   0.07%  │││  0x00007f2b0724f9f0:   mov    0x88(%rsp),%rbx
   0.04%  │││  0x00007f2b0724f9f8:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@782 (line 239)
   0.15%  │││  0x00007f2b0724f9fc:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@783 (line 239)
   0.01%  │││  0x00007f2b0724f9ff:   mov    0x90(%rsp),%rbx
   0.07%  │││  0x00007f2b0724fa07:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@791 (line 239)
   0.05%  │││  0x00007f2b0724fa0d:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@792 (line 239)
   0.18%  │││  0x00007f2b0724fa10:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@248 (line 102)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f2b0724fa14:   mov    %r9,%rbx
   0.05%  │││  0x00007f2b0724fa17:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@256 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007f2b0724fa1b:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@260 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.17%  │││  0x00007f2b0724fa22:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@261 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f2b0724fa25:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@425 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f2b0724fa29:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@442 (line 128)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.12%  │││  0x00007f2b0724fa2c:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@450 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││                                                            ;   {no_reloc}
   0.51%  │││  0x00007f2b0724fa33:   mov    %r8,%rbx
   0.01%  │││  0x00007f2b0724fa36:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@462 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f2b0724fa3d:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@463 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724fa40:   mov    %rdx,0x30(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@608 (line 154)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.22%  │││  0x00007f2b0724fa44:   mov    0x30(%rsp),%rdx
   0.01%  │││  0x00007f2b0724fa49:   imul   0x28(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@131 (line 230)
   0.07%  │││  0x00007f2b0724fa4f:   mov    %r14,%rbx
   0.02%  │││  0x00007f2b0724fa52:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@138 (line 230)
   0.14%  │││  0x00007f2b0724fa58:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@139 (line 230)
   0.00%  │││  0x00007f2b0724fa5b:   mov    %r13,%rbx
   0.06%  │││  0x00007f2b0724fa5e:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@146 (line 230)
   0.03%  │││  0x00007f2b0724fa64:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@147 (line 230)
   0.19%  │││  0x00007f2b0724fa67:   mov    %rbp,%rbx
   0.00%  │││  0x00007f2b0724fa6a:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@154 (line 230)
   0.05%  │││  0x00007f2b0724fa70:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@155 (line 230)
   0.04%  │││  0x00007f2b0724fa73:   mov    %rax,%rbx
   0.21%  │││  0x00007f2b0724fa76:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@162 (line 230)
   0.00%  │││  0x00007f2b0724fa7c:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@163 (line 230)
   0.06%  │││  0x00007f2b0724fa7f:   mov    %rsi,%rbx
   0.03%  │││  0x00007f2b0724fa82:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@170 (line 230)
   0.20%  │││  0x00007f2b0724fa88:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@171 (line 230)
   0.01%  │││  0x00007f2b0724fa8b:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@270 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.07%  │││  0x00007f2b0724fa8f:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@271 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724fa92:   mov    0x58(%rsp),%r9
   0.19%  │││  0x00007f2b0724fa97:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@803 (line 240)
   0.01%  │││  0x00007f2b0724fa9d:   mov    0x80(%rsp),%rbx
   0.05%  │││  0x00007f2b0724faa5:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@812 (line 240)
   0.03%  │││  0x00007f2b0724faa9:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@813 (line 240)
   0.20%  │││  0x00007f2b0724faac:   mov    %r10,%rbx
   0.00%  │││  0x00007f2b0724faaf:   imul   0x88(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@822 (line 240)
   0.05%  │││  0x00007f2b0724fab8:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@823 (line 240)
   0.02%  │││  0x00007f2b0724fabb:   mov    0x90(%rsp),%rbx
   0.17%  │││  0x00007f2b0724fac3:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@832 (line 240)
   0.00%  │││  0x00007f2b0724fac7:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@833 (line 240)
   0.06%  │││  0x00007f2b0724faca:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@279 (line 106)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724face:   mov    %r9,%rbx
   0.20%  │││  0x00007f2b0724fad1:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@287 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f2b0724fad5:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@291 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007f2b0724fadc:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@292 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007f2b0724fadf:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@453 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.17%  │││  0x00007f2b0724fae3:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@470 (line 132)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724fae6:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@478 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f2b0724faed:   mov    %r8,%rbx
   0.02%  │││  0x00007f2b0724faf0:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@490 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.20%  │││  0x00007f2b0724faf7:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@491 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724fafa:   mov    %rdx,0x38(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@613 (line 155)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f2b0724fafe:   mov    0x30(%rsp),%rdx
   0.01%  │││  0x00007f2b0724fb03:   imul   %rcx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@181 (line 231)
   0.21%  │││  0x00007f2b0724fb07:   mov    %r14,%rbx
   0.00%  │││  0x00007f2b0724fb0a:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@188 (line 231)
   0.06%  │││  0x00007f2b0724fb10:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@189 (line 231)
   0.02%  │││  0x00007f2b0724fb13:   mov    %r13,%rbx
   0.20%  │││  0x00007f2b0724fb16:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@196 (line 231)
   0.01%  │││  0x00007f2b0724fb1c:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@197 (line 231)
   0.05%  │││  0x00007f2b0724fb1f:   mov    %rbp,%rbx
   0.01%  │││  0x00007f2b0724fb22:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@204 (line 231)
   0.15%  │││  0x00007f2b0724fb28:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@205 (line 231)
   0.01%  │││  0x00007f2b0724fb2b:   mov    %rax,%rbx
   0.07%  │││  0x00007f2b0724fb2e:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@212 (line 231)
          │││                                                            ;   {no_reloc}
   0.01%  │││  0x00007f2b0724fb34:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@213 (line 231)
   0.19%  │││  0x00007f2b0724fb37:   mov    %rsi,%rbx
   0.00%  │││  0x00007f2b0724fb3a:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@220 (line 231)
   0.08%  │││  0x00007f2b0724fb40:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@221 (line 231)
   0.01%  │││  0x00007f2b0724fb43:   mov    0x58(%rsp),%rbx
   0.18%  │││  0x00007f2b0724fb48:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@229 (line 231)
          │││  0x00007f2b0724fb4e:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@230 (line 231)
   0.06%  │││  0x00007f2b0724fb51:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@301 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724fb55:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@302 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f2b0724fb58:   mov    0x80(%rsp),%rbx
   0.00%  │││  0x00007f2b0724fb60:   imul   0x38(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@844 (line 241)
   0.06%  │││  0x00007f2b0724fb66:   mov    0x88(%rsp),%r9
   0.03%  │││  0x00007f2b0724fb6e:   imul   %r11,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@853 (line 241)
   0.18%  │││  0x00007f2b0724fb72:   add    %r9,%rbx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@854 (line 241)
   0.00%  │││  0x00007f2b0724fb75:   mov    %r10,%r11
   0.07%  │││  0x00007f2b0724fb78:   imul   0x90(%rsp),%r11              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@863 (line 241)
   0.01%  │││  0x00007f2b0724fb81:   add    %r11,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@864 (line 241)
   0.17%  │││  0x00007f2b0724fb84:   imul   $0x13,%rbx,%r11              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@310 (line 110)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f2b0724fb88:   mov    %r11,%r9
   0.06%  │││  0x00007f2b0724fb8b:   shl    $0x5,%r9                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@318 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724fb8f:   and    $0x3ffffff,%r9               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@322 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.20%  │││  0x00007f2b0724fb96:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@323 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724fb99:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@481 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f2b0724fb9d:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@498 (line 136)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724fba0:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@506 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.21%  │││  0x00007f2b0724fba7:   mov    %r8,%r9
   0.02%  │││  0x00007f2b0724fbaa:   and    $0xfffffffffc000000,%r9      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@518 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f2b0724fbb1:   sub    %r9,%rdx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@519 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724fbb4:   mov    %rdx,0x40(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@619 (line 156)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.21%  │││  0x00007f2b0724fbb8:   imul   0x30(%rsp),%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@240 (line 232)
   0.00%  │││  0x00007f2b0724fbbe:   imul   %rcx,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@248 (line 232)
   0.05%  │││  0x00007f2b0724fbc2:   add    %r14,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@249 (line 232)
   0.01%  │││  0x00007f2b0724fbc5:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@256 (line 232)
   0.21%  │││  0x00007f2b0724fbcb:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@257 (line 232)
   0.00%  │││  0x00007f2b0724fbce:   imul   0x60(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@264 (line 232)
   0.05%  │││  0x00007f2b0724fbd4:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@265 (line 232)
   0.01%  │││  0x00007f2b0724fbd7:   imul   0x68(%rsp),%rax              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@272 (line 232)
   0.20%  │││  0x00007f2b0724fbdd:   add    %rax,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@273 (line 232)
          │││  0x00007f2b0724fbe0:   imul   0x70(%rsp),%rsi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@280 (line 232)
   0.03%  │││  0x00007f2b0724fbe6:   add    %rsi,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@281 (line 232)
   0.02%  │││  0x00007f2b0724fbe9:   mov    0x58(%rsp),%r9
   0.20%  │││  0x00007f2b0724fbee:   imul   0x78(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@289 (line 232)
   0.01%  │││  0x00007f2b0724fbf4:   add    %r9,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@290 (line 232)
   0.07%  │││  0x00007f2b0724fbf7:   mov    0x80(%rsp),%rbx
   0.01%  │││  0x00007f2b0724fbff:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@298 (line 232)
   0.17%  │││  0x00007f2b0724fc05:   add    %rbx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@299 (line 232)
   0.00%  │││  0x00007f2b0724fc08:   mov    0x10(%rsp),%rbx
   0.08%  │││  0x00007f2b0724fc0d:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@16 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724fc11:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@20 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.23%  │││  0x00007f2b0724fc18:   add    %rbx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@21 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f2b0724fc1b:   sar    $0x15,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@332 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.07%  │││  0x00007f2b0724fc1f:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@333 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724fc22:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@509 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.21%  │││  0x00007f2b0724fc26:   add    %r8,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@526 (line 140)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f2b0724fc29:   lea    0x2000000(%r10),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@534 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││                                                            ;   {no_reloc}
   0.07%  │││  0x00007f2b0724fc30:   mov    %r11,%r8
   0.02%  │││  0x00007f2b0724fc33:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@546 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.20%  │││  0x00007f2b0724fc3a:   sub    %r8,%r10                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@547 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724fc3d:   mov    %r10,0x48(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@625 (line 157)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f2b0724fc41:   mov    0x18(%rsp),%r10
   0.02%  │││  0x00007f2b0724fc46:   and    $0xfffffffffc000000,%r10     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@82 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.17%  │││  0x00007f2b0724fc4d:   mov    0x50(%rsp),%r8
   0.00%  │││  0x00007f2b0724fc52:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@83 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f2b0724fc55:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@537 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724fc59:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@554 (line 144)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f2b0724fc5c:   lea    0x2000000(%r8),%r10          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@562 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724fc63:   mov    %r10,%r11
   0.05%  │││  0x00007f2b0724fc66:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@574 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724fc6d:   sub    %r11,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@575 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.18%  │││  0x00007f2b0724fc70:   mov    %r8,0x50(%rdi)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@631 (line 158)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f2b0724fc74:   mov    0x40(%rsp),%rdx
   0.04%  │││  0x00007f2b0724fc79:   and    $0xfffffffffc000000,%rdx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@110 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724fc80:   mov    0x20(%rsp),%r9
   0.20%  │││  0x00007f2b0724fc85:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@111 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f2b0724fc88:   sar    $0x1a,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@565 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f2b0724fc8c:   add    %r10,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@582 (line 148)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f2b0724fc8f:   mov    %r9,0x58(%rdi)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@637 (line 159)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f2b0724fc93:   mov    0xa0(%rsp),%rbp
   0.01%  │││  0x00007f2b0724fc9b:   add    $0xa8,%rsp
   0.05%  │││  0x00007f2b0724fca2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f2b0724fca9:   ja     0x00007f2b0724fce9
   0.01%  │││  0x00007f2b0724fcaf:   ret    
          ↘↘↘  0x00007f2b0724fcb0:   mov    %r8,%rdi
               0x00007f2b0724fcb3:   movl   $0xffffffe5,0x484(%r15)      ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
               0x00007f2b0724fcbe:   movq   $0x0,0x490(%r15)
               0x00007f2b0724fcc9:   call   0x00007f2b06c3517a           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop rdi=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
                                                                         ;   {runtime_call DeoptimizationBlob}
               0x00007f2b0724fcce:   nopl   0x0(%rax,%rax,1)
               0x00007f2b0724fcd6:   mov    %rbp,0xa0(%rsp)
....................................................................................................
  50.22%  <total for region 1>

....[Hottest Regions]...............................................................................
  50.22%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1100 
   5.01%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   4.30%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1178 
   2.99%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1177 
   2.99%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1321 
   2.39%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1177 
   2.38%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1178 
   2.19%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1178 
   2.03%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1178 
   1.72%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 1082 
   1.62%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1177 
   1.55%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1343 
   1.18%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1178 
   1.14%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1178 
   1.12%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1177 
   0.86%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1136 
   0.85%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 1182 
   0.81%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1177 
   0.71%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1177 
   0.66%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 1182 
  13.29%  <...other 640 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.22%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1100 
  16.53%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1178 
  13.91%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1177 
   5.01%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.75%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 1182 
   3.03%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1321 
   2.23%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1343 
   1.72%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 1082 
   1.44%              kernel  [unknown] 
   0.86%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1136 
   0.28%                      <unknown> 
   0.20%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.11%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::finalReduce, version 2, compile id 1296 
   0.08%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1445 
   0.07%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1397 
   0.05%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1425 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::reduceHigh, version 2, compile id 1380 
   0.02%      jvmci, level 4  sun.security.ec.ed.EdDSAParameters$MessageDigester::digest, version 2, compile id 1424 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.44%  <...other 98 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.67%      jvmci, level 4
   5.23%        runtime stub
   1.44%              kernel
   0.28%                    
   0.13%        libc-2.31.so
   0.13%           libjvm.so
   0.02%         interpreter
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.01%         c1, level 3
   0.01%    perf-2107708.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed25519, messageLength = 2048)

# Run progress: 25.00% complete, ETA 00:11:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2412.399 us/op
# Warmup Iteration   2: 1039.147 us/op
# Warmup Iteration   3: 1039.271 us/op
# Warmup Iteration   4: 1038.805 us/op
# Warmup Iteration   5: 1037.503 us/op
Iteration   1: 1037.228 us/op
Iteration   2: 1038.148 us/op
Iteration   3: 1037.905 us/op
Iteration   4: 1038.807 us/op
Iteration   5: 1038.695 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  1038.157 ±(99.9%) 2.464 us/op [Average]
  (min, avg, max) = (1037.228, 1038.157, 1038.807), stdev = 0.640
  CI (99.9%): [1035.692, 1040.621] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 372761 total address lines.
Perf output processed (skipped 61.505 seconds):
 Column 1: cycles (51019 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1093 

               # parm2:    r8:r8     = &apos;[J&apos;
               #           [sp+0xb0]  (sp of caller)
               0x00007f206724ec20:   mov    0x8(%rsi),%r10d
               0x00007f206724ec24:   movabs $0x7f1feb000000,%r12
               0x00007f206724ec2e:   add    %r12,%r10
               0x00007f206724ec31:   xor    %r12,%r12
               0x00007f206724ec34:   cmp    %r10,%rax
               0x00007f206724ec37:   jne    0x00007f2066c2f080           ;   {runtime_call ic_miss_stub}
               0x00007f206724ec3d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   2.09%       0x00007f206724ec40:   mov    %eax,-0x14000(%rsp)
   3.28%       0x00007f206724ec47:   sub    $0xa8,%rsp
   0.02%       0x00007f206724ec4e:   xchg   %ax,%ax
               0x00007f206724ec50:   cmpl   $0x1,0x20(%r15)
   0.00%       0x00007f206724ec58:   jne    0x00007f206724f4d6
   0.27%       0x00007f206724ec5e:   mov    %rbp,0xa0(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
   0.04%       0x00007f206724ec66:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f206724f4fd
                                                                         ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
   0.00%       0x00007f206724ec6a:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f206724f520
                                                                         ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
   0.01%       0x00007f206724ec6e:   mov    0xc(%r8),%r9d                ; implicit exception: dispatches to 0x00007f206724f543
   0.24%       0x00007f206724ec72:   cmp    $0xa,%r10d
          ╭    0x00007f206724ec76:   jb     0x00007f206724f4b0           ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
   0.03%  │    0x00007f206724ec7c:   nopl   0x0(%rax)
          │    0x00007f206724ec80:   cmp    $0xa,%r11d
          │╭   0x00007f206724ec84:   jb     0x00007f206724f4b0           ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@5 (line 225)
   0.01%  ││   0x00007f206724ec8a:   cmp    $0xa,%r9d
          ││╭  0x00007f206724ec8e:   jb     0x00007f206724f4b0           ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.22%  │││  0x00007f206724ec94:   mov    %r8,0x8(%rsp)
   0.09%  │││  0x00007f206724ec99:   mov    0x48(%rcx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@239 (line 232)
   0.01%  │││  0x00007f206724ec9d:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@462 (line 234)
   0.01%  │││  0x00007f206724eca1:   mov    0x50(%rdx),%r9               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@373 (line 233)
   0.20%  │││  0x00007f206724eca5:   mov    0x48(%rdx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@294 (line 232)
   0.05%  │││  0x00007f206724eca9:   mov    0x40(%rdx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@225 (line 231)
   0.03%  │││  0x00007f206724ecad:   mov    0x38(%rdx),%rsi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@166 (line 230)
   0.02%  │││  0x00007f206724ecb1:   mov    0x30(%rdx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@117 (line 229)
   0.23%  │││  0x00007f206724ecb5:   mov    0x28(%rdx),%rbp              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@76 (line 228)
   0.02%  │││  0x00007f206724ecb9:   mov    0x20(%rdx),%r13              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@43 (line 227)
   0.04%  │││  0x00007f206724ecbd:   mov    0x18(%rdx),%r14              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@18 (line 226)
   0.13%  │││  0x00007f206724ecc1:   mov    0x10(%rdx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
   0.11%  │││  0x00007f206724ecc5:   mov    0x58(%rcx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@387 (line 234)
   0.01%  │││  0x00007f206724ecc9:   mov    %r11,0x90(%rsp)
   0.03%  │││  0x00007f206724ecd1:   mov    0x50(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@308 (line 233)
   0.18%  │││  0x00007f206724ecd5:   mov    %r9,0x88(%rsp)
   0.07%  │││  0x00007f206724ecdd:   mov    0x10(%rcx),%r9               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@5 (line 225)
   0.03%  │││  0x00007f206724ece1:   mov    %rbx,0x80(%rsp)
   0.08%  │││  0x00007f206724ece9:   mov    0x18(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@14 (line 226)
   0.17%  │││  0x00007f206724eced:   mov    %rbx,0x78(%rsp)
   0.45%  │││  0x00007f206724ecf2:   mov    0x20(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@31 (line 227)
   0.01%  │││  0x00007f206724ecf6:   mov    %rbx,0x70(%rsp)
   0.25%  │││  0x00007f206724ecfb:   mov    0x28(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@56 (line 228)
   0.01%  │││  0x00007f206724ecff:   mov    %rbx,0x68(%rsp)
   0.82%  │││  0x00007f206724ed04:   mov    0x30(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@89 (line 229)
   0.01%  │││  0x00007f206724ed08:   mov    %rbx,0x60(%rsp)
   0.20%  │││  0x00007f206724ed0d:   mov    0x38(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@130 (line 230)
   0.01%  │││  0x00007f206724ed11:   mov    0x40(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@180 (line 231)
   0.09%  │││  0x00007f206724ed15:   mov    %rdi,0x58(%rsp)
   0.01%  │││  0x00007f206724ed1a:   mov    %rdx,%rdi
   0.15%  │││  0x00007f206724ed1d:   imul   %r9,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@6 (line 225)
   0.01%  │││  0x00007f206724ed21:   mov    %rdi,0x50(%rsp)
   0.12%  │││  0x00007f206724ed26:   mov    %r14,%rdi
   0.01%  │││  0x00007f206724ed29:   imul   %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@477 (line 235)
   0.15%  │││  0x00007f206724ed2d:   mov    %r9,0x48(%rsp)
   0.01%  │││  0x00007f206724ed32:   mov    %r13,%r9
   0.09%  │││  0x00007f206724ed35:   imul   %r11,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@485 (line 235)
          │││                                                            ;   {no_reloc}
   0.00%  │││  0x00007f206724ed39:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@486 (line 235)
   0.15%  │││  0x00007f206724ed3c:   mov    %r10,%r9
   0.02%  │││  0x00007f206724ed3f:   imul   %rbp,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@494 (line 235)
   0.11%  │││  0x00007f206724ed43:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@495 (line 235)
   0.00%  │││  0x00007f206724ed46:   mov    %rax,%r9
   0.16%  │││  0x00007f206724ed49:   imul   %rcx,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@503 (line 235)
   0.03%  │││  0x00007f206724ed4d:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@504 (line 235)
   0.08%  │││  0x00007f206724ed50:   mov    %rsi,%r9
   0.00%  │││  0x00007f206724ed53:   imul   %rbx,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@511 (line 235)
   0.21%  │││  0x00007f206724ed57:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@512 (line 235)
   0.02%  │││  0x00007f206724ed5a:   mov    0x58(%rsp),%r9
   0.10%  │││  0x00007f206724ed5f:   imul   0x60(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@520 (line 235)
   0.16%  │││  0x00007f206724ed65:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@521 (line 235)
   0.16%  │││  0x00007f206724ed68:   mov    0x80(%rsp),%r9
   0.01%  │││  0x00007f206724ed70:   imul   0x68(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@529 (line 235)
   0.07%  │││  0x00007f206724ed76:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@530 (line 235)
   0.07%  │││  0x00007f206724ed79:   mov    0x88(%rsp),%r9
   0.12%  │││  0x00007f206724ed81:   imul   0x70(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@538 (line 235)
   0.02%  │││  0x00007f206724ed87:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@539 (line 235)
   0.14%  │││  0x00007f206724ed8a:   mov    0x90(%rsp),%r9
   0.01%  │││  0x00007f206724ed92:   imul   0x78(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@547 (line 235)
   0.11%  │││  0x00007f206724ed98:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@548 (line 235)
   0.11%  │││  0x00007f206724ed9b:   mov    %rdx,%r9
   0.05%  │││  0x00007f206724ed9e:   imul   %r8,%r9                      ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@388 (line 234)
   0.00%  │││  0x00007f206724eda2:   mov    %rdi,0x40(%rsp)
   0.28%  │││  0x00007f206724eda7:   mov    %r14,%rdi
   0.00%  │││  0x00007f206724edaa:   imul   %r11,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@396 (line 234)
   0.05%  │││  0x00007f206724edae:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@397 (line 234)
          │││  0x00007f206724edb1:   mov    %r10,%rdi
   0.20%  │││  0x00007f206724edb4:   imul   %r13,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@405 (line 234)
   0.00%  │││  0x00007f206724edb8:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@406 (line 234)
   0.06%  │││  0x00007f206724edbb:   mov    %rbp,%rdi
          │││  0x00007f206724edbe:   imul   %rcx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@414 (line 234)
   0.19%  │││  0x00007f206724edc2:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@415 (line 234)
          │││  0x00007f206724edc5:   mov    %rax,%rdi
   0.07%  │││  0x00007f206724edc8:   imul   %rbx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@422 (line 234)
          │││  0x00007f206724edcc:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@423 (line 234)
   0.21%  │││  0x00007f206724edcf:   mov    %rsi,%rdi
          │││  0x00007f206724edd2:   imul   0x60(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@430 (line 234)
   0.07%  │││  0x00007f206724edd8:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@431 (line 234)
          │││  0x00007f206724eddb:   mov    0x58(%rsp),%rdi
   0.19%  │││  0x00007f206724ede0:   imul   0x68(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@439 (line 234)
   0.00%  │││  0x00007f206724ede6:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@440 (line 234)
   0.07%  │││  0x00007f206724ede9:   mov    0x80(%rsp),%rdi
   0.00%  │││  0x00007f206724edf1:   imul   0x70(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@448 (line 234)
   0.21%  │││  0x00007f206724edf7:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@449 (line 234)
   0.01%  │││  0x00007f206724edfa:   mov    0x88(%rsp),%rdi
   0.05%  │││  0x00007f206724ee02:   imul   0x78(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@457 (line 234)
          │││  0x00007f206724ee08:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@458 (line 234)
   0.22%  │││  0x00007f206724ee0b:   mov    0x90(%rsp),%rdi
          │││  0x00007f206724ee13:   imul   0x48(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@466 (line 234)
   0.03%  │││  0x00007f206724ee19:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@467 (line 234)
   0.01%  │││  0x00007f206724ee1c:   mov    0x90(%rsp),%rdi
   0.19%  │││  0x00007f206724ee24:   imul   %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@896 (line 243)
          │││  0x00007f206724ee28:   imul   $0x13,%rdi,%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@39 (line 74)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.25%  │││  0x00007f206724ee2c:   mov    %r8,0x38(%rsp)
          │││  0x00007f206724ee31:   mov    %rdi,%r8
   0.09%  │││  0x00007f206724ee34:   sar    $0x15,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@61 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││                                                            ;   {no_reloc}
   0.17%  │││  0x00007f206724ee38:   add    %r8,%r9                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@62 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f206724ee3b:   mov    %rdx,%r8
          │││  0x00007f206724ee3e:   imul   %r11,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@309 (line 233)
   0.10%  │││  0x00007f206724ee42:   mov    %rdx,0x30(%rsp)
   0.00%  │││  0x00007f206724ee47:   mov    %r10,%rdx
   0.15%  │││  0x00007f206724ee4a:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@317 (line 233)
   0.00%  │││  0x00007f206724ee4e:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@318 (line 233)
   0.08%  │││  0x00007f206724ee51:   mov    %r13,%rdx
          │││  0x00007f206724ee54:   imul   %rcx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@326 (line 233)
   0.19%  │││  0x00007f206724ee58:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@327 (line 233)
          │││  0x00007f206724ee5b:   mov    %rbp,%rdx
   0.08%  │││  0x00007f206724ee5e:   imul   %rbx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@334 (line 233)
          │││  0x00007f206724ee62:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@335 (line 233)
   0.17%  │││  0x00007f206724ee65:   mov    %rax,%rdx
          │││  0x00007f206724ee68:   imul   0x60(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@342 (line 233)
   0.07%  │││  0x00007f206724ee6e:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@343 (line 233)
          │││  0x00007f206724ee71:   mov    %rsi,%rdx
   0.21%  │││  0x00007f206724ee74:   imul   0x68(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@350 (line 233)
          │││  0x00007f206724ee7a:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@351 (line 233)
   0.10%  │││  0x00007f206724ee7d:   mov    0x58(%rsp),%rdx
   0.00%  │││  0x00007f206724ee82:   imul   0x70(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@359 (line 233)
   0.20%  │││  0x00007f206724ee88:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@360 (line 233)
          │││  0x00007f206724ee8b:   mov    0x80(%rsp),%rdx
   0.08%  │││  0x00007f206724ee93:   imul   0x78(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@368 (line 233)
          │││  0x00007f206724ee99:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@369 (line 233)
   0.20%  │││  0x00007f206724ee9c:   mov    0x88(%rsp),%rdx
          │││  0x00007f206724eea4:   imul   0x48(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@377 (line 233)
   0.10%  │││  0x00007f206724eeaa:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@378 (line 233)
   0.07%  │││  0x00007f206724eead:   mov    0x88(%rsp),%rdx
   0.11%  │││  0x00007f206724eeb5:   imul   0x38(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@875 (line 242)
   0.00%  │││  0x00007f206724eebb:   mov    %rbx,0x28(%rsp)
   0.06%  │││  0x00007f206724eec0:   mov    0x90(%rsp),%rbx
   0.08%  │││  0x00007f206724eec8:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@884 (line 242)
   0.11%  │││  0x00007f206724eecc:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@885 (line 242)
          │││  0x00007f206724eecf:   imul   $0x13,%rdx,%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@8 (line 70)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   1.27%  │││  0x00007f206724eed3:   mov    %rbx,%rdx
          │││  0x00007f206724eed6:   sar    $0x15,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@30 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724eeda:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@31 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007f206724eedd:   shl    $0x5,%rdi                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@47 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.47%  │││  0x00007f206724eee1:   and    $0x3ffffff,%rdi              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@51 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f206724eee8:   add    %rdi,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@52 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f206724eeeb:   lea    0x2000000(%r8),%rdi          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@70 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007f206724eef2:   mov    %rdi,%rdx
   0.65%  │││  0x00007f206724eef5:   sar    $0x1a,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@73 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724eef9:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@90 (line 80)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f206724eefc:   lea    0x2000000(%r9),%rdx          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@98 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.07%  │││  0x00007f206724ef03:   mov    %r9,0x20(%rsp)
   0.53%  │││  0x00007f206724ef08:   mov    %rdx,%r9
          │││  0x00007f206724ef0b:   sar    $0x1a,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@101 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f206724ef0f:   add    0x40(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@118 (line 84)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f206724ef14:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@126 (line 86)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.80%  │││  0x00007f206724ef18:   mov    %rdx,0x40(%rsp)
          │││  0x00007f206724ef1d:   mov    %r9,%rdx
          │││  0x00007f206724ef20:   shl    $0x5,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@133 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.23%  │││  0x00007f206724ef24:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@137 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.25%  │││  0x00007f206724ef2b:   add    0x50(%rsp),%rdx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@138 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.24%  │││  0x00007f206724ef30:   mov    %r8,0x50(%rsp)               ;   {no_reloc}
          │││  0x00007f206724ef35:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@340 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.25%  │││  0x00007f206724ef3c:   mov    %rdi,0x18(%rsp)
   0.00%  │││  0x00007f206724ef41:   mov    %r8,%rdi
          │││  0x00007f206724ef44:   and    $0xfffffffffc000000,%rdi     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@351 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.25%  │││  0x00007f206724ef4b:   sub    %rdi,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@352 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.25%  │││  0x00007f206724ef4e:   mov    0x8(%rsp),%rdi
          │││  0x00007f206724ef53:   mov    %rdx,0x10(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.62%  │││  0x00007f206724ef57:   mov    0x30(%rsp),%rdx
          │││  0x00007f206724ef5c:   imul   0x78(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@15 (line 226)
          │││  0x00007f206724ef62:   mov    %rbx,0x10(%rsp)
          │││  0x00007f206724ef67:   mov    %r14,%rbx
   0.30%  │││  0x00007f206724ef6a:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@22 (line 226)
          │││  0x00007f206724ef70:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@23 (line 226)
          │││  0x00007f206724ef73:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@146 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f206724ef77:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@147 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.26%  │││  0x00007f206724ef7a:   mov    %r13,%r9
          │││  0x00007f206724ef7d:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@558 (line 236)
          │││  0x00007f206724ef83:   mov    %rbp,%rbx
          │││  0x00007f206724ef86:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@566 (line 236)
   0.23%  │││  0x00007f206724ef8a:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@567 (line 236)
   0.00%  │││  0x00007f206724ef8d:   mov    %r10,%rbx
          │││  0x00007f206724ef90:   imul   %rax,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@575 (line 236)
          │││  0x00007f206724ef94:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@576 (line 236)
   0.22%  │││  0x00007f206724ef97:   mov    %rsi,%rbx
          │││  0x00007f206724ef9a:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@584 (line 236)
          │││  0x00007f206724ef9e:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@585 (line 236)
          │││  0x00007f206724efa1:   mov    0x58(%rsp),%rbx
   0.24%  │││  0x00007f206724efa6:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@593 (line 236)
          │││  0x00007f206724efac:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@594 (line 236)
          │││  0x00007f206724efaf:   mov    0x80(%rsp),%rbx
          │││  0x00007f206724efb7:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@602 (line 236)
   0.26%  │││  0x00007f206724efbd:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@603 (line 236)
          │││  0x00007f206724efc0:   mov    0x88(%rsp),%rbx
          │││  0x00007f206724efc8:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@611 (line 236)
          │││  0x00007f206724efce:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@612 (line 236)
   0.25%  │││  0x00007f206724efd1:   mov    0x90(%rsp),%rbx
          │││  0x00007f206724efd9:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@620 (line 236)
          │││  0x00007f206724efdf:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@621 (line 236)
   0.00%  │││  0x00007f206724efe2:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@155 (line 90)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.32%  │││  0x00007f206724efe6:   mov    %r9,%rbx
          │││  0x00007f206724efe9:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@163 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f206724efed:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@167 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f206724eff4:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@168 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.28%  │││  0x00007f206724eff7:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@343 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f206724effb:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@358 (line 116)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f206724effe:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@366 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f206724f005:   mov    %r8,%rbx
   0.27%  │││  0x00007f206724f008:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@378 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f206724f00f:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@379 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f206724f012:   mov    %rdx,0x18(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@593 (line 151)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f206724f016:   mov    0x30(%rsp),%rdx
   0.25%  │││  0x00007f206724f01b:   imul   0x70(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@32 (line 227)
          │││  0x00007f206724f021:   mov    %r14,%rbx
          │││  0x00007f206724f024:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@39 (line 227)
   0.01%  │││  0x00007f206724f02a:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@40 (line 227)
   0.28%  │││  0x00007f206724f02d:   mov    %r13,%rbx
          │││  0x00007f206724f030:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@47 (line 227)
          │││                                                            ;   {no_reloc}
          │││  0x00007f206724f036:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@48 (line 227)
   0.01%  │││  0x00007f206724f039:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@177 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.21%  │││  0x00007f206724f03d:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@178 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f040:   mov    %rbp,%r9
          │││  0x00007f206724f043:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@631 (line 237)
   0.01%  │││  0x00007f206724f049:   mov    %rax,%rbx
   0.22%  │││  0x00007f206724f04c:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@639 (line 237)
          │││  0x00007f206724f050:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@640 (line 237)
   0.01%  │││  0x00007f206724f053:   mov    %r10,%rbx
   0.01%  │││  0x00007f206724f056:   imul   %rsi,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@648 (line 237)
   0.26%  │││  0x00007f206724f05a:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@649 (line 237)
          │││  0x00007f206724f05d:   mov    0x58(%rsp),%rbx
          │││  0x00007f206724f062:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@658 (line 237)
   0.02%  │││  0x00007f206724f066:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@659 (line 237)
   0.27%  │││  0x00007f206724f069:   mov    0x80(%rsp),%rbx
          │││  0x00007f206724f071:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@667 (line 237)
          │││  0x00007f206724f077:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@668 (line 237)
   0.01%  │││  0x00007f206724f07a:   mov    0x88(%rsp),%rbx
   0.27%  │││  0x00007f206724f082:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@676 (line 237)
          │││  0x00007f206724f088:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@677 (line 237)
   0.00%  │││  0x00007f206724f08b:   mov    0x90(%rsp),%rbx
   0.02%  │││  0x00007f206724f093:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@685 (line 237)
   0.24%  │││  0x00007f206724f099:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@686 (line 237)
          │││  0x00007f206724f09c:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@186 (line 94)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f206724f0a0:   mov    %r9,%rbx
   0.01%  │││  0x00007f206724f0a3:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@194 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.25%  │││  0x00007f206724f0a7:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@198 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f0ae:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@199 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f0b1:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@369 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f206724f0b5:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@386 (line 120)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.94%  │││  0x00007f206724f0b8:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@394 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   4.57%  │││  0x00007f206724f0bf:   mov    %r8,%rbx
   0.01%  │││  0x00007f206724f0c2:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@406 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.15%  │││  0x00007f206724f0c9:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@407 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.37%  │││  0x00007f206724f0cc:   mov    %rdx,0x20(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@598 (line 152)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.38%  │││  0x00007f206724f0d0:   mov    0x30(%rsp),%rdx
          │││  0x00007f206724f0d5:   imul   0x68(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@57 (line 228)
   0.02%  │││  0x00007f206724f0db:   mov    %r14,%rbx
   0.07%  │││  0x00007f206724f0de:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@64 (line 228)
   0.18%  │││  0x00007f206724f0e4:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@65 (line 228)
   0.04%  │││  0x00007f206724f0e7:   mov    %r13,%rbx
   0.01%  │││  0x00007f206724f0ea:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@72 (line 228)
   0.07%  │││  0x00007f206724f0f0:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@73 (line 228)
   0.20%  │││  0x00007f206724f0f3:   mov    %rbp,%rbx
          │││  0x00007f206724f0f6:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@80 (line 228)
   0.01%  │││  0x00007f206724f0fc:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@81 (line 228)
   0.07%  │││  0x00007f206724f0ff:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@208 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.20%  │││  0x00007f206724f103:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@209 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f206724f106:   mov    %rax,%r9
   0.01%  │││  0x00007f206724f109:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@696 (line 238)
   0.06%  │││  0x00007f206724f10f:   mov    %rsi,%rbx
   0.19%  │││  0x00007f206724f112:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@704 (line 238)
   0.01%  │││  0x00007f206724f116:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@705 (line 238)
   0.04%  │││  0x00007f206724f119:   mov    %r10,%rbx
   0.05%  │││  0x00007f206724f11c:   imul   0x58(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@714 (line 238)
   0.19%  │││  0x00007f206724f122:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@715 (line 238)
   0.01%  │││  0x00007f206724f125:   mov    0x80(%rsp),%rbx
   0.02%  │││  0x00007f206724f12d:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@724 (line 238)
   0.06%  │││  0x00007f206724f131:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@725 (line 238)
          │││                                                            ;   {no_reloc}
   0.18%  │││  0x00007f206724f134:   mov    0x88(%rsp),%rbx
   0.00%  │││  0x00007f206724f13c:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@733 (line 238)
   0.01%  │││  0x00007f206724f142:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@734 (line 238)
   0.07%  │││  0x00007f206724f145:   mov    0x90(%rsp),%rbx
   0.21%  │││  0x00007f206724f14d:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@742 (line 238)
   0.01%  │││  0x00007f206724f153:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@743 (line 238)
   0.01%  │││  0x00007f206724f156:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@217 (line 98)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.16%  │││  0x00007f206724f15a:   mov    %r9,%rbx
   0.21%  │││  0x00007f206724f15d:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@225 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f161:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@229 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f206724f168:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@230 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.13%  │││  0x00007f206724f16b:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@397 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.20%  │││  0x00007f206724f16f:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@414 (line 124)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f206724f172:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@422 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.27%  │││  0x00007f206724f179:   mov    %r8,%rbx
   0.09%  │││  0x00007f206724f17c:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@434 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.18%  │││  0x00007f206724f183:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@435 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f186:   mov    %rdx,0x28(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@603 (line 153)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.08%  │││  0x00007f206724f18a:   mov    0x30(%rsp),%rdx
   0.04%  │││  0x00007f206724f18f:   imul   0x60(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@90 (line 229)
   0.16%  │││  0x00007f206724f195:   mov    %r14,%rbx
   0.00%  │││  0x00007f206724f198:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@97 (line 229)
   0.04%  │││  0x00007f206724f19e:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@98 (line 229)
   0.03%  │││  0x00007f206724f1a1:   mov    %r13,%rbx
   0.18%  │││  0x00007f206724f1a4:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@105 (line 229)
   0.00%  │││  0x00007f206724f1aa:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@106 (line 229)
   0.06%  │││  0x00007f206724f1ad:   mov    %rbp,%rbx
   0.04%  │││  0x00007f206724f1b0:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@113 (line 229)
   0.17%  │││  0x00007f206724f1b6:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@114 (line 229)
          │││  0x00007f206724f1b9:   mov    %rax,%rbx
   0.05%  │││  0x00007f206724f1bc:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@121 (line 229)
   0.02%  │││  0x00007f206724f1c2:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@122 (line 229)
   0.18%  │││  0x00007f206724f1c5:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@239 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f1c9:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@240 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007f206724f1cc:   mov    %rsi,%r9
   0.02%  │││  0x00007f206724f1cf:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@753 (line 239)
   0.22%  │││  0x00007f206724f1d5:   mov    0x58(%rsp),%rbx
          │││  0x00007f206724f1da:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@762 (line 239)
   0.05%  │││  0x00007f206724f1de:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@763 (line 239)
   0.03%  │││  0x00007f206724f1e1:   mov    %r10,%rbx
   0.21%  │││  0x00007f206724f1e4:   imul   0x80(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@772 (line 239)
          │││  0x00007f206724f1ed:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@773 (line 239)
   0.06%  │││  0x00007f206724f1f0:   mov    0x88(%rsp),%rbx
   0.02%  │││  0x00007f206724f1f8:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@782 (line 239)
   0.16%  │││  0x00007f206724f1fc:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@783 (line 239)
   0.00%  │││  0x00007f206724f1ff:   mov    0x90(%rsp),%rbx
   0.04%  │││  0x00007f206724f207:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@791 (line 239)
   0.04%  │││  0x00007f206724f20d:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@792 (line 239)
   0.18%  │││  0x00007f206724f210:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@248 (line 102)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f206724f214:   mov    %r9,%rbx
   0.05%  │││  0x00007f206724f217:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@256 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f206724f21b:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@260 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.20%  │││  0x00007f206724f222:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@261 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f206724f225:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@425 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007f206724f229:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@442 (line 128)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.11%  │││  0x00007f206724f22c:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@450 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││                                                            ;   {no_reloc}
   0.48%  │││  0x00007f206724f233:   mov    %r8,%rbx
   0.00%  │││  0x00007f206724f236:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@462 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007f206724f23d:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@463 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f206724f240:   mov    %rdx,0x30(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@608 (line 154)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.25%  │││  0x00007f206724f244:   mov    0x30(%rsp),%rdx
   0.00%  │││  0x00007f206724f249:   imul   0x28(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@131 (line 230)
   0.04%  │││  0x00007f206724f24f:   mov    %r14,%rbx
   0.02%  │││  0x00007f206724f252:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@138 (line 230)
   0.20%  │││  0x00007f206724f258:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@139 (line 230)
   0.01%  │││  0x00007f206724f25b:   mov    %r13,%rbx
   0.03%  │││  0x00007f206724f25e:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@146 (line 230)
   0.02%  │││  0x00007f206724f264:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@147 (line 230)
   0.26%  │││  0x00007f206724f267:   mov    %rbp,%rbx
   0.00%  │││  0x00007f206724f26a:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@154 (line 230)
   0.04%  │││  0x00007f206724f270:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@155 (line 230)
   0.01%  │││  0x00007f206724f273:   mov    %rax,%rbx
   0.20%  │││  0x00007f206724f276:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@162 (line 230)
   0.00%  │││  0x00007f206724f27c:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@163 (line 230)
   0.05%  │││  0x00007f206724f27f:   mov    %rsi,%rbx
   0.03%  │││  0x00007f206724f282:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@170 (line 230)
   0.21%  │││  0x00007f206724f288:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@171 (line 230)
   0.00%  │││  0x00007f206724f28b:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@270 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007f206724f28f:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@271 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007f206724f292:   mov    0x58(%rsp),%r9
   0.26%  │││  0x00007f206724f297:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@803 (line 240)
   0.00%  │││  0x00007f206724f29d:   mov    0x80(%rsp),%rbx
   0.04%  │││  0x00007f206724f2a5:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@812 (line 240)
   0.01%  │││  0x00007f206724f2a9:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@813 (line 240)
   0.25%  │││  0x00007f206724f2ac:   mov    %r10,%rbx
   0.00%  │││  0x00007f206724f2af:   imul   0x88(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@822 (line 240)
   0.04%  │││  0x00007f206724f2b8:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@823 (line 240)
   0.02%  │││  0x00007f206724f2bb:   mov    0x90(%rsp),%rbx
   0.19%  │││  0x00007f206724f2c3:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@832 (line 240)
          │││  0x00007f206724f2c7:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@833 (line 240)
   0.04%  │││  0x00007f206724f2ca:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@279 (line 106)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f206724f2ce:   mov    %r9,%rbx
   0.22%  │││  0x00007f206724f2d1:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@287 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f206724f2d5:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@291 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007f206724f2dc:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@292 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007f206724f2df:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@453 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.20%  │││  0x00007f206724f2e3:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@470 (line 132)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f206724f2e6:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@478 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.08%  │││  0x00007f206724f2ed:   mov    %r8,%rbx
   0.02%  │││  0x00007f206724f2f0:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@490 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f206724f2f7:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@491 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f2fa:   mov    %rdx,0x38(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@613 (line 155)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f206724f2fe:   mov    0x30(%rsp),%rdx
   0.02%  │││  0x00007f206724f303:   imul   %rcx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@181 (line 231)
   0.23%  │││  0x00007f206724f307:   mov    %r14,%rbx
   0.00%  │││  0x00007f206724f30a:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@188 (line 231)
   0.03%  │││  0x00007f206724f310:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@189 (line 231)
   0.00%  │││  0x00007f206724f313:   mov    %r13,%rbx
   0.26%  │││  0x00007f206724f316:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@196 (line 231)
   0.01%  │││  0x00007f206724f31c:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@197 (line 231)
   0.04%  │││  0x00007f206724f31f:   mov    %rbp,%rbx
   0.02%  │││  0x00007f206724f322:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@204 (line 231)
   0.18%  │││  0x00007f206724f328:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@205 (line 231)
   0.00%  │││  0x00007f206724f32b:   mov    %rax,%rbx
   0.05%  │││  0x00007f206724f32e:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@212 (line 231)
          │││                                                            ;   {no_reloc}
   0.01%  │││  0x00007f206724f334:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@213 (line 231)
   0.22%  │││  0x00007f206724f337:   mov    %rsi,%rbx
   0.00%  │││  0x00007f206724f33a:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@220 (line 231)
   0.03%  │││  0x00007f206724f340:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@221 (line 231)
   0.01%  │││  0x00007f206724f343:   mov    0x58(%rsp),%rbx
   0.21%  │││  0x00007f206724f348:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@229 (line 231)
   0.00%  │││  0x00007f206724f34e:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@230 (line 231)
   0.04%  │││  0x00007f206724f351:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@301 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f206724f355:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@302 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.23%  │││  0x00007f206724f358:   mov    0x80(%rsp),%rbx
   0.00%  │││  0x00007f206724f360:   imul   0x38(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@844 (line 241)
   0.04%  │││  0x00007f206724f366:   mov    0x88(%rsp),%r9
   0.01%  │││  0x00007f206724f36e:   imul   %r11,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@853 (line 241)
   0.22%  │││  0x00007f206724f372:   add    %r9,%rbx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@854 (line 241)
          │││  0x00007f206724f375:   mov    %r10,%r11
   0.04%  │││  0x00007f206724f378:   imul   0x90(%rsp),%r11              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@863 (line 241)
   0.02%  │││  0x00007f206724f381:   add    %r11,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@864 (line 241)
   0.18%  │││  0x00007f206724f384:   imul   $0x13,%rbx,%r11              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@310 (line 110)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f388:   mov    %r11,%r9
   0.03%  │││  0x00007f206724f38b:   shl    $0x5,%r9                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@318 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f38f:   and    $0x3ffffff,%r9               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@322 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.21%  │││  0x00007f206724f396:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@323 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f399:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@481 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007f206724f39d:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@498 (line 136)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f206724f3a0:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@506 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f206724f3a7:   mov    %r8,%r9
   0.00%  │││  0x00007f206724f3aa:   and    $0xfffffffffc000000,%r9      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@518 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007f206724f3b1:   sub    %r9,%rdx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@519 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f3b4:   mov    %rdx,0x40(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@619 (line 156)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f206724f3b8:   imul   0x30(%rsp),%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@240 (line 232)
          │││  0x00007f206724f3be:   imul   %rcx,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@248 (line 232)
   0.04%  │││  0x00007f206724f3c2:   add    %r14,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@249 (line 232)
   0.01%  │││  0x00007f206724f3c5:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@256 (line 232)
   0.22%  │││  0x00007f206724f3cb:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@257 (line 232)
   0.01%  │││  0x00007f206724f3ce:   imul   0x60(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@264 (line 232)
   0.03%  │││  0x00007f206724f3d4:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@265 (line 232)
   0.02%  │││  0x00007f206724f3d7:   imul   0x68(%rsp),%rax              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@272 (line 232)
   0.21%  │││  0x00007f206724f3dd:   add    %rax,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@273 (line 232)
   0.01%  │││  0x00007f206724f3e0:   imul   0x70(%rsp),%rsi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@280 (line 232)
   0.05%  │││  0x00007f206724f3e6:   add    %rsi,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@281 (line 232)
   0.00%  │││  0x00007f206724f3e9:   mov    0x58(%rsp),%r9
   0.23%  │││  0x00007f206724f3ee:   imul   0x78(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@289 (line 232)
   0.00%  │││  0x00007f206724f3f4:   add    %r9,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@290 (line 232)
   0.04%  │││  0x00007f206724f3f7:   mov    0x80(%rsp),%rbx
   0.01%  │││  0x00007f206724f3ff:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@298 (line 232)
   0.22%  │││  0x00007f206724f405:   add    %rbx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@299 (line 232)
   0.00%  │││  0x00007f206724f408:   mov    0x10(%rsp),%rbx
   0.03%  │││  0x00007f206724f40d:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@16 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f411:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@20 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.24%  │││  0x00007f206724f418:   add    %rbx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@21 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f206724f41b:   sar    $0x15,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@332 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007f206724f41f:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@333 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f422:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@509 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.23%  │││  0x00007f206724f426:   add    %r8,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@526 (line 140)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f206724f429:   lea    0x2000000(%r10),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@534 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││                                                            ;   {no_reloc}
   0.04%  │││  0x00007f206724f430:   mov    %r11,%r8
   0.02%  │││  0x00007f206724f433:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@546 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.22%  │││  0x00007f206724f43a:   sub    %r8,%r10                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@547 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f206724f43d:   mov    %r10,0x48(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@625 (line 157)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007f206724f441:   mov    0x18(%rsp),%r10
   0.01%  │││  0x00007f206724f446:   and    $0xfffffffffc000000,%r10     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@82 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.23%  │││  0x00007f206724f44d:   mov    0x50(%rsp),%r8
   0.00%  │││  0x00007f206724f452:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@83 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007f206724f455:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@537 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f206724f459:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@554 (line 144)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.24%  │││  0x00007f206724f45c:   lea    0x2000000(%r8),%r10          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@562 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f463:   mov    %r10,%r11
   0.05%  │││  0x00007f206724f466:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@574 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f46d:   sub    %r11,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@575 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.21%  │││  0x00007f206724f470:   mov    %r8,0x50(%rdi)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@631 (line 158)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f474:   mov    0x40(%rsp),%rdx
   0.03%  │││  0x00007f206724f479:   and    $0xfffffffffc000000,%rdx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@110 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f480:   mov    0x20(%rsp),%r9
   0.23%  │││  0x00007f206724f485:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@111 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f488:   sar    $0x1a,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@565 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007f206724f48c:   add    %r10,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@582 (line 148)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f206724f48f:   mov    %r9,0x58(%rdi)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@637 (line 159)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.22%  │││  0x00007f206724f493:   mov    0xa0(%rsp),%rbp
          │││  0x00007f206724f49b:   add    $0xa8,%rsp
   0.04%  │││  0x00007f206724f4a2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f206724f4a9:   ja     0x00007f206724f4e9
   0.02%  │││  0x00007f206724f4af:   ret    
          ↘↘↘  0x00007f206724f4b0:   mov    %r8,%rdi
               0x00007f206724f4b3:   movl   $0xffffffe5,0x484(%r15)      ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
               0x00007f206724f4be:   movq   $0x0,0x490(%r15)
               0x00007f206724f4c9:   call   0x00007f2066c3517a           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop rdi=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
                                                                         ;   {runtime_call DeoptimizationBlob}
               0x00007f206724f4ce:   nopl   0x0(%rax,%rax,1)
               0x00007f206724f4d6:   mov    %rbp,0xa0(%rsp)
....................................................................................................
  50.36%  <total for region 1>

....[Hottest Regions]...............................................................................
  50.36%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1093 
   6.50%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1210 
   4.56%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.86%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1311 
   2.85%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1192 
   2.64%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1210 
   1.54%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 1065 
   1.52%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1192 
   1.29%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1210 
   1.19%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1192 
   1.09%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1210 
   1.02%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 5, compile id 1336 
   0.94%              kernel  [unknown] 
   0.92%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1192 
   0.87%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1120 
   0.86%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1210 
   0.66%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 1194 
   0.65%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.64%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1192 
   0.63%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1192 
  16.39%  <...other 662 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.36%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1093 
  16.24%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1210 
  13.22%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1192 
   4.56%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.82%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 1194 
   2.89%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1311 
   2.52%              kernel  [unknown] 
   2.10%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 5, compile id 1336 
   1.54%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 1065 
   0.87%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1120 
   0.82%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.20%                      <unknown> 
   0.09%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::finalReduce, version 4, compile id 1333 
   0.09%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1464 
   0.08%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1410 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1424 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark::sign, version 2, compile id 1461 
   0.03%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::reduceHigh, version 2, compile id 1400 
   0.03%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.45%  <...other 102 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.48%      jvmci, level 4
   5.41%        runtime stub
   2.52%              kernel
   0.20%                    
   0.16%           libjvm.so
   0.13%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%    perf-2107773.map
   0.00%         c1, level 3
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed25519, messageLength = 16384)

# Run progress: 37.50% complete, ETA 00:09:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2622.166 us/op
# Warmup Iteration   2: 1164.519 us/op
# Warmup Iteration   3: 1106.176 us/op
# Warmup Iteration   4: 1105.651 us/op
# Warmup Iteration   5: 1108.993 us/op
Iteration   1: 1105.806 us/op
Iteration   2: 1105.700 us/op
Iteration   3: 1108.050 us/op
Iteration   4: 1106.711 us/op
Iteration   5: 1107.104 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  1106.674 ±(99.9%) 3.744 us/op [Average]
  (min, avg, max) = (1105.700, 1106.674, 1108.050), stdev = 0.972
  CI (99.9%): [1102.930, 1110.419] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 373694 total address lines.
Perf output processed (skipped 61.243 seconds):
 Column 1: cycles (50799 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1098 

               # parm2:    r8:r8     = &apos;[J&apos;
               #           [sp+0xb0]  (sp of caller)
               0x00007f76ef24caa0:   mov    0x8(%rsi),%r10d
               0x00007f76ef24caa4:   movabs $0x7f7673000000,%r12
               0x00007f76ef24caae:   add    %r12,%r10
               0x00007f76ef24cab1:   xor    %r12,%r12
               0x00007f76ef24cab4:   cmp    %r10,%rax
               0x00007f76ef24cab7:   jne    0x00007f76eec2f080           ;   {runtime_call ic_miss_stub}
               0x00007f76ef24cabd:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.80%       0x00007f76ef24cac0:   mov    %eax,-0x14000(%rsp)
   3.04%       0x00007f76ef24cac7:   sub    $0xa8,%rsp
   0.01%       0x00007f76ef24cace:   xchg   %ax,%ax
               0x00007f76ef24cad0:   cmpl   $0x0,0x20(%r15)
               0x00007f76ef24cad8:   jne    0x00007f76ef24d356
   0.24%       0x00007f76ef24cade:   mov    %rbp,0xa0(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
   0.01%       0x00007f76ef24cae6:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f76ef24d37d
                                                                         ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
   0.00%       0x00007f76ef24caea:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f76ef24d3a0
                                                                         ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
   0.01%       0x00007f76ef24caee:   mov    0xc(%r8),%r9d                ; implicit exception: dispatches to 0x00007f76ef24d3c3
   0.24%       0x00007f76ef24caf2:   cmp    $0xa,%r10d
          ╭    0x00007f76ef24caf6:   jb     0x00007f76ef24d330           ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
   0.02%  │    0x00007f76ef24cafc:   nopl   0x0(%rax)
   0.00%  │    0x00007f76ef24cb00:   cmp    $0xa,%r11d
          │╭   0x00007f76ef24cb04:   jb     0x00007f76ef24d330           ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@5 (line 225)
   0.00%  ││   0x00007f76ef24cb0a:   cmp    $0xa,%r9d
          ││╭  0x00007f76ef24cb0e:   jb     0x00007f76ef24d330           ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.23%  │││  0x00007f76ef24cb14:   mov    %r8,0x8(%rsp)
   0.14%  │││  0x00007f76ef24cb19:   mov    0x48(%rcx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@239 (line 232)
   0.01%  │││  0x00007f76ef24cb1d:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@462 (line 234)
   0.01%  │││  0x00007f76ef24cb21:   mov    0x50(%rdx),%r9               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@373 (line 233)
   0.23%  │││  0x00007f76ef24cb25:   mov    0x48(%rdx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@294 (line 232)
   0.06%  │││  0x00007f76ef24cb29:   mov    0x40(%rdx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@225 (line 231)
   0.04%  │││  0x00007f76ef24cb2d:   mov    0x38(%rdx),%rsi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@166 (line 230)
   0.02%  │││  0x00007f76ef24cb31:   mov    0x30(%rdx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@117 (line 229)
   0.25%  │││  0x00007f76ef24cb35:   mov    0x28(%rdx),%rbp              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@76 (line 228)
   0.04%  │││  0x00007f76ef24cb39:   mov    0x20(%rdx),%r13              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@43 (line 227)
   0.07%  │││  0x00007f76ef24cb3d:   mov    0x18(%rdx),%r14              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@18 (line 226)
   0.11%  │││  0x00007f76ef24cb41:   mov    0x10(%rdx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
   0.12%  │││  0x00007f76ef24cb45:   mov    0x58(%rcx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@387 (line 234)
   0.01%  │││  0x00007f76ef24cb49:   mov    %r11,0x90(%rsp)
   0.02%  │││  0x00007f76ef24cb51:   mov    0x50(%rcx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@308 (line 233)
   0.21%  │││  0x00007f76ef24cb55:   mov    %r9,0x88(%rsp)
   0.03%  │││  0x00007f76ef24cb5d:   mov    0x10(%rcx),%r9               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@5 (line 225)
   0.04%  │││  0x00007f76ef24cb61:   mov    %rbx,0x80(%rsp)
   0.09%  │││  0x00007f76ef24cb69:   mov    0x18(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@14 (line 226)
   0.14%  │││  0x00007f76ef24cb6d:   mov    %rbx,0x78(%rsp)
   0.42%  │││  0x00007f76ef24cb72:   mov    0x20(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@31 (line 227)
   0.01%  │││  0x00007f76ef24cb76:   mov    %rbx,0x70(%rsp)
   0.23%  │││  0x00007f76ef24cb7b:   mov    0x28(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@56 (line 228)
   0.02%  │││  0x00007f76ef24cb7f:   mov    %rbx,0x68(%rsp)
   0.60%  │││  0x00007f76ef24cb84:   mov    0x30(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@89 (line 229)
   0.00%  │││  0x00007f76ef24cb88:   mov    %rbx,0x60(%rsp)
   0.25%  │││  0x00007f76ef24cb8d:   mov    0x38(%rcx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@130 (line 230)
   0.01%  │││  0x00007f76ef24cb91:   mov    0x40(%rcx),%rcx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@180 (line 231)
   0.08%  │││  0x00007f76ef24cb95:   mov    %rdi,0x58(%rsp)
   0.01%  │││  0x00007f76ef24cb9a:   mov    %rdx,%rdi
   0.18%  │││  0x00007f76ef24cb9d:   imul   %r9,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@6 (line 225)
   0.01%  │││  0x00007f76ef24cba1:   mov    %rdi,0x50(%rsp)
   0.14%  │││  0x00007f76ef24cba6:   mov    %r14,%rdi
   0.00%  │││  0x00007f76ef24cba9:   imul   %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@477 (line 235)
   0.15%  │││  0x00007f76ef24cbad:   mov    %r9,0x48(%rsp)
   0.04%  │││  0x00007f76ef24cbb2:   mov    %r13,%r9
   0.08%  │││  0x00007f76ef24cbb5:   imul   %r11,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@485 (line 235)
          │││                                                            ;   {no_reloc}
   0.01%  │││  0x00007f76ef24cbb9:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@486 (line 235)
   0.11%  │││  0x00007f76ef24cbbc:   mov    %r10,%r9
   0.02%  │││  0x00007f76ef24cbbf:   imul   %rbp,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@494 (line 235)
   0.09%  │││  0x00007f76ef24cbc3:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@495 (line 235)
   0.00%  │││  0x00007f76ef24cbc6:   mov    %rax,%r9
   0.14%  │││  0x00007f76ef24cbc9:   imul   %rcx,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@503 (line 235)
   0.03%  │││  0x00007f76ef24cbcd:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@504 (line 235)
   0.12%  │││  0x00007f76ef24cbd0:   mov    %rsi,%r9
          │││  0x00007f76ef24cbd3:   imul   %rbx,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@511 (line 235)
   0.20%  │││  0x00007f76ef24cbd7:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@512 (line 235)
   0.03%  │││  0x00007f76ef24cbda:   mov    0x58(%rsp),%r9
   0.12%  │││  0x00007f76ef24cbdf:   imul   0x60(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@520 (line 235)
   0.21%  │││  0x00007f76ef24cbe5:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@521 (line 235)
   0.17%  │││  0x00007f76ef24cbe8:   mov    0x80(%rsp),%r9
   0.01%  │││  0x00007f76ef24cbf0:   imul   0x68(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@529 (line 235)
   0.05%  │││  0x00007f76ef24cbf6:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@530 (line 235)
   0.08%  │││  0x00007f76ef24cbf9:   mov    0x88(%rsp),%r9
   0.11%  │││  0x00007f76ef24cc01:   imul   0x70(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@538 (line 235)
   0.02%  │││  0x00007f76ef24cc07:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@539 (line 235)
   0.16%  │││  0x00007f76ef24cc0a:   mov    0x90(%rsp),%r9
   0.00%  │││  0x00007f76ef24cc12:   imul   0x78(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@547 (line 235)
   0.09%  │││  0x00007f76ef24cc18:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@548 (line 235)
   0.12%  │││  0x00007f76ef24cc1b:   mov    %rdx,%r9
   0.07%  │││  0x00007f76ef24cc1e:   imul   %r8,%r9                      ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@388 (line 234)
          │││  0x00007f76ef24cc22:   mov    %rdi,0x40(%rsp)
   0.29%  │││  0x00007f76ef24cc27:   mov    %r14,%rdi
   0.00%  │││  0x00007f76ef24cc2a:   imul   %r11,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@396 (line 234)
   0.03%  │││  0x00007f76ef24cc2e:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@397 (line 234)
          │││  0x00007f76ef24cc31:   mov    %r10,%rdi
   0.19%  │││  0x00007f76ef24cc34:   imul   %r13,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@405 (line 234)
          │││  0x00007f76ef24cc38:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@406 (line 234)
   0.04%  │││  0x00007f76ef24cc3b:   mov    %rbp,%rdi
   0.00%  │││  0x00007f76ef24cc3e:   imul   %rcx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@414 (line 234)
   0.19%  │││  0x00007f76ef24cc42:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@415 (line 234)
   0.01%  │││  0x00007f76ef24cc45:   mov    %rax,%rdi
   0.06%  │││  0x00007f76ef24cc48:   imul   %rbx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@422 (line 234)
          │││  0x00007f76ef24cc4c:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@423 (line 234)
   0.24%  │││  0x00007f76ef24cc4f:   mov    %rsi,%rdi
          │││  0x00007f76ef24cc52:   imul   0x60(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@430 (line 234)
   0.05%  │││  0x00007f76ef24cc58:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@431 (line 234)
   0.00%  │││  0x00007f76ef24cc5b:   mov    0x58(%rsp),%rdi
   0.24%  │││  0x00007f76ef24cc60:   imul   0x68(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@439 (line 234)
          │││  0x00007f76ef24cc66:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@440 (line 234)
   0.04%  │││  0x00007f76ef24cc69:   mov    0x80(%rsp),%rdi
   0.00%  │││  0x00007f76ef24cc71:   imul   0x70(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@448 (line 234)
   0.18%  │││  0x00007f76ef24cc77:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@449 (line 234)
   0.03%  │││  0x00007f76ef24cc7a:   mov    0x88(%rsp),%rdi
   0.05%  │││  0x00007f76ef24cc82:   imul   0x78(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@457 (line 234)
          │││  0x00007f76ef24cc88:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@458 (line 234)
   0.26%  │││  0x00007f76ef24cc8b:   mov    0x90(%rsp),%rdi
   0.00%  │││  0x00007f76ef24cc93:   imul   0x48(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@466 (line 234)
   0.02%  │││  0x00007f76ef24cc99:   add    %rdi,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@467 (line 234)
   0.06%  │││  0x00007f76ef24cc9c:   mov    0x90(%rsp),%rdi
   0.15%  │││  0x00007f76ef24cca4:   imul   %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@896 (line 243)
   0.00%  │││  0x00007f76ef24cca8:   imul   $0x13,%rdi,%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@39 (line 74)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.22%  │││  0x00007f76ef24ccac:   mov    %r8,0x38(%rsp)
          │││  0x00007f76ef24ccb1:   mov    %rdi,%r8
   0.10%  │││  0x00007f76ef24ccb4:   sar    $0x15,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@61 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││                                                            ;   {no_reloc}
   0.14%  │││  0x00007f76ef24ccb8:   add    %r8,%r9                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@62 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.15%  │││  0x00007f76ef24ccbb:   mov    %rdx,%r8
          │││  0x00007f76ef24ccbe:   imul   %r11,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@309 (line 233)
   0.11%  │││  0x00007f76ef24ccc2:   mov    %rdx,0x30(%rsp)
   0.00%  │││  0x00007f76ef24ccc7:   mov    %r10,%rdx
   0.15%  │││  0x00007f76ef24ccca:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@317 (line 233)
          │││  0x00007f76ef24ccce:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@318 (line 233)
   0.10%  │││  0x00007f76ef24ccd1:   mov    %r13,%rdx
          │││  0x00007f76ef24ccd4:   imul   %rcx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@326 (line 233)
   0.14%  │││  0x00007f76ef24ccd8:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@327 (line 233)
          │││  0x00007f76ef24ccdb:   mov    %rbp,%rdx
   0.09%  │││  0x00007f76ef24ccde:   imul   %rbx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@334 (line 233)
          │││  0x00007f76ef24cce2:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@335 (line 233)
   0.14%  │││  0x00007f76ef24cce5:   mov    %rax,%rdx
   0.00%  │││  0x00007f76ef24cce8:   imul   0x60(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@342 (line 233)
   0.11%  │││  0x00007f76ef24ccee:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@343 (line 233)
   0.00%  │││  0x00007f76ef24ccf1:   mov    %rsi,%rdx
   0.15%  │││  0x00007f76ef24ccf4:   imul   0x68(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@350 (line 233)
   0.00%  │││  0x00007f76ef24ccfa:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@351 (line 233)
   0.11%  │││  0x00007f76ef24ccfd:   mov    0x58(%rsp),%rdx
          │││  0x00007f76ef24cd02:   imul   0x70(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@359 (line 233)
   0.15%  │││  0x00007f76ef24cd08:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@360 (line 233)
          │││  0x00007f76ef24cd0b:   mov    0x80(%rsp),%rdx
   0.11%  │││  0x00007f76ef24cd13:   imul   0x78(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@368 (line 233)
   0.00%  │││  0x00007f76ef24cd19:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@369 (line 233)
   0.15%  │││  0x00007f76ef24cd1c:   mov    0x88(%rsp),%rdx
          │││  0x00007f76ef24cd24:   imul   0x48(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@377 (line 233)
   0.10%  │││  0x00007f76ef24cd2a:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@378 (line 233)
   0.07%  │││  0x00007f76ef24cd2d:   mov    0x88(%rsp),%rdx
   0.08%  │││  0x00007f76ef24cd35:   imul   0x38(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@875 (line 242)
          │││  0x00007f76ef24cd3b:   mov    %rbx,0x28(%rsp)
   0.11%  │││  0x00007f76ef24cd40:   mov    0x90(%rsp),%rbx
   0.06%  │││  0x00007f76ef24cd48:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@884 (line 242)
   0.09%  │││  0x00007f76ef24cd4c:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@885 (line 242)
          │││  0x00007f76ef24cd4f:   imul   $0x13,%rdx,%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@8 (line 70)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   1.19%  │││  0x00007f76ef24cd53:   mov    %rbx,%rdx
          │││  0x00007f76ef24cd56:   sar    $0x15,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@30 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24cd5a:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@31 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007f76ef24cd5d:   shl    $0x5,%rdi                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@47 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.48%  │││  0x00007f76ef24cd61:   and    $0x3ffffff,%rdi              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@51 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f76ef24cd68:   add    %rdi,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@52 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f76ef24cd6b:   lea    0x2000000(%r8),%rdi          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@70 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f76ef24cd72:   mov    %rdi,%rdx
   0.68%  │││  0x00007f76ef24cd75:   sar    $0x1a,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@73 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24cd79:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@90 (line 80)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f76ef24cd7c:   lea    0x2000000(%r9),%rdx          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@98 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007f76ef24cd83:   mov    %r9,0x20(%rsp)
   0.52%  │││  0x00007f76ef24cd88:   mov    %rdx,%r9
          │││  0x00007f76ef24cd8b:   sar    $0x1a,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@101 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f76ef24cd8f:   add    0x40(%rsp),%r9               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@118 (line 84)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f76ef24cd94:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@126 (line 86)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.74%  │││  0x00007f76ef24cd98:   mov    %rdx,0x40(%rsp)
          │││  0x00007f76ef24cd9d:   mov    %r9,%rdx
          │││  0x00007f76ef24cda0:   shl    $0x5,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@133 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.27%  │││  0x00007f76ef24cda4:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@137 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.29%  │││  0x00007f76ef24cdab:   add    0x50(%rsp),%rdx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@138 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.26%  │││  0x00007f76ef24cdb0:   mov    %r8,0x50(%rsp)               ;   {no_reloc}
          │││  0x00007f76ef24cdb5:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@340 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.23%  │││  0x00007f76ef24cdbc:   mov    %rdi,0x18(%rsp)
          │││  0x00007f76ef24cdc1:   mov    %r8,%rdi
          │││  0x00007f76ef24cdc4:   and    $0xfffffffffc000000,%rdi     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@351 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.21%  │││  0x00007f76ef24cdcb:   sub    %rdi,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@352 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.23%  │││  0x00007f76ef24cdce:   mov    0x8(%rsp),%rdi
          │││  0x00007f76ef24cdd3:   mov    %rdx,0x10(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.59%  │││  0x00007f76ef24cdd7:   mov    0x30(%rsp),%rdx
          │││  0x00007f76ef24cddc:   imul   0x78(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@15 (line 226)
   0.00%  │││  0x00007f76ef24cde2:   mov    %rbx,0x10(%rsp)
          │││  0x00007f76ef24cde7:   mov    %r14,%rbx
   0.23%  │││  0x00007f76ef24cdea:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@22 (line 226)
          │││  0x00007f76ef24cdf0:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@23 (line 226)
          │││  0x00007f76ef24cdf3:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@146 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f76ef24cdf7:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@147 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.26%  │││  0x00007f76ef24cdfa:   mov    %r13,%r9
          │││  0x00007f76ef24cdfd:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@558 (line 236)
          │││  0x00007f76ef24ce03:   mov    %rbp,%rbx
          │││  0x00007f76ef24ce06:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@566 (line 236)
   0.23%  │││  0x00007f76ef24ce0a:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@567 (line 236)
          │││  0x00007f76ef24ce0d:   mov    %r10,%rbx
          │││  0x00007f76ef24ce10:   imul   %rax,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@575 (line 236)
          │││  0x00007f76ef24ce14:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@576 (line 236)
   0.22%  │││  0x00007f76ef24ce17:   mov    %rsi,%rbx
          │││  0x00007f76ef24ce1a:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@584 (line 236)
          │││  0x00007f76ef24ce1e:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@585 (line 236)
          │││  0x00007f76ef24ce21:   mov    0x58(%rsp),%rbx
   0.23%  │││  0x00007f76ef24ce26:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@593 (line 236)
          │││  0x00007f76ef24ce2c:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@594 (line 236)
          │││  0x00007f76ef24ce2f:   mov    0x80(%rsp),%rbx
          │││  0x00007f76ef24ce37:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@602 (line 236)
   0.24%  │││  0x00007f76ef24ce3d:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@603 (line 236)
          │││  0x00007f76ef24ce40:   mov    0x88(%rsp),%rbx
          │││  0x00007f76ef24ce48:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@611 (line 236)
          │││  0x00007f76ef24ce4e:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@612 (line 236)
   0.22%  │││  0x00007f76ef24ce51:   mov    0x90(%rsp),%rbx
          │││  0x00007f76ef24ce59:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@620 (line 236)
          │││  0x00007f76ef24ce5f:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@621 (line 236)
   0.00%  │││  0x00007f76ef24ce62:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@155 (line 90)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.29%  │││  0x00007f76ef24ce66:   mov    %r9,%rbx
          │││  0x00007f76ef24ce69:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@163 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f76ef24ce6d:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@167 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f76ef24ce74:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@168 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.27%  │││  0x00007f76ef24ce77:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@343 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f76ef24ce7b:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@358 (line 116)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f76ef24ce7e:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@366 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24ce85:   mov    %r8,%rbx
   0.27%  │││  0x00007f76ef24ce88:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@378 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f76ef24ce8f:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@379 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f76ef24ce92:   mov    %rdx,0x18(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@593 (line 151)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f76ef24ce96:   mov    0x30(%rsp),%rdx
   0.21%  │││  0x00007f76ef24ce9b:   imul   0x70(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@32 (line 227)
          │││  0x00007f76ef24cea1:   mov    %r14,%rbx
          │││  0x00007f76ef24cea4:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@39 (line 227)
   0.01%  │││  0x00007f76ef24ceaa:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@40 (line 227)
   0.24%  │││  0x00007f76ef24cead:   mov    %r13,%rbx
          │││  0x00007f76ef24ceb0:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@47 (line 227)
          │││                                                            ;   {no_reloc}
          │││  0x00007f76ef24ceb6:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@48 (line 227)
   0.02%  │││  0x00007f76ef24ceb9:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@177 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f76ef24cebd:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@178 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24cec0:   mov    %rbp,%r9
          │││  0x00007f76ef24cec3:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@631 (line 237)
   0.02%  │││  0x00007f76ef24cec9:   mov    %rax,%rbx
   0.24%  │││  0x00007f76ef24cecc:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@639 (line 237)
          │││  0x00007f76ef24ced0:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@640 (line 237)
   0.00%  │││  0x00007f76ef24ced3:   mov    %r10,%rbx
   0.02%  │││  0x00007f76ef24ced6:   imul   %rsi,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@648 (line 237)
   0.24%  │││  0x00007f76ef24ceda:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@649 (line 237)
          │││  0x00007f76ef24cedd:   mov    0x58(%rsp),%rbx
          │││  0x00007f76ef24cee2:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@658 (line 237)
   0.02%  │││  0x00007f76ef24cee6:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@659 (line 237)
   0.26%  │││  0x00007f76ef24cee9:   mov    0x80(%rsp),%rbx
   0.00%  │││  0x00007f76ef24cef1:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@667 (line 237)
          │││  0x00007f76ef24cef7:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@668 (line 237)
   0.02%  │││  0x00007f76ef24cefa:   mov    0x88(%rsp),%rbx
   0.21%  │││  0x00007f76ef24cf02:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@676 (line 237)
   0.00%  │││  0x00007f76ef24cf08:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@677 (line 237)
          │││  0x00007f76ef24cf0b:   mov    0x90(%rsp),%rbx
   0.02%  │││  0x00007f76ef24cf13:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@685 (line 237)
   0.23%  │││  0x00007f76ef24cf19:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@686 (line 237)
          │││  0x00007f76ef24cf1c:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@186 (line 94)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24cf20:   mov    %r9,%rbx
   0.01%  │││  0x00007f76ef24cf23:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@194 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.22%  │││  0x00007f76ef24cf27:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@198 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f76ef24cf2e:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@199 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f76ef24cf31:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@369 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24cf35:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@386 (line 120)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.74%  │││  0x00007f76ef24cf38:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@394 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   4.16%  │││  0x00007f76ef24cf3f:   mov    %r8,%rbx
   0.00%  │││  0x00007f76ef24cf42:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@406 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.17%  │││  0x00007f76ef24cf49:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@407 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.27%  │││  0x00007f76ef24cf4c:   mov    %rdx,0x20(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@598 (line 152)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.33%  │││  0x00007f76ef24cf50:   mov    0x30(%rsp),%rdx
          │││  0x00007f76ef24cf55:   imul   0x68(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@57 (line 228)
   0.01%  │││  0x00007f76ef24cf5b:   mov    %r14,%rbx
   0.06%  │││  0x00007f76ef24cf5e:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@64 (line 228)
   0.14%  │││  0x00007f76ef24cf64:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@65 (line 228)
   0.05%  │││  0x00007f76ef24cf67:   mov    %r13,%rbx
   0.01%  │││  0x00007f76ef24cf6a:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@72 (line 228)
   0.06%  │││  0x00007f76ef24cf70:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@73 (line 228)
   0.17%  │││  0x00007f76ef24cf73:   mov    %rbp,%rbx
          │││  0x00007f76ef24cf76:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@80 (line 228)
   0.01%  │││  0x00007f76ef24cf7c:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@81 (line 228)
   0.08%  │││  0x00007f76ef24cf7f:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@208 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.18%  │││  0x00007f76ef24cf83:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@209 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24cf86:   mov    %rax,%r9
   0.01%  │││  0x00007f76ef24cf89:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@696 (line 238)
   0.07%  │││  0x00007f76ef24cf8f:   mov    %rsi,%rbx
   0.16%  │││  0x00007f76ef24cf92:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@704 (line 238)
   0.01%  │││  0x00007f76ef24cf96:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@705 (line 238)
   0.03%  │││  0x00007f76ef24cf99:   mov    %r10,%rbx
   0.08%  │││  0x00007f76ef24cf9c:   imul   0x58(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@714 (line 238)
   0.18%  │││  0x00007f76ef24cfa2:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@715 (line 238)
   0.01%  │││  0x00007f76ef24cfa5:   mov    0x80(%rsp),%rbx
   0.02%  │││  0x00007f76ef24cfad:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@724 (line 238)
   0.06%  │││  0x00007f76ef24cfb1:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@725 (line 238)
          │││                                                            ;   {no_reloc}
   0.17%  │││  0x00007f76ef24cfb4:   mov    0x88(%rsp),%rbx
   0.01%  │││  0x00007f76ef24cfbc:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@733 (line 238)
   0.01%  │││  0x00007f76ef24cfc2:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@734 (line 238)
   0.06%  │││  0x00007f76ef24cfc5:   mov    0x90(%rsp),%rbx
   0.20%  │││  0x00007f76ef24cfcd:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@742 (line 238)
   0.01%  │││  0x00007f76ef24cfd3:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@743 (line 238)
   0.01%  │││  0x00007f76ef24cfd6:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@217 (line 98)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.14%  │││  0x00007f76ef24cfda:   mov    %r9,%rbx
   0.18%  │││  0x00007f76ef24cfdd:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@225 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24cfe1:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@229 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.03%  │││  0x00007f76ef24cfe8:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@230 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.14%  │││  0x00007f76ef24cfeb:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@397 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.14%  │││  0x00007f76ef24cfef:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@414 (line 124)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f76ef24cff2:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@422 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.33%  │││  0x00007f76ef24cff9:   mov    %r8,%rbx
   0.09%  │││  0x00007f76ef24cffc:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@434 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.12%  │││  0x00007f76ef24d003:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@435 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d006:   mov    %rdx,0x28(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@603 (line 153)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.11%  │││  0x00007f76ef24d00a:   mov    0x30(%rsp),%rdx
   0.04%  │││  0x00007f76ef24d00f:   imul   0x60(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@90 (line 229)
   0.13%  │││  0x00007f76ef24d015:   mov    %r14,%rbx
          │││  0x00007f76ef24d018:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@97 (line 229)
   0.06%  │││  0x00007f76ef24d01e:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@98 (line 229)
   0.03%  │││  0x00007f76ef24d021:   mov    %r13,%rbx
   0.17%  │││  0x00007f76ef24d024:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@105 (line 229)
          │││  0x00007f76ef24d02a:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@106 (line 229)
   0.04%  │││  0x00007f76ef24d02d:   mov    %rbp,%rbx
   0.03%  │││  0x00007f76ef24d030:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@113 (line 229)
   0.14%  │││  0x00007f76ef24d036:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@114 (line 229)
          │││  0x00007f76ef24d039:   mov    %rax,%rbx
   0.07%  │││  0x00007f76ef24d03c:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@121 (line 229)
   0.04%  │││  0x00007f76ef24d042:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@122 (line 229)
   0.17%  │││  0x00007f76ef24d045:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@239 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f76ef24d049:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@240 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f76ef24d04c:   mov    %rsi,%r9
   0.05%  │││  0x00007f76ef24d04f:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@753 (line 239)
   0.15%  │││  0x00007f76ef24d055:   mov    0x58(%rsp),%rbx
   0.00%  │││  0x00007f76ef24d05a:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@762 (line 239)
   0.05%  │││  0x00007f76ef24d05e:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@763 (line 239)
   0.05%  │││  0x00007f76ef24d061:   mov    %r10,%rbx
   0.16%  │││  0x00007f76ef24d064:   imul   0x80(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@772 (line 239)
   0.00%  │││  0x00007f76ef24d06d:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@773 (line 239)
   0.04%  │││  0x00007f76ef24d070:   mov    0x88(%rsp),%rbx
   0.04%  │││  0x00007f76ef24d078:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@782 (line 239)
   0.15%  │││  0x00007f76ef24d07c:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@783 (line 239)
   0.00%  │││  0x00007f76ef24d07f:   mov    0x90(%rsp),%rbx
   0.06%  │││  0x00007f76ef24d087:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@791 (line 239)
   0.03%  │││  0x00007f76ef24d08d:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@792 (line 239)
   0.17%  │││  0x00007f76ef24d090:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@248 (line 102)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f76ef24d094:   mov    %r9,%rbx
   0.06%  │││  0x00007f76ef24d097:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@256 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007f76ef24d09b:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@260 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.16%  │││  0x00007f76ef24d0a2:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@261 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f76ef24d0a5:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@425 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f76ef24d0a9:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@442 (line 128)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.08%  │││  0x00007f76ef24d0ac:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@450 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││                                                            ;   {no_reloc}
   0.42%  │││  0x00007f76ef24d0b3:   mov    %r8,%rbx
   0.01%  │││  0x00007f76ef24d0b6:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@462 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f76ef24d0bd:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@463 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d0c0:   mov    %rdx,0x30(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@608 (line 154)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f76ef24d0c4:   mov    0x30(%rsp),%rdx
   0.01%  │││  0x00007f76ef24d0c9:   imul   0x28(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@131 (line 230)
   0.05%  │││  0x00007f76ef24d0cf:   mov    %r14,%rbx
   0.02%  │││  0x00007f76ef24d0d2:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@138 (line 230)
   0.15%  │││  0x00007f76ef24d0d8:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@139 (line 230)
   0.00%  │││  0x00007f76ef24d0db:   mov    %r13,%rbx
   0.06%  │││  0x00007f76ef24d0de:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@146 (line 230)
   0.02%  │││  0x00007f76ef24d0e4:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@147 (line 230)
   0.16%  │││  0x00007f76ef24d0e7:   mov    %rbp,%rbx
   0.00%  │││  0x00007f76ef24d0ea:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@154 (line 230)
   0.05%  │││  0x00007f76ef24d0f0:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@155 (line 230)
   0.03%  │││  0x00007f76ef24d0f3:   mov    %rax,%rbx
   0.17%  │││  0x00007f76ef24d0f6:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@162 (line 230)
   0.01%  │││  0x00007f76ef24d0fc:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@163 (line 230)
   0.05%  │││  0x00007f76ef24d0ff:   mov    %rsi,%rbx
   0.02%  │││  0x00007f76ef24d102:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@170 (line 230)
   0.17%  │││  0x00007f76ef24d108:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@171 (line 230)
   0.00%  │││  0x00007f76ef24d10b:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@270 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007f76ef24d10f:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@271 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f76ef24d112:   mov    0x58(%rsp),%r9
   0.16%  │││  0x00007f76ef24d117:   imul   0x38(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@803 (line 240)
   0.01%  │││  0x00007f76ef24d11d:   mov    0x80(%rsp),%rbx
   0.06%  │││  0x00007f76ef24d125:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@812 (line 240)
   0.03%  │││  0x00007f76ef24d129:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@813 (line 240)
   0.17%  │││  0x00007f76ef24d12c:   mov    %r10,%rbx
   0.00%  │││  0x00007f76ef24d12f:   imul   0x88(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@822 (line 240)
   0.04%  │││  0x00007f76ef24d138:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@823 (line 240)
   0.02%  │││  0x00007f76ef24d13b:   mov    0x90(%rsp),%rbx
   0.17%  │││  0x00007f76ef24d143:   imul   %rcx,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@832 (line 240)
   0.00%  │││  0x00007f76ef24d147:   add    %rbx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@833 (line 240)
   0.04%  │││  0x00007f76ef24d14a:   imul   $0x13,%r9,%r9                ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@279 (line 106)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f76ef24d14e:   mov    %r9,%rbx
   0.19%  │││  0x00007f76ef24d151:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@287 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f76ef24d155:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@291 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007f76ef24d15c:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@292 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.04%  │││  0x00007f76ef24d15f:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@453 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.23%  │││  0x00007f76ef24d163:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@470 (line 132)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f76ef24d166:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@478 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f76ef24d16d:   mov    %r8,%rbx
   0.02%  │││  0x00007f76ef24d170:   and    $0xfffffffffc000000,%rbx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@490 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.18%  │││  0x00007f76ef24d177:   sub    %rbx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@491 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d17a:   mov    %rdx,0x38(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@613 (line 155)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.07%  │││  0x00007f76ef24d17e:   mov    0x30(%rsp),%rdx
   0.01%  │││  0x00007f76ef24d183:   imul   %rcx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@181 (line 231)
   0.20%  │││  0x00007f76ef24d187:   mov    %r14,%rbx
   0.01%  │││  0x00007f76ef24d18a:   imul   0x28(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@188 (line 231)
   0.06%  │││  0x00007f76ef24d190:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@189 (line 231)
   0.01%  │││  0x00007f76ef24d193:   mov    %r13,%rbx
   0.17%  │││  0x00007f76ef24d196:   imul   0x60(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@196 (line 231)
          │││  0x00007f76ef24d19c:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@197 (line 231)
   0.05%  │││  0x00007f76ef24d19f:   mov    %rbp,%rbx
   0.02%  │││  0x00007f76ef24d1a2:   imul   0x68(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@204 (line 231)
   0.21%  │││  0x00007f76ef24d1a8:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@205 (line 231)
   0.00%  │││  0x00007f76ef24d1ab:   mov    %rax,%rbx
   0.05%  │││  0x00007f76ef24d1ae:   imul   0x70(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@212 (line 231)
          │││                                                            ;   {no_reloc}
   0.01%  │││  0x00007f76ef24d1b4:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@213 (line 231)
   0.17%  │││  0x00007f76ef24d1b7:   mov    %rsi,%rbx
          │││  0x00007f76ef24d1ba:   imul   0x78(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@220 (line 231)
   0.06%  │││  0x00007f76ef24d1c0:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@221 (line 231)
   0.00%  │││  0x00007f76ef24d1c3:   mov    0x58(%rsp),%rbx
   0.19%  │││  0x00007f76ef24d1c8:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@229 (line 231)
   0.00%  │││  0x00007f76ef24d1ce:   add    %rbx,%rdx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@230 (line 231)
   0.07%  │││  0x00007f76ef24d1d1:   sar    $0x15,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@301 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d1d5:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@302 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f76ef24d1d8:   mov    0x80(%rsp),%rbx
   0.00%  │││  0x00007f76ef24d1e0:   imul   0x38(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@844 (line 241)
   0.07%  │││  0x00007f76ef24d1e6:   mov    0x88(%rsp),%r9
   0.01%  │││  0x00007f76ef24d1ee:   imul   %r11,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@853 (line 241)
   0.20%  │││  0x00007f76ef24d1f2:   add    %r9,%rbx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@854 (line 241)
          │││  0x00007f76ef24d1f5:   mov    %r10,%r11
   0.06%  │││  0x00007f76ef24d1f8:   imul   0x90(%rsp),%r11              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@863 (line 241)
   0.01%  │││  0x00007f76ef24d201:   add    %r11,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@864 (line 241)
   0.15%  │││  0x00007f76ef24d204:   imul   $0x13,%rbx,%r11              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@310 (line 110)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f76ef24d208:   mov    %r11,%r9
   0.06%  │││  0x00007f76ef24d20b:   shl    $0x5,%r9                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@318 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f76ef24d20f:   and    $0x3ffffff,%r9               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@322 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.17%  │││  0x00007f76ef24d216:   add    %r9,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@323 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f76ef24d219:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@481 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.06%  │││  0x00007f76ef24d21d:   add    %r8,%rdx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@498 (line 136)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f76ef24d220:   lea    0x2000000(%rdx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@506 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.21%  │││  0x00007f76ef24d227:   mov    %r8,%r9
   0.00%  │││  0x00007f76ef24d22a:   and    $0xfffffffffc000000,%r9      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@518 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007f76ef24d231:   sub    %r9,%rdx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@519 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d234:   mov    %rdx,0x40(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@619 (line 156)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.16%  │││  0x00007f76ef24d238:   imul   0x30(%rsp),%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@240 (line 232)
   0.01%  │││  0x00007f76ef24d23e:   imul   %rcx,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@248 (line 232)
   0.04%  │││  0x00007f76ef24d242:   add    %r14,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@249 (line 232)
   0.01%  │││  0x00007f76ef24d245:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@256 (line 232)
   0.17%  │││  0x00007f76ef24d24b:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@257 (line 232)
          │││  0x00007f76ef24d24e:   imul   0x60(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@264 (line 232)
   0.07%  │││  0x00007f76ef24d254:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@265 (line 232)
   0.01%  │││  0x00007f76ef24d257:   imul   0x68(%rsp),%rax              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@272 (line 232)
   0.17%  │││  0x00007f76ef24d25d:   add    %rax,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@273 (line 232)
   0.01%  │││  0x00007f76ef24d260:   imul   0x70(%rsp),%rsi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@280 (line 232)
   0.06%  │││  0x00007f76ef24d266:   add    %rsi,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@281 (line 232)
   0.01%  │││  0x00007f76ef24d269:   mov    0x58(%rsp),%r9
   0.19%  │││  0x00007f76ef24d26e:   imul   0x78(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@289 (line 232)
   0.01%  │││  0x00007f76ef24d274:   add    %r9,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@290 (line 232)
   0.05%  │││  0x00007f76ef24d277:   mov    0x80(%rsp),%rbx
   0.01%  │││  0x00007f76ef24d27f:   imul   0x48(%rsp),%rbx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@298 (line 232)
   0.20%  │││  0x00007f76ef24d285:   add    %rbx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@299 (line 232)
   0.01%  │││  0x00007f76ef24d288:   mov    0x10(%rsp),%rbx
   0.04%  │││  0x00007f76ef24d28d:   shl    $0x5,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@16 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d291:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@20 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.16%  │││  0x00007f76ef24d298:   add    %rbx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@21 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││  0x00007f76ef24d29b:   sar    $0x15,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@332 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007f76ef24d29f:   add    %r11,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@333 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d2a2:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@509 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.17%  │││  0x00007f76ef24d2a6:   add    %r8,%r10                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@526 (line 140)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d2a9:   lea    0x2000000(%r10),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@534 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
          │││                                                            ;   {no_reloc}
   0.05%  │││  0x00007f76ef24d2b0:   mov    %r11,%r8
   0.01%  │││  0x00007f76ef24d2b3:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@546 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.21%  │││  0x00007f76ef24d2ba:   sub    %r8,%r10                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@547 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f76ef24d2bd:   mov    %r10,0x48(%rdi)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@625 (line 157)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.05%  │││  0x00007f76ef24d2c1:   mov    0x18(%rsp),%r10
   0.01%  │││  0x00007f76ef24d2c6:   and    $0xfffffffffc000000,%r10     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@82 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.18%  │││  0x00007f76ef24d2cd:   mov    0x50(%rsp),%r8
   0.00%  │││  0x00007f76ef24d2d2:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@83 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.07%  │││  0x00007f76ef24d2d5:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@537 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d2d9:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@554 (line 144)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.18%  │││  0x00007f76ef24d2dc:   lea    0x2000000(%r8),%r10          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@562 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d2e3:   mov    %r10,%r11
   0.06%  │││  0x00007f76ef24d2e6:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@574 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.02%  │││  0x00007f76ef24d2ed:   sub    %r11,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@575 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f76ef24d2f0:   mov    %r8,0x50(%rdi)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@631 (line 158)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d2f4:   mov    0x40(%rsp),%rdx
   0.06%  │││  0x00007f76ef24d2f9:   and    $0xfffffffffc000000,%rdx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@110 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d300:   mov    0x20(%rsp),%r9
   0.21%  │││  0x00007f76ef24d305:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@111 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.01%  │││  0x00007f76ef24d308:   sar    $0x1a,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@565 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.07%  │││  0x00007f76ef24d30c:   add    %r10,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@582 (line 148)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.00%  │││  0x00007f76ef24d30f:   mov    %r9,0x58(%rdi)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@637 (line 159)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@939 (line 245)
   0.19%  │││  0x00007f76ef24d313:   mov    0xa0(%rsp),%rbp
   0.00%  │││  0x00007f76ef24d31b:   add    $0xa8,%rsp
   0.05%  │││  0x00007f76ef24d322:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f76ef24d329:   ja     0x00007f76ef24d369
   0.00%  │││  0x00007f76ef24d32f:   ret    
          ↘↘↘  0x00007f76ef24d330:   mov    %r8,%rdi
               0x00007f76ef24d333:   movl   $0xffffffe5,0x484(%r15)      ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - sun.security.util.math.intpoly.IntegerPolynomial25519::mult@2 (line 225)
               0x00007f76ef24d33e:   movq   $0x0,0x490(%r15)
               0x00007f76ef24d349:   call   0x00007f76eec3517a           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop rdi=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::mult@0 (line 225)
                                                                         ;   {runtime_call DeoptimizationBlob}
               0x00007f76ef24d34e:   nopl   0x0(%rax,%rax,1)
               0x00007f76ef24d356:   mov    %rbp,0xa0(%rsp)
....................................................................................................
  47.21%  <total for region 1>

....[Hottest Regions]...............................................................................
  47.21%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1098 
   6.69%        runtime stub  StubRoutines::sha512_implCompressMB 
   5.92%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1183 
   4.47%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.71%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1304 
   2.53%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1183 
   1.62%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1322 
   1.54%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 1058 
   1.45%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 1180 
   1.40%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1168 
   1.37%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1183 
   1.22%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1168 
   0.99%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1168 
   0.96%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1183 
   0.94%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1168 
   0.79%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1124 
   0.78%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1168 
   0.77%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1183 
   0.69%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1168 
   0.59%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1168 
  15.38%  <...other 723 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  47.21%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1098 
  14.89%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1183 
  12.47%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1168 
   6.71%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.47%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.47%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint$Mutable::conditionalSet, version 2, compile id 1180 
   2.75%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1304 
   2.26%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1322 
   2.07%              kernel  [unknown] 
   1.54%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce, version 2, compile id 1058 
   0.79%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1124 
   0.23%                      <unknown> 
   0.18%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1473 
   0.17%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.08%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1413 
   0.06%      jvmci, level 4  java.io.ByteArrayOutputStream::write, version 2, compile id 1464 
   0.06%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::finalReduce, version 4, compile id 1330 
   0.04%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1420 
   0.02%      jvmci, level 4  sun.security.provider.SHA5::implDigest, version 2, compile id 1419 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.50%  <...other 122 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  85.94%      jvmci, level 4
  11.35%        runtime stub
   2.07%              kernel
   0.23%                    
   0.18%           libjvm.so
   0.14%        libc-2.31.so
   0.03%         interpreter
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.01%    perf-2107840.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed448, messageLength = 64)

# Run progress: 50.00% complete, ETA 00:07:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4900.136 us/op
# Warmup Iteration   2: 3216.883 us/op
# Warmup Iteration   3: 3217.282 us/op
# Warmup Iteration   4: 3207.934 us/op
# Warmup Iteration   5: 3212.396 us/op
Iteration   1: 3210.928 us/op
Iteration   2: 3218.546 us/op
Iteration   3: 3216.927 us/op
Iteration   4: 3217.938 us/op
Iteration   5: 3223.754 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  3217.619 ±(99.9%) 17.631 us/op [Average]
  (min, avg, max) = (3210.928, 3217.619, 3223.754), stdev = 4.579
  CI (99.9%): [3199.988, 3235.250] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 346103 total address lines.
Perf output processed (skipped 61.791 seconds):
 Column 1: cycles (50951 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1078 

 <region is too big to display, has 1927 lines, but threshold is 1000>
....................................................................................................
  59.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1104 

 <region is too big to display, has 1325 lines, but threshold is 1000>
....................................................................................................
  13.72%  <total for region 2>

....[Hottest Regions]...............................................................................
  59.73%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1078 
  13.72%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1104 
   2.06%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.70%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1147 
   1.33%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 5, compile id 1277 
   1.29%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1147 
   1.28%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 1054 
   1.19%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1152 
   0.89%      jvmci, level 4  sun.security.ec.point.ProjectivePoint$Mutable::conditionalSet, version 2, compile id 1150 
   0.88%              kernel  [unknown] 
   0.88%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1152 
   0.76%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1152 
   0.73%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1129 
   0.71%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1147 
   0.70%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1152 
   0.62%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1249 
   0.61%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1147 
   0.55%      jvmci, level 4  sun.security.ec.point.ProjectivePoint$Mutable::conditionalSet, version 2, compile id 1150 
   0.49%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1152 
   0.48%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1147 
   9.39%  <...other 517 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.73%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1078 
  13.72%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1104 
   9.16%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1147 
   6.58%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1152 
   2.06%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.99%              kernel  [unknown] 
   1.91%      jvmci, level 4  sun.security.ec.point.ProjectivePoint$Mutable::conditionalSet, version 2, compile id 1150 
   1.35%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 5, compile id 1277 
   1.28%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 1054 
   0.73%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1129 
   0.62%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1249 
   0.14%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1307 
   0.08%                      <unknown> 
   0.07%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1373 
   0.05%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::finalReduce, version 4, compile id 1275 
   0.04%      jvmci, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 1372 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1415 
   0.02%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1377 
   0.02%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::carry, version 4, compile id 1352 
   0.40%  <...other 116 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.50%      jvmci, level 4
   2.06%        runtime stub
   1.99%              kernel
   0.15%           libjvm.so
   0.13%        libc-2.31.so
   0.08%                    
   0.03%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-2107906.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed448, messageLength = 512)

# Run progress: 62.50% complete, ETA 00:05:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4886.545 us/op
# Warmup Iteration   2: 3192.750 us/op
# Warmup Iteration   3: 3230.574 us/op
# Warmup Iteration   4: 3187.921 us/op
# Warmup Iteration   5: 3187.500 us/op
Iteration   1: 3189.772 us/op
Iteration   2: 3188.707 us/op
Iteration   3: 3185.251 us/op
Iteration   4: 3185.574 us/op
Iteration   5: 3194.125 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  3188.686 ±(99.9%) 13.917 us/op [Average]
  (min, avg, max) = (3185.251, 3188.686, 3194.125), stdev = 3.614
  CI (99.9%): [3174.769, 3202.602] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 350874 total address lines.
Perf output processed (skipped 61.996 seconds):
 Column 1: cycles (50781 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1070 

 <region is too big to display, has 1926 lines, but threshold is 1000>
....................................................................................................
  58.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1111 

 <region is too big to display, has 1325 lines, but threshold is 1000>
....................................................................................................
  14.04%  <total for region 2>

....[Hottest Regions]...............................................................................
  58.95%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1070 
  14.04%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1111 
   2.18%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.46%      jvmci, level 4  sun.security.ec.point.ProjectivePoint$Mutable::conditionalSet, version 2, compile id 1136 
   1.40%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1154 
   1.38%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 1056 
   1.17%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1143 
   1.01%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1147 
   0.93%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1154 
   0.93%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1147 
   0.83%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1147 
   0.77%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1280 
   0.77%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1154 
   0.68%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1147 
   0.66%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1154 
   0.63%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1122 
   0.62%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1263 
   0.50%      jvmci, level 4  sun.security.ec.point.ProjectivePoint$Mutable::conditionalSet, version 2, compile id 1136 
   0.50%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1154 
   0.49%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1154 
  10.11%  <...other 545 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.95%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1070 
  14.04%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1111 
   9.31%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1154 
   5.55%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1147 
   2.22%      jvmci, level 4  sun.security.ec.point.ProjectivePoint$Mutable::conditionalSet, version 2, compile id 1136 
   2.18%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.60%              kernel  [unknown] 
   1.38%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 1056 
   1.26%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1280 
   1.18%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1143 
   0.63%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1263 
   0.63%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1122 
   0.27%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1272 
   0.12%                      <unknown> 
   0.05%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1447 
   0.05%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 3, compile id 1431 
   0.04%      jvmci, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 3, compile id 1408 
   0.03%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::finalReduce, version 2, compile id 1289 
   0.03%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::reduceHigh, version 4, compile id 1377 
   0.03%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1428 
   0.45%  <...other 120 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.70%      jvmci, level 4
   2.18%        runtime stub
   1.60%              kernel
   0.19%           libjvm.so
   0.12%                    
   0.11%        libc-2.31.so
   0.03%         interpreter
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%    perf-2107972.map
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed448, messageLength = 2048)

# Run progress: 75.00% complete, ETA 00:03:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5245.487 us/op
# Warmup Iteration   2: 3270.529 us/op
# Warmup Iteration   3: 3262.184 us/op
# Warmup Iteration   4: 3256.953 us/op
# Warmup Iteration   5: 3254.507 us/op
Iteration   1: 3256.565 us/op
Iteration   2: 3257.063 us/op
Iteration   3: 3254.064 us/op
Iteration   4: 3254.068 us/op
Iteration   5: 3253.420 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  3255.036 ±(99.9%) 6.368 us/op [Average]
  (min, avg, max) = (3253.420, 3255.036, 3257.063), stdev = 1.654
  CI (99.9%): [3248.668, 3261.404] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 353122 total address lines.
Perf output processed (skipped 61.801 seconds):
 Column 1: cycles (50635 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1086 

 <region is too big to display, has 1927 lines, but threshold is 1000>
....................................................................................................
  59.07%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1115 

 <region is too big to display, has 1325 lines, but threshold is 1000>
....................................................................................................
  13.74%  <total for region 2>

....[Hottest Regions]...............................................................................
  59.07%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1086 
  13.74%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1115 
   2.70%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1162 
   2.11%         runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.70%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1152 
   1.34%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1156 
   1.21%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 1062 
   1.06%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1162 
   0.92%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1152 
   0.92%       jvmci, level 4  sun.security.ec.point.ProjectivePoint$Mutable::conditionalSet, version 2, compile id 1158 
   0.90%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1152 
   0.84%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 4, compile id 1253 
   0.80%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1127 
   0.79%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1152 
   0.78%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1152 
   0.72%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 5, compile id 1298 
   0.60%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1280 
   0.48%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 5, compile id 1298 
   0.45%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1152 
   0.44%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1152 
   8.42%  <...other 539 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.07%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1086 
  13.74%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1115 
   8.93%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1152 
   5.51%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1162 
   2.11%         runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.04%       jvmci, level 4  sun.security.ec.point.ProjectivePoint$Mutable::conditionalSet, version 2, compile id 1158 
   1.70%               kernel  [unknown] 
   1.34%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1156 
   1.23%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 5, compile id 1298 
   1.21%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 1062 
   0.92%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 4, compile id 1253 
   0.80%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1127 
   0.61%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1280 
   0.06%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 1, compile id 1400 
   0.06%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 3, compile id 1448 
   0.05%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::finalReduce, version 2, compile id 1279 
   0.05%       jvmci, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 3, compile id 1446 
   0.04%                       <unknown> 
   0.03%       jvmci, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1467 
   0.02%       jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1424 
   0.48%  <...other 122 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.76%       jvmci, level 4
   2.13%         runtime stub
   1.70%               kernel
   0.15%            libjvm.so
   0.10%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.04%                     
   0.03%          interpreter
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%     perf-2108104.map
   0.00%           ld-2.31.so
   0.00%       libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed448, messageLength = 16384)

# Run progress: 87.50% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5398.615 us/op
# Warmup Iteration   2: 3444.908 us/op
# Warmup Iteration   3: 3462.928 us/op
# Warmup Iteration   4: 3443.751 us/op
# Warmup Iteration   5: 3452.554 us/op
Iteration   1: 3453.408 us/op
Iteration   2: 3453.848 us/op
Iteration   3: 3447.755 us/op
Iteration   4: 3449.035 us/op
Iteration   5: 3449.201 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  3450.649 ±(99.9%) 10.705 us/op [Average]
  (min, avg, max) = (3447.755, 3450.649, 3453.848), stdev = 2.780
  CI (99.9%): [3439.944, 3461.355] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 359213 total address lines.
Perf output processed (skipped 61.928 seconds):
 Column 1: cycles (50675 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1096 

 <region is too big to display, has 1926 lines, but threshold is 1000>
....................................................................................................
  55.69%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1124 

 <region is too big to display, has 1325 lines, but threshold is 1000>
....................................................................................................
  12.92%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.69%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1096 
  12.92%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1124 
   6.16%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1158 
   1.89%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.29%      jvmci, level 4  sun.security.ec.point.ProjectivePoint$Mutable::conditionalSet, version 2, compile id 1185 
   1.12%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 1073 
   0.96%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1186 
   0.96%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1187 
   0.95%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1195 
   0.90%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1195 
   0.87%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1195 
   0.83%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1186 
   0.73%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1186 
   0.69%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 5, compile id 1310 
   0.67%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1195 
   0.65%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1186 
   0.64%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1148 
   0.61%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1300 
   0.60%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1359 
   0.56%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1186 
  10.31%  <...other 460 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.69%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1096 
  12.92%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1124 
   8.33%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1186 
   6.54%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1158 
   5.23%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1195 
   1.99%      jvmci, level 4  sun.security.ec.point.ProjectivePoint$Mutable::conditionalSet, version 2, compile id 1185 
   1.89%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.52%              kernel  [unknown] 
   1.12%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::carryReduce, version 2, compile id 1073 
   1.12%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 5, compile id 1310 
   1.04%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1187 
   0.64%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1359 
   0.64%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1148 
   0.62%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1300 
   0.08%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%                      <unknown> 
   0.04%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 3, compile id 1456 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%      jvmci, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 3, compile id 1453 
   0.03%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1477 
   0.46%  <...other 106 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.12%      jvmci, level 4
   1.97%        runtime stub
   1.52%              kernel
   0.17%           libjvm.so
   0.10%        libc-2.31.so
   0.04%                    
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.00%    perf-2108168.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:25

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

Benchmark                         (algorithm)  (messageLength)  Mode  Cnt     Score    Error  Units
DsaEdSignatureBenchmark.sign          Ed25519               64  avgt    5  1021.447 ±  2.885  us/op
DsaEdSignatureBenchmark.sign:asm      Ed25519               64  avgt            NaN             ---
DsaEdSignatureBenchmark.sign          Ed25519              512  avgt    5  1029.011 ±  2.300  us/op
DsaEdSignatureBenchmark.sign:asm      Ed25519              512  avgt            NaN             ---
DsaEdSignatureBenchmark.sign          Ed25519             2048  avgt    5  1038.157 ±  2.464  us/op
DsaEdSignatureBenchmark.sign:asm      Ed25519             2048  avgt            NaN             ---
DsaEdSignatureBenchmark.sign          Ed25519            16384  avgt    5  1106.674 ±  3.744  us/op
DsaEdSignatureBenchmark.sign:asm      Ed25519            16384  avgt            NaN             ---
DsaEdSignatureBenchmark.sign            Ed448               64  avgt    5  3217.619 ± 17.631  us/op
DsaEdSignatureBenchmark.sign:asm        Ed448               64  avgt            NaN             ---
DsaEdSignatureBenchmark.sign            Ed448              512  avgt    5  3188.686 ± 13.917  us/op
DsaEdSignatureBenchmark.sign:asm        Ed448              512  avgt            NaN             ---
DsaEdSignatureBenchmark.sign            Ed448             2048  avgt    5  3255.036 ±  6.368  us/op
DsaEdSignatureBenchmark.sign:asm        Ed448             2048  avgt            NaN             ---
DsaEdSignatureBenchmark.sign            Ed448            16384  avgt    5  3450.649 ± 10.705  us/op
DsaEdSignatureBenchmark.sign:asm        Ed448            16384  avgt            NaN             ---
