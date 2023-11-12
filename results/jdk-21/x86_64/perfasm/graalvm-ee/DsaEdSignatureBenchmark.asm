# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
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
# Warmup Iteration   1: 1869.623 us/op
# Warmup Iteration   2: 801.267 us/op
# Warmup Iteration   3: 792.446 us/op
# Warmup Iteration   4: 792.194 us/op
# Warmup Iteration   5: 792.195 us/op
Iteration   1: 791.938 us/op
Iteration   2: 791.926 us/op
Iteration   3: 791.860 us/op
Iteration   4: 791.918 us/op
Iteration   5: 791.930 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  791.914 ±(99.9%) 0.121 us/op [Average]
  (min, avg, max) = (791.860, 791.914, 791.938), stdev = 0.031
  CI (99.9%): [791.794, 792.035] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 386842 total address lines.
Perf output processed (skipped 62.136 seconds):
 Column 1: cycles (50751 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1098 

 <region is too big to display, has 1998 lines, but threshold is 1000>
....................................................................................................
  52.90%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 1116 

             [Disassembly]
             --------------------------------------------------------------------------------
             [Constant Pool (empty)]
             --------------------------------------------------------------------------------
             [Entry Point]
               # {method} {0x00007f5598330478} &apos;square&apos; &apos;([J[J)V&apos; in &apos;sun/security/util/math/intpoly/IntegerPolynomial25519&apos;
               # this:     rsi:rsi   = &apos;sun/security/util/math/intpoly/IntegerPolynomial25519&apos;
               # parm0:    rdx:rdx   = &apos;[J&apos;
               # parm1:    rcx:rcx   = &apos;[J&apos;
               #           [sp+0x60]  (sp of caller)
   0.05%       0x00007f561ed9ca20:   mov    0x8(%rsi),%r10d
   0.02%       0x00007f561ed9ca24:   movabs $0x7f55a3000000,%r12
   0.02%       0x00007f561ed9ca2e:   add    %r12,%r10
   0.06%       0x00007f561ed9ca31:   xor    %r12,%r12
   0.01%       0x00007f561ed9ca34:   cmp    %r10,%rax
               0x00007f561ed9ca37:   jne    0x00007f561e764080           ;   {runtime_call ic_miss_stub}
   0.02%       0x00007f561ed9ca3d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.02%       0x00007f561ed9ca40:   mov    %eax,-0x14000(%rsp)
   0.09%       0x00007f561ed9ca47:   sub    $0x58,%rsp
   0.02%       0x00007f561ed9ca4b:   nop
   0.02%       0x00007f561ed9ca4c:   cmpl   $0x0,0x20(%r15)
   0.05%  ╭    0x00007f561ed9ca54:   jne    0x00007f561ed9cfb7
   0.01%  │    0x00007f561ed9ca5a:   mov    %rbp,0x50(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                              ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::square@0 (line 253)
   0.07%  │    0x00007f561ed9ca5f:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f561ed9cfdb
          │                                                              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                              ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::square@0 (line 253)
   0.02%  │    0x00007f561ed9ca63:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f561ed9cffe
   0.05%  │    0x00007f561ed9ca67:   cmp    $0xa,%r10d
          │╭   0x00007f561ed9ca6b:   jb     0x00007f561ed9cf98           ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@2 (line 253)
   0.04%  ││   0x00007f561ed9ca71:   cmp    $0xa,%r11d
          ││╭  0x00007f561ed9ca75:   jb     0x00007f561ed9cf98           ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9ca7b:   mov    %rcx,(%rsp)
   0.02%  │││  0x00007f561ed9ca7f:   mov    0x30(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@71 (line 257)
   0.05%  │││  0x00007f561ed9ca83:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@255 (line 262)
   0.02%  │││  0x00007f561ed9ca87:   mov    0x50(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@207 (line 261)
   0.03%  │││  0x00007f561ed9ca8b:   mov    0x38(%rdx),%r9               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@100 (line 258)
   0.02%  │││  0x00007f561ed9ca8f:   mov    0x28(%rdx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@50 (line 256)
   0.04%  │││  0x00007f561ed9ca93:   mov    0x40(%rdx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@130 (line 259)
   0.02%  │││  0x00007f561ed9ca97:   mov    0x20(%rdx),%rsi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@29 (line 255)
   0.03%  │││  0x00007f561ed9ca9b:   mov    0x48(%rdx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@168 (line 260)
   0.02%  │││  0x00007f561ed9ca9f:   mov    0x18(%rdx),%rbp              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@16 (line 254)
   0.03%  │││  0x00007f561ed9caa3:   mov    0x10(%rdx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@2 (line 253)
   0.01%  │││  0x00007f561ed9caa7:   mov    %rdx,%r13
   0.02%  │││  0x00007f561ed9caaa:   imul   %rdx,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@6 (line 253)
   0.06%  │││  0x00007f561ed9caae:   mov    %r9,%r14
   0.04%  │││  0x00007f561ed9cab1:   imul   %r9,%r14                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@340 (line 263)
   0.01%  │││  0x00007f561ed9cab5:   mov    %r11,%rcx
   0.01%  │││  0x00007f561ed9cab8:   imul   %rbp,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@305 (line 263)
   0.03%  │││  0x00007f561ed9cabc:   mov    %r13,0x40(%rsp)
   0.04%  │││  0x00007f561ed9cac1:   mov    %r8,%r13
   0.03%  │││  0x00007f561ed9cac4:   imul   %rsi,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@313 (line 263)
   0.03%  │││  0x00007f561ed9cac8:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@314 (line 263)
   0.03%  │││  0x00007f561ed9cacb:   mov    %rbx,%r13
   0.05%  │││  0x00007f561ed9cace:   imul   %rax,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@322 (line 263)
          │││  0x00007f561ed9cad2:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@323 (line 263)
   0.09%  │││  0x00007f561ed9cad5:   mov    %r10,%r13
   0.01%  │││  0x00007f561ed9cad8:   imul   %rdi,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@331 (line 263)
   0.09%  │││  0x00007f561ed9cadc:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@332 (line 263)
   0.01%  │││  0x00007f561ed9cadf:   shl    %rcx                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@333 (line 263)
   0.03%  │││  0x00007f561ed9cae2:   add    %rcx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@341 (line 263)
   0.04%  │││  0x00007f561ed9cae5:   mov    %r11,%rcx
   0.03%  │││  0x00007f561ed9cae8:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@256 (line 262)
   0.01%  │││  0x00007f561ed9caec:   mov    %r8,%r13
   0.03%  │││  0x00007f561ed9caef:   imul   %rbp,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@264 (line 262)
   0.03%  │││  0x00007f561ed9caf3:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@265 (line 262)
   0.03%  │││  0x00007f561ed9caf6:   mov    %rsi,%r13
   0.01%  │││  0x00007f561ed9caf9:   imul   %rax,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@273 (line 262)
   0.01%  │││  0x00007f561ed9cafd:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@274 (line 262)
   0.05%  │││  0x00007f561ed9cb00:   mov    %rbx,%r13
   0.03%  │││  0x00007f561ed9cb03:   imul   %rdi,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@282 (line 262)
   0.02%  │││  0x00007f561ed9cb07:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@283 (line 262)
   0.01%  │││  0x00007f561ed9cb0a:   mov    %r10,%r13
   0.05%  │││  0x00007f561ed9cb0d:   imul   %r9,%r13                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@290 (line 262)
   0.04%  │││  0x00007f561ed9cb11:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@291 (line 262)
   0.01%  │││  0x00007f561ed9cb14:   shl    %rcx                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@292 (line 262)
   0.04%  │││  0x00007f561ed9cb17:   mov    %r11,%r13
   0.03%  │││  0x00007f561ed9cb1a:   imul   %r11,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@567 (line 271)
   0.02%  │││  0x00007f561ed9cb1e:   imul   $0x13,%r13,%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@39 (line 74)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f561ed9cb22:   mov    %r14,0x38(%rsp)
   0.05%  │││  0x00007f561ed9cb27:   mov    %r13,%r14
   0.03%  │││  0x00007f561ed9cb2a:   sar    $0x15,%r14                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@61 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cb2e:   add    %r14,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@62 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cb31:   mov    %r10,%r14
   0.02%  │││  0x00007f561ed9cb34:   imul   %r10,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@242 (line 261)
          │││                                                            ;   {no_reloc}
   0.02%  │││  0x00007f561ed9cb38:   mov    %r10,0x30(%rsp)
   0.01%  │││  0x00007f561ed9cb3d:   mov    %r8,%r10
   0.03%  │││  0x00007f561ed9cb40:   imul   %rdx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@208 (line 261)
   0.04%  │││  0x00007f561ed9cb44:   mov    %rdx,0x28(%rsp)
   0.04%  │││  0x00007f561ed9cb49:   mov    %rax,%rdx
   0.02%  │││  0x00007f561ed9cb4c:   imul   %rbp,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@216 (line 261)
   0.03%  │││  0x00007f561ed9cb50:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@217 (line 261)
   0.03%  │││  0x00007f561ed9cb53:   mov    %rdi,%rdx
   0.02%  │││  0x00007f561ed9cb56:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@225 (line 261)
   0.01%  │││  0x00007f561ed9cb5a:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@226 (line 261)
   0.02%  │││  0x00007f561ed9cb5d:   mov    %r9,%rdx
   0.05%  │││  0x00007f561ed9cb60:   imul   %rbx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@233 (line 261)
   0.02%  │││  0x00007f561ed9cb64:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@234 (line 261)
   0.02%  │││  0x00007f561ed9cb67:   shl    %r10                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@235 (line 261)
   0.02%  │││  0x00007f561ed9cb6a:   add    %r10,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@243 (line 261)
   0.04%  │││  0x00007f561ed9cb6d:   mov    %r11,%r10
   0.02%  │││  0x00007f561ed9cb70:   imul   %r8,%r10                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@555 (line 270)
   0.01%  │││  0x00007f561ed9cb74:   shl    %r10                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@556 (line 270)
   0.03%  │││  0x00007f561ed9cb77:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@8 (line 70)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.13%  │││  0x00007f561ed9cb7b:   mov    %r10,%rdx
   0.02%  │││  0x00007f561ed9cb7e:   sar    $0x15,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@30 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f561ed9cb82:   add    %rdx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@31 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f561ed9cb85:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@47 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f561ed9cb89:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@51 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cb90:   add    %r13,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@52 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f561ed9cb93:   lea    0x2000000(%r14),%rdx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@70 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f561ed9cb9a:   mov    %rdx,%r13
   0.12%  │││  0x00007f561ed9cb9d:   sar    $0x1a,%r13                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@73 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f561ed9cba1:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@90 (line 80)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f561ed9cba4:   lea    0x2000000(%rcx),%r13         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@98 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f561ed9cbab:   mov    %rcx,0x20(%rsp)
   0.11%  │││  0x00007f561ed9cbb0:   mov    %r13,%rcx
   0.01%  │││  0x00007f561ed9cbb3:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@101 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cbb7:   add    0x38(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@118 (line 84)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f561ed9cbbc:   imul   $0x13,%rcx,%rcx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@126 (line 86)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.23%  │││  0x00007f561ed9cbc0:   mov    %r13,0x38(%rsp)
   0.01%  │││  0x00007f561ed9cbc5:   mov    %rcx,%r13
   0.00%  │││  0x00007f561ed9cbc8:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@133 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.08%  │││  0x00007f561ed9cbcc:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@137 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f561ed9cbd3:   add    0x40(%rsp),%r13              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@138 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.08%  │││  0x00007f561ed9cbd8:   mov    %r14,0x40(%rsp)
          │││  0x00007f561ed9cbdd:   lea    0x2000000(%r13),%r14         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@340 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007f561ed9cbe4:   mov    %rdx,0x18(%rsp)
   0.00%  │││  0x00007f561ed9cbe9:   mov    %r14,%rdx
   0.01%  │││  0x00007f561ed9cbec:   and    $0xfffffffffc000000,%rdx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@351 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.08%  │││  0x00007f561ed9cbf3:   sub    %rdx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@352 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.10%  │││  0x00007f561ed9cbf6:   mov    (%rsp),%rdx
          │││  0x00007f561ed9cbfa:   mov    %r13,0x10(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.16%  │││  0x00007f561ed9cbfe:   mov    %rbp,%r13
          │││  0x00007f561ed9cc01:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@17 (line 254)
   0.00%  │││  0x00007f561ed9cc07:   shl    %r13                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@18 (line 254)
   0.00%  │││  0x00007f561ed9cc0a:   sar    $0x15,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@146 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.11%  │││  0x00007f561ed9cc0e:   add    %rcx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@147 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cc11:   mov    %r11,%rcx
          │││  0x00007f561ed9cc14:   imul   %rsi,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@354 (line 264)
   0.00%  │││  0x00007f561ed9cc18:   mov    %r10,0x10(%rsp)
   0.08%  │││  0x00007f561ed9cc1d:   mov    %r8,%r10
          │││  0x00007f561ed9cc20:   imul   %rbx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@362 (line 264)
          │││  0x00007f561ed9cc24:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@363 (line 264)
   0.00%  │││  0x00007f561ed9cc27:   mov    0x30(%rsp),%r10
   0.10%  │││  0x00007f561ed9cc2c:   imul   %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@371 (line 264)
          │││  0x00007f561ed9cc30:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@372 (line 264)
          │││  0x00007f561ed9cc33:   mov    %r9,%r10                     ;   {no_reloc}
          │││  0x00007f561ed9cc36:   imul   %rdi,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@380 (line 264)
   0.07%  │││  0x00007f561ed9cc3a:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@381 (line 264)
          │││  0x00007f561ed9cc3d:   shl    %rcx                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@382 (line 264)
          │││  0x00007f561ed9cc40:   imul   $0x13,%rcx,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@155 (line 90)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f561ed9cc44:   mov    %r10,%rcx
   0.11%  │││  0x00007f561ed9cc47:   shl    $0x5,%rcx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@163 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cc4b:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@167 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cc52:   add    %rcx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@168 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f561ed9cc55:   sar    $0x1a,%r14                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@343 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.10%  │││  0x00007f561ed9cc59:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@358 (line 116)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f561ed9cc5c:   lea    0x2000000(%r13),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@366 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.13%  │││  0x00007f561ed9cc63:   mov    %rcx,%r14
   0.00%  │││  0x00007f561ed9cc66:   and    $0xfffffffffc000000,%r14     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@378 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.10%  │││  0x00007f561ed9cc6d:   sub    %r14,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@379 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9cc70:   mov    %r13,0x18(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@593 (line 151)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007f561ed9cc74:   mov    %rbp,%r13
          │││  0x00007f561ed9cc77:   imul   %rbp,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@38 (line 255)
   0.05%  │││  0x00007f561ed9cc7b:   mov    %rsi,%r14
          │││  0x00007f561ed9cc7e:   imul   0x28(%rsp),%r14              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@30 (line 255)
   0.05%  │││  0x00007f561ed9cc84:   shl    %r14                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@31 (line 255)
          │││  0x00007f561ed9cc87:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@39 (line 255)
   0.04%  │││  0x00007f561ed9cc8a:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@177 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cc8e:   add    %r10,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@178 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9cc91:   mov    %rdi,%r10
          │││  0x00007f561ed9cc94:   imul   %rdi,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@423 (line 265)
   0.03%  │││  0x00007f561ed9cc98:   mov    %r11,%r14
          │││  0x00007f561ed9cc9b:   imul   %rbx,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@395 (line 265)
   0.06%  │││  0x00007f561ed9cc9f:   mov    %rdi,0x8(%rsp)
          │││  0x00007f561ed9cca4:   mov    0x30(%rsp),%rdi
   0.05%  │││  0x00007f561ed9cca9:   imul   %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@403 (line 265)
          │││  0x00007f561ed9ccad:   add    %rdi,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@404 (line 265)
   0.05%  │││  0x00007f561ed9ccb0:   mov    %r9,%rdi
          │││  0x00007f561ed9ccb3:   imul   %rax,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@412 (line 265)
   0.06%  │││  0x00007f561ed9ccb7:   add    %rdi,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@413 (line 265)
          │││  0x00007f561ed9ccba:   shl    %r14                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@414 (line 265)
   0.04%  │││  0x00007f561ed9ccbd:   add    %r14,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@424 (line 265)
          │││  0x00007f561ed9ccc0:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@186 (line 94)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f561ed9ccc4:   mov    %r10,%rdi
          │││  0x00007f561ed9ccc7:   shl    $0x5,%rdi                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@194 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f561ed9cccb:   and    $0x3ffffff,%rdi              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@198 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f561ed9ccd2:   add    %rdi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@199 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f561ed9ccd5:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@369 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9ccd9:   add    %rcx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@386 (line 120)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f561ed9ccdc:   lea    0x2000000(%r13),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@394 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.12%  │││  0x00007f561ed9cce3:   mov    %rcx,%rdi
   0.05%  │││  0x00007f561ed9cce6:   and    $0xfffffffffc000000,%rdi     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@406 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cced:   sub    %rdi,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@407 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.08%  │││  0x00007f561ed9ccf0:   mov    %r13,0x20(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@598 (line 152)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9ccf4:   mov    %rbx,%rdi
   0.05%  │││  0x00007f561ed9ccf7:   imul   0x28(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@51 (line 256)
   0.00%  │││  0x00007f561ed9ccfd:   mov    %rsi,%r13
   0.05%  │││  0x00007f561ed9cd00:   imul   %rbp,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@58 (line 256)
   0.02%  │││  0x00007f561ed9cd04:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@59 (line 256)
   0.03%  │││  0x00007f561ed9cd07:   shl    %rdi                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@60 (line 256)
          │││  0x00007f561ed9cd0a:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@208 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cd0e:   add    %r10,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@209 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9cd11:   mov    0x30(%rsp),%r10
   0.04%  │││  0x00007f561ed9cd16:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@437 (line 266)
   0.00%  │││  0x00007f561ed9cd1a:   mov    %r8,%r13
   0.02%  │││  0x00007f561ed9cd1d:   imul   %r9,%r13                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@445 (line 266)
   0.03%  │││  0x00007f561ed9cd21:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@446 (line 266)
   0.02%  │││  0x00007f561ed9cd24:   mov    0x8(%rsp),%r13
          │││  0x00007f561ed9cd29:   imul   %rax,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@455 (line 266)
   0.03%  │││  0x00007f561ed9cd2d:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@456 (line 266)
   0.04%  │││  0x00007f561ed9cd30:   shl    %r10                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@457 (line 266)
   0.03%  │││  0x00007f561ed9cd33:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@217 (line 98)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││                                                            ;   {no_reloc}
          │││  0x00007f561ed9cd37:   mov    %r10,%r13
   0.05%  │││  0x00007f561ed9cd3a:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@225 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f561ed9cd3e:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@229 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f561ed9cd45:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@230 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007f561ed9cd48:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@397 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f561ed9cd4c:   add    %rcx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@414 (line 124)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cd4f:   lea    0x2000000(%rdi),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@422 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.14%  │││  0x00007f561ed9cd56:   mov    %rcx,%r13
   0.01%  │││  0x00007f561ed9cd59:   and    $0xfffffffffc000000,%r13     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@434 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f561ed9cd60:   sub    %r13,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@435 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007f561ed9cd63:   mov    %rdi,0x28(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@603 (line 153)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.13%  │││  0x00007f561ed9cd67:   mov    %rsi,%rdi
          │││  0x00007f561ed9cd6a:   imul   %rsi,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@88 (line 257)
   0.01%  │││  0x00007f561ed9cd6e:   mov    0x30(%rsp),%r13
   0.03%  │││  0x00007f561ed9cd73:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@72 (line 257)
   0.03%  │││  0x00007f561ed9cd79:   mov    %rbx,%r14
          │││  0x00007f561ed9cd7c:   imul   %rbp,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@79 (line 257)
   0.02%  │││  0x00007f561ed9cd80:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@80 (line 257)
   0.02%  │││  0x00007f561ed9cd83:   shl    %r13                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@81 (line 257)
   0.06%  │││  0x00007f561ed9cd86:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@89 (line 257)
          │││  0x00007f561ed9cd89:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@239 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cd8d:   add    %r10,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@240 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cd90:   mov    %rax,%r10
   0.05%  │││  0x00007f561ed9cd93:   imul   %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@490 (line 267)
          │││  0x00007f561ed9cd97:   mov    %r11,%r13
   0.01%  │││  0x00007f561ed9cd9a:   imul   %r9,%r13                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@470 (line 267)
   0.03%  │││  0x00007f561ed9cd9e:   mov    %r8,%r14
   0.07%  │││  0x00007f561ed9cda1:   imul   0x8(%rsp),%r14               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@479 (line 267)
          │││  0x00007f561ed9cda7:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@480 (line 267)
   0.02%  │││  0x00007f561ed9cdaa:   shl    %r13                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@481 (line 267)
   0.03%  │││  0x00007f561ed9cdad:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@491 (line 267)
   0.07%  │││  0x00007f561ed9cdb0:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@248 (line 102)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cdb4:   mov    %r10,%r13
   0.02%  │││  0x00007f561ed9cdb7:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@256 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f561ed9cdbb:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@260 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f561ed9cdc2:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@261 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cdc5:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@425 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cdc9:   add    %rcx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@442 (line 128)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cdcc:   lea    0x2000000(%rdi),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@450 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f561ed9cdd3:   mov    %rcx,%r13
          │││  0x00007f561ed9cdd6:   and    $0xfffffffffc000000,%r13     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@462 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f561ed9cddd:   sub    %r13,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@463 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cde0:   mov    %rdi,0x30(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@608 (line 154)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9cde4:   mov    %r9,%rdi
          │││  0x00007f561ed9cde7:   imul   0x28(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@101 (line 258)
   0.02%  │││  0x00007f561ed9cded:   mov    0x30(%rsp),%r13
   0.03%  │││  0x00007f561ed9cdf2:   imul   %rbp,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@108 (line 258)
   0.04%  │││  0x00007f561ed9cdf6:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@109 (line 258)
   0.00%  │││  0x00007f561ed9cdf9:   mov    %rbx,%r13
   0.03%  │││  0x00007f561ed9cdfc:   imul   %rsi,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@116 (line 258)
   0.05%  │││  0x00007f561ed9ce00:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@117 (line 258)
   0.05%  │││  0x00007f561ed9ce03:   shl    %rdi                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@118 (line 258)
          │││  0x00007f561ed9ce06:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@270 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9ce0a:   add    %r10,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@271 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f561ed9ce0d:   mov    %r11,%r10
   0.05%  │││  0x00007f561ed9ce10:   imul   0x8(%rsp),%r10               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@505 (line 268)
          │││  0x00007f561ed9ce16:   mov    %r8,%r13
   0.01%  │││  0x00007f561ed9ce19:   imul   %rax,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@514 (line 268)
   0.02%  │││  0x00007f561ed9ce1d:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@515 (line 268)
   0.05%  │││  0x00007f561ed9ce20:   shl    %r10                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@516 (line 268)
          │││  0x00007f561ed9ce23:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@279 (line 106)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f561ed9ce27:   mov    %r10,%r13
   0.05%  │││  0x00007f561ed9ce2a:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@287 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9ce2e:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@291 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││                                                            ;   {no_reloc}
          │││  0x00007f561ed9ce35:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@292 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9ce38:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@453 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9ce3c:   add    %rcx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@470 (line 132)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9ce3f:   lea    0x2000000(%rdi),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@478 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9ce46:   mov    %rcx,%r13
   0.02%  │││  0x00007f561ed9ce49:   and    $0xfffffffffc000000,%r13     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@490 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9ce50:   sub    %r13,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@491 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f561ed9ce53:   mov    %rdi,0x38(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@613 (line 155)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f561ed9ce57:   mov    %rbx,%rdi
   0.02%  │││  0x00007f561ed9ce5a:   imul   %rbx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@155 (line 259)
   0.04%  │││  0x00007f561ed9ce5e:   mov    0x8(%rsp),%r13
   0.06%  │││  0x00007f561ed9ce63:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@131 (line 259)
          │││  0x00007f561ed9ce69:   mov    %r9,%r14
   0.01%  │││  0x00007f561ed9ce6c:   imul   %rbp,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@138 (line 259)
   0.02%  │││  0x00007f561ed9ce70:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@139 (line 259)
   0.06%  │││  0x00007f561ed9ce73:   mov    0x30(%rsp),%r14
          │││  0x00007f561ed9ce78:   imul   %rsi,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@146 (line 259)
   0.02%  │││  0x00007f561ed9ce7c:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@147 (line 259)
   0.02%  │││  0x00007f561ed9ce7f:   shl    %r13                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@148 (line 259)
   0.05%  │││  0x00007f561ed9ce82:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@156 (line 259)
   0.00%  │││  0x00007f561ed9ce85:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@301 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9ce89:   add    %r10,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@302 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f561ed9ce8c:   imul   %r8,%r8                      ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@540 (line 269)
   0.05%  │││  0x00007f561ed9ce90:   imul   %rax,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@530 (line 269)
          │││  0x00007f561ed9ce94:   shl    %r11                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@531 (line 269)
   0.02%  │││  0x00007f561ed9ce97:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@541 (line 269)
   0.02%  │││  0x00007f561ed9ce9a:   imul   $0x13,%r8,%r10               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@310 (line 110)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f561ed9ce9e:   mov    %r10,%r11
          │││  0x00007f561ed9cea1:   shl    $0x5,%r11                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@318 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f561ed9cea5:   and    $0x3ffffff,%r11              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@322 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f561ed9ceac:   add    %r11,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@323 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9ceaf:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@481 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9ceb3:   add    %rcx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@498 (line 136)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f561ed9ceb6:   lea    0x2000000(%rdi),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@506 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f561ed9cebd:   mov    %r11,%r8
   0.07%  │││  0x00007f561ed9cec0:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@518 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cec7:   sub    %r8,%rdi                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@519 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9ceca:   mov    %rdi,0x40(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@619 (line 156)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cece:   imul   0x28(%rsp),%rax              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@169 (line 260)
   0.04%  │││  0x00007f561ed9ced4:   mov    0x8(%rsp),%rdi
          │││  0x00007f561ed9ced9:   imul   %rbp,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@177 (line 260)
   0.02%  │││  0x00007f561ed9cedd:   add    %rdi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@178 (line 260)
   0.04%  │││  0x00007f561ed9cee0:   imul   %rsi,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@185 (line 260)
   0.05%  │││  0x00007f561ed9cee4:   add    %r9,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@186 (line 260)
          │││  0x00007f561ed9cee7:   mov    0x30(%rsp),%r8
   0.02%  │││  0x00007f561ed9ceec:   imul   %rbx,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@193 (line 260)
   0.02%  │││  0x00007f561ed9cef0:   add    %r8,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@194 (line 260)
   0.03%  │││  0x00007f561ed9cef3:   shl    %rax                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@195 (line 260)
          │││  0x00007f561ed9cef6:   mov    0x10(%rsp),%r8
   0.03%  │││  0x00007f561ed9cefb:   shl    $0x5,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@16 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9ceff:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@20 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9cf06:   add    %r8,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@21 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f561ed9cf09:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@332 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f561ed9cf0d:   add    %r10,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@333 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f561ed9cf10:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@509 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9cf14:   add    %r11,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@526 (line 140)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cf17:   lea    0x2000000(%rax),%r10         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@534 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cf1e:   mov    %r10,%r11
   0.03%  │││  0x00007f561ed9cf21:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@546 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f561ed9cf28:   sub    %r11,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@547 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cf2b:   mov    %rax,0x48(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@625 (line 157)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cf2f:   mov    0x18(%rsp),%r11              ;   {no_reloc}
   0.03%  │││  0x00007f561ed9cf34:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@82 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9cf3b:   mov    0x40(%rsp),%r14
   0.00%  │││  0x00007f561ed9cf40:   sub    %r11,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@83 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cf43:   sar    $0x1a,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@537 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cf47:   add    %r10,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@554 (line 144)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9cf4a:   lea    0x2000000(%r14),%r10         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@562 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cf51:   mov    %r10,%r11
   0.02%  │││  0x00007f561ed9cf54:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@574 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f561ed9cf5b:   sub    %r11,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@575 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f561ed9cf5e:   mov    %r14,0x50(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@631 (line 158)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cf62:   mov    0x38(%rsp),%r13
   0.02%  │││  0x00007f561ed9cf67:   and    $0xfffffffffc000000,%r13     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@110 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f561ed9cf6e:   mov    0x20(%rsp),%rcx
   0.06%  │││  0x00007f561ed9cf73:   sub    %r13,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@111 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f561ed9cf76:   sar    $0x1a,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@565 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cf7a:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@582 (line 148)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f561ed9cf7d:   mov    %rcx,0x58(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@637 (line 159)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f561ed9cf81:   mov    0x50(%rsp),%rbp
          │││  0x00007f561ed9cf86:   add    $0x58,%rsp
   0.02%  │││  0x00007f561ed9cf8a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f561ed9cf91:   ja     0x00007f561ed9cfc7
   0.03%  │││  0x00007f561ed9cf97:   ret    
          │↘↘  0x00007f561ed9cf98:   movl   $0xffffffe5,0x484(%r15)      ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@2 (line 253)
          │    0x00007f561ed9cfa3:   mov    %r12,0x490(%r15)
          │    0x00007f561ed9cfaa:   call   0x00007f561e76a17a           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                              ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::square@0 (line 253)
          │                                                              ;   {runtime_call DeoptimizationBlob}
          │    0x00007f561ed9cfaf:   nopl   0x0(%rax,%rax,1)
          ↘    0x00007f561ed9cfb7:   mov    %rbp,0x50(%rsp)
               0x00007f561ed9cfbc:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
....................................................................................................
  10.59%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.90%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1098 
  10.59%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 1116 
   8.86%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::asAffine, version 2, compile id 1406 
   7.25%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   6.68%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   2.87%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1170 
   2.13%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1170 
   2.01%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1188 
   1.92%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1064 
   1.25%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1087 
   0.21%              kernel  [unknown] 
   0.19%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   0.18%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   0.13%              kernel  [unknown] 
   0.11%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   0.08%              kernel  [unknown] 
   0.07%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   2.31%  <...other 576 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.90%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1098 
  14.57%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
  10.59%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 1116 
   8.88%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::asAffine, version 2, compile id 1406 
   5.00%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1170 
   2.01%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1188 
   1.92%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1064 
   1.55%              kernel  [unknown] 
   1.25%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1087 
   0.30%                      <unknown> 
   0.16%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1443 
   0.07%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::finalReduce, version 2, compile id 1269 
   0.07%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 3, compile id 1437 
   0.05%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.04%      jvmci, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 1404 
   0.04%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1438 
   0.04%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1089 
   0.03%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::getNeutral, version 2, compile id 1388 
   0.03%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1433 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.47%  <...other 106 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.72%      jvmci, level 4
   1.55%              kernel
   0.30%                    
   0.19%           libjvm.so
   0.11%        libc-2.31.so
   0.05%        runtime stub
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%         c1, level 3
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed25519, messageLength = 512)

# Run progress: 12.50% complete, ETA 00:13:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2222.949 us/op
# Warmup Iteration   2: 790.333 us/op
# Warmup Iteration   3: 790.053 us/op
# Warmup Iteration   4: 789.632 us/op
# Warmup Iteration   5: 789.652 us/op
Iteration   1: 789.408 us/op
Iteration   2: 789.294 us/op
Iteration   3: 789.298 us/op
Iteration   4: 789.304 us/op
Iteration   5: 789.331 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  789.327 ±(99.9%) 0.184 us/op [Average]
  (min, avg, max) = (789.294, 789.327, 789.408), stdev = 0.048
  CI (99.9%): [789.143, 789.511] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 388123 total address lines.
Perf output processed (skipped 61.721 seconds):
 Column 1: cycles (50670 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1104 

 <region is too big to display, has 1998 lines, but threshold is 1000>
....................................................................................................
  52.80%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 1122 

             [Disassembly]
             --------------------------------------------------------------------------------
             [Constant Pool (empty)]
             --------------------------------------------------------------------------------
             [Entry Point]
               # {method} {0x00007ff2e332ba20} &apos;square&apos; &apos;([J[J)V&apos; in &apos;sun/security/util/math/intpoly/IntegerPolynomial25519&apos;
               # this:     rsi:rsi   = &apos;sun/security/util/math/intpoly/IntegerPolynomial25519&apos;
               # parm0:    rdx:rdx   = &apos;[J&apos;
               # parm1:    rcx:rcx   = &apos;[J&apos;
               #           [sp+0x60]  (sp of caller)
   0.06%       0x00007ff362d96420:   mov    0x8(%rsi),%r10d
   0.02%       0x00007ff362d96424:   movabs $0x7ff2e7000000,%r12
   0.02%       0x00007ff362d9642e:   add    %r12,%r10
   0.04%       0x00007ff362d96431:   xor    %r12,%r12
   0.02%       0x00007ff362d96434:   cmp    %r10,%rax
               0x00007ff362d96437:   jne    0x00007ff362764080           ;   {runtime_call ic_miss_stub}
   0.02%       0x00007ff362d9643d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.02%       0x00007ff362d96440:   mov    %eax,-0x14000(%rsp)
   0.07%       0x00007ff362d96447:   sub    $0x58,%rsp
   0.02%       0x00007ff362d9644b:   nop
   0.01%       0x00007ff362d9644c:   cmpl   $0x0,0x20(%r15)
   0.06%  ╭    0x00007ff362d96454:   jne    0x00007ff362d969b7
   0.03%  │    0x00007ff362d9645a:   mov    %rbp,0x50(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                              ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::square@0 (line 253)
   0.05%  │    0x00007ff362d9645f:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007ff362d969db
          │                                                              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                              ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::square@0 (line 253)
   0.01%  │    0x00007ff362d96463:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007ff362d969fe
   0.03%  │    0x00007ff362d96467:   cmp    $0xa,%r10d
          │╭   0x00007ff362d9646b:   jb     0x00007ff362d96998           ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@2 (line 253)
   0.02%  ││   0x00007ff362d96471:   cmp    $0xa,%r11d
          ││╭  0x00007ff362d96475:   jb     0x00007ff362d96998           ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d9647b:   mov    %rcx,(%rsp)
   0.02%  │││  0x00007ff362d9647f:   mov    0x30(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@71 (line 257)
   0.03%  │││  0x00007ff362d96483:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@255 (line 262)
   0.03%  │││  0x00007ff362d96487:   mov    0x50(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@207 (line 261)
   0.02%  │││  0x00007ff362d9648b:   mov    0x38(%rdx),%r9               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@100 (line 258)
   0.01%  │││  0x00007ff362d9648f:   mov    0x28(%rdx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@50 (line 256)
   0.05%  │││  0x00007ff362d96493:   mov    0x40(%rdx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@130 (line 259)
   0.02%  │││  0x00007ff362d96497:   mov    0x20(%rdx),%rsi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@29 (line 255)
   0.02%  │││  0x00007ff362d9649b:   mov    0x48(%rdx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@168 (line 260)
   0.02%  │││  0x00007ff362d9649f:   mov    0x18(%rdx),%rbp              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@16 (line 254)
   0.05%  │││  0x00007ff362d964a3:   mov    0x10(%rdx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@2 (line 253)
   0.02%  │││  0x00007ff362d964a7:   mov    %rdx,%r13
   0.02%  │││  0x00007ff362d964aa:   imul   %rdx,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@6 (line 253)
   0.04%  │││  0x00007ff362d964ae:   mov    %r9,%r14
   0.03%  │││  0x00007ff362d964b1:   imul   %r9,%r14                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@340 (line 263)
   0.01%  │││  0x00007ff362d964b5:   mov    %r11,%rcx
   0.02%  │││  0x00007ff362d964b8:   imul   %rbp,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@305 (line 263)
   0.03%  │││  0x00007ff362d964bc:   mov    %r13,0x40(%rsp)
   0.06%  │││  0x00007ff362d964c1:   mov    %r8,%r13
   0.01%  │││  0x00007ff362d964c4:   imul   %rsi,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@313 (line 263)
   0.01%  │││  0x00007ff362d964c8:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@314 (line 263)
   0.02%  │││  0x00007ff362d964cb:   mov    %rbx,%r13
   0.03%  │││  0x00007ff362d964ce:   imul   %rax,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@322 (line 263)
   0.03%  │││  0x00007ff362d964d2:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@323 (line 263)
   0.09%  │││  0x00007ff362d964d5:   mov    %r10,%r13
   0.03%  │││  0x00007ff362d964d8:   imul   %rdi,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@331 (line 263)
   0.09%  │││  0x00007ff362d964dc:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@332 (line 263)
   0.02%  │││  0x00007ff362d964df:   shl    %rcx                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@333 (line 263)
   0.03%  │││  0x00007ff362d964e2:   add    %rcx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@341 (line 263)
   0.04%  │││  0x00007ff362d964e5:   mov    %r11,%rcx
   0.04%  │││  0x00007ff362d964e8:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@256 (line 262)
   0.02%  │││  0x00007ff362d964ec:   mov    %r8,%r13
   0.01%  │││  0x00007ff362d964ef:   imul   %rbp,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@264 (line 262)
   0.03%  │││  0x00007ff362d964f3:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@265 (line 262)
   0.03%  │││  0x00007ff362d964f6:   mov    %rsi,%r13
   0.02%  │││  0x00007ff362d964f9:   imul   %rax,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@273 (line 262)
   0.02%  │││  0x00007ff362d964fd:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@274 (line 262)
   0.03%  │││  0x00007ff362d96500:   mov    %rbx,%r13
   0.04%  │││  0x00007ff362d96503:   imul   %rdi,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@282 (line 262)
   0.03%  │││  0x00007ff362d96507:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@283 (line 262)
   0.02%  │││  0x00007ff362d9650a:   mov    %r10,%r13
   0.06%  │││  0x00007ff362d9650d:   imul   %r9,%r13                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@290 (line 262)
   0.03%  │││  0x00007ff362d96511:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@291 (line 262)
   0.01%  │││  0x00007ff362d96514:   shl    %rcx                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@292 (line 262)
   0.04%  │││  0x00007ff362d96517:   mov    %r11,%r13
   0.05%  │││  0x00007ff362d9651a:   imul   %r11,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@567 (line 271)
   0.01%  │││  0x00007ff362d9651e:   imul   $0x13,%r13,%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@39 (line 74)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007ff362d96522:   mov    %r14,0x38(%rsp)
   0.07%  │││  0x00007ff362d96527:   mov    %r13,%r14
   0.03%  │││  0x00007ff362d9652a:   sar    $0x15,%r14                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@61 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007ff362d9652e:   add    %r14,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@62 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007ff362d96531:   mov    %r10,%r14
   0.04%  │││  0x00007ff362d96534:   imul   %r10,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@242 (line 261)
          │││                                                            ;   {no_reloc}
   0.02%  │││  0x00007ff362d96538:   mov    %r10,0x30(%rsp)
   0.00%  │││  0x00007ff362d9653d:   mov    %r8,%r10
   0.03%  │││  0x00007ff362d96540:   imul   %rdx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@208 (line 261)
   0.03%  │││  0x00007ff362d96544:   mov    %rdx,0x28(%rsp)
   0.02%  │││  0x00007ff362d96549:   mov    %rax,%rdx
   0.01%  │││  0x00007ff362d9654c:   imul   %rbp,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@216 (line 261)
   0.02%  │││  0x00007ff362d96550:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@217 (line 261)
   0.05%  │││  0x00007ff362d96553:   mov    %rdi,%rdx
   0.02%  │││  0x00007ff362d96556:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@225 (line 261)
   0.01%  │││  0x00007ff362d9655a:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@226 (line 261)
   0.04%  │││  0x00007ff362d9655d:   mov    %r9,%rdx
   0.03%  │││  0x00007ff362d96560:   imul   %rbx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@233 (line 261)
   0.02%  │││  0x00007ff362d96564:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@234 (line 261)
   0.01%  │││  0x00007ff362d96567:   shl    %r10                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@235 (line 261)
   0.03%  │││  0x00007ff362d9656a:   add    %r10,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@243 (line 261)
   0.05%  │││  0x00007ff362d9656d:   mov    %r11,%r10
   0.01%  │││  0x00007ff362d96570:   imul   %r8,%r10                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@555 (line 270)
   0.01%  │││  0x00007ff362d96574:   shl    %r10                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@556 (line 270)
   0.03%  │││  0x00007ff362d96577:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@8 (line 70)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.18%  │││  0x00007ff362d9657b:   mov    %r10,%rdx
   0.02%  │││  0x00007ff362d9657e:   sar    $0x15,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@30 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007ff362d96582:   add    %rdx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@31 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007ff362d96585:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@47 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007ff362d96589:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@51 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d96590:   add    %r13,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@52 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007ff362d96593:   lea    0x2000000(%r14),%rdx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@70 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d9659a:   mov    %rdx,%r13
   0.13%  │││  0x00007ff362d9659d:   sar    $0x1a,%r13                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@73 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d965a1:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@90 (line 80)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007ff362d965a4:   lea    0x2000000(%rcx),%r13         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@98 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007ff362d965ab:   mov    %rcx,0x20(%rsp)
   0.08%  │││  0x00007ff362d965b0:   mov    %r13,%rcx
   0.02%  │││  0x00007ff362d965b3:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@101 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007ff362d965b7:   add    0x38(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@118 (line 84)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007ff362d965bc:   imul   $0x13,%rcx,%rcx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@126 (line 86)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.22%  │││  0x00007ff362d965c0:   mov    %r13,0x38(%rsp)
   0.00%  │││  0x00007ff362d965c5:   mov    %rcx,%r13
   0.00%  │││  0x00007ff362d965c8:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@133 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.08%  │││  0x00007ff362d965cc:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@137 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007ff362d965d3:   add    0x40(%rsp),%r13              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@138 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007ff362d965d8:   mov    %r14,0x40(%rsp)
          │││  0x00007ff362d965dd:   lea    0x2000000(%r13),%r14         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@340 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007ff362d965e4:   mov    %rdx,0x18(%rsp)
   0.00%  │││  0x00007ff362d965e9:   mov    %r14,%rdx
   0.01%  │││  0x00007ff362d965ec:   and    $0xfffffffffc000000,%rdx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@351 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007ff362d965f3:   sub    %rdx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@352 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007ff362d965f6:   mov    (%rsp),%rdx
   0.00%  │││  0x00007ff362d965fa:   mov    %r13,0x10(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.19%  │││  0x00007ff362d965fe:   mov    %rbp,%r13
          │││  0x00007ff362d96601:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@17 (line 254)
          │││  0x00007ff362d96607:   shl    %r13                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@18 (line 254)
   0.00%  │││  0x00007ff362d9660a:   sar    $0x15,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@146 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.11%  │││  0x00007ff362d9660e:   add    %rcx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@147 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007ff362d96611:   mov    %r11,%rcx
          │││  0x00007ff362d96614:   imul   %rsi,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@354 (line 264)
          │││  0x00007ff362d96618:   mov    %r10,0x10(%rsp)
   0.11%  │││  0x00007ff362d9661d:   mov    %r8,%r10
          │││  0x00007ff362d96620:   imul   %rbx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@362 (line 264)
          │││  0x00007ff362d96624:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@363 (line 264)
          │││  0x00007ff362d96627:   mov    0x30(%rsp),%r10
   0.08%  │││  0x00007ff362d9662c:   imul   %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@371 (line 264)
          │││  0x00007ff362d96630:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@372 (line 264)
          │││  0x00007ff362d96633:   mov    %r9,%r10                     ;   {no_reloc}
          │││  0x00007ff362d96636:   imul   %rdi,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@380 (line 264)
   0.09%  │││  0x00007ff362d9663a:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@381 (line 264)
          │││  0x00007ff362d9663d:   shl    %rcx                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@382 (line 264)
   0.00%  │││  0x00007ff362d96640:   imul   $0x13,%rcx,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@155 (line 90)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007ff362d96644:   mov    %r10,%rcx
   0.08%  │││  0x00007ff362d96647:   shl    $0x5,%rcx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@163 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d9664b:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@167 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d96652:   add    %rcx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@168 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007ff362d96655:   sar    $0x1a,%r14                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@343 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.10%  │││  0x00007ff362d96659:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@358 (line 116)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007ff362d9665c:   lea    0x2000000(%r13),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@366 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007ff362d96663:   mov    %rcx,%r14
          │││  0x00007ff362d96666:   and    $0xfffffffffc000000,%r14     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@378 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.10%  │││  0x00007ff362d9666d:   sub    %r14,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@379 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007ff362d96670:   mov    %r13,0x18(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@593 (line 151)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.10%  │││  0x00007ff362d96674:   mov    %rbp,%r13
          │││  0x00007ff362d96677:   imul   %rbp,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@38 (line 255)
   0.05%  │││  0x00007ff362d9667b:   mov    %rsi,%r14
          │││  0x00007ff362d9667e:   imul   0x28(%rsp),%r14              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@30 (line 255)
   0.06%  │││  0x00007ff362d96684:   shl    %r14                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@31 (line 255)
   0.00%  │││  0x00007ff362d96687:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@39 (line 255)
   0.06%  │││  0x00007ff362d9668a:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@177 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d9668e:   add    %r10,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@178 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007ff362d96691:   mov    %rdi,%r10
          │││  0x00007ff362d96694:   imul   %rdi,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@423 (line 265)
   0.05%  │││  0x00007ff362d96698:   mov    %r11,%r14
          │││  0x00007ff362d9669b:   imul   %rbx,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@395 (line 265)
   0.04%  │││  0x00007ff362d9669f:   mov    %rdi,0x8(%rsp)
          │││  0x00007ff362d966a4:   mov    0x30(%rsp),%rdi
   0.04%  │││  0x00007ff362d966a9:   imul   %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@403 (line 265)
          │││  0x00007ff362d966ad:   add    %rdi,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@404 (line 265)
   0.04%  │││  0x00007ff362d966b0:   mov    %r9,%rdi
   0.00%  │││  0x00007ff362d966b3:   imul   %rax,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@412 (line 265)
   0.06%  │││  0x00007ff362d966b7:   add    %rdi,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@413 (line 265)
   0.00%  │││  0x00007ff362d966ba:   shl    %r14                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@414 (line 265)
   0.06%  │││  0x00007ff362d966bd:   add    %r14,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@424 (line 265)
   0.00%  │││  0x00007ff362d966c0:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@186 (line 94)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007ff362d966c4:   mov    %r10,%rdi
          │││  0x00007ff362d966c7:   shl    $0x5,%rdi                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@194 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d966cb:   and    $0x3ffffff,%rdi              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@198 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007ff362d966d2:   add    %rdi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@199 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d966d5:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@369 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d966d9:   add    %rcx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@386 (line 120)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007ff362d966dc:   lea    0x2000000(%r13),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@394 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.19%  │││  0x00007ff362d966e3:   mov    %rcx,%rdi
   0.04%  │││  0x00007ff362d966e6:   and    $0xfffffffffc000000,%rdi     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@406 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d966ed:   sub    %rdi,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@407 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007ff362d966f0:   mov    %r13,0x20(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@598 (line 152)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d966f4:   mov    %rbx,%rdi
   0.03%  │││  0x00007ff362d966f7:   imul   0x28(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@51 (line 256)
          │││  0x00007ff362d966fd:   mov    %rsi,%r13
   0.04%  │││  0x00007ff362d96700:   imul   %rbp,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@58 (line 256)
   0.03%  │││  0x00007ff362d96704:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@59 (line 256)
   0.03%  │││  0x00007ff362d96707:   shl    %rdi                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@60 (line 256)
          │││  0x00007ff362d9670a:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@208 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007ff362d9670e:   add    %r10,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@209 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d96711:   mov    0x30(%rsp),%r10
   0.04%  │││  0x00007ff362d96716:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@437 (line 266)
          │││  0x00007ff362d9671a:   mov    %r8,%r13
   0.03%  │││  0x00007ff362d9671d:   imul   %r9,%r13                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@445 (line 266)
   0.03%  │││  0x00007ff362d96721:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@446 (line 266)
   0.02%  │││  0x00007ff362d96724:   mov    0x8(%rsp),%r13
          │││  0x00007ff362d96729:   imul   %rax,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@455 (line 266)
   0.04%  │││  0x00007ff362d9672d:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@456 (line 266)
   0.04%  │││  0x00007ff362d96730:   shl    %r10                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@457 (line 266)
   0.05%  │││  0x00007ff362d96733:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@217 (line 98)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││                                                            ;   {no_reloc}
          │││  0x00007ff362d96737:   mov    %r10,%r13
   0.04%  │││  0x00007ff362d9673a:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@225 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d9673e:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@229 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d96745:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@230 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.08%  │││  0x00007ff362d96748:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@397 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007ff362d9674c:   add    %rcx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@414 (line 124)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d9674f:   lea    0x2000000(%rdi),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@422 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.16%  │││  0x00007ff362d96756:   mov    %rcx,%r13
   0.02%  │││  0x00007ff362d96759:   and    $0xfffffffffc000000,%r13     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@434 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d96760:   sub    %r13,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@435 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.11%  │││  0x00007ff362d96763:   mov    %rdi,0x28(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@603 (line 153)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.08%  │││  0x00007ff362d96767:   mov    %rsi,%rdi
          │││  0x00007ff362d9676a:   imul   %rsi,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@88 (line 257)
   0.03%  │││  0x00007ff362d9676e:   mov    0x30(%rsp),%r13
   0.03%  │││  0x00007ff362d96773:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@72 (line 257)
   0.05%  │││  0x00007ff362d96779:   mov    %rbx,%r14
          │││  0x00007ff362d9677c:   imul   %rbp,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@79 (line 257)
   0.03%  │││  0x00007ff362d96780:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@80 (line 257)
   0.04%  │││  0x00007ff362d96783:   shl    %r13                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@81 (line 257)
   0.05%  │││  0x00007ff362d96786:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@89 (line 257)
          │││  0x00007ff362d96789:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@239 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d9678d:   add    %r10,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@240 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d96790:   mov    %rax,%r10
   0.07%  │││  0x00007ff362d96793:   imul   %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@490 (line 267)
          │││  0x00007ff362d96797:   mov    %r11,%r13
   0.02%  │││  0x00007ff362d9679a:   imul   %r9,%r13                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@470 (line 267)
   0.03%  │││  0x00007ff362d9679e:   mov    %r8,%r14
   0.06%  │││  0x00007ff362d967a1:   imul   0x8(%rsp),%r14               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@479 (line 267)
          │││  0x00007ff362d967a7:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@480 (line 267)
   0.02%  │││  0x00007ff362d967aa:   shl    %r13                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@481 (line 267)
   0.03%  │││  0x00007ff362d967ad:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@491 (line 267)
   0.06%  │││  0x00007ff362d967b0:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@248 (line 102)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d967b4:   mov    %r10,%r13
   0.01%  │││  0x00007ff362d967b7:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@256 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d967bb:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@260 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007ff362d967c2:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@261 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d967c5:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@425 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d967c9:   add    %rcx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@442 (line 128)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d967cc:   lea    0x2000000(%rdi),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@450 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007ff362d967d3:   mov    %rcx,%r13
          │││  0x00007ff362d967d6:   and    $0xfffffffffc000000,%r13     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@462 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007ff362d967dd:   sub    %r13,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@463 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d967e0:   mov    %rdi,0x30(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@608 (line 154)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d967e4:   mov    %r9,%rdi
          │││  0x00007ff362d967e7:   imul   0x28(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@101 (line 258)
   0.02%  │││  0x00007ff362d967ed:   mov    0x30(%rsp),%r13
   0.02%  │││  0x00007ff362d967f2:   imul   %rbp,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@108 (line 258)
   0.05%  │││  0x00007ff362d967f6:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@109 (line 258)
          │││  0x00007ff362d967f9:   mov    %rbx,%r13
   0.01%  │││  0x00007ff362d967fc:   imul   %rsi,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@116 (line 258)
   0.02%  │││  0x00007ff362d96800:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@117 (line 258)
   0.05%  │││  0x00007ff362d96803:   shl    %rdi                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@118 (line 258)
          │││  0x00007ff362d96806:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@270 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d9680a:   add    %r10,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@271 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d9680d:   mov    %r11,%r10
   0.04%  │││  0x00007ff362d96810:   imul   0x8(%rsp),%r10               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@505 (line 268)
          │││  0x00007ff362d96816:   mov    %r8,%r13
   0.02%  │││  0x00007ff362d96819:   imul   %rax,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@514 (line 268)
   0.03%  │││  0x00007ff362d9681d:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@515 (line 268)
   0.07%  │││  0x00007ff362d96820:   shl    %r10                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@516 (line 268)
          │││  0x00007ff362d96823:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@279 (line 106)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d96827:   mov    %r10,%r13
   0.04%  │││  0x00007ff362d9682a:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@287 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d9682e:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@291 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││                                                            ;   {no_reloc}
          │││  0x00007ff362d96835:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@292 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d96838:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@453 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d9683c:   add    %rcx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@470 (line 132)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d9683f:   lea    0x2000000(%rdi),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@478 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d96846:   mov    %rcx,%r13
   0.02%  │││  0x00007ff362d96849:   and    $0xfffffffffc000000,%r13     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@490 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d96850:   sub    %r13,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@491 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d96853:   mov    %rdi,0x38(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@613 (line 155)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d96857:   mov    %rbx,%rdi
   0.02%  │││  0x00007ff362d9685a:   imul   %rbx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@155 (line 259)
   0.02%  │││  0x00007ff362d9685e:   mov    0x8(%rsp),%r13
   0.06%  │││  0x00007ff362d96863:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@131 (line 259)
          │││  0x00007ff362d96869:   mov    %r9,%r14
   0.02%  │││  0x00007ff362d9686c:   imul   %rbp,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@138 (line 259)
   0.04%  │││  0x00007ff362d96870:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@139 (line 259)
   0.05%  │││  0x00007ff362d96873:   mov    0x30(%rsp),%r14
          │││  0x00007ff362d96878:   imul   %rsi,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@146 (line 259)
   0.02%  │││  0x00007ff362d9687c:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@147 (line 259)
   0.03%  │││  0x00007ff362d9687f:   shl    %r13                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@148 (line 259)
   0.06%  │││  0x00007ff362d96882:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@156 (line 259)
          │││  0x00007ff362d96885:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@301 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d96889:   add    %r10,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@302 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d9688c:   imul   %r8,%r8                      ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@540 (line 269)
   0.05%  │││  0x00007ff362d96890:   imul   %rax,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@530 (line 269)
          │││  0x00007ff362d96894:   shl    %r11                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@531 (line 269)
   0.02%  │││  0x00007ff362d96897:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@541 (line 269)
   0.03%  │││  0x00007ff362d9689a:   imul   $0x13,%r8,%r10               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@310 (line 110)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d9689e:   mov    %r10,%r11
          │││  0x00007ff362d968a1:   shl    $0x5,%r11                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@318 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007ff362d968a5:   and    $0x3ffffff,%r11              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@322 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d968ac:   add    %r11,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@323 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007ff362d968af:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@481 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d968b3:   add    %rcx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@498 (line 136)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d968b6:   lea    0x2000000(%rdi),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@506 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d968bd:   mov    %r11,%r8
   0.06%  │││  0x00007ff362d968c0:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@518 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d968c7:   sub    %r8,%rdi                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@519 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d968ca:   mov    %rdi,0x40(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@619 (line 156)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d968ce:   imul   0x28(%rsp),%rax              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@169 (line 260)
   0.07%  │││  0x00007ff362d968d4:   mov    0x8(%rsp),%rdi
          │││  0x00007ff362d968d9:   imul   %rbp,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@177 (line 260)
   0.02%  │││  0x00007ff362d968dd:   add    %rdi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@178 (line 260)
   0.03%  │││  0x00007ff362d968e0:   imul   %rsi,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@185 (line 260)
   0.06%  │││  0x00007ff362d968e4:   add    %r9,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@186 (line 260)
          │││  0x00007ff362d968e7:   mov    0x30(%rsp),%r8
   0.02%  │││  0x00007ff362d968ec:   imul   %rbx,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@193 (line 260)
   0.02%  │││  0x00007ff362d968f0:   add    %r8,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@194 (line 260)
   0.04%  │││  0x00007ff362d968f3:   shl    %rax                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@195 (line 260)
          │││  0x00007ff362d968f6:   mov    0x10(%rsp),%r8
   0.02%  │││  0x00007ff362d968fb:   shl    $0x5,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@16 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d968ff:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@20 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d96906:   add    %r8,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@21 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d96909:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@332 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d9690d:   add    %r10,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@333 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d96910:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@509 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d96914:   add    %r11,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@526 (line 140)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007ff362d96917:   lea    0x2000000(%rax),%r10         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@534 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d9691e:   mov    %r10,%r11
   0.03%  │││  0x00007ff362d96921:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@546 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007ff362d96928:   sub    %r11,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@547 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d9692b:   mov    %rax,0x48(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@625 (line 157)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d9692f:   mov    0x18(%rsp),%r11              ;   {no_reloc}
   0.01%  │││  0x00007ff362d96934:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@82 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007ff362d9693b:   mov    0x40(%rsp),%r14
          │││  0x00007ff362d96940:   sub    %r11,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@83 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007ff362d96943:   sar    $0x1a,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@537 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d96947:   add    %r10,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@554 (line 144)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d9694a:   lea    0x2000000(%r14),%r10         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@562 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d96951:   mov    %r10,%r11
   0.02%  │││  0x00007ff362d96954:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@574 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007ff362d9695b:   sub    %r11,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@575 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.08%  │││  0x00007ff362d9695e:   mov    %r14,0x50(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@631 (line 158)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d96962:   mov    0x38(%rsp),%r13
   0.03%  │││  0x00007ff362d96967:   and    $0xfffffffffc000000,%r13     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@110 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d9696e:   mov    0x20(%rsp),%rcx
   0.06%  │││  0x00007ff362d96973:   sub    %r13,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@111 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007ff362d96976:   sar    $0x1a,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@565 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007ff362d9697a:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@582 (line 148)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007ff362d9697d:   mov    %rcx,0x58(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@637 (line 159)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007ff362d96981:   mov    0x50(%rsp),%rbp
          │││  0x00007ff362d96986:   add    $0x58,%rsp
   0.02%  │││  0x00007ff362d9698a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007ff362d96991:   ja     0x00007ff362d969c7
   0.02%  │││  0x00007ff362d96997:   ret    
          │↘↘  0x00007ff362d96998:   movl   $0xffffffe5,0x484(%r15)      ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@2 (line 253)
          │    0x00007ff362d969a3:   mov    %r12,0x490(%r15)
          │    0x00007ff362d969aa:   call   0x00007ff36276a17a           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                              ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::square@0 (line 253)
          │                                                              ;   {runtime_call DeoptimizationBlob}
          │    0x00007ff362d969af:   nopl   0x0(%rax,%rax,1)
          ↘    0x00007ff362d969b7:   mov    %rbp,0x50(%rsp)
               0x00007ff362d969bc:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
....................................................................................................
  10.86%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.80%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1104 
  10.86%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 1122 
   8.88%       jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::asAffine, version 2, compile id 1454 
   6.45%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   3.52%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   2.94%       jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1193 
   2.84%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   2.12%       jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1193 
   2.06%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1068 
   1.82%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1128 
   1.39%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1085 
   0.65%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   0.26%               kernel  [unknown] 
   0.17%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   0.16%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   0.14%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   0.12%               kernel  [unknown] 
   0.09%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   2.54%  <...other 628 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.80%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1104 
  14.11%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1320 
  10.86%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 1122 
   8.91%       jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::asAffine, version 2, compile id 1454 
   5.06%       jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1193 
   2.06%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1068 
   1.82%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1128 
   1.40%               kernel  [unknown] 
   1.39%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1085 
   0.25%                       <unknown> 
   0.22%         runtime stub  StubRoutines::sha512_implCompressMB 
   0.09%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1442 
   0.07%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 3, compile id 1418 
   0.07%       jvmci, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 4, compile id 1458 
   0.06%       jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1492 
   0.05%         runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.05%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1102 
   0.05%       jvmci, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1488 
   0.04%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::finalReduce, version 4, compile id 1346 
   0.04%         libc-2.31.so  __vfprintf_internal 
   0.58%  <...other 143 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.61%       jvmci, level 4
   1.40%               kernel
   0.27%         runtime stub
   0.25%                     
   0.17%            libjvm.so
   0.13%         libc-2.31.so
   0.08%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          c1, level 3
   0.01%          interpreter
   0.00%     perf-2128262.map
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed25519, messageLength = 2048)

# Run progress: 25.00% complete, ETA 00:11:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1934.864 us/op
# Warmup Iteration   2: 822.596 us/op
# Warmup Iteration   3: 800.248 us/op
# Warmup Iteration   4: 800.047 us/op
# Warmup Iteration   5: 800.050 us/op
Iteration   1: 799.777 us/op
Iteration   2: 799.753 us/op
Iteration   3: 799.747 us/op
Iteration   4: 799.773 us/op
Iteration   5: 799.633 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  799.736 ±(99.9%) 0.229 us/op [Average]
  (min, avg, max) = (799.633, 799.736, 799.777), stdev = 0.059
  CI (99.9%): [799.508, 799.965] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 383491 total address lines.
Perf output processed (skipped 61.791 seconds):
 Column 1: cycles (50801 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1138 

 <region is too big to display, has 1998 lines, but threshold is 1000>
....................................................................................................
  52.13%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 1137 

             [Disassembly]
             --------------------------------------------------------------------------------
             [Constant Pool (empty)]
             --------------------------------------------------------------------------------
             [Entry Point]
               # {method} {0x00007f6950336d60} &apos;square&apos; &apos;([J[J)V&apos; in &apos;sun/security/util/math/intpoly/IntegerPolynomial25519&apos;
               # this:     rsi:rsi   = &apos;sun/security/util/math/intpoly/IntegerPolynomial25519&apos;
               # parm0:    rdx:rdx   = &apos;[J&apos;
               # parm1:    rcx:rcx   = &apos;[J&apos;
               #           [sp+0x60]  (sp of caller)
   0.04%       0x00007f69d6da3520:   mov    0x8(%rsi),%r10d
   0.02%       0x00007f69d6da3524:   movabs $0x7f695b000000,%r12
   0.02%       0x00007f69d6da352e:   add    %r12,%r10
   0.05%       0x00007f69d6da3531:   xor    %r12,%r12
   0.02%       0x00007f69d6da3534:   cmp    %r10,%rax
               0x00007f69d6da3537:   jne    0x00007f69d6764080           ;   {runtime_call ic_miss_stub}
   0.03%       0x00007f69d6da353d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.02%       0x00007f69d6da3540:   mov    %eax,-0x14000(%rsp)
   0.05%       0x00007f69d6da3547:   sub    $0x58,%rsp
   0.03%       0x00007f69d6da354b:   nop
   0.03%       0x00007f69d6da354c:   cmpl   $0x0,0x20(%r15)
   0.04%  ╭    0x00007f69d6da3554:   jne    0x00007f69d6da3ab7
   0.02%  │    0x00007f69d6da355a:   mov    %rbp,0x50(%rsp)              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                              ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::square@0 (line 253)
   0.04%  │    0x00007f69d6da355f:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f69d6da3adb
          │                                                              ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                              ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::square@0 (line 253)
   0.02%  │    0x00007f69d6da3563:   mov    0xc(%rcx),%r11d              ; implicit exception: dispatches to 0x00007f69d6da3afe
   0.03%  │    0x00007f69d6da3567:   cmp    $0xa,%r10d
          │╭   0x00007f69d6da356b:   jb     0x00007f69d6da3a98           ;*laload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@2 (line 253)
   0.02%  ││   0x00007f69d6da3571:   cmp    $0xa,%r11d
          ││╭  0x00007f69d6da3575:   jb     0x00007f69d6da3a98           ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da357b:   mov    %rcx,(%rsp)
   0.01%  │││  0x00007f69d6da357f:   mov    0x30(%rdx),%r10              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@71 (line 257)
   0.03%  │││  0x00007f69d6da3583:   mov    0x58(%rdx),%r11              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@255 (line 262)
   0.02%  │││  0x00007f69d6da3587:   mov    0x50(%rdx),%r8               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@207 (line 261)
   0.03%  │││  0x00007f69d6da358b:   mov    0x38(%rdx),%r9               ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@100 (line 258)
   0.02%  │││  0x00007f69d6da358f:   mov    0x28(%rdx),%rbx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@50 (line 256)
   0.04%  │││  0x00007f69d6da3593:   mov    0x40(%rdx),%rdi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@130 (line 259)
   0.02%  │││  0x00007f69d6da3597:   mov    0x20(%rdx),%rsi              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@29 (line 255)
   0.02%  │││  0x00007f69d6da359b:   mov    0x48(%rdx),%rax              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@168 (line 260)
   0.03%  │││  0x00007f69d6da359f:   mov    0x18(%rdx),%rbp              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@16 (line 254)
   0.04%  │││  0x00007f69d6da35a3:   mov    0x10(%rdx),%rdx              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@2 (line 253)
   0.03%  │││  0x00007f69d6da35a7:   mov    %rdx,%r13
   0.02%  │││  0x00007f69d6da35aa:   imul   %rdx,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@6 (line 253)
   0.04%  │││  0x00007f69d6da35ae:   mov    %r9,%r14
   0.04%  │││  0x00007f69d6da35b1:   imul   %r9,%r14                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@340 (line 263)
   0.02%  │││  0x00007f69d6da35b5:   mov    %r11,%rcx
   0.02%  │││  0x00007f69d6da35b8:   imul   %rbp,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@305 (line 263)
   0.03%  │││  0x00007f69d6da35bc:   mov    %r13,0x40(%rsp)
   0.04%  │││  0x00007f69d6da35c1:   mov    %r8,%r13
   0.03%  │││  0x00007f69d6da35c4:   imul   %rsi,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@313 (line 263)
   0.02%  │││  0x00007f69d6da35c8:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@314 (line 263)
   0.04%  │││  0x00007f69d6da35cb:   mov    %rbx,%r13
   0.03%  │││  0x00007f69d6da35ce:   imul   %rax,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@322 (line 263)
   0.03%  │││  0x00007f69d6da35d2:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@323 (line 263)
   0.06%  │││  0x00007f69d6da35d5:   mov    %r10,%r13
   0.02%  │││  0x00007f69d6da35d8:   imul   %rdi,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@331 (line 263)
   0.06%  │││  0x00007f69d6da35dc:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@332 (line 263)
   0.02%  │││  0x00007f69d6da35df:   shl    %rcx                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@333 (line 263)
   0.04%  │││  0x00007f69d6da35e2:   add    %rcx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@341 (line 263)
   0.06%  │││  0x00007f69d6da35e5:   mov    %r11,%rcx
   0.01%  │││  0x00007f69d6da35e8:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@256 (line 262)
   0.01%  │││  0x00007f69d6da35ec:   mov    %r8,%r13
   0.01%  │││  0x00007f69d6da35ef:   imul   %rbp,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@264 (line 262)
   0.04%  │││  0x00007f69d6da35f3:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@265 (line 262)
   0.03%  │││  0x00007f69d6da35f6:   mov    %rsi,%r13
   0.01%  │││  0x00007f69d6da35f9:   imul   %rax,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@273 (line 262)
   0.02%  │││  0x00007f69d6da35fd:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@274 (line 262)
   0.04%  │││  0x00007f69d6da3600:   mov    %rbx,%r13
   0.01%  │││  0x00007f69d6da3603:   imul   %rdi,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@282 (line 262)
   0.02%  │││  0x00007f69d6da3607:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@283 (line 262)
   0.01%  │││  0x00007f69d6da360a:   mov    %r10,%r13
   0.05%  │││  0x00007f69d6da360d:   imul   %r9,%r13                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@290 (line 262)
   0.03%  │││  0x00007f69d6da3611:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@291 (line 262)
   0.02%  │││  0x00007f69d6da3614:   shl    %rcx                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@292 (line 262)
   0.02%  │││  0x00007f69d6da3617:   mov    %r11,%r13
   0.03%  │││  0x00007f69d6da361a:   imul   %r11,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@567 (line 271)
   0.02%  │││  0x00007f69d6da361e:   imul   $0x13,%r13,%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@39 (line 74)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da3622:   mov    %r14,0x38(%rsp)
   0.05%  │││  0x00007f69d6da3627:   mov    %r13,%r14
   0.02%  │││  0x00007f69d6da362a:   sar    $0x15,%r14                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@61 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da362e:   add    %r14,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@62 (line 76)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da3631:   mov    %r10,%r14
   0.03%  │││  0x00007f69d6da3634:   imul   %r10,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@242 (line 261)
          │││                                                            ;   {no_reloc}
   0.04%  │││  0x00007f69d6da3638:   mov    %r10,0x30(%rsp)
   0.02%  │││  0x00007f69d6da363d:   mov    %r8,%r10
   0.03%  │││  0x00007f69d6da3640:   imul   %rdx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@208 (line 261)
   0.03%  │││  0x00007f69d6da3644:   mov    %rdx,0x28(%rsp)
   0.03%  │││  0x00007f69d6da3649:   mov    %rax,%rdx
   0.01%  │││  0x00007f69d6da364c:   imul   %rbp,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@216 (line 261)
   0.03%  │││  0x00007f69d6da3650:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@217 (line 261)
   0.04%  │││  0x00007f69d6da3653:   mov    %rdi,%rdx
   0.04%  │││  0x00007f69d6da3656:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@225 (line 261)
   0.01%  │││  0x00007f69d6da365a:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@226 (line 261)
   0.03%  │││  0x00007f69d6da365d:   mov    %r9,%rdx
   0.03%  │││  0x00007f69d6da3660:   imul   %rbx,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@233 (line 261)
   0.02%  │││  0x00007f69d6da3664:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@234 (line 261)
   0.02%  │││  0x00007f69d6da3667:   shl    %r10                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@235 (line 261)
   0.04%  │││  0x00007f69d6da366a:   add    %r10,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@243 (line 261)
   0.04%  │││  0x00007f69d6da366d:   mov    %r11,%r10
   0.02%  │││  0x00007f69d6da3670:   imul   %r8,%r10                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@555 (line 270)
   0.01%  │││  0x00007f69d6da3674:   shl    %r10                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@556 (line 270)
   0.04%  │││  0x00007f69d6da3677:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@8 (line 70)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.14%  │││  0x00007f69d6da367b:   mov    %r10,%rdx
   0.01%  │││  0x00007f69d6da367e:   sar    $0x15,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@30 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f69d6da3682:   add    %rdx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@31 (line 72)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f69d6da3685:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@47 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.10%  │││  0x00007f69d6da3689:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@51 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da3690:   add    %r13,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@52 (line 75)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f69d6da3693:   lea    0x2000000(%r14),%rdx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@70 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f69d6da369a:   mov    %rdx,%r13
   0.11%  │││  0x00007f69d6da369d:   sar    $0x1a,%r13                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@73 (line 78)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da36a1:   add    %r13,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@90 (line 80)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f69d6da36a4:   lea    0x2000000(%rcx),%r13         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@98 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f69d6da36ab:   mov    %rcx,0x20(%rsp)
   0.12%  │││  0x00007f69d6da36b0:   mov    %r13,%rcx
   0.02%  │││  0x00007f69d6da36b3:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@101 (line 82)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f69d6da36b7:   add    0x38(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@118 (line 84)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da36bc:   imul   $0x13,%rcx,%rcx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@126 (line 86)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.21%  │││  0x00007f69d6da36c0:   mov    %r13,0x38(%rsp)
   0.01%  │││  0x00007f69d6da36c5:   mov    %rcx,%r13
   0.00%  │││  0x00007f69d6da36c8:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@133 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f69d6da36cc:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@137 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.08%  │││  0x00007f69d6da36d3:   add    0x40(%rsp),%r13              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@138 (line 87)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f69d6da36d8:   mov    %r14,0x40(%rsp)
          │││  0x00007f69d6da36dd:   lea    0x2000000(%r13),%r14         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@340 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f69d6da36e4:   mov    %rdx,0x18(%rsp)
   0.00%  │││  0x00007f69d6da36e9:   mov    %r14,%rdx
   0.00%  │││  0x00007f69d6da36ec:   and    $0xfffffffffc000000,%rdx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@351 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f69d6da36f3:   sub    %rdx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@352 (line 115)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.11%  │││  0x00007f69d6da36f6:   mov    (%rsp),%rdx
   0.00%  │││  0x00007f69d6da36fa:   mov    %r13,0x10(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@588 (line 150)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.21%  │││  0x00007f69d6da36fe:   mov    %rbp,%r13
          │││  0x00007f69d6da3701:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@17 (line 254)
          │││  0x00007f69d6da3707:   shl    %r13                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@18 (line 254)
   0.00%  │││  0x00007f69d6da370a:   sar    $0x15,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@146 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007f69d6da370e:   add    %rcx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@147 (line 88)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da3711:   mov    %r11,%rcx
          │││  0x00007f69d6da3714:   imul   %rsi,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@354 (line 264)
   0.00%  │││  0x00007f69d6da3718:   mov    %r10,0x10(%rsp)
   0.10%  │││  0x00007f69d6da371d:   mov    %r8,%r10
          │││  0x00007f69d6da3720:   imul   %rbx,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@362 (line 264)
   0.00%  │││  0x00007f69d6da3724:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@363 (line 264)
   0.00%  │││  0x00007f69d6da3727:   mov    0x30(%rsp),%r10
   0.10%  │││  0x00007f69d6da372c:   imul   %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@371 (line 264)
          │││  0x00007f69d6da3730:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@372 (line 264)
          │││  0x00007f69d6da3733:   mov    %r9,%r10                     ;   {no_reloc}
          │││  0x00007f69d6da3736:   imul   %rdi,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@380 (line 264)
   0.10%  │││  0x00007f69d6da373a:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@381 (line 264)
          │││  0x00007f69d6da373d:   shl    %rcx                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@382 (line 264)
          │││  0x00007f69d6da3740:   imul   $0x13,%rcx,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@155 (line 90)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f69d6da3744:   mov    %r10,%rcx
   0.10%  │││  0x00007f69d6da3747:   shl    $0x5,%rcx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@163 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da374b:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@167 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f69d6da3752:   add    %rcx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@168 (line 91)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f69d6da3755:   sar    $0x1a,%r14                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@343 (line 114)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.10%  │││  0x00007f69d6da3759:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@358 (line 116)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da375c:   lea    0x2000000(%r13),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@366 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f69d6da3763:   mov    %rcx,%r14
          │││  0x00007f69d6da3766:   and    $0xfffffffffc000000,%r14     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@378 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.12%  │││  0x00007f69d6da376d:   sub    %r14,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@379 (line 119)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f69d6da3770:   mov    %r13,0x18(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@593 (line 151)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007f69d6da3774:   mov    %rbp,%r13
   0.01%  │││  0x00007f69d6da3777:   imul   %rbp,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@38 (line 255)
   0.04%  │││  0x00007f69d6da377b:   mov    %rsi,%r14
          │││  0x00007f69d6da377e:   imul   0x28(%rsp),%r14              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@30 (line 255)
   0.04%  │││  0x00007f69d6da3784:   shl    %r14                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@31 (line 255)
   0.00%  │││  0x00007f69d6da3787:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@39 (line 255)
   0.05%  │││  0x00007f69d6da378a:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@177 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da378e:   add    %r10,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@178 (line 92)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da3791:   mov    %rdi,%r10
   0.00%  │││  0x00007f69d6da3794:   imul   %rdi,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@423 (line 265)
   0.06%  │││  0x00007f69d6da3798:   mov    %r11,%r14
          │││  0x00007f69d6da379b:   imul   %rbx,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@395 (line 265)
   0.04%  │││  0x00007f69d6da379f:   mov    %rdi,0x8(%rsp)
   0.00%  │││  0x00007f69d6da37a4:   mov    0x30(%rsp),%rdi
   0.07%  │││  0x00007f69d6da37a9:   imul   %r8,%rdi                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@403 (line 265)
          │││  0x00007f69d6da37ad:   add    %rdi,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@404 (line 265)
   0.05%  │││  0x00007f69d6da37b0:   mov    %r9,%rdi
          │││  0x00007f69d6da37b3:   imul   %rax,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@412 (line 265)
   0.05%  │││  0x00007f69d6da37b7:   add    %rdi,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@413 (line 265)
          │││  0x00007f69d6da37ba:   shl    %r14                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@414 (line 265)
   0.03%  │││  0x00007f69d6da37bd:   add    %r14,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@424 (line 265)
   0.00%  │││  0x00007f69d6da37c0:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@186 (line 94)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f69d6da37c4:   mov    %r10,%rdi
          │││  0x00007f69d6da37c7:   shl    $0x5,%rdi                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@194 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f69d6da37cb:   and    $0x3ffffff,%rdi              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@198 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da37d2:   add    %rdi,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@199 (line 95)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f69d6da37d5:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@369 (line 118)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da37d9:   add    %rcx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@386 (line 120)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f69d6da37dc:   lea    0x2000000(%r13),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@394 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007f69d6da37e3:   mov    %rcx,%rdi
   0.07%  │││  0x00007f69d6da37e6:   and    $0xfffffffffc000000,%rdi     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@406 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da37ed:   sub    %rdi,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@407 (line 123)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.12%  │││  0x00007f69d6da37f0:   mov    %r13,0x20(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@598 (line 152)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f69d6da37f4:   mov    %rbx,%rdi
   0.06%  │││  0x00007f69d6da37f7:   imul   0x28(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@51 (line 256)
          │││  0x00007f69d6da37fd:   mov    %rsi,%r13
   0.03%  │││  0x00007f69d6da3800:   imul   %rbp,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@58 (line 256)
   0.02%  │││  0x00007f69d6da3804:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@59 (line 256)
   0.04%  │││  0x00007f69d6da3807:   shl    %rdi                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@60 (line 256)
          │││  0x00007f69d6da380a:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@208 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da380e:   add    %r10,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@209 (line 96)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da3811:   mov    0x30(%rsp),%r10
   0.05%  │││  0x00007f69d6da3816:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@437 (line 266)
   0.00%  │││  0x00007f69d6da381a:   mov    %r8,%r13
   0.03%  │││  0x00007f69d6da381d:   imul   %r9,%r13                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@445 (line 266)
   0.04%  │││  0x00007f69d6da3821:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@446 (line 266)
   0.04%  │││  0x00007f69d6da3824:   mov    0x8(%rsp),%r13
          │││  0x00007f69d6da3829:   imul   %rax,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@455 (line 266)
   0.02%  │││  0x00007f69d6da382d:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@456 (line 266)
   0.02%  │││  0x00007f69d6da3830:   shl    %r10                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@457 (line 266)
   0.04%  │││  0x00007f69d6da3833:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@217 (line 98)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││                                                            ;   {no_reloc}
          │││  0x00007f69d6da3837:   mov    %r10,%r13
   0.03%  │││  0x00007f69d6da383a:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@225 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da383e:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@229 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f69d6da3845:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@230 (line 99)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f69d6da3848:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@397 (line 122)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da384c:   add    %rcx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@414 (line 124)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f69d6da384f:   lea    0x2000000(%rdi),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@422 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.20%  │││  0x00007f69d6da3856:   mov    %rcx,%r13
   0.02%  │││  0x00007f69d6da3859:   and    $0xfffffffffc000000,%r13     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@434 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da3860:   sub    %r13,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@435 (line 127)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.11%  │││  0x00007f69d6da3863:   mov    %rdi,0x28(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@603 (line 153)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.11%  │││  0x00007f69d6da3867:   mov    %rsi,%rdi
          │││  0x00007f69d6da386a:   imul   %rsi,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@88 (line 257)
   0.02%  │││  0x00007f69d6da386e:   mov    0x30(%rsp),%r13
   0.02%  │││  0x00007f69d6da3873:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@72 (line 257)
   0.06%  │││  0x00007f69d6da3879:   mov    %rbx,%r14
          │││  0x00007f69d6da387c:   imul   %rbp,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@79 (line 257)
   0.02%  │││  0x00007f69d6da3880:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@80 (line 257)
   0.02%  │││  0x00007f69d6da3883:   shl    %r13                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@81 (line 257)
   0.05%  │││  0x00007f69d6da3886:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@89 (line 257)
          │││  0x00007f69d6da3889:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@239 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f69d6da388d:   add    %r10,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@240 (line 100)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da3890:   mov    %rax,%r10
   0.06%  │││  0x00007f69d6da3893:   imul   %rax,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@490 (line 267)
          │││  0x00007f69d6da3897:   mov    %r11,%r13
   0.01%  │││  0x00007f69d6da389a:   imul   %r9,%r13                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@470 (line 267)
   0.02%  │││  0x00007f69d6da389e:   mov    %r8,%r14
   0.05%  │││  0x00007f69d6da38a1:   imul   0x8(%rsp),%r14               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@479 (line 267)
          │││  0x00007f69d6da38a7:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@480 (line 267)
   0.01%  │││  0x00007f69d6da38aa:   shl    %r13                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@481 (line 267)
   0.03%  │││  0x00007f69d6da38ad:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@491 (line 267)
   0.06%  │││  0x00007f69d6da38b0:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@248 (line 102)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da38b4:   mov    %r10,%r13
   0.01%  │││  0x00007f69d6da38b7:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@256 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da38bb:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@260 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f69d6da38c2:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@261 (line 103)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da38c5:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@425 (line 126)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da38c9:   add    %rcx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@442 (line 128)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da38cc:   lea    0x2000000(%rdi),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@450 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f69d6da38d3:   mov    %rcx,%r13
          │││  0x00007f69d6da38d6:   and    $0xfffffffffc000000,%r13     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@462 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da38dd:   sub    %r13,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@463 (line 131)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da38e0:   mov    %rdi,0x30(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@608 (line 154)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f69d6da38e4:   mov    %r9,%rdi
          │││  0x00007f69d6da38e7:   imul   0x28(%rsp),%rdi              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@101 (line 258)
   0.02%  │││  0x00007f69d6da38ed:   mov    0x30(%rsp),%r13
   0.02%  │││  0x00007f69d6da38f2:   imul   %rbp,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@108 (line 258)
   0.06%  │││  0x00007f69d6da38f6:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@109 (line 258)
          │││  0x00007f69d6da38f9:   mov    %rbx,%r13
   0.02%  │││  0x00007f69d6da38fc:   imul   %rsi,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@116 (line 258)
   0.02%  │││  0x00007f69d6da3900:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@117 (line 258)
   0.05%  │││  0x00007f69d6da3903:   shl    %rdi                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@118 (line 258)
          │││  0x00007f69d6da3906:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@270 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f69d6da390a:   add    %r10,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@271 (line 104)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da390d:   mov    %r11,%r10
   0.06%  │││  0x00007f69d6da3910:   imul   0x8(%rsp),%r10               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@505 (line 268)
          │││  0x00007f69d6da3916:   mov    %r8,%r13
   0.02%  │││  0x00007f69d6da3919:   imul   %rax,%r13                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@514 (line 268)
   0.02%  │││  0x00007f69d6da391d:   add    %r13,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@515 (line 268)
   0.05%  │││  0x00007f69d6da3920:   shl    %r10                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@516 (line 268)
          │││  0x00007f69d6da3923:   imul   $0x13,%r10,%r10              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@279 (line 106)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f69d6da3927:   mov    %r10,%r13
   0.03%  │││  0x00007f69d6da392a:   shl    $0x5,%r13                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@287 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.09%  │││  0x00007f69d6da392e:   and    $0x3ffffff,%r13              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@291 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││                                                            ;   {no_reloc}
          │││  0x00007f69d6da3935:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@292 (line 107)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da3938:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@453 (line 130)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da393c:   add    %rcx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@470 (line 132)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f69d6da393f:   lea    0x2000000(%rdi),%rcx         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@478 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da3946:   mov    %rcx,%r13
   0.02%  │││  0x00007f69d6da3949:   and    $0xfffffffffc000000,%r13     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@490 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da3950:   sub    %r13,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@491 (line 135)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f69d6da3953:   mov    %rdi,0x38(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@613 (line 155)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da3957:   mov    %rbx,%rdi
   0.02%  │││  0x00007f69d6da395a:   imul   %rbx,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@155 (line 259)
   0.04%  │││  0x00007f69d6da395e:   mov    0x8(%rsp),%r13
   0.05%  │││  0x00007f69d6da3963:   imul   0x28(%rsp),%r13              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@131 (line 259)
          │││  0x00007f69d6da3969:   mov    %r9,%r14
   0.01%  │││  0x00007f69d6da396c:   imul   %rbp,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@138 (line 259)
   0.02%  │││  0x00007f69d6da3970:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@139 (line 259)
   0.06%  │││  0x00007f69d6da3973:   mov    0x30(%rsp),%r14
          │││  0x00007f69d6da3978:   imul   %rsi,%r14                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@146 (line 259)
   0.02%  │││  0x00007f69d6da397c:   add    %r14,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@147 (line 259)
   0.02%  │││  0x00007f69d6da397f:   shl    %r13                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@148 (line 259)
   0.05%  │││  0x00007f69d6da3982:   add    %r13,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@156 (line 259)
          │││  0x00007f69d6da3985:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@301 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da3989:   add    %r10,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@302 (line 108)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da398c:   imul   %r8,%r8                      ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@540 (line 269)
   0.04%  │││  0x00007f69d6da3990:   imul   %rax,%r11                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@530 (line 269)
          │││  0x00007f69d6da3994:   shl    %r11                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@531 (line 269)
   0.02%  │││  0x00007f69d6da3997:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@541 (line 269)
   0.02%  │││  0x00007f69d6da399a:   imul   $0x13,%r8,%r10               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@310 (line 110)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f69d6da399e:   mov    %r10,%r11
          │││  0x00007f69d6da39a1:   shl    $0x5,%r11                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@318 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da39a5:   and    $0x3ffffff,%r11              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@322 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da39ac:   add    %r11,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@323 (line 111)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f69d6da39af:   sar    $0x1a,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@481 (line 134)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da39b3:   add    %rcx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@498 (line 136)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f69d6da39b6:   lea    0x2000000(%rdi),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@506 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da39bd:   mov    %r11,%r8
   0.05%  │││  0x00007f69d6da39c0:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@518 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da39c7:   sub    %r8,%rdi                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@519 (line 139)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da39ca:   mov    %rdi,0x40(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@619 (line 156)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da39ce:   imul   0x28(%rsp),%rax              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@169 (line 260)
   0.05%  │││  0x00007f69d6da39d4:   mov    0x8(%rsp),%rdi
          │││  0x00007f69d6da39d9:   imul   %rbp,%rdi                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@177 (line 260)
   0.02%  │││  0x00007f69d6da39dd:   add    %rdi,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@178 (line 260)
   0.03%  │││  0x00007f69d6da39e0:   imul   %rsi,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@185 (line 260)
   0.06%  │││  0x00007f69d6da39e4:   add    %r9,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@186 (line 260)
          │││  0x00007f69d6da39e7:   mov    0x30(%rsp),%r8
   0.02%  │││  0x00007f69d6da39ec:   imul   %rbx,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@193 (line 260)
   0.02%  │││  0x00007f69d6da39f0:   add    %r8,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@194 (line 260)
   0.06%  │││  0x00007f69d6da39f3:   shl    %rax                         ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@195 (line 260)
          │││  0x00007f69d6da39f6:   mov    0x10(%rsp),%r8
   0.01%  │││  0x00007f69d6da39fb:   shl    $0x5,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@16 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da39ff:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@20 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f69d6da3a06:   add    %r8,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@21 (line 71)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da3a09:   sar    $0x15,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@332 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f69d6da3a0d:   add    %r10,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@333 (line 112)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da3a10:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@509 (line 138)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f69d6da3a14:   add    %r11,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@526 (line 140)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f69d6da3a17:   lea    0x2000000(%rax),%r10         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@534 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da3a1e:   mov    %r10,%r11
   0.03%  │││  0x00007f69d6da3a21:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@546 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.05%  │││  0x00007f69d6da3a28:   sub    %r11,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@547 (line 143)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f69d6da3a2b:   mov    %rax,0x48(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@625 (line 157)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da3a2f:   mov    0x18(%rsp),%r11              ;   {no_reloc}
   0.03%  │││  0x00007f69d6da3a34:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@82 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.07%  │││  0x00007f69d6da3a3b:   mov    0x40(%rsp),%r14
          │││  0x00007f69d6da3a40:   sub    %r11,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@83 (line 79)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da3a43:   sar    $0x1a,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@537 (line 142)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da3a47:   add    %r10,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@554 (line 144)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f69d6da3a4a:   lea    0x2000000(%r14),%r10         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@562 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.00%  │││  0x00007f69d6da3a51:   mov    %r10,%r11
   0.02%  │││  0x00007f69d6da3a54:   and    $0xfffffffffc000000,%r11     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@574 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.02%  │││  0x00007f69d6da3a5b:   sub    %r11,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@575 (line 147)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f69d6da3a5e:   mov    %r14,0x50(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@631 (line 158)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da3a62:   mov    0x38(%rsp),%r13
   0.02%  │││  0x00007f69d6da3a67:   and    $0xfffffffffc000000,%r13     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@110 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.01%  │││  0x00007f69d6da3a6e:   mov    0x20(%rsp),%rcx
   0.04%  │││  0x00007f69d6da3a73:   sub    %r13,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@111 (line 83)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
          │││  0x00007f69d6da3a76:   sar    $0x1a,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@565 (line 146)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.03%  │││  0x00007f69d6da3a7a:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@582 (line 148)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.04%  │││  0x00007f69d6da3a7d:   mov    %rcx,0x58(%rdx)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::carryReduce@637 (line 159)
          │││                                                            ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@609 (line 273)
   0.06%  │││  0x00007f69d6da3a81:   mov    0x50(%rsp),%rbp
          │││  0x00007f69d6da3a86:   add    $0x58,%rsp
   0.03%  │││  0x00007f69d6da3a8a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f69d6da3a91:   ja     0x00007f69d6da3ac7
   0.03%  │││  0x00007f69d6da3a97:   ret    
          │↘↘  0x00007f69d6da3a98:   movl   $0xffffffe5,0x484(%r15)      ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - sun.security.util.math.intpoly.IntegerPolynomial25519::square@2 (line 253)
          │    0x00007f69d6da3aa3:   mov    %r12,0x490(%r15)
          │    0x00007f69d6da3aaa:   call   0x00007f69d676a17a           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop }
          │                                                              ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial25519::square@0 (line 253)
          │                                                              ;   {runtime_call DeoptimizationBlob}
          │    0x00007f69d6da3aaf:   nopl   0x0(%rax,%rax,1)
          ↘    0x00007f69d6da3ab7:   mov    %rbp,0x50(%rsp)
               0x00007f69d6da3abc:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
....................................................................................................
  10.58%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.13%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1138 
  10.58%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 1137 
   8.30%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::asAffine, version 2, compile id 1434 
   4.89%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1193 
   4.41%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1193 
   4.32%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1344 
   3.05%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1069 
   2.63%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1203 
   1.98%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1230 
   1.92%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1203 
   1.36%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1097 
   0.48%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.39%              kernel  [unknown] 
   0.19%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.15%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1344 
   0.13%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.13%              kernel  [unknown] 
   0.12%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1344 
   0.09%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1344 
   0.08%              kernel  [unknown] 
   2.67%  <...other 581 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.13%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1138 
  10.58%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 1137 
   9.30%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setSum, version 2, compile id 1193 
   8.34%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::asAffine, version 2, compile id 1434 
   4.75%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1344 
   4.55%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1203 
   3.05%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1069 
   1.98%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1230 
   1.64%              kernel  [unknown] 
   1.36%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1097 
   1.00%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.34%                      <unknown> 
   0.13%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1418 
   0.07%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 3, compile id 1403 
   0.06%      jvmci, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 1433 
   0.05%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::finalReduce, version 2, compile id 1297 
   0.05%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1464 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark::sign, version 2, compile id 1458 
   0.05%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.04%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1112 
   0.49%  <...other 89 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.62%      jvmci, level 4
   1.64%              kernel
   1.05%        runtime stub
   0.34%                    
   0.16%           libjvm.so
   0.12%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed25519, messageLength = 16384)

# Run progress: 37.50% complete, ETA 00:09:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2106.802 us/op
# Warmup Iteration   2: 878.823 us/op
# Warmup Iteration   3: 863.752 us/op
# Warmup Iteration   4: 863.781 us/op
# Warmup Iteration   5: 863.707 us/op
Iteration   1: 863.738 us/op
Iteration   2: 863.614 us/op
Iteration   3: 863.176 us/op
Iteration   4: 863.117 us/op
Iteration   5: 863.219 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  863.373 ±(99.9%) 1.088 us/op [Average]
  (min, avg, max) = (863.117, 863.373, 863.738), stdev = 0.283
  CI (99.9%): [862.285, 864.461] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 381807 total address lines.
Perf output processed (skipped 61.787 seconds):
 Column 1: cycles (51046 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1109 

 <region is too big to display, has 2003 lines, but threshold is 1000>
....................................................................................................
  48.14%  <total for region 1>

....[Hottest Regions]...............................................................................
  48.14%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1109 
   9.80%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 1117 
   8.40%        runtime stub  StubRoutines::sha512_implCompressMB 
   8.05%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::asAffine, version 2, compile id 1432 
   5.73%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1319 
   3.00%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1319 
   2.53%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1319 
   2.35%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1184 
   1.90%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1184 
   1.82%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1050 
   1.71%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1131 
   1.22%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1064 
   0.74%              kernel  [unknown] 
   0.64%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1319 
   0.17%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1319 
   0.15%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1319 
   0.15%              kernel  [unknown] 
   0.11%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1319 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark::sign, version 2, compile id 1466 
   0.09%              kernel  [unknown] 
   3.20%  <...other 733 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.14%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1109 
  12.51%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1319 
   9.80%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::square, version 2, compile id 1117 
   8.43%        runtime stub  StubRoutines::sha512_implCompressMB 
   8.08%      jvmci, level 4  sun.security.ec.point.ExtendedHomogeneousPoint::asAffine, version 2, compile id 1432 
   4.30%      jvmci, level 4  sun.security.ec.ed.Ed25519Operations::setDouble, version 2, compile id 1184 
   2.35%              kernel  [unknown] 
   1.82%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1050 
   1.71%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::reduce, version 2, compile id 1131 
   1.22%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1064 
   0.27%                      <unknown> 
   0.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark::sign, version 2, compile id 1466 
   0.16%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1475 
   0.11%      jvmci, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 1426 
   0.06%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 3, compile id 1402 
   0.05%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.05%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial25519::mult, version 2, compile id 1099 
   0.05%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1472 
   0.04%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::finalReduce, version 4, compile id 1345 
   0.03%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::sign, version 2, compile id 1471 
   0.58%  <...other 136 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.44%      jvmci, level 4
   8.48%        runtime stub
   2.35%              kernel
   0.27%                    
   0.25%           libjvm.so
   0.12%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%         interpreter
   0.01%         c1, level 3
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%        libjimage.so
   0.00%    perf-2128393.map
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed448, messageLength = 64)

# Run progress: 50.00% complete, ETA 00:07:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5095.654 us/op
# Warmup Iteration   2: 2981.018 us/op
# Warmup Iteration   3: 3013.414 us/op
# Warmup Iteration   4: 2974.894 us/op
# Warmup Iteration   5: 2975.246 us/op
Iteration   1: 2976.347 us/op
Iteration   2: 2975.021 us/op
Iteration   3: 2975.021 us/op
Iteration   4: 2975.269 us/op
Iteration   5: 2975.068 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  2975.345 ±(99.9%) 2.192 us/op [Average]
  (min, avg, max) = (2975.021, 2975.345, 2976.347), stdev = 0.569
  CI (99.9%): [2973.153, 2977.537] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 369952 total address lines.
Perf output processed (skipped 62.947 seconds):
 Column 1: cycles (51322 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1071 

 <region is too big to display, has 1927 lines, but threshold is 1000>
....................................................................................................
  52.70%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1102 

 <region is too big to display, has 1325 lines, but threshold is 1000>
....................................................................................................
  11.04%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.70%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1071 
  11.04%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1102 
   8.53%       jvmci, level 4  sun.security.ec.point.ProjectivePoint::asAffine, version 2, compile id 1359 
   4.13%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::multiply, version 2, compile id 1136 
   3.91%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1141 
   3.49%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1104 
   2.91%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1119 
   2.09%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1150 
   1.70%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1267 
   1.64%               kernel  [unknown] 
   1.47%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1058 
   1.21%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1103 
   0.89%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1150 
   0.89%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1150 
   0.34%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1267 
   0.24%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::multiply, version 2, compile id 1136 
   0.17%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1267 
   0.17%                       <unknown> 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   2.29%  <...other 489 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.70%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1071 
  11.04%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1102 
   8.54%       jvmci, level 4  sun.security.ec.point.ProjectivePoint::asAffine, version 2, compile id 1359 
   4.43%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::multiply, version 2, compile id 1136 
   4.02%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1141 
   4.02%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1150 
   3.49%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1104 
   2.91%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1119 
   2.75%               kernel  [unknown] 
   2.41%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1267 
   1.53%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1058 
   1.21%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1103 
   0.20%                       <unknown> 
   0.09%       jvmci, level 4  sun.security.ec.ed.EdDSAParameters$SHAKE256Digester::digest, version 2, compile id 1378 
   0.06%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::getElement, version 2, compile id 1394 
   0.05%       jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1393 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.03%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 3, compile id 1326 
   0.03%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1332 
   0.02%         libc-2.31.so  _IO_fwrite 
   0.43%  <...other 111 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.65%       jvmci, level 4
   2.75%               kernel
   0.20%                     
   0.16%            libjvm.so
   0.13%         libc-2.31.so
   0.02%          interpreter
   0.02%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%         runtime stub
   0.01%           ld-2.31.so
   0.00%     perf-2128457.map
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed448, messageLength = 512)

# Run progress: 62.50% complete, ETA 00:05:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5234.389 us/op
# Warmup Iteration   2: 2976.453 us/op
# Warmup Iteration   3: 2981.969 us/op
# Warmup Iteration   4: 2975.431 us/op
# Warmup Iteration   5: 2975.668 us/op
Iteration   1: 2976.786 us/op
Iteration   2: 2976.338 us/op
Iteration   3: 2975.912 us/op
Iteration   4: 2975.531 us/op
Iteration   5: 2975.720 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  2976.057 ±(99.9%) 1.947 us/op [Average]
  (min, avg, max) = (2975.531, 2976.057, 2976.786), stdev = 0.506
  CI (99.9%): [2974.110, 2978.005] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 369544 total address lines.
Perf output processed (skipped 62.437 seconds):
 Column 1: cycles (50590 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1081 

 <region is too big to display, has 1924 lines, but threshold is 1000>
....................................................................................................
  52.51%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1104 

 <region is too big to display, has 1325 lines, but threshold is 1000>
....................................................................................................
  11.43%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.51%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1081 
  11.43%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1104 
   8.47%       jvmci, level 4  sun.security.ec.point.ProjectivePoint::asAffine, version 2, compile id 1386 
   4.61%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::multiply, version 2, compile id 1132 
   3.82%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1114 
   3.59%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1139 
   2.97%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1118 
   2.16%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1268 
   2.14%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1150 
   1.53%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1052 
   1.39%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1107 
   0.96%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1150 
   0.82%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1150 
   0.26%               kernel  [unknown] 
   0.21%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::multiply, version 2, compile id 1132 
   0.19%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1268 
   0.17%                       <unknown> 
   0.12%               kernel  [unknown] 
   0.11%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1139 
   0.09%               kernel  [unknown] 
   2.45%  <...other 519 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.51%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1081 
  11.43%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1104 
   8.49%       jvmci, level 4  sun.security.ec.point.ProjectivePoint::asAffine, version 2, compile id 1386 
   4.89%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::multiply, version 2, compile id 1132 
   4.05%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1150 
   3.82%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1114 
   3.82%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1139 
   2.97%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1118 
   2.52%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1268 
   1.61%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1052 
   1.39%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1107 
   1.33%               kernel  [unknown] 
   0.21%                       <unknown> 
   0.16%       jvmci, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 1384 
   0.16%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 2, compile id 1383 
   0.08%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::getElement, version 2, compile id 1406 
   0.05%       jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1405 
   0.03%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 3, compile id 1332 
   0.03%       jvmci, level 4  sun.security.util.math.intpoly.Curve448OrderField::mult, version 2, compile id 1403 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.45%  <...other 130 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.06%       jvmci, level 4
   1.33%               kernel
   0.21%                     
   0.18%            libjvm.so
   0.10%         libc-2.31.so
   0.03%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.02%   libpthread-2.31.so
   0.01%         runtime stub
   0.01%           ld-2.31.so
   0.00%     perf-2128524.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed448, messageLength = 2048)

# Run progress: 75.00% complete, ETA 00:03:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5208.838 us/op
# Warmup Iteration   2: 3070.475 us/op
# Warmup Iteration   3: 3017.608 us/op
# Warmup Iteration   4: 2976.950 us/op
# Warmup Iteration   5: 2976.554 us/op
Iteration   1: 2977.772 us/op
Iteration   2: 2976.579 us/op
Iteration   3: 2977.526 us/op
Iteration   4: 2976.954 us/op
Iteration   5: 2978.713 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  2977.509 ±(99.9%) 3.159 us/op [Average]
  (min, avg, max) = (2976.579, 2977.509, 2978.713), stdev = 0.820
  CI (99.9%): [2974.350, 2980.667] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 374389 total address lines.
Perf output processed (skipped 62.752 seconds):
 Column 1: cycles (50845 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1090 

 <region is too big to display, has 1927 lines, but threshold is 1000>
....................................................................................................
  52.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1130 

 <region is too big to display, has 1325 lines, but threshold is 1000>
....................................................................................................
  10.99%  <total for region 2>

....[Hottest Regions]...............................................................................
  52.02%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1090 
  10.99%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1130 
   8.91%      jvmci, level 4  sun.security.ec.point.ProjectivePoint::asAffine, version 2, compile id 1415 
   4.48%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::multiply, version 2, compile id 1157 
   3.66%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1137 
   3.14%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1167 
   2.79%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1142 
   2.11%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1296 
   1.99%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1176 
   1.42%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1071 
   1.38%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1133 
   0.92%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1176 
   0.90%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1176 
   0.76%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 1, compile id 1364 
   0.60%              kernel  [unknown] 
   0.29%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1167 
   0.23%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::multiply, version 2, compile id 1157 
   0.20%                      <unknown> 
   0.14%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1296 
   0.11%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1167 
   2.95%  <...other 606 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.02%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1090 
  10.99%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1130 
   8.93%      jvmci, level 4  sun.security.ec.point.ProjectivePoint::asAffine, version 2, compile id 1415 
   4.75%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::multiply, version 2, compile id 1157 
   3.96%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1176 
   3.68%      jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1167 
   3.66%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1137 
   2.79%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1142 
   2.39%      jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1296 
   2.02%              kernel  [unknown] 
   1.50%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1071 
   1.38%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1133 
   0.82%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 1, compile id 1364 
   0.31%                      <unknown> 
   0.20%      jvmci, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 1388 
   0.06%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::getElement, version 2, compile id 1434 
   0.05%      jvmci, level 4  sun.security.ec.ed.EdDSAOperations::encode, version 2, compile id 1433 
   0.04%      jvmci, level 4  sun.security.util.math.intpoly.Curve448OrderField::mult, version 2, compile id 1429 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 3, compile id 1361 
   0.42%  <...other 98 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.30%      jvmci, level 4
   2.02%              kernel
   0.31%                    
   0.18%           libjvm.so
   0.10%        libc-2.31.so
   0.03%         interpreter
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%        runtime stub
   0.00%    perf-2128588.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign
# Parameters: (algorithm = Ed448, messageLength = 16384)

# Run progress: 87.50% complete, ETA 00:01:56
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5765.774 us/op
# Warmup Iteration   2: 3276.472 us/op
# Warmup Iteration   3: 3252.027 us/op
# Warmup Iteration   4: 3174.412 us/op
# Warmup Iteration   5: 3174.818 us/op
Iteration   1: 3175.933 us/op
Iteration   2: 3174.273 us/op
Iteration   3: 3174.451 us/op
Iteration   4: 3174.395 us/op
Iteration   5: 3175.639 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign":
  3174.938 ±(99.9%) 3.017 us/op [Average]
  (min, avg, max) = (3174.273, 3174.938, 3175.933), stdev = 0.784
  CI (99.9%): [3171.921, 3177.955] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark.sign:asm":
PrintAssembly processed: 380157 total address lines.
Perf output processed (skipped 62.434 seconds):
 Column 1: cycles (50710 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1079 

 <region is too big to display, has 1924 lines, but threshold is 1000>
....................................................................................................
  48.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1122 

 <region is too big to display, has 1325 lines, but threshold is 1000>
....................................................................................................
  10.67%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.95%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1079 
  10.67%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1122 
   8.03%       jvmci, level 4  sun.security.ec.point.ProjectivePoint::asAffine, version 2, compile id 1412 
   6.04%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1329 
   4.17%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::multiply, version 2, compile id 1171 
   3.68%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1189 
   3.43%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1140 
   2.81%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1133 
   1.69%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1298 
   1.39%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1059 
   1.37%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1182 
   1.29%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1132 
   0.87%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1182 
   0.41%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1182 
   0.37%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1298 
   0.36%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1182 
   0.25%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1182 
   0.19%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::multiply, version 2, compile id 1171 
   0.19%                       <unknown> 
   0.19%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1298 
   3.65%  <...other 574 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.95%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::mult, version 2, compile id 1079 
  10.67%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::square, version 2, compile id 1122 
   8.04%       jvmci, level 4  sun.security.ec.point.ProjectivePoint::asAffine, version 2, compile id 1412 
   6.46%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1329 
   4.41%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$Element::multiply, version 2, compile id 1171 
   3.78%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setSum, version 2, compile id 1189 
   3.64%       jvmci, level 4  sun.security.ec.ed.Ed448Operations::setDouble, version 2, compile id 1182 
   3.43%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1140 
   2.81%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial448::reduce, version 2, compile id 1133 
   2.40%       jvmci, level 4  sun.security.ec.ed.EdECOperations::setProduct, version 3, compile id 1298 
   1.46%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1059 
   1.45%               kernel  [unknown] 
   1.29%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1132 
   0.24%                       <unknown> 
   0.16%       jvmci, level 4  sun.security.ec.ed.EdDSAParameters$DigesterFactory::digest, version 2, compile id 1391 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEdSignatureBenchmark::sign, version 2, compile id 1425 
   0.06%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::getElement, version 2, compile id 1434 
   0.03%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::finalReduce, version 4, compile id 1300 
   0.02%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 3, compile id 1369 
   0.02%       jvmci, level 4  sun.security.util.math.intpoly.Curve448OrderField::mult, version 2, compile id 1432 
   0.55%  <...other 143 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.81%       jvmci, level 4
   1.45%               kernel
   0.24%                     
   0.23%            libjvm.so
   0.10%         libc-2.31.so
   0.05%   libpthread-2.31.so
   0.04%  libjvmcicompiler.so
   0.02%          interpreter
   0.02%       hsdis-amd64.so
   0.02%         runtime stub
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.00%          c1, level 3
   0.00%     perf-2128652.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:29

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
DsaEdSignatureBenchmark.sign          Ed25519               64  avgt    5   791.914 ± 0.121  us/op
DsaEdSignatureBenchmark.sign:asm      Ed25519               64  avgt            NaN            ---
DsaEdSignatureBenchmark.sign          Ed25519              512  avgt    5   789.327 ± 0.184  us/op
DsaEdSignatureBenchmark.sign:asm      Ed25519              512  avgt            NaN            ---
DsaEdSignatureBenchmark.sign          Ed25519             2048  avgt    5   799.736 ± 0.229  us/op
DsaEdSignatureBenchmark.sign:asm      Ed25519             2048  avgt            NaN            ---
DsaEdSignatureBenchmark.sign          Ed25519            16384  avgt    5   863.373 ± 1.088  us/op
DsaEdSignatureBenchmark.sign:asm      Ed25519            16384  avgt            NaN            ---
DsaEdSignatureBenchmark.sign            Ed448               64  avgt    5  2975.345 ± 2.192  us/op
DsaEdSignatureBenchmark.sign:asm        Ed448               64  avgt            NaN            ---
DsaEdSignatureBenchmark.sign            Ed448              512  avgt    5  2976.057 ± 1.947  us/op
DsaEdSignatureBenchmark.sign:asm        Ed448              512  avgt            NaN            ---
DsaEdSignatureBenchmark.sign            Ed448             2048  avgt    5  2977.509 ± 3.159  us/op
DsaEdSignatureBenchmark.sign:asm        Ed448             2048  avgt            NaN            ---
DsaEdSignatureBenchmark.sign            Ed448            16384  avgt    5  3174.938 ± 3.017  us/op
DsaEdSignatureBenchmark.sign:asm        Ed448            16384  avgt            NaN            ---
