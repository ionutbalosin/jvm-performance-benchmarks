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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp256r1, messageLength = 64)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1286.732 us/op
# Warmup Iteration   2: 280.915 us/op
# Warmup Iteration   3: 249.976 us/op
# Warmup Iteration   4: 249.696 us/op
# Warmup Iteration   5: 249.598 us/op
Iteration   1: 249.583 us/op
Iteration   2: 249.628 us/op
Iteration   3: 249.639 us/op
Iteration   4: 249.508 us/op
Iteration   5: 249.502 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  249.572 ±(99.9%) 0.249 us/op [Average]
  (min, avg, max) = (249.502, 249.572, 249.639), stdev = 0.065
  CI (99.9%): [249.323, 249.821] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 456096 total address lines.
Perf output processed (skipped 63.231 seconds):
 Column 1: cycles (50892 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1150 

            # parm0:    rdx:rdx   = &apos;sun/security/util/math/IntegerModuloP&apos;
            #           [sp+0x130]  (sp of caller)
            0x00007f6ce2da8e40:   mov    0x8(%rsi),%r10d
            0x00007f6ce2da8e44:   movabs $0x7f6c63000000,%r12
            0x00007f6ce2da8e4e:   add    %r12,%r10
            0x00007f6ce2da8e51:   xor    %r12,%r12
            0x00007f6ce2da8e54:   cmp    %r10,%rax
            0x00007f6ce2da8e57:   jne    0x00007f6ce2764080           ;   {runtime_call ic_miss_stub}
            0x00007f6ce2da8e5d:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.10%    0x00007f6ce2da8e60:   mov    %eax,-0x14000(%rsp)
   0.22%    0x00007f6ce2da8e67:   sub    $0x128,%rsp
   0.00%    0x00007f6ce2da8e6e:   xchg   %ax,%ax
   0.04%    0x00007f6ce2da8e70:   cmpl   $0x1,0x20(%r15)
   0.05%    0x00007f6ce2da8e78:   jne    0x00007f6ce2da97b2
   0.04%    0x00007f6ce2da8e7e:   mov    %rbp,0x120(%rsp)
   0.04%    0x00007f6ce2da8e86:   mov    %rsi,0x88(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.20%    0x00007f6ce2da8e8e:   mov    0x8(%rdx),%ecx               ; implicit exception: dispatches to 0x00007f6ce2da97ee
   0.12%    0x00007f6ce2da8e91:   movabs $0x7f6c63000000,%r8
   0.03%    0x00007f6ce2da8e9b:   lea    (%r8,%rcx,1),%rcx
   0.04%    0x00007f6ce2da8e9f:   movabs $0x7f6c640c2a48,%r8          ;   {metadata(&apos;sun/security/util/math/intpoly/IntegerPolynomial$Element&apos;)}
   0.05%    0x00007f6ce2da8ea9:   cmp    0x38(%rcx),%r8
            0x00007f6ce2da8ead:   jne    0x00007f6ce2da9794           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@28 (line 734)
   0.69%    0x00007f6ce2da8eb3:   mov    0x18(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rsi=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.00%    0x00007f6ce2da8eb6:   mov    0x14(,%rcx,8),%r8d           ; implicit exception: dispatches to 0x00007f6ce2da9811
   0.03%    0x00007f6ce2da8ebe:   xchg   %ax,%ax
            0x00007f6ce2da8ec0:   cmp    0xc(%rsi),%r8d
            0x00007f6ce2da8ec4:   jl     0x00007f6ce2da97a3           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@43 (line 737)
   0.13%    0x00007f6ce2da8eca:   cmp    0xc(%rdx),%r8d
            0x00007f6ce2da8ece:   jl     0x00007f6ce2da974e           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@73 (line 742)
   0.06%    0x00007f6ce2da8ed4:   mov    0x8(,%rcx,8),%r8d            ;*invokevirtual mult {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da8edc:   mov    0x10(%rdx),%r10d             ;*getfield limbs {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@101 (line 747)
   0.00%    0x00007f6ce2da8ee0:   mov    0x10(%rsi),%r9d
   0.11%    0x00007f6ce2da8ee4:   mov    %r9d,%r11d
   0.06%    0x00007f6ce2da8ee7:   shl    $0x3,%r11                    ;*getfield limbs {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@97 (line 747)
            0x00007f6ce2da8eeb:   shl    $0x3,%rcx
   0.00%    0x00007f6ce2da8eef:   cmp    $0x10c24f0,%r8d              ;   {metadata(&apos;sun/security/util/math/intpoly/IntegerPolynomialP256&apos;)}
            0x00007f6ce2da8ef6:   jne    0x00007f6ce2da96ee           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop r11=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.09%    0x00007f6ce2da8efc:   mov    0xc(,%r9,8),%r8d             ; implicit exception: dispatches to 0x00007f6ce2da9834
                                                                      ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop r11=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.11%    0x00007f6ce2da8f04:   mov    0xc(,%r10,8),%edi            ; implicit exception: dispatches to 0x00007f6ce2da9857
   0.01%    0x00007f6ce2da8f0c:   cmp    $0xa,%r8d
            0x00007f6ce2da8f10:   jb     0x00007f6ce2da9785           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f6ce2da8f16:   cmp    $0xa,%edi
            0x00007f6ce2da8f19:   jb     0x00007f6ce2da9776           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@5 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.10%    0x00007f6ce2da8f1f:   mov    %rcx,0x80(%rsp)
   0.07%    0x00007f6ce2da8f27:   mov    %r11,0x78(%rsp)
            0x00007f6ce2da8f2c:   mov    0x10(,%r9,8),%rdx            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da8f34:   mov    0x18(,%r9,8),%r8             ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@18 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.11%    0x00007f6ce2da8f3c:   mov    0x20(,%r9,8),%rdi            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@43 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f6ce2da8f44:   mov    0x28(,%r9,8),%rbx            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@76 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da8f4c:   mov    0x30(,%r9,8),%rax            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@117 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da8f54:   mov    0x38(,%r9,8),%rbp            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@166 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f6ce2da8f5c:   mov    0x40(,%r9,8),%r13            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@225 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f6ce2da8f64:   mov    0x48(,%r9,8),%r14            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@294 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da8f6c:   mov    0x50(,%r9,8),%r11            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@373 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f6ce2da8f74:   mov    0x58(,%r9,8),%r9             ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@462 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f6ce2da8f7c:   mov    0x58(,%r10,8),%rcx           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@387 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f6ce2da8f84:   mov    0x50(,%r10,8),%rsi           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@308 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f6ce2da8f8c:   mov    %r9,0x110(%rsp)
   0.01%    0x00007f6ce2da8f94:   mov    0x48(,%r10,8),%r9            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@239 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.11%    0x00007f6ce2da8f9c:   mov    %rcx,0x108(%rsp)
   0.06%    0x00007f6ce2da8fa4:   mov    0x40(,%r10,8),%rcx           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@180 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da8fac:   mov    %r11,0x100(%rsp)
   0.02%    0x00007f6ce2da8fb4:   mov    0x38(,%r10,8),%r11           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@130 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f6ce2da8fbc:   mov    %rsi,0xf8(%rsp)
   0.07%    0x00007f6ce2da8fc4:   mov    0x30(,%r10,8),%rsi           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@89 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f6ce2da8fcc:   mov    %r14,0xf0(%rsp)
   0.10%    0x00007f6ce2da8fd4:   mov    0x28(,%r10,8),%r14           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@56 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f6ce2da8fdc:   mov    %r9,0xe8(%rsp)
   0.11%    0x00007f6ce2da8fe4:   mov    0x20(,%r10,8),%r9            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@31 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da8fec:   mov    %r13,0xe0(%rsp)              ;   {no_reloc}
   0.16%    0x00007f6ce2da8ff4:   mov    0x18(,%r10,8),%r13           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@14 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f6ce2da8ffc:   mov    0x10(,%r10,8),%r10           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@5 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f6ce2da9004:   mov    %rcx,0xd8(%rsp)
   0.14%    0x00007f6ce2da900c:   mov    %rdx,%rcx
   0.01%    0x00007f6ce2da900f:   imul   %r10,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@6 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f6ce2da9013:   mov    %rcx,0xd0(%rsp)
   0.43%    0x00007f6ce2da901b:   mov    %r13,%rcx
   0.00%    0x00007f6ce2da901e:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@15 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f6ce2da9022:   mov    %rbp,0xc8(%rsp)
   0.10%    0x00007f6ce2da902a:   mov    %r8,%rbp
   0.07%    0x00007f6ce2da902d:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@22 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9031:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@23 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.03%    0x00007f6ce2da9034:   mov    %r9,%rcx
   0.07%    0x00007f6ce2da9037:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@32 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f6ce2da903b:   mov    %rbp,0xc0(%rsp)
   0.06%    0x00007f6ce2da9043:   mov    %r8,%rbp
   0.00%    0x00007f6ce2da9046:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@39 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f6ce2da904a:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@40 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f6ce2da904d:   mov    %rdi,%rbp
   0.05%    0x00007f6ce2da9050:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@47 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da9054:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@48 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f6ce2da9057:   mov    %r14,%rcx
   0.07%    0x00007f6ce2da905a:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@57 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f6ce2da905e:   mov    %rbp,0xb8(%rsp)
   0.01%    0x00007f6ce2da9066:   mov    %r8,%rbp
   0.02%    0x00007f6ce2da9069:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@64 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f6ce2da906d:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@65 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f6ce2da9070:   mov    %rdi,%rbp
   0.01%    0x00007f6ce2da9073:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@72 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f6ce2da9077:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@73 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f6ce2da907a:   mov    %rbx,%rbp
   0.06%    0x00007f6ce2da907d:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@80 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f6ce2da9081:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@81 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f6ce2da9084:   mov    %rsi,%rcx
   0.08%    0x00007f6ce2da9087:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@90 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f6ce2da908b:   mov    %rbp,0xb0(%rsp)
   0.06%    0x00007f6ce2da9093:   mov    %r8,%rbp
   0.02%    0x00007f6ce2da9096:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@97 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f6ce2da909a:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@98 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da909d:   mov    %rdi,%rbp
   0.08%    0x00007f6ce2da90a0:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@105 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f6ce2da90a4:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@106 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f6ce2da90a7:   mov    %rbx,%rbp
   0.00%    0x00007f6ce2da90aa:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@113 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.11%    0x00007f6ce2da90ae:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@114 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f6ce2da90b1:   mov    %rax,%rbp
   0.08%    0x00007f6ce2da90b4:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@121 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da90b8:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@122 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f6ce2da90bb:   mov    %r11,%rcx
   0.02%    0x00007f6ce2da90be:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@131 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f6ce2da90c2:   mov    %rbp,0xa8(%rsp)
   0.13%    0x00007f6ce2da90ca:   mov    %r8,%rbp
            0x00007f6ce2da90cd:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@138 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da90d1:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@139 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f6ce2da90d4:   mov    %rdi,%rbp
   0.19%    0x00007f6ce2da90d7:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@146 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da90db:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@147 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f6ce2da90de:   mov    %rbx,%rbp
   0.01%    0x00007f6ce2da90e1:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@154 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f6ce2da90e5:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@155 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da90e8:   mov    %rax,%rbp
   0.00%    0x00007f6ce2da90eb:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@162 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f6ce2da90ef:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@163 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
   0.28%    0x00007f6ce2da90f2:   mov    0xc8(%rsp),%rbp
   0.01%    0x00007f6ce2da90fa:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@170 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da90fe:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@171 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f6ce2da9101:   mov    0xd8(%rsp),%rcx
   0.11%    0x00007f6ce2da9109:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@181 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da910d:   mov    %rbp,0xa0(%rsp)
   0.21%    0x00007f6ce2da9115:   mov    %r8,%rbp
            0x00007f6ce2da9118:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@188 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da911c:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@189 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da911f:   mov    %rdi,%rbp
   0.17%    0x00007f6ce2da9122:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@196 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da9126:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@197 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da9129:   mov    %rbx,%rbp
            0x00007f6ce2da912c:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@204 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.19%    0x00007f6ce2da9130:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@205 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da9133:   mov    %rax,%rbp
            0x00007f6ce2da9136:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@212 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da913a:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@213 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.30%    0x00007f6ce2da913d:   mov    0xc8(%rsp),%rbp
   0.00%    0x00007f6ce2da9145:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@220 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9149:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@221 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da914c:   mov    0xe0(%rsp),%rbp
   0.12%    0x00007f6ce2da9154:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@229 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da9158:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@230 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da915b:   mov    0xe8(%rsp),%rcx
   0.00%    0x00007f6ce2da9163:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@240 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f6ce2da9167:   mov    %rbp,0x98(%rsp)
   0.16%    0x00007f6ce2da916f:   mov    %r8,%rbp
            0x00007f6ce2da9172:   imul   0xd8(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@248 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da917b:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@249 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da917e:   mov    %rdi,%rbp
   0.16%    0x00007f6ce2da9181:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@256 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9185:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@257 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da9188:   mov    %rbx,%rbp
            0x00007f6ce2da918b:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@264 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f6ce2da918f:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@265 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9192:   mov    %rax,%rbp
            0x00007f6ce2da9195:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@272 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da9199:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@273 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.32%    0x00007f6ce2da919c:   mov    0xc8(%rsp),%rbp
            0x00007f6ce2da91a4:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@280 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da91a8:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@281 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da91ab:   mov    0xe0(%rsp),%rbp
   0.13%    0x00007f6ce2da91b3:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@289 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da91b7:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@290 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da91ba:   mov    0xf0(%rsp),%rbp
            0x00007f6ce2da91c2:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@298 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f6ce2da91c6:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@299 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da91c9:   mov    0xf8(%rsp),%rcx
            0x00007f6ce2da91d1:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@309 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da91d5:   mov    %rbp,0x90(%rsp)
   0.28%    0x00007f6ce2da91dd:   mov    %r8,%rbp
            0x00007f6ce2da91e0:   imul   0xe8(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@317 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da91e9:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@318 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da91ec:   mov    %rdi,%rbp
   0.13%    0x00007f6ce2da91ef:   imul   0xd8(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@326 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
            0x00007f6ce2da91f8:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@327 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da91fb:   mov    %rbx,%rbp
            0x00007f6ce2da91fe:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@334 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f6ce2da9202:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@335 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f6ce2da9205:   mov    %rax,%rbp
            0x00007f6ce2da9208:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@342 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da920c:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@343 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.21%    0x00007f6ce2da920f:   mov    0xc8(%rsp),%rbp
   0.06%    0x00007f6ce2da9217:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@350 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da921b:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@351 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da921e:   mov    0xe0(%rsp),%rbp
   0.09%    0x00007f6ce2da9226:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@359 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f6ce2da922a:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@360 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da922d:   mov    0xf0(%rsp),%rbp
            0x00007f6ce2da9235:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@368 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f6ce2da9239:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@369 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f6ce2da923c:   mov    0x100(%rsp),%rbp
            0x00007f6ce2da9244:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@377 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9248:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@378 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.19%    0x00007f6ce2da924b:   mov    0x108(%rsp),%rcx
            0x00007f6ce2da9253:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@388 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9257:   mov    %r8,%rdx
            0x00007f6ce2da925a:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@396 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f6ce2da9263:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@397 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f6ce2da9266:   mov    %rdi,%rdx
            0x00007f6ce2da9269:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@405 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da9272:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@406 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f6ce2da9275:   mov    %rbx,%rdx
            0x00007f6ce2da9278:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@414 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f6ce2da9281:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@415 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f6ce2da9284:   mov    %rax,%rdx
            0x00007f6ce2da9287:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@422 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da928b:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@423 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.31%    0x00007f6ce2da928e:   mov    0xc8(%rsp),%rdx
            0x00007f6ce2da9296:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@430 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da929a:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@431 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da929d:   mov    0xe0(%rsp),%rdx
   0.16%    0x00007f6ce2da92a5:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@439 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da92a9:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@440 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da92ac:   mov    0xf0(%rsp),%rdx
            0x00007f6ce2da92b4:   imul   %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@448 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f6ce2da92b8:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@449 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da92bb:   mov    0x100(%rsp),%rdx
            0x00007f6ce2da92c3:   imul   %r13,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@457 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da92c7:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@458 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f6ce2da92ca:   mov    0x110(%rsp),%rdx
            0x00007f6ce2da92d2:   imul   %r10,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@466 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da92d6:   mov    %rcx,%r10
            0x00007f6ce2da92d9:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@467 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f6ce2da92dc:   imul   0x108(%rsp),%r8              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@477 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f6ce2da92e5:   mov    %rdi,%rdx
            0x00007f6ce2da92e8:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@485 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
   0.16%    0x00007f6ce2da92f1:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@486 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f6ce2da92f4:   mov    %rbx,%rdx
            0x00007f6ce2da92f7:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@494 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9300:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@495 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f6ce2da9303:   mov    %rax,%rdx
            0x00007f6ce2da9306:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@503 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da930f:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@504 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f6ce2da9312:   mov    0xc8(%rsp),%rdx
            0x00007f6ce2da931a:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@511 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da931e:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@512 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f6ce2da9321:   mov    0xe0(%rsp),%rdx
            0x00007f6ce2da9329:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@520 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da932d:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@521 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f6ce2da9330:   mov    0xf0(%rsp),%rdx
            0x00007f6ce2da9338:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@529 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da933c:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@530 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f6ce2da933f:   mov    0x100(%rsp),%rdx
            0x00007f6ce2da9347:   imul   %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@538 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da934b:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@539 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f6ce2da934e:   mov    0x110(%rsp),%rdx
            0x00007f6ce2da9356:   imul   %r13,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@547 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da935a:   mov    %r8,%r13
            0x00007f6ce2da935d:   add    %rdx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@548 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f6ce2da9360:   imul   0x108(%rsp),%rdi             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@558 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9369:   mov    %rbx,%rdx
            0x00007f6ce2da936c:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@566 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f6ce2da9375:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@567 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f6ce2da9378:   mov    %rax,%rdx
            0x00007f6ce2da937b:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@575 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9384:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@576 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f6ce2da9387:   mov    0xc8(%rsp),%rdx
            0x00007f6ce2da938f:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@584 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9398:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@585 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f6ce2da939b:   mov    0xe0(%rsp),%rdx
            0x00007f6ce2da93a3:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@593 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da93a7:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@594 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f6ce2da93aa:   mov    0xf0(%rsp),%rdx
            0x00007f6ce2da93b2:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@602 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da93b6:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@603 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f6ce2da93b9:   mov    0x100(%rsp),%rdx
   0.00%    0x00007f6ce2da93c1:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@611 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da93c5:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@612 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f6ce2da93c8:   imul   0x110(%rsp),%r9              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@620 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.10%    0x00007f6ce2da93d1:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@621 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f6ce2da93d4:   imul   0x108(%rsp),%rbx             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@631 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da93dd:   mov    %rax,%rdx
            0x00007f6ce2da93e0:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@639 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f6ce2da93e9:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@640 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f6ce2da93ec:   mov    0xc8(%rsp),%rdx              ;   {no_reloc}
            0x00007f6ce2da93f4:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@648 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da93fd:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@649 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.19%    0x00007f6ce2da9400:   mov    0xe0(%rsp),%rdx
   0.00%    0x00007f6ce2da9408:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@658 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f6ce2da9411:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@659 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f6ce2da9414:   mov    0xf0(%rsp),%rdx
            0x00007f6ce2da941c:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@667 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9420:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@668 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.20%    0x00007f6ce2da9423:   mov    0x100(%rsp),%rdx
            0x00007f6ce2da942b:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@676 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da942f:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@677 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f6ce2da9432:   mov    0x110(%rsp),%r9
            0x00007f6ce2da943a:   imul   %r14,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@685 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da943e:   add    %r9,%rbx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@686 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f6ce2da9441:   imul   0x108(%rsp),%rax             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@696 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da944a:   mov    0xc8(%rsp),%rdx
            0x00007f6ce2da9452:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@704 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f6ce2da945b:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@705 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f6ce2da945e:   mov    0xe0(%rsp),%rdx
            0x00007f6ce2da9466:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@714 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da946f:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@715 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f6ce2da9472:   mov    0xf0(%rsp),%r14
            0x00007f6ce2da947a:   imul   0xd8(%rsp),%r14              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@724 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9483:   add    %r14,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@725 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f6ce2da9486:   mov    0x100(%rsp),%rdx
            0x00007f6ce2da948e:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@733 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da9492:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@734 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f6ce2da9495:   mov    0x110(%rsp),%r9
            0x00007f6ce2da949d:   imul   %rsi,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@742 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da94a1:   add    %r9,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@743 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f6ce2da94a4:   mov    0xc8(%rsp),%rsi
            0x00007f6ce2da94ac:   imul   0x108(%rsp),%rsi             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@753 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f6ce2da94b5:   mov    0xe0(%rsp),%rdx
            0x00007f6ce2da94bd:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@762 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f6ce2da94c6:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  17.33%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 1084 

             # parm18:   [sp+0xb8]   = long
             # parm19:   [sp+0xc0]   = long
             0x00007f6ce2d8b2a0:   mov    0x8(%rsi),%r10d
             0x00007f6ce2d8b2a4:   movabs $0x7f6c63000000,%r12
             0x00007f6ce2d8b2ae:   add    %r12,%r10
             0x00007f6ce2d8b2b1:   xor    %r12,%r12
             0x00007f6ce2d8b2b4:   cmp    %r10,%rax
             0x00007f6ce2d8b2b7:   jne    0x00007f6ce2764080           ;   {runtime_call ic_miss_stub}
             0x00007f6ce2d8b2bd:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.15%     0x00007f6ce2d8b2c0:   mov    %eax,-0x14000(%rsp)
   0.15%     0x00007f6ce2d8b2c7:   sub    $0x48,%rsp
             0x00007f6ce2d8b2cb:   nop
             0x00007f6ce2d8b2cc:   cmpl   $0x0,0x20(%r15)
             0x00007f6ce2d8b2d4:   jne    0x00007f6ce2d8b977
   0.21%     0x00007f6ce2d8b2da:   mov    %rbp,0x40(%rsp)
   0.05%     0x00007f6ce2d8b2df:   mov    %r8,0x30(%rsp)
   0.11%     0x00007f6ce2d8b2e4:   mov    %r9,0x28(%rsp)
   0.15%     0x00007f6ce2d8b2e9:   mov    %rdi,0x20(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop }
                                                                       ;*lconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@0 (line 81)
   0.16%     0x00007f6ce2d8b2ee:   cmpl   $0xa,0xc(%rdx)               ; implicit exception: dispatches to 0x00007f6ce2d8b99b
   0.01%  ╭  0x00007f6ce2d8b2f2:   jb     0x00007f6ce2d8b90e           ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@400 (line 223)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b2f8:   mov    0xc0(%rsp),%r10
   0.01%  │  0x00007f6ce2d8b300:   mov    0xb8(%rsp),%r11
   0.13%  │  0x00007f6ce2d8b308:   mov    0xb0(%rsp),%rax
          │  0x00007f6ce2d8b310:   mov    0xa8(%rsp),%r13
   0.00%  │  0x00007f6ce2d8b318:   mov    0xa0(%rsp),%r14
   0.01%  │  0x00007f6ce2d8b320:   mov    0x98(%rsp),%rbp
   0.17%  │  0x00007f6ce2d8b328:   mov    0x90(%rsp),%rsi
          │  0x00007f6ce2d8b330:   mov    0x80(%rsp),%rbx
          │  0x00007f6ce2d8b338:   mov    %rdx,(%rsp)
   0.01%  │  0x00007f6ce2d8b33c:   mov    0x88(%rsp),%rdi
   0.16%  │  0x00007f6ce2d8b344:   mov    0x78(%rsp),%r9
          │  0x00007f6ce2d8b349:   mov    0x70(%rsp),%r8
   0.01%  │  0x00007f6ce2d8b34e:   mov    %r10,%rdx
   0.00%  │  0x00007f6ce2d8b351:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@23 (line 84)
   0.13%  │  0x00007f6ce2d8b355:   add    %rdx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@24 (line 84)
          │  0x00007f6ce2d8b358:   mov    %r11,%rdx
   0.00%  │  0x00007f6ce2d8b35b:   shl    $0x16,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@151 (line 96)
   0.01%  │  0x00007f6ce2d8b35f:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@155 (line 96)
   0.15%  │  0x00007f6ce2d8b366:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@156 (line 96)
   0.00%  │  0x00007f6ce2d8b369:   mov    %r10,%rdx
   0.00%  │  0x00007f6ce2d8b36c:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@9 (line 83)
   0.01%  │  0x00007f6ce2d8b370:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@13 (line 83)
   0.17%  │  0x00007f6ce2d8b377:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@14 (line 83)
          │  0x00007f6ce2d8b37a:   mov    %r10,%rdx
   0.00%  │  0x00007f6ce2d8b37d:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@47 (line 86)
   0.00%  │  0x00007f6ce2d8b381:   sub    %rdx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@48 (line 86)
   0.12%  │  0x00007f6ce2d8b384:   mov    %r11,%rdx
   0.00%  │  0x00007f6ce2d8b387:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@117 (line 93)
          │  0x00007f6ce2d8b38b:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@118 (line 93)
   0.00%  │  0x00007f6ce2d8b38e:   mov    %rax,%rdx
   0.17%  │  0x00007f6ce2d8b391:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@258 (line 106)
          │  0x00007f6ce2d8b395:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@259 (line 106)
   0.01%  │  0x00007f6ce2d8b398:   mov    %rax,%rdx
   0.00%  │  0x00007f6ce2d8b39b:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@221 (line 103)
   0.15%  │  0x00007f6ce2d8b39f:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@225 (line 103)
          │  0x00007f6ce2d8b3a6:   sub    %rdx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@226 (line 103)
   0.01%  │  0x00007f6ce2d8b3a9:   mov    %r10,%rdx
   0.00%  │  0x00007f6ce2d8b3ac:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@33 (line 85)
   0.15%  │  0x00007f6ce2d8b3b0:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@37 (line 85)
          │                                                            ;   {no_reloc}
          │  0x00007f6ce2d8b3b7:   sub    %rdx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@38 (line 85)
   0.01%  │  0x00007f6ce2d8b3ba:   mov    %r11,%rdx
   0.00%  │  0x00007f6ce2d8b3bd:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@103 (line 92)
   0.13%  │  0x00007f6ce2d8b3c1:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@107 (line 92)
          │  0x00007f6ce2d8b3c8:   add    %rdx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@108 (line 92)
   0.00%  │  0x00007f6ce2d8b3cb:   mov    %r11,%rdx
   0.00%  │  0x00007f6ce2d8b3ce:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@141 (line 95)
   0.12%  │  0x00007f6ce2d8b3d2:   sub    %rdx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@142 (line 95)
          │  0x00007f6ce2d8b3d5:   mov    %rax,%rdx
   0.00%  │  0x00007f6ce2d8b3d8:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@211 (line 102)
   0.00%  │  0x00007f6ce2d8b3dc:   add    %rdx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@212 (line 102)
   0.14%  │  0x00007f6ce2d8b3df:   mov    %r13,%rdx
          │  0x00007f6ce2d8b3e2:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@291 (line 110)
   0.00%  │  0x00007f6ce2d8b3e6:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@295 (line 110)
   0.01%  │  0x00007f6ce2d8b3ed:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@296 (line 110)
   0.17%  │  0x00007f6ce2d8b3f0:   mov    %r13,%rdx
          │  0x00007f6ce2d8b3f3:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@329 (line 113)
   0.01%  │  0x00007f6ce2d8b3f7:   sub    %rdx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@330 (line 113)
   0.00%  │  0x00007f6ce2d8b3fa:   mov    %r11,%rdx
   0.15%  │  0x00007f6ce2d8b3fd:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@127 (line 94)
          │  0x00007f6ce2d8b401:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@131 (line 94)
   0.00%  │  0x00007f6ce2d8b408:   sub    %rdx,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@132 (line 94)
   0.01%  │  0x00007f6ce2d8b40b:   mov    %rax,%rdx
   0.14%  │  0x00007f6ce2d8b40e:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@197 (line 101)
          │  0x00007f6ce2d8b412:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@201 (line 101)
   0.01%  │  0x00007f6ce2d8b419:   add    %rdx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@202 (line 101)
          │  0x00007f6ce2d8b41c:   mov    %rax,%rdx
   0.16%  │  0x00007f6ce2d8b41f:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@235 (line 104)
          │  0x00007f6ce2d8b423:   sub    %rdx,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@236 (line 104)
   0.00%  │  0x00007f6ce2d8b426:   mov    %r13,%rdx
   0.01%  │  0x00007f6ce2d8b429:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@305 (line 111)
   0.16%  │  0x00007f6ce2d8b42d:   add    %rdx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@306 (line 111)
          │  0x00007f6ce2d8b430:   mov    %r14,%rdx
   0.01%  │  0x00007f6ce2d8b433:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@399 (line 120)
   0.01%  │  0x00007f6ce2d8b437:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@400 (line 120)
   0.16%  │  0x00007f6ce2d8b43a:   mov    %rbp,%rdx
          │  0x00007f6ce2d8b43d:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@503 (line 130)
   0.00%  │  0x00007f6ce2d8b441:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@507 (line 130)
   0.01%  │  0x00007f6ce2d8b448:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@508 (line 130)
   0.16%  │  0x00007f6ce2d8b44b:   mov    %r10,%rdx
          │  0x00007f6ce2d8b44e:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@70 (line 88)
   0.01%  │  0x00007f6ce2d8b452:   sub    %rdx,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@71 (line 88)
   0.01%  │  0x00007f6ce2d8b455:   mov    %r13,%rdx
   0.16%  │  0x00007f6ce2d8b458:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@315 (line 112)
          │  0x00007f6ce2d8b45c:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@319 (line 112)
   0.00%  │  0x00007f6ce2d8b463:   sub    %rdx,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@320 (line 112)
   0.01%  │  0x00007f6ce2d8b466:   mov    %r14,%rdx
   0.13%  │  0x00007f6ce2d8b469:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@385 (line 119)
          │  0x00007f6ce2d8b46d:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@389 (line 119)
   0.01%  │  0x00007f6ce2d8b474:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@390 (line 119)
   0.01%  │  0x00007f6ce2d8b477:   mov    %r14,%rdx
   0.17%  │  0x00007f6ce2d8b47a:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@423 (line 122)
          │  0x00007f6ce2d8b47e:   sub    %rdx,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@424 (line 122)
   0.00%  │  0x00007f6ce2d8b481:   mov    %rbp,%rdx
   0.00%  │  0x00007f6ce2d8b484:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@493 (line 129)
   0.17%  │  0x00007f6ce2d8b488:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@494 (line 129)
          │  0x00007f6ce2d8b48b:   mov    %rsi,%rdx
   0.00%  │  0x00007f6ce2d8b48e:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@573 (line 137)
          │  0x00007f6ce2d8b492:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@577 (line 137)
   0.16%  │  0x00007f6ce2d8b499:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@578 (line 137)
          │  0x00007f6ce2d8b49c:   mov    %rsi,%rdx
   0.00%  │  0x00007f6ce2d8b49f:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@611 (line 140)
   0.01%  │  0x00007f6ce2d8b4a3:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@612 (line 140)
   0.17%  │  0x00007f6ce2d8b4a6:   mov    %r10,%rdx
          │  0x00007f6ce2d8b4a9:   shl    $0x16,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@57 (line 87)
   0.01%  │  0x00007f6ce2d8b4ad:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@61 (line 87)
   0.00%  │  0x00007f6ce2d8b4b4:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@62 (line 87)
          │                                                            ;   {no_reloc}
   0.16%  │  0x00007f6ce2d8b4b7:   mov    %r11,%rdx
   0.00%  │  0x00007f6ce2d8b4ba:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@164 (line 97)
   0.01%  │  0x00007f6ce2d8b4be:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@165 (line 97)
   0.00%  │  0x00007f6ce2d8b4c1:   mov    %r14,%rdx
   0.16%  │  0x00007f6ce2d8b4c4:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@409 (line 121)
          │  0x00007f6ce2d8b4c8:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@413 (line 121)
   0.01%  │  0x00007f6ce2d8b4cf:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@414 (line 121)
   0.00%  │  0x00007f6ce2d8b4d2:   mov    %rbp,%rdx
   0.16%  │  0x00007f6ce2d8b4d5:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@479 (line 128)
          │  0x00007f6ce2d8b4d9:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@483 (line 128)
   0.00%  │  0x00007f6ce2d8b4e0:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@484 (line 128)
   0.00%  │  0x00007f6ce2d8b4e3:   mov    %rbp,%rdx
   0.17%  │  0x00007f6ce2d8b4e6:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@517 (line 131)
          │  0x00007f6ce2d8b4ea:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@518 (line 131)
   0.01%  │  0x00007f6ce2d8b4ed:   mov    %rsi,%rdx
   0.01%  │  0x00007f6ce2d8b4f0:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@587 (line 138)
   0.15%  │  0x00007f6ce2d8b4f4:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@588 (line 138)
          │  0x00007f6ce2d8b4f7:   mov    %rdi,%rdx
   0.00%  │  0x00007f6ce2d8b4fa:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@681 (line 147)
   0.00%  │  0x00007f6ce2d8b4fe:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@682 (line 147)
   0.13%  │  0x00007f6ce2d8b501:   mov    %rbx,%rdx
          │  0x00007f6ce2d8b504:   shl    $0x4,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@830 (line 161)
   0.01%  │  0x00007f6ce2d8b508:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@834 (line 161)
   0.01%  │  0x00007f6ce2d8b50f:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@835 (line 161)
   0.17%  │  0x00007f6ce2d8b512:   mov    %r10,%rdx
          │  0x00007f6ce2d8b515:   sar    $0x16,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@93 (line 90)
   0.01%  │  0x00007f6ce2d8b519:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@94 (line 90)
   0.00%  │  0x00007f6ce2d8b51c:   mov    %rax,%rdx
   0.12%  │  0x00007f6ce2d8b51f:   shl    $0x16,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@245 (line 105)
          │  0x00007f6ce2d8b523:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@249 (line 105)
   0.01%  │  0x00007f6ce2d8b52a:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@250 (line 105)
   0.00%  │  0x00007f6ce2d8b52d:   mov    %r13,%rdx
   0.15%  │  0x00007f6ce2d8b530:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@352 (line 115)
          │  0x00007f6ce2d8b534:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@353 (line 115)
   0.00%  │  0x00007f6ce2d8b537:   mov    %rsi,%rdx
   0.01%  │  0x00007f6ce2d8b53a:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@597 (line 139)
   0.14%  │  0x00007f6ce2d8b53e:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@601 (line 139)
          │  0x00007f6ce2d8b545:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@602 (line 139)
   0.01%  │  0x00007f6ce2d8b548:   mov    %rdi,%rdx
   0.00%  │  0x00007f6ce2d8b54b:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@667 (line 146)
   0.18%  │  0x00007f6ce2d8b54f:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@671 (line 146)
          │  0x00007f6ce2d8b556:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@672 (line 146)
   0.01%  │  0x00007f6ce2d8b559:   mov    %rdi,%rdx
   0.01%  │  0x00007f6ce2d8b55c:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@705 (line 149)
   0.17%  │  0x00007f6ce2d8b560:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@706 (line 149)
          │  0x00007f6ce2d8b563:   mov    %rbx,%rdx
   0.01%  │  0x00007f6ce2d8b566:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@775 (line 156)
   0.00%  │  0x00007f6ce2d8b56a:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@776 (line 156)
   0.18%  │  0x00007f6ce2d8b56d:   shl    $0x4,%r10                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@79 (line 89)
          │  0x00007f6ce2d8b571:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@83 (line 89)
   0.00%  │  0x00007f6ce2d8b578:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@84 (line 89)
          │  0x00007f6ce2d8b57b:   mov    %r11,%r10
   0.13%  │  0x00007f6ce2d8b57e:   sar    $0x16,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@187 (line 99)
          │  0x00007f6ce2d8b582:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@188 (line 99)
   0.01%  │  0x00007f6ce2d8b585:   mov    %r13,%r10
   0.01%  │  0x00007f6ce2d8b588:   shl    $0x16,%r10                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@339 (line 114)
   0.16%  │  0x00007f6ce2d8b58c:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@343 (line 114)
          │  0x00007f6ce2d8b593:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@344 (line 114)
          │  0x00007f6ce2d8b596:   mov    %r14,%r10
   0.01%  │  0x00007f6ce2d8b599:   sar    $0x4,%r10                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@446 (line 124)
   0.18%  │  0x00007f6ce2d8b59d:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@447 (line 124)
          │  0x00007f6ce2d8b5a0:   mov    %rdi,%r10
   0.00%  │  0x00007f6ce2d8b5a3:   shl    $0xe,%r10                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@691 (line 148)
   0.00%  │  0x00007f6ce2d8b5a7:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@695 (line 148)
   0.14%  │  0x00007f6ce2d8b5ae:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@696 (line 148)
          │  0x00007f6ce2d8b5b1:   mov    %rbx,%r10
   0.00%  │  0x00007f6ce2d8b5b4:   shl    $0x14,%r10                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@761 (line 155)
          │                                                            ;   {no_reloc}
   0.01%  │  0x00007f6ce2d8b5b8:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@765 (line 155)
   0.17%  │  0x00007f6ce2d8b5bf:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@766 (line 155)
   0.00%  │  0x00007f6ce2d8b5c2:   mov    %rbx,%r10
   0.01%  │  0x00007f6ce2d8b5c5:   sar    $0xc,%r10                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@799 (line 158)
          │  0x00007f6ce2d8b5c9:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@800 (line 158)
   0.19%  │  0x00007f6ce2d8b5cc:   lea    0x2000000(%r8),%r10          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@5 (line 170)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b5d3:   mov    %r10,%rdx
   0.01%  │  0x00007f6ce2d8b5d6:   sar    $0x1a,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@8 (line 170)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b5da:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@25 (line 172)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.15%  │  0x00007f6ce2d8b5dd:   lea    0x2000000(%r9),%rdx          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@33 (line 174)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b5e4:   mov    %r9,0x18(%rsp)
   0.00%  │  0x00007f6ce2d8b5e9:   mov    %rdx,%r9
   0.00%  │  0x00007f6ce2d8b5ec:   sar    $0x1a,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@36 (line 174)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f6ce2d8b5f0:   mov    %r8,0x10(%rsp)
   0.00%  │  0x00007f6ce2d8b5f5:   mov    %r9,%r8
   0.01%  │  0x00007f6ce2d8b5f8:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@131 (line 184)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b5fc:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@135 (line 184)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.17%  │  0x00007f6ce2d8b603:   add    %r8,%rcx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@136 (line 184)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b606:   lea    0x2000000(%rcx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@152 (line 187)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b60d:   mov    %r10,0x8(%rsp)
   0.00%  │  0x00007f6ce2d8b612:   mov    %r8,%r10
   0.18%  │  0x00007f6ce2d8b615:   and    $0xfffffffffc000000,%r10     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@163 (line 188)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b61c:   sub    %r10,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@164 (line 188)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.03%  │  0x00007f6ce2d8b61f:   mov    (%rsp),%r10
   0.01%  │  0x00007f6ce2d8b623:   mov    %rcx,0x10(%r10)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@400 (line 223)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.27%  │  0x00007f6ce2d8b627:   mov    %rdi,%rcx
   0.00%  │  0x00007f6ce2d8b62a:   shl    $0x4,%rcx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@737 (line 152)
   0.00%  │  0x00007f6ce2d8b62e:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@741 (line 152)
   0.00%  │  0x00007f6ce2d8b635:   add    0x30(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@742 (line 152)
   0.16%  │  0x00007f6ce2d8b63a:   mov    %r11,0x30(%rsp)
          │  0x00007f6ce2d8b63f:   mov    %rbx,%r11
   0.00%  │  0x00007f6ce2d8b642:   sar    $0x16,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@843 (line 162)
   0.00%  │  0x00007f6ce2d8b646:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@844 (line 162)
   0.15%  │  0x00007f6ce2d8b649:   mov    %rdx,%r11
          │  0x00007f6ce2d8b64c:   sar    $0x30,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@144 (line 185)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b650:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@145 (line 185)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f6ce2d8b653:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@155 (line 187)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f6ce2d8b657:   add    %r8,%rcx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@170 (line 189)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b65a:   lea    0x2000000(%rcx),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@178 (line 191)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b661:   mov    %r11,%r8
   0.00%  │  0x00007f6ce2d8b664:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@190 (line 192)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.15%  │  0x00007f6ce2d8b66b:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@191 (line 192)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b66e:   mov    %rcx,0x18(%r10)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@405 (line 224)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b672:   mov    %rsi,%r8
   0.00%  │  0x00007f6ce2d8b675:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@643 (line 143)
   0.17%  │  0x00007f6ce2d8b679:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@647 (line 143)
          │  0x00007f6ce2d8b680:   add    0x28(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@648 (line 143)
   0.00%  │  0x00007f6ce2d8b685:   mov    %rdi,%rcx
   0.01%  │  0x00007f6ce2d8b688:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@751 (line 153)
   0.17%  │  0x00007f6ce2d8b68c:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@752 (line 153)
          │  0x00007f6ce2d8b68f:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@181 (line 191)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.02%  │  0x00007f6ce2d8b693:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@198 (line 193)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b696:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@206 (line 195)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.17%  │  0x00007f6ce2d8b69d:   mov    %r11,%rcx
          │  0x00007f6ce2d8b6a0:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@218 (line 196)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b6a7:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@219 (line 196)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b6aa:   mov    %r8,0x20(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@410 (line 225)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.18%  │  0x00007f6ce2d8b6ae:   mov    %rbp,%r8
          │  0x00007f6ce2d8b6b1:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@549 (line 134)
          │                                                            ;   {no_reloc}
   0.01%  │  0x00007f6ce2d8b6b5:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@553 (line 134)
   0.00%  │  0x00007f6ce2d8b6bc:   add    0x20(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@554 (line 134)
   0.15%  │  0x00007f6ce2d8b6c1:   mov    %rsi,%rcx
          │  0x00007f6ce2d8b6c4:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@657 (line 144)
   0.00%  │  0x00007f6ce2d8b6c8:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@658 (line 144)
   0.00%  │  0x00007f6ce2d8b6cb:   mov    %rbx,%rcx
   0.17%  │  0x00007f6ce2d8b6ce:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@809 (line 159)
          │  0x00007f6ce2d8b6d2:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@813 (line 159)
   0.00%  │  0x00007f6ce2d8b6d9:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@814 (line 159)
   0.01%  │  0x00007f6ce2d8b6dc:   mov    %r9,%rcx
   0.17%  │  0x00007f6ce2d8b6df:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@110 (line 182)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b6e3:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@114 (line 182)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f6ce2d8b6ea:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@115 (line 182)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b6ed:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@209 (line 195)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f6ce2d8b6f1:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@226 (line 197)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b6f4:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@234 (line 199)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b6fb:   mov    %r11,%rcx
   0.00%  │  0x00007f6ce2d8b6fe:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@246 (line 200)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f6ce2d8b705:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@247 (line 200)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b708:   mov    %r8,0x28(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@415 (line 226)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f6ce2d8b70c:   mov    %r14,%r8
   0.00%  │  0x00007f6ce2d8b70f:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@455 (line 125)
   0.15%  │  0x00007f6ce2d8b713:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@459 (line 125)
   0.00%  │  0x00007f6ce2d8b71a:   add    0x50(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@460 (line 125)
   0.00%  │  0x00007f6ce2d8b71f:   mov    %rbp,%rcx
   0.00%  │  0x00007f6ce2d8b722:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@563 (line 135)
   0.17%  │  0x00007f6ce2d8b726:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@564 (line 135)
          │  0x00007f6ce2d8b729:   mov    %rdi,%rcx
   0.01%  │  0x00007f6ce2d8b72c:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@715 (line 150)
   0.00%  │  0x00007f6ce2d8b730:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@719 (line 150)
   0.16%  │  0x00007f6ce2d8b737:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@720 (line 150)
          │  0x00007f6ce2d8b73a:   mov    %rbx,%rcx
   0.01%  │  0x00007f6ce2d8b73d:   sar    $0x4,%rcx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@822 (line 160)
   0.00%  │  0x00007f6ce2d8b741:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@823 (line 160)
   0.15%  │  0x00007f6ce2d8b744:   mov    %rdx,%rcx
          │  0x00007f6ce2d8b747:   sar    $0x1e,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@123 (line 183)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f6ce2d8b74b:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@124 (line 183)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b74e:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@237 (line 199)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.17%  │  0x00007f6ce2d8b752:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@254 (line 201)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b755:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@262 (line 203)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f6ce2d8b75c:   mov    %r11,%rcx
   0.01%  │  0x00007f6ce2d8b75f:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@274 (line 204)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.17%  │  0x00007f6ce2d8b766:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@275 (line 204)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b769:   mov    %r8,0x30(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@420 (line 227)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f6ce2d8b76d:   mov    %r13,%r8
   0.00%  │  0x00007f6ce2d8b770:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@361 (line 116)
   0.14%  │  0x00007f6ce2d8b774:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@365 (line 116)
          │  0x00007f6ce2d8b77b:   add    0x58(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@366 (line 116)
   0.00%  │  0x00007f6ce2d8b780:   mov    %r14,%rcx
   0.00%  │  0x00007f6ce2d8b783:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@469 (line 126)
   0.17%  │  0x00007f6ce2d8b787:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@470 (line 126)
          │  0x00007f6ce2d8b78a:   mov    %rsi,%rcx
   0.00%  │  0x00007f6ce2d8b78d:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@621 (line 141)
   0.00%  │  0x00007f6ce2d8b791:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@625 (line 141)
   0.14%  │  0x00007f6ce2d8b798:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@626 (line 141)
          │  0x00007f6ce2d8b79b:   sar    $0x4,%rdi                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@728 (line 151)
   0.01%  │  0x00007f6ce2d8b79f:   sub    %rdi,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@729 (line 151)
   0.01%  │  0x00007f6ce2d8b7a2:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@265 (line 203)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.16%  │  0x00007f6ce2d8b7a6:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@282 (line 205)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b7a9:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@290 (line 207)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f6ce2d8b7b0:   mov    %r11,%rcx                    ;   {no_reloc}
   0.01%  │  0x00007f6ce2d8b7b3:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@302 (line 208)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.17%  │  0x00007f6ce2d8b7ba:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@303 (line 208)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b7bd:   mov    %r8,0x38(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@425 (line 228)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.02%  │  0x00007f6ce2d8b7c1:   mov    %rax,%r8
          │  0x00007f6ce2d8b7c4:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@267 (line 107)
   0.16%  │  0x00007f6ce2d8b7c8:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@271 (line 107)
          │  0x00007f6ce2d8b7cf:   add    0x60(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@272 (line 107)
   0.01%  │  0x00007f6ce2d8b7d4:   sar    $0x16,%r13                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@375 (line 117)
   0.00%  │  0x00007f6ce2d8b7d8:   add    %r13,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@376 (line 117)
   0.13%  │  0x00007f6ce2d8b7db:   mov    %rbp,%rcx
          │  0x00007f6ce2d8b7de:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@527 (line 132)
   0.01%  │  0x00007f6ce2d8b7e2:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@531 (line 132)
   0.01%  │  0x00007f6ce2d8b7e9:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@532 (line 132)
   0.15%  │  0x00007f6ce2d8b7ec:   sar    $0x4,%rsi                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@634 (line 142)
          │  0x00007f6ce2d8b7f0:   sub    %rsi,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@635 (line 142)
   0.01%  │  0x00007f6ce2d8b7f3:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@293 (line 207)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b7f7:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@310 (line 209)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f6ce2d8b7fa:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@318 (line 211)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b801:   mov    %r11,%rcx
   0.01%  │  0x00007f6ce2d8b804:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@330 (line 212)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f6ce2d8b80b:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@331 (line 212)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.13%  │  0x00007f6ce2d8b80e:   mov    %r8,0x40(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@431 (line 229)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b812:   mov    0x30(%rsp),%r8
   0.01%  │  0x00007f6ce2d8b817:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@173 (line 98)
   0.01%  │  0x00007f6ce2d8b81b:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@177 (line 98)
   0.16%  │  0x00007f6ce2d8b822:   add    0x68(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@178 (line 98)
   0.00%  │  0x00007f6ce2d8b827:   sar    $0x16,%rax                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@281 (line 108)
   0.01%  │  0x00007f6ce2d8b82b:   add    %rax,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@282 (line 108)
   0.00%  │  0x00007f6ce2d8b82e:   shl    $0x16,%r14                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@433 (line 123)
   0.14%  │  0x00007f6ce2d8b832:   and    $0x3ffffff,%r14              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@437 (line 123)
   0.00%  │  0x00007f6ce2d8b839:   sub    %r14,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@438 (line 123)
   0.01%  │  0x00007f6ce2d8b83c:   sar    $0x4,%rbp                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@540 (line 133)
   0.00%  │  0x00007f6ce2d8b840:   sub    %rbp,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@541 (line 133)
   0.15%  │  0x00007f6ce2d8b843:   shl    $0xe,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@785 (line 157)
   0.00%  │  0x00007f6ce2d8b847:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@789 (line 157)
   0.01%  │  0x00007f6ce2d8b84e:   sub    %rbx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@790 (line 157)
   0.01%  │  0x00007f6ce2d8b851:   mov    %r9,%rcx
   0.15%  │  0x00007f6ce2d8b854:   shl    $0xe,%rcx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@86 (line 180)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b858:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@90 (line 180)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f6ce2d8b85f:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@91 (line 180)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b862:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@321 (line 211)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.16%  │  0x00007f6ce2d8b866:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@338 (line 213)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b869:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@346 (line 215)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f6ce2d8b870:   mov    %r11,%rcx
   0.00%  │  0x00007f6ce2d8b873:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@358 (line 216)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f6ce2d8b87a:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@359 (line 216)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b87d:   mov    %r8,0x48(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@437 (line 230)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.04%  │  0x00007f6ce2d8b881:   mov    0x8(%rsp),%r8
   0.00%  │  0x00007f6ce2d8b886:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@17 (line 171)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.13%  │  0x00007f6ce2d8b88d:   mov    0x10(%rsp),%rcx
          │  0x00007f6ce2d8b892:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@18 (line 171)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.04%  │  0x00007f6ce2d8b895:   shl    $0x14,%r9                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@62 (line 178)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b899:   and    $0x3ffffff,%r9               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@66 (line 178)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f6ce2d8b8a0:   add    %r9,%rcx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@67 (line 178)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b8a3:   mov    %rdx,%r8
   0.03%  │  0x00007f6ce2d8b8a6:   sar    $0x26,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@100 (line 181)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b8aa:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@101 (line 181)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f6ce2d8b8ad:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@349 (line 215)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b8b1:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@366 (line 217)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │                                                            ;   {no_reloc}
   0.03%  │  0x00007f6ce2d8b8b4:   lea    0x2000000(%rcx),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@374 (line 219)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f6ce2d8b8bb:   mov    %r11,%r8
   0.15%  │  0x00007f6ce2d8b8be:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@386 (line 220)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f6ce2d8b8c5:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@387 (line 220)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.05%  │  0x00007f6ce2d8b8c8:   mov    %rcx,0x50(%r10)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@443 (line 231)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f6ce2d8b8cc:   mov    %rdx,%r8
   0.12%  │  0x00007f6ce2d8b8cf:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@45 (line 175)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b8d6:   mov    0x18(%rsp),%r9
   0.03%  │  0x00007f6ce2d8b8db:   sub    %r8,%r9                      ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@46 (line 175)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b8de:   sar    $0x20,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@76 (line 179)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f6ce2d8b8e2:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@77 (line 179)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b8e5:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@377 (line 219)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.04%  │  0x00007f6ce2d8b8e9:   add    %r11,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@394 (line 221)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f6ce2d8b8ec:   mov    %r9,0x58(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@449 (line 232)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.11%  │  0x00007f6ce2d8b8f0:   mov    0x40(%rsp),%rbp
          │  0x00007f6ce2d8b8f5:   add    $0x48,%rsp
   0.03%  │  0x00007f6ce2d8b8f9:   nopl   0x0(%rax)
   0.01%  │  0x00007f6ce2d8b900:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f6ce2d8b907:   ja     0x00007f6ce2d8b987
   0.13%  │  0x00007f6ce2d8b90d:   ret    
          ↘  0x00007f6ce2d8b90e:   mov    0xc0(%rsp),%r10
             0x00007f6ce2d8b916:   mov    0xb8(%rsp),%r11
             0x00007f6ce2d8b91e:   mov    0xb0(%rsp),%rax
             0x00007f6ce2d8b926:   mov    0xa8(%rsp),%r13
             0x00007f6ce2d8b92e:   mov    0xa0(%rsp),%r14
             0x00007f6ce2d8b936:   mov    0x98(%rsp),%rbp
             0x00007f6ce2d8b93e:   mov    0x80(%rsp),%rbx
             0x00007f6ce2d8b946:   mov    0x88(%rsp),%rdi
             0x00007f6ce2d8b94e:   mov    0x78(%rsp),%r9
             0x00007f6ce2d8b953:   mov    0x70(%rsp),%r8
....................................................................................................
  16.43%  <total for region 2>

....[Hottest Regions]...............................................................................
  17.33%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1150 
  16.43%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 1084 
   8.56%       jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 1179 
   5.30%       jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1205 
   4.86%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 3, compile id 1358 
   4.48%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1106 
   4.42%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1077 
   4.13%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1089 
   3.29%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1150 
   2.77%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1075 
   1.10%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1472 
   1.07%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1472 
   0.99%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1472 
   0.95%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1472 
   0.94%       jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 1274 
   0.94%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 4, compile id 1429 
   0.83%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 1113 
   0.80%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1150 
   0.78%       jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 1274 
   0.76%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 4, compile id 1429 
  19.26%  <...other 1037 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  22.94%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1150 
  16.43%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 1084 
  10.36%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1472 
   8.56%       jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 1179 
   5.68%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 3, compile id 1358 
   5.30%       jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1205 
   4.48%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1106 
   4.42%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1077 
   4.13%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1089 
   3.03%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 4, compile id 1429 
   2.77%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1075 
   2.56%       jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 1274 
   1.92%               kernel  [unknown] 
   1.21%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 1113 
   1.13%       jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 1180 
   0.94%       jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1225 
   0.65%       jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::square, version 2, compile id 1194 
   0.42%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 1094 
   0.36%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1495 
   0.32%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::evaluate, version 2, compile id 1471 
   2.37%  <...other 168 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.20%       jvmci, level 4
   1.92%               kernel
   0.22%                     
   0.21%            libjvm.so
   0.16%         runtime stub
   0.13%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.02%               [vdso]
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%     perf-2127292.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp256r1, messageLength = 512)

# Run progress: 8.33% complete, ETA 00:21:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1243.241 us/op
# Warmup Iteration   2: 285.736 us/op
# Warmup Iteration   3: 250.262 us/op
# Warmup Iteration   4: 250.186 us/op
# Warmup Iteration   5: 249.988 us/op
Iteration   1: 249.971 us/op
Iteration   2: 250.065 us/op
Iteration   3: 250.138 us/op
Iteration   4: 250.125 us/op
Iteration   5: 250.140 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  250.088 ±(99.9%) 0.278 us/op [Average]
  (min, avg, max) = (249.971, 250.088, 250.140), stdev = 0.072
  CI (99.9%): [249.810, 250.366] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 450540 total address lines.
Perf output processed (skipped 63.146 seconds):
 Column 1: cycles (51111 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1152 

            # parm0:    rdx:rdx   = &apos;sun/security/util/math/IntegerModuloP&apos;
            #           [sp+0x130]  (sp of caller)
            0x00007f21aadab3c0:   mov    0x8(%rsi),%r10d
            0x00007f21aadab3c4:   movabs $0x7f212b000000,%r12
            0x00007f21aadab3ce:   add    %r12,%r10
            0x00007f21aadab3d1:   xor    %r12,%r12
            0x00007f21aadab3d4:   cmp    %r10,%rax
            0x00007f21aadab3d7:   jne    0x00007f21aa764080           ;   {runtime_call ic_miss_stub}
            0x00007f21aadab3dd:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.09%    0x00007f21aadab3e0:   mov    %eax,-0x14000(%rsp)
   0.16%    0x00007f21aadab3e7:   sub    $0x128,%rsp
   0.01%    0x00007f21aadab3ee:   xchg   %ax,%ax
   0.06%    0x00007f21aadab3f0:   cmpl   $0x0,0x20(%r15)
   0.03%    0x00007f21aadab3f8:   jne    0x00007f21aadabd32
   0.07%    0x00007f21aadab3fe:   mov    %rbp,0x120(%rsp)
   0.02%    0x00007f21aadab406:   mov    %rsi,0x88(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.12%    0x00007f21aadab40e:   mov    0x8(%rdx),%ecx               ; implicit exception: dispatches to 0x00007f21aadabd6e
   0.10%    0x00007f21aadab411:   movabs $0x7f212b000000,%r8
   0.02%    0x00007f21aadab41b:   lea    (%r8,%rcx,1),%rcx
   0.05%    0x00007f21aadab41f:   movabs $0x7f212c0c1ae0,%r8          ;   {metadata(&apos;sun/security/util/math/intpoly/IntegerPolynomial$Element&apos;)}
   0.03%    0x00007f21aadab429:   cmp    0x38(%rcx),%r8
            0x00007f21aadab42d:   jne    0x00007f21aadabd14           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@28 (line 734)
   0.56%    0x00007f21aadab433:   mov    0x18(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rsi=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
            0x00007f21aadab436:   mov    0x14(,%rcx,8),%r8d           ; implicit exception: dispatches to 0x00007f21aadabd91
   0.06%    0x00007f21aadab43e:   xchg   %ax,%ax
   0.00%    0x00007f21aadab440:   cmp    0xc(%rsi),%r8d
            0x00007f21aadab444:   jl     0x00007f21aadabd23           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@43 (line 737)
   0.14%    0x00007f21aadab44a:   cmp    0xc(%rdx),%r8d
            0x00007f21aadab44e:   jl     0x00007f21aadabcce           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@73 (line 742)
   0.04%    0x00007f21aadab454:   mov    0x8(,%rcx,8),%r8d            ;*invokevirtual mult {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab45c:   mov    0x10(%rdx),%r10d             ;*getfield limbs {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@101 (line 747)
   0.00%    0x00007f21aadab460:   mov    0x10(%rsi),%r9d
   0.11%    0x00007f21aadab464:   mov    %r9d,%r11d
   0.05%    0x00007f21aadab467:   shl    $0x3,%r11                    ;*getfield limbs {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@97 (line 747)
            0x00007f21aadab46b:   shl    $0x3,%rcx
            0x00007f21aadab46f:   cmp    $0x10c1588,%r8d              ;   {metadata(&apos;sun/security/util/math/intpoly/IntegerPolynomialP256&apos;)}
            0x00007f21aadab476:   jne    0x00007f21aadabc6e           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop r11=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.10%    0x00007f21aadab47c:   mov    0xc(,%r9,8),%r8d             ; implicit exception: dispatches to 0x00007f21aadabdb4
                                                                      ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop r11=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.13%    0x00007f21aadab484:   mov    0xc(,%r10,8),%edi            ; implicit exception: dispatches to 0x00007f21aadabdd7
   0.00%    0x00007f21aadab48c:   cmp    $0xa,%r8d
            0x00007f21aadab490:   jb     0x00007f21aadabd05           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab496:   cmp    $0xa,%edi
            0x00007f21aadab499:   jb     0x00007f21aadabcf6           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@5 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f21aadab49f:   mov    %rcx,0x80(%rsp)
   0.06%    0x00007f21aadab4a7:   mov    %r11,0x78(%rsp)
   0.00%    0x00007f21aadab4ac:   mov    0x10(,%r9,8),%rdx            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f21aadab4b4:   mov    0x18(,%r9,8),%r8             ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@18 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f21aadab4bc:   mov    0x20(,%r9,8),%rdi            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@43 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f21aadab4c4:   mov    0x28(,%r9,8),%rbx            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@76 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab4cc:   mov    0x30(,%r9,8),%rax            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@117 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f21aadab4d4:   mov    0x38(,%r9,8),%rbp            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@166 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f21aadab4dc:   mov    0x40(,%r9,8),%r13            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@225 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f21aadab4e4:   mov    0x48(,%r9,8),%r14            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@294 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab4ec:   mov    0x50(,%r9,8),%r11            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@373 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f21aadab4f4:   mov    0x58(,%r9,8),%r9             ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@462 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f21aadab4fc:   mov    0x58(,%r10,8),%rcx           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@387 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f21aadab504:   mov    0x50(,%r10,8),%rsi           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@308 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f21aadab50c:   mov    %r9,0x110(%rsp)
   0.03%    0x00007f21aadab514:   mov    0x48(,%r10,8),%r9            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@239 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f21aadab51c:   mov    %rcx,0x108(%rsp)
   0.09%    0x00007f21aadab524:   mov    0x40(,%r10,8),%rcx           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@180 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab52c:   mov    %r11,0x100(%rsp)
   0.02%    0x00007f21aadab534:   mov    0x38(,%r10,8),%r11           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@130 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f21aadab53c:   mov    %rsi,0xf8(%rsp)
   0.09%    0x00007f21aadab544:   mov    0x30(,%r10,8),%rsi           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@89 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f21aadab54c:   mov    %r14,0xf0(%rsp)
   0.11%    0x00007f21aadab554:   mov    0x28(,%r10,8),%r14           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@56 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.03%    0x00007f21aadab55c:   mov    %r9,0xe8(%rsp)
   0.11%    0x00007f21aadab564:   mov    0x20(,%r10,8),%r9            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@31 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab56c:   mov    %r13,0xe0(%rsp)              ;   {no_reloc}
   0.11%    0x00007f21aadab574:   mov    0x18(,%r10,8),%r13           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@14 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f21aadab57c:   mov    0x10(,%r10,8),%r10           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@5 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f21aadab584:   mov    %rcx,0xd8(%rsp)
   0.13%    0x00007f21aadab58c:   mov    %rdx,%rcx
            0x00007f21aadab58f:   imul   %r10,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@6 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f21aadab593:   mov    %rcx,0xd0(%rsp)
   0.45%    0x00007f21aadab59b:   mov    %r13,%rcx
   0.00%    0x00007f21aadab59e:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@15 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab5a2:   mov    %rbp,0xc8(%rsp)
   0.09%    0x00007f21aadab5aa:   mov    %r8,%rbp
   0.09%    0x00007f21aadab5ad:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@22 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab5b1:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@23 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f21aadab5b4:   mov    %r9,%rcx
   0.05%    0x00007f21aadab5b7:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@32 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f21aadab5bb:   mov    %rbp,0xc0(%rsp)
   0.06%    0x00007f21aadab5c3:   mov    %r8,%rbp
   0.00%    0x00007f21aadab5c6:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@39 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f21aadab5ca:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@40 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f21aadab5cd:   mov    %rdi,%rbp
   0.06%    0x00007f21aadab5d0:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@47 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab5d4:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@48 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.03%    0x00007f21aadab5d7:   mov    %r14,%rcx
   0.11%    0x00007f21aadab5da:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@57 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f21aadab5de:   mov    %rbp,0xb8(%rsp)
   0.02%    0x00007f21aadab5e6:   mov    %r8,%rbp
   0.02%    0x00007f21aadab5e9:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@64 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f21aadab5ed:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@65 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f21aadab5f0:   mov    %rdi,%rbp
   0.00%    0x00007f21aadab5f3:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@72 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f21aadab5f7:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@73 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f21aadab5fa:   mov    %rbx,%rbp
   0.05%    0x00007f21aadab5fd:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@80 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f21aadab601:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@81 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.03%    0x00007f21aadab604:   mov    %rsi,%rcx
   0.09%    0x00007f21aadab607:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@90 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f21aadab60b:   mov    %rbp,0xb0(%rsp)
   0.08%    0x00007f21aadab613:   mov    %r8,%rbp
   0.02%    0x00007f21aadab616:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@97 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f21aadab61a:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@98 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab61d:   mov    %rdi,%rbp
   0.06%    0x00007f21aadab620:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@105 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.03%    0x00007f21aadab624:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@106 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.10%    0x00007f21aadab627:   mov    %rbx,%rbp
            0x00007f21aadab62a:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@113 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f21aadab62e:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@114 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f21aadab631:   mov    %rax,%rbp
   0.08%    0x00007f21aadab634:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@121 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab638:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@122 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f21aadab63b:   mov    %r11,%rcx
   0.02%    0x00007f21aadab63e:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@131 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f21aadab642:   mov    %rbp,0xa8(%rsp)
   0.15%    0x00007f21aadab64a:   mov    %r8,%rbp
   0.01%    0x00007f21aadab64d:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@138 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab651:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@139 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab654:   mov    %rdi,%rbp
   0.17%    0x00007f21aadab657:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@146 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab65b:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@147 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab65e:   mov    %rbx,%rbp
   0.00%    0x00007f21aadab661:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@154 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f21aadab665:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@155 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab668:   mov    %rax,%rbp
            0x00007f21aadab66b:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@162 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab66f:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@163 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
   0.27%    0x00007f21aadab672:   mov    0xc8(%rsp),%rbp
   0.01%    0x00007f21aadab67a:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@170 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab67e:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@171 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f21aadab681:   mov    0xd8(%rsp),%rcx
   0.10%    0x00007f21aadab689:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@181 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab68d:   mov    %rbp,0xa0(%rsp)
   0.16%    0x00007f21aadab695:   mov    %r8,%rbp
            0x00007f21aadab698:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@188 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab69c:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@189 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab69f:   mov    %rdi,%rbp
   0.16%    0x00007f21aadab6a2:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@196 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab6a6:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@197 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab6a9:   mov    %rbx,%rbp
            0x00007f21aadab6ac:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@204 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.20%    0x00007f21aadab6b0:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@205 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab6b3:   mov    %rax,%rbp
            0x00007f21aadab6b6:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@212 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab6ba:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@213 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.27%    0x00007f21aadab6bd:   mov    0xc8(%rsp),%rbp
            0x00007f21aadab6c5:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@220 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab6c9:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@221 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab6cc:   mov    0xe0(%rsp),%rbp
   0.17%    0x00007f21aadab6d4:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@229 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab6d8:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@230 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f21aadab6db:   mov    0xe8(%rsp),%rcx
            0x00007f21aadab6e3:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@240 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f21aadab6e7:   mov    %rbp,0x98(%rsp)
   0.12%    0x00007f21aadab6ef:   mov    %r8,%rbp
   0.00%    0x00007f21aadab6f2:   imul   0xd8(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@248 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab6fb:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@249 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab6fe:   mov    %rdi,%rbp
   0.16%    0x00007f21aadab701:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@256 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab705:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@257 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab708:   mov    %rbx,%rbp
   0.00%    0x00007f21aadab70b:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@264 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f21aadab70f:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@265 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab712:   mov    %rax,%rbp
            0x00007f21aadab715:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@272 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab719:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@273 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.34%    0x00007f21aadab71c:   mov    0xc8(%rsp),%rbp
   0.00%    0x00007f21aadab724:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@280 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab728:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@281 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab72b:   mov    0xe0(%rsp),%rbp
   0.16%    0x00007f21aadab733:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@289 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab737:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@290 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab73a:   mov    0xf0(%rsp),%rbp
   0.00%    0x00007f21aadab742:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@298 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f21aadab746:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@299 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab749:   mov    0xf8(%rsp),%rcx
            0x00007f21aadab751:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@309 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab755:   mov    %rbp,0x90(%rsp)
   0.31%    0x00007f21aadab75d:   mov    %r8,%rbp
            0x00007f21aadab760:   imul   0xe8(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@317 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab769:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@318 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab76c:   mov    %rdi,%rbp
   0.17%    0x00007f21aadab76f:   imul   0xd8(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@326 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
            0x00007f21aadab778:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@327 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab77b:   mov    %rbx,%rbp
            0x00007f21aadab77e:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@334 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f21aadab782:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@335 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f21aadab785:   mov    %rax,%rbp
   0.00%    0x00007f21aadab788:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@342 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab78c:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@343 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.23%    0x00007f21aadab78f:   mov    0xc8(%rsp),%rbp
   0.05%    0x00007f21aadab797:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@350 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab79b:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@351 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab79e:   mov    0xe0(%rsp),%rbp
   0.12%    0x00007f21aadab7a6:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@359 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f21aadab7aa:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@360 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab7ad:   mov    0xf0(%rsp),%rbp
            0x00007f21aadab7b5:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@368 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f21aadab7b9:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@369 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f21aadab7bc:   mov    0x100(%rsp),%rbp
            0x00007f21aadab7c4:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@377 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab7c8:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@378 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f21aadab7cb:   mov    0x108(%rsp),%rcx
            0x00007f21aadab7d3:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@388 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab7d7:   mov    %r8,%rdx
   0.00%    0x00007f21aadab7da:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@396 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f21aadab7e3:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@397 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.03%    0x00007f21aadab7e6:   mov    %rdi,%rdx
            0x00007f21aadab7e9:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@405 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab7f2:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@406 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f21aadab7f5:   mov    %rbx,%rdx
            0x00007f21aadab7f8:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@414 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f21aadab801:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@415 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f21aadab804:   mov    %rax,%rdx
            0x00007f21aadab807:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@422 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab80b:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@423 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.32%    0x00007f21aadab80e:   mov    0xc8(%rsp),%rdx
   0.00%    0x00007f21aadab816:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@430 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab81a:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@431 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab81d:   mov    0xe0(%rsp),%rdx
   0.18%    0x00007f21aadab825:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@439 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab829:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@440 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab82c:   mov    0xf0(%rsp),%rdx
   0.00%    0x00007f21aadab834:   imul   %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@448 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f21aadab838:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@449 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab83b:   mov    0x100(%rsp),%rdx
            0x00007f21aadab843:   imul   %r13,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@457 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab847:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@458 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f21aadab84a:   mov    0x110(%rsp),%rdx
            0x00007f21aadab852:   imul   %r10,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@466 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab856:   mov    %rcx,%r10
            0x00007f21aadab859:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@467 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f21aadab85c:   imul   0x108(%rsp),%r8              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@477 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadab865:   mov    %rdi,%rdx
            0x00007f21aadab868:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@485 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
   0.19%    0x00007f21aadab871:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@486 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f21aadab874:   mov    %rbx,%rdx
            0x00007f21aadab877:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@494 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab880:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@495 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f21aadab883:   mov    %rax,%rdx
            0x00007f21aadab886:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@503 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab88f:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@504 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f21aadab892:   mov    0xc8(%rsp),%rdx
            0x00007f21aadab89a:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@511 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab89e:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@512 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f21aadab8a1:   mov    0xe0(%rsp),%rdx
            0x00007f21aadab8a9:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@520 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab8ad:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@521 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f21aadab8b0:   mov    0xf0(%rsp),%rdx
            0x00007f21aadab8b8:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@529 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab8bc:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@530 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f21aadab8bf:   mov    0x100(%rsp),%rdx
   0.00%    0x00007f21aadab8c7:   imul   %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@538 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab8cb:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@539 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f21aadab8ce:   mov    0x110(%rsp),%rdx
            0x00007f21aadab8d6:   imul   %r13,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@547 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab8da:   mov    %r8,%r13
            0x00007f21aadab8dd:   add    %rdx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@548 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f21aadab8e0:   imul   0x108(%rsp),%rdi             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@558 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab8e9:   mov    %rbx,%rdx
            0x00007f21aadab8ec:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@566 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f21aadab8f5:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@567 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f21aadab8f8:   mov    %rax,%rdx
            0x00007f21aadab8fb:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@575 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab904:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@576 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f21aadab907:   mov    0xc8(%rsp),%rdx
            0x00007f21aadab90f:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@584 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab918:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@585 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f21aadab91b:   mov    0xe0(%rsp),%rdx
            0x00007f21aadab923:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@593 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab927:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@594 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f21aadab92a:   mov    0xf0(%rsp),%rdx
            0x00007f21aadab932:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@602 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab936:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@603 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f21aadab939:   mov    0x100(%rsp),%rdx
            0x00007f21aadab941:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@611 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab945:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@612 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.20%    0x00007f21aadab948:   imul   0x110(%rsp),%r9              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@620 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.10%    0x00007f21aadab951:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@621 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f21aadab954:   imul   0x108(%rsp),%rbx             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@631 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab95d:   mov    %rax,%rdx
            0x00007f21aadab960:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@639 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f21aadab969:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@640 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f21aadab96c:   mov    0xc8(%rsp),%rdx              ;   {no_reloc}
            0x00007f21aadab974:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@648 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab97d:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@649 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f21aadab980:   mov    0xe0(%rsp),%rdx
            0x00007f21aadab988:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@658 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f21aadab991:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@659 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f21aadab994:   mov    0xf0(%rsp),%rdx
            0x00007f21aadab99c:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@667 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab9a0:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@668 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f21aadab9a3:   mov    0x100(%rsp),%rdx
            0x00007f21aadab9ab:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@676 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab9af:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@677 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f21aadab9b2:   mov    0x110(%rsp),%r9
            0x00007f21aadab9ba:   imul   %r14,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@685 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab9be:   add    %r9,%rbx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@686 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f21aadab9c1:   imul   0x108(%rsp),%rax             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@696 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab9ca:   mov    0xc8(%rsp),%rdx
            0x00007f21aadab9d2:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@704 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f21aadab9db:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@705 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f21aadab9de:   mov    0xe0(%rsp),%rdx
            0x00007f21aadab9e6:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@714 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadab9ef:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@715 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f21aadab9f2:   mov    0xf0(%rsp),%r14
            0x00007f21aadab9fa:   imul   0xd8(%rsp),%r14              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@724 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f21aadaba03:   add    %r14,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@725 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f21aadaba06:   mov    0x100(%rsp),%rdx
            0x00007f21aadaba0e:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@733 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadaba12:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@734 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f21aadaba15:   mov    0x110(%rsp),%r9
            0x00007f21aadaba1d:   imul   %rsi,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@742 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadaba21:   add    %r9,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@743 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f21aadaba24:   mov    0xc8(%rsp),%rsi
            0x00007f21aadaba2c:   imul   0x108(%rsp),%rsi             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@753 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f21aadaba35:   mov    0xe0(%rsp),%rdx
            0x00007f21aadaba3d:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@762 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f21aadaba46:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  16.97%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 1072 

             # parm18:   [sp+0xb8]   = long
             # parm19:   [sp+0xc0]   = long
             0x00007f21aad8b220:   mov    0x8(%rsi),%r10d
             0x00007f21aad8b224:   movabs $0x7f212b000000,%r12
             0x00007f21aad8b22e:   add    %r12,%r10
             0x00007f21aad8b231:   xor    %r12,%r12
             0x00007f21aad8b234:   cmp    %r10,%rax
             0x00007f21aad8b237:   jne    0x00007f21aa764080           ;   {runtime_call ic_miss_stub}
             0x00007f21aad8b23d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.17%     0x00007f21aad8b240:   mov    %eax,-0x14000(%rsp)
   0.16%     0x00007f21aad8b247:   sub    $0x48,%rsp
             0x00007f21aad8b24b:   nop
   0.00%     0x00007f21aad8b24c:   cmpl   $0x1,0x20(%r15)
   0.09%     0x00007f21aad8b254:   jne    0x00007f21aad8b8f7
   0.14%     0x00007f21aad8b25a:   mov    %rbp,0x40(%rsp)
   0.05%     0x00007f21aad8b25f:   mov    %r8,0x30(%rsp)
   0.12%     0x00007f21aad8b264:   mov    %r9,0x28(%rsp)
   0.15%     0x00007f21aad8b269:   mov    %rdi,0x20(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop }
                                                                       ;*lconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@0 (line 81)
   0.16%     0x00007f21aad8b26e:   cmpl   $0xa,0xc(%rdx)               ; implicit exception: dispatches to 0x00007f21aad8b91b
   0.01%  ╭  0x00007f21aad8b272:   jb     0x00007f21aad8b88e           ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@400 (line 223)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b278:   mov    0xc0(%rsp),%r10
   0.00%  │  0x00007f21aad8b280:   mov    0xb8(%rsp),%r11
   0.14%  │  0x00007f21aad8b288:   mov    0xb0(%rsp),%rax
          │  0x00007f21aad8b290:   mov    0xa8(%rsp),%r13
   0.00%  │  0x00007f21aad8b298:   mov    0xa0(%rsp),%r14
   0.00%  │  0x00007f21aad8b2a0:   mov    0x98(%rsp),%rbp
   0.15%  │  0x00007f21aad8b2a8:   mov    0x90(%rsp),%rsi
          │  0x00007f21aad8b2b0:   mov    0x80(%rsp),%rbx
          │  0x00007f21aad8b2b8:   mov    %rdx,(%rsp)
          │  0x00007f21aad8b2bc:   mov    0x88(%rsp),%rdi
   0.13%  │  0x00007f21aad8b2c4:   mov    0x78(%rsp),%r9
          │  0x00007f21aad8b2c9:   mov    0x70(%rsp),%r8
   0.01%  │  0x00007f21aad8b2ce:   mov    %r10,%rdx
   0.00%  │  0x00007f21aad8b2d1:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@23 (line 84)
   0.15%  │  0x00007f21aad8b2d5:   add    %rdx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@24 (line 84)
          │  0x00007f21aad8b2d8:   mov    %r11,%rdx
   0.01%  │  0x00007f21aad8b2db:   shl    $0x16,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@151 (line 96)
   0.00%  │  0x00007f21aad8b2df:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@155 (line 96)
   0.15%  │  0x00007f21aad8b2e6:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@156 (line 96)
          │  0x00007f21aad8b2e9:   mov    %r10,%rdx
   0.00%  │  0x00007f21aad8b2ec:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@9 (line 83)
   0.00%  │  0x00007f21aad8b2f0:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@13 (line 83)
   0.14%  │  0x00007f21aad8b2f7:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@14 (line 83)
          │  0x00007f21aad8b2fa:   mov    %r10,%rdx
   0.00%  │  0x00007f21aad8b2fd:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@47 (line 86)
   0.00%  │  0x00007f21aad8b301:   sub    %rdx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@48 (line 86)
   0.17%  │  0x00007f21aad8b304:   mov    %r11,%rdx
          │  0x00007f21aad8b307:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@117 (line 93)
   0.01%  │  0x00007f21aad8b30b:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@118 (line 93)
   0.00%  │  0x00007f21aad8b30e:   mov    %rax,%rdx
   0.16%  │  0x00007f21aad8b311:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@258 (line 106)
          │  0x00007f21aad8b315:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@259 (line 106)
   0.01%  │  0x00007f21aad8b318:   mov    %rax,%rdx
   0.01%  │  0x00007f21aad8b31b:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@221 (line 103)
   0.15%  │  0x00007f21aad8b31f:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@225 (line 103)
          │  0x00007f21aad8b326:   sub    %rdx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@226 (line 103)
   0.03%  │  0x00007f21aad8b329:   mov    %r10,%rdx
   0.00%  │  0x00007f21aad8b32c:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@33 (line 85)
   0.14%  │  0x00007f21aad8b330:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@37 (line 85)
          │                                                            ;   {no_reloc}
          │  0x00007f21aad8b337:   sub    %rdx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@38 (line 85)
   0.01%  │  0x00007f21aad8b33a:   mov    %r11,%rdx
   0.01%  │  0x00007f21aad8b33d:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@103 (line 92)
   0.11%  │  0x00007f21aad8b341:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@107 (line 92)
          │  0x00007f21aad8b348:   add    %rdx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@108 (line 92)
   0.02%  │  0x00007f21aad8b34b:   mov    %r11,%rdx
          │  0x00007f21aad8b34e:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@141 (line 95)
   0.14%  │  0x00007f21aad8b352:   sub    %rdx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@142 (line 95)
          │  0x00007f21aad8b355:   mov    %rax,%rdx
   0.02%  │  0x00007f21aad8b358:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@211 (line 102)
   0.00%  │  0x00007f21aad8b35c:   add    %rdx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@212 (line 102)
   0.14%  │  0x00007f21aad8b35f:   mov    %r13,%rdx
          │  0x00007f21aad8b362:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@291 (line 110)
   0.02%  │  0x00007f21aad8b366:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@295 (line 110)
          │  0x00007f21aad8b36d:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@296 (line 110)
   0.13%  │  0x00007f21aad8b370:   mov    %r13,%rdx
          │  0x00007f21aad8b373:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@329 (line 113)
   0.02%  │  0x00007f21aad8b377:   sub    %rdx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@330 (line 113)
   0.01%  │  0x00007f21aad8b37a:   mov    %r11,%rdx
   0.15%  │  0x00007f21aad8b37d:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@127 (line 94)
          │  0x00007f21aad8b381:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@131 (line 94)
   0.02%  │  0x00007f21aad8b388:   sub    %rdx,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@132 (line 94)
   0.00%  │  0x00007f21aad8b38b:   mov    %rax,%rdx
   0.13%  │  0x00007f21aad8b38e:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@197 (line 101)
          │  0x00007f21aad8b392:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@201 (line 101)
   0.02%  │  0x00007f21aad8b399:   add    %rdx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@202 (line 101)
   0.01%  │  0x00007f21aad8b39c:   mov    %rax,%rdx
   0.13%  │  0x00007f21aad8b39f:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@235 (line 104)
          │  0x00007f21aad8b3a3:   sub    %rdx,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@236 (line 104)
   0.01%  │  0x00007f21aad8b3a6:   mov    %r13,%rdx
   0.00%  │  0x00007f21aad8b3a9:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@305 (line 111)
   0.14%  │  0x00007f21aad8b3ad:   add    %rdx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@306 (line 111)
          │  0x00007f21aad8b3b0:   mov    %r14,%rdx
   0.03%  │  0x00007f21aad8b3b3:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@399 (line 120)
   0.01%  │  0x00007f21aad8b3b7:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@400 (line 120)
   0.14%  │  0x00007f21aad8b3ba:   mov    %rbp,%rdx
          │  0x00007f21aad8b3bd:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@503 (line 130)
   0.02%  │  0x00007f21aad8b3c1:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@507 (line 130)
   0.01%  │  0x00007f21aad8b3c8:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@508 (line 130)
   0.16%  │  0x00007f21aad8b3cb:   mov    %r10,%rdx
          │  0x00007f21aad8b3ce:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@70 (line 88)
   0.02%  │  0x00007f21aad8b3d2:   sub    %rdx,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@71 (line 88)
   0.01%  │  0x00007f21aad8b3d5:   mov    %r13,%rdx
   0.16%  │  0x00007f21aad8b3d8:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@315 (line 112)
          │  0x00007f21aad8b3dc:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@319 (line 112)
   0.02%  │  0x00007f21aad8b3e3:   sub    %rdx,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@320 (line 112)
   0.00%  │  0x00007f21aad8b3e6:   mov    %r14,%rdx
   0.12%  │  0x00007f21aad8b3e9:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@385 (line 119)
   0.00%  │  0x00007f21aad8b3ed:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@389 (line 119)
   0.01%  │  0x00007f21aad8b3f4:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@390 (line 119)
   0.00%  │  0x00007f21aad8b3f7:   mov    %r14,%rdx
   0.14%  │  0x00007f21aad8b3fa:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@423 (line 122)
          │  0x00007f21aad8b3fe:   sub    %rdx,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@424 (line 122)
   0.02%  │  0x00007f21aad8b401:   mov    %rbp,%rdx
          │  0x00007f21aad8b404:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@493 (line 129)
   0.13%  │  0x00007f21aad8b408:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@494 (line 129)
          │  0x00007f21aad8b40b:   mov    %rsi,%rdx
   0.01%  │  0x00007f21aad8b40e:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@573 (line 137)
   0.01%  │  0x00007f21aad8b412:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@577 (line 137)
   0.13%  │  0x00007f21aad8b419:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@578 (line 137)
          │  0x00007f21aad8b41c:   mov    %rsi,%rdx
   0.02%  │  0x00007f21aad8b41f:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@611 (line 140)
   0.00%  │  0x00007f21aad8b423:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@612 (line 140)
   0.15%  │  0x00007f21aad8b426:   mov    %r10,%rdx
          │  0x00007f21aad8b429:   shl    $0x16,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@57 (line 87)
   0.01%  │  0x00007f21aad8b42d:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@61 (line 87)
   0.00%  │  0x00007f21aad8b434:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@62 (line 87)
          │                                                            ;   {no_reloc}
   0.13%  │  0x00007f21aad8b437:   mov    %r11,%rdx
          │  0x00007f21aad8b43a:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@164 (line 97)
   0.01%  │  0x00007f21aad8b43e:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@165 (line 97)
          │  0x00007f21aad8b441:   mov    %r14,%rdx
   0.13%  │  0x00007f21aad8b444:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@409 (line 121)
          │  0x00007f21aad8b448:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@413 (line 121)
   0.01%  │  0x00007f21aad8b44f:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@414 (line 121)
   0.00%  │  0x00007f21aad8b452:   mov    %rbp,%rdx
   0.12%  │  0x00007f21aad8b455:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@479 (line 128)
          │  0x00007f21aad8b459:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@483 (line 128)
   0.02%  │  0x00007f21aad8b460:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@484 (line 128)
   0.00%  │  0x00007f21aad8b463:   mov    %rbp,%rdx
   0.16%  │  0x00007f21aad8b466:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@517 (line 131)
          │  0x00007f21aad8b46a:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@518 (line 131)
   0.01%  │  0x00007f21aad8b46d:   mov    %rsi,%rdx
   0.00%  │  0x00007f21aad8b470:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@587 (line 138)
   0.20%  │  0x00007f21aad8b474:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@588 (line 138)
          │  0x00007f21aad8b477:   mov    %rdi,%rdx
   0.02%  │  0x00007f21aad8b47a:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@681 (line 147)
   0.00%  │  0x00007f21aad8b47e:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@682 (line 147)
   0.14%  │  0x00007f21aad8b481:   mov    %rbx,%rdx
          │  0x00007f21aad8b484:   shl    $0x4,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@830 (line 161)
   0.01%  │  0x00007f21aad8b488:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@834 (line 161)
          │  0x00007f21aad8b48f:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@835 (line 161)
   0.11%  │  0x00007f21aad8b492:   mov    %r10,%rdx
          │  0x00007f21aad8b495:   sar    $0x16,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@93 (line 90)
   0.01%  │  0x00007f21aad8b499:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@94 (line 90)
          │  0x00007f21aad8b49c:   mov    %rax,%rdx
   0.16%  │  0x00007f21aad8b49f:   shl    $0x16,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@245 (line 105)
          │  0x00007f21aad8b4a3:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@249 (line 105)
   0.01%  │  0x00007f21aad8b4aa:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@250 (line 105)
          │  0x00007f21aad8b4ad:   mov    %r13,%rdx
   0.13%  │  0x00007f21aad8b4b0:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@352 (line 115)
          │  0x00007f21aad8b4b4:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@353 (line 115)
   0.01%  │  0x00007f21aad8b4b7:   mov    %rsi,%rdx
   0.00%  │  0x00007f21aad8b4ba:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@597 (line 139)
   0.13%  │  0x00007f21aad8b4be:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@601 (line 139)
          │  0x00007f21aad8b4c5:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@602 (line 139)
   0.01%  │  0x00007f21aad8b4c8:   mov    %rdi,%rdx
   0.01%  │  0x00007f21aad8b4cb:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@667 (line 146)
   0.14%  │  0x00007f21aad8b4cf:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@671 (line 146)
          │  0x00007f21aad8b4d6:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@672 (line 146)
   0.00%  │  0x00007f21aad8b4d9:   mov    %rdi,%rdx
          │  0x00007f21aad8b4dc:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@705 (line 149)
   0.16%  │  0x00007f21aad8b4e0:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@706 (line 149)
          │  0x00007f21aad8b4e3:   mov    %rbx,%rdx
   0.01%  │  0x00007f21aad8b4e6:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@775 (line 156)
   0.00%  │  0x00007f21aad8b4ea:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@776 (line 156)
   0.12%  │  0x00007f21aad8b4ed:   shl    $0x4,%r10                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@79 (line 89)
          │  0x00007f21aad8b4f1:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@83 (line 89)
   0.01%  │  0x00007f21aad8b4f8:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@84 (line 89)
   0.01%  │  0x00007f21aad8b4fb:   mov    %r11,%r10
   0.14%  │  0x00007f21aad8b4fe:   sar    $0x16,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@187 (line 99)
          │  0x00007f21aad8b502:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@188 (line 99)
   0.02%  │  0x00007f21aad8b505:   mov    %r13,%r10
   0.00%  │  0x00007f21aad8b508:   shl    $0x16,%r10                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@339 (line 114)
   0.12%  │  0x00007f21aad8b50c:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@343 (line 114)
          │  0x00007f21aad8b513:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@344 (line 114)
   0.02%  │  0x00007f21aad8b516:   mov    %r14,%r10
   0.00%  │  0x00007f21aad8b519:   sar    $0x4,%r10                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@446 (line 124)
   0.12%  │  0x00007f21aad8b51d:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@447 (line 124)
          │  0x00007f21aad8b520:   mov    %rdi,%r10
   0.01%  │  0x00007f21aad8b523:   shl    $0xe,%r10                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@691 (line 148)
   0.01%  │  0x00007f21aad8b527:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@695 (line 148)
   0.14%  │  0x00007f21aad8b52e:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@696 (line 148)
          │  0x00007f21aad8b531:   mov    %rbx,%r10
   0.01%  │  0x00007f21aad8b534:   shl    $0x14,%r10                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@761 (line 155)
          │                                                            ;   {no_reloc}
   0.01%  │  0x00007f21aad8b538:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@765 (line 155)
   0.15%  │  0x00007f21aad8b53f:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@766 (line 155)
          │  0x00007f21aad8b542:   mov    %rbx,%r10
   0.01%  │  0x00007f21aad8b545:   sar    $0xc,%r10                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@799 (line 158)
   0.01%  │  0x00007f21aad8b549:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@800 (line 158)
   0.12%  │  0x00007f21aad8b54c:   lea    0x2000000(%r8),%r10          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@5 (line 170)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b553:   mov    %r10,%rdx
   0.01%  │  0x00007f21aad8b556:   sar    $0x1a,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@8 (line 170)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b55a:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@25 (line 172)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f21aad8b55d:   lea    0x2000000(%r9),%rdx          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@33 (line 174)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b564:   mov    %r9,0x18(%rsp)
   0.04%  │  0x00007f21aad8b569:   mov    %rdx,%r9
   0.00%  │  0x00007f21aad8b56c:   sar    $0x1a,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@36 (line 174)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.11%  │  0x00007f21aad8b570:   mov    %r8,0x10(%rsp)
          │  0x00007f21aad8b575:   mov    %r9,%r8
   0.01%  │  0x00007f21aad8b578:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@131 (line 184)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b57c:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@135 (line 184)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f21aad8b583:   add    %r8,%rcx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@136 (line 184)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b586:   lea    0x2000000(%rcx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@152 (line 187)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.02%  │  0x00007f21aad8b58d:   mov    %r10,0x8(%rsp)
   0.00%  │  0x00007f21aad8b592:   mov    %r8,%r10
   0.14%  │  0x00007f21aad8b595:   and    $0xfffffffffc000000,%r10     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@163 (line 188)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b59c:   sub    %r10,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@164 (line 188)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.04%  │  0x00007f21aad8b59f:   mov    (%rsp),%r10
   0.00%  │  0x00007f21aad8b5a3:   mov    %rcx,0x10(%r10)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@400 (line 223)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.19%  │  0x00007f21aad8b5a7:   mov    %rdi,%rcx
          │  0x00007f21aad8b5aa:   shl    $0x4,%rcx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@737 (line 152)
   0.01%  │  0x00007f21aad8b5ae:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@741 (line 152)
   0.00%  │  0x00007f21aad8b5b5:   add    0x30(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@742 (line 152)
   0.14%  │  0x00007f21aad8b5ba:   mov    %r11,0x30(%rsp)
          │  0x00007f21aad8b5bf:   mov    %rbx,%r11
   0.01%  │  0x00007f21aad8b5c2:   sar    $0x16,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@843 (line 162)
          │  0x00007f21aad8b5c6:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@844 (line 162)
   0.15%  │  0x00007f21aad8b5c9:   mov    %rdx,%r11
          │  0x00007f21aad8b5cc:   sar    $0x30,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@144 (line 185)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b5d0:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@145 (line 185)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b5d3:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@155 (line 187)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.15%  │  0x00007f21aad8b5d7:   add    %r8,%rcx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@170 (line 189)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b5da:   lea    0x2000000(%rcx),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@178 (line 191)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b5e1:   mov    %r11,%r8
          │  0x00007f21aad8b5e4:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@190 (line 192)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.17%  │  0x00007f21aad8b5eb:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@191 (line 192)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b5ee:   mov    %rcx,0x18(%r10)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@405 (line 224)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b5f2:   mov    %rsi,%r8
   0.00%  │  0x00007f21aad8b5f5:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@643 (line 143)
   0.16%  │  0x00007f21aad8b5f9:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@647 (line 143)
          │  0x00007f21aad8b600:   add    0x28(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@648 (line 143)
          │  0x00007f21aad8b605:   mov    %rdi,%rcx
          │  0x00007f21aad8b608:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@751 (line 153)
   0.16%  │  0x00007f21aad8b60c:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@752 (line 153)
          │  0x00007f21aad8b60f:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@181 (line 191)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b613:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@198 (line 193)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b616:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@206 (line 195)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f21aad8b61d:   mov    %r11,%rcx
          │  0x00007f21aad8b620:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@218 (line 196)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b627:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@219 (line 196)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b62a:   mov    %r8,0x20(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@410 (line 225)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f21aad8b62e:   mov    %rbp,%r8
          │  0x00007f21aad8b631:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@549 (line 134)
          │                                                            ;   {no_reloc}
   0.00%  │  0x00007f21aad8b635:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@553 (line 134)
          │  0x00007f21aad8b63c:   add    0x20(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@554 (line 134)
   0.15%  │  0x00007f21aad8b641:   mov    %rsi,%rcx
          │  0x00007f21aad8b644:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@657 (line 144)
   0.01%  │  0x00007f21aad8b648:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@658 (line 144)
   0.01%  │  0x00007f21aad8b64b:   mov    %rbx,%rcx
   0.16%  │  0x00007f21aad8b64e:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@809 (line 159)
          │  0x00007f21aad8b652:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@813 (line 159)
   0.01%  │  0x00007f21aad8b659:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@814 (line 159)
   0.00%  │  0x00007f21aad8b65c:   mov    %r9,%rcx
   0.12%  │  0x00007f21aad8b65f:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@110 (line 182)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b663:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@114 (line 182)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b66a:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@115 (line 182)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b66d:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@209 (line 195)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.17%  │  0x00007f21aad8b671:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@226 (line 197)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b674:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@234 (line 199)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b67b:   mov    %r11,%rcx
   0.00%  │  0x00007f21aad8b67e:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@246 (line 200)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.18%  │  0x00007f21aad8b685:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@247 (line 200)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b688:   mov    %r8,0x28(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@415 (line 226)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b68c:   mov    %r14,%r8
   0.00%  │  0x00007f21aad8b68f:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@455 (line 125)
   0.11%  │  0x00007f21aad8b693:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@459 (line 125)
          │  0x00007f21aad8b69a:   add    0x50(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@460 (line 125)
   0.01%  │  0x00007f21aad8b69f:   mov    %rbp,%rcx
   0.01%  │  0x00007f21aad8b6a2:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@563 (line 135)
   0.14%  │  0x00007f21aad8b6a6:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@564 (line 135)
          │  0x00007f21aad8b6a9:   mov    %rdi,%rcx
          │  0x00007f21aad8b6ac:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@715 (line 150)
   0.00%  │  0x00007f21aad8b6b0:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@719 (line 150)
   0.13%  │  0x00007f21aad8b6b7:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@720 (line 150)
          │  0x00007f21aad8b6ba:   mov    %rbx,%rcx
   0.01%  │  0x00007f21aad8b6bd:   sar    $0x4,%rcx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@822 (line 160)
   0.00%  │  0x00007f21aad8b6c1:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@823 (line 160)
   0.14%  │  0x00007f21aad8b6c4:   mov    %rdx,%rcx
          │  0x00007f21aad8b6c7:   sar    $0x1e,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@123 (line 183)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b6cb:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@124 (line 183)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b6ce:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@237 (line 199)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.18%  │  0x00007f21aad8b6d2:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@254 (line 201)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b6d5:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@262 (line 203)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b6dc:   mov    %r11,%rcx
   0.00%  │  0x00007f21aad8b6df:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@274 (line 204)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.16%  │  0x00007f21aad8b6e6:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@275 (line 204)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b6e9:   mov    %r8,0x30(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@420 (line 227)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b6ed:   mov    %r13,%r8
   0.00%  │  0x00007f21aad8b6f0:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@361 (line 116)
   0.14%  │  0x00007f21aad8b6f4:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@365 (line 116)
          │  0x00007f21aad8b6fb:   add    0x58(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@366 (line 116)
   0.00%  │  0x00007f21aad8b700:   mov    %r14,%rcx
   0.00%  │  0x00007f21aad8b703:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@469 (line 126)
   0.15%  │  0x00007f21aad8b707:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@470 (line 126)
          │  0x00007f21aad8b70a:   mov    %rsi,%rcx
   0.01%  │  0x00007f21aad8b70d:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@621 (line 141)
   0.00%  │  0x00007f21aad8b711:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@625 (line 141)
   0.13%  │  0x00007f21aad8b718:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@626 (line 141)
          │  0x00007f21aad8b71b:   sar    $0x4,%rdi                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@728 (line 151)
   0.01%  │  0x00007f21aad8b71f:   sub    %rdi,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@729 (line 151)
   0.00%  │  0x00007f21aad8b722:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@265 (line 203)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.16%  │  0x00007f21aad8b726:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@282 (line 205)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b729:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@290 (line 207)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b730:   mov    %r11,%rcx                    ;   {no_reloc}
   0.00%  │  0x00007f21aad8b733:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@302 (line 208)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.17%  │  0x00007f21aad8b73a:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@303 (line 208)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b73d:   mov    %r8,0x38(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@425 (line 228)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b741:   mov    %rax,%r8
   0.00%  │  0x00007f21aad8b744:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@267 (line 107)
   0.17%  │  0x00007f21aad8b748:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@271 (line 107)
          │  0x00007f21aad8b74f:   add    0x60(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@272 (line 107)
   0.01%  │  0x00007f21aad8b754:   sar    $0x16,%r13                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@375 (line 117)
   0.00%  │  0x00007f21aad8b758:   add    %r13,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@376 (line 117)
   0.15%  │  0x00007f21aad8b75b:   mov    %rbp,%rcx
          │  0x00007f21aad8b75e:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@527 (line 132)
   0.01%  │  0x00007f21aad8b762:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@531 (line 132)
          │  0x00007f21aad8b769:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@532 (line 132)
   0.15%  │  0x00007f21aad8b76c:   sar    $0x4,%rsi                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@634 (line 142)
          │  0x00007f21aad8b770:   sub    %rsi,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@635 (line 142)
   0.01%  │  0x00007f21aad8b773:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@293 (line 207)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b777:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@310 (line 209)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.15%  │  0x00007f21aad8b77a:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@318 (line 211)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b781:   mov    %r11,%rcx
   0.01%  │  0x00007f21aad8b784:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@330 (line 212)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b78b:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@331 (line 212)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.16%  │  0x00007f21aad8b78e:   mov    %r8,0x40(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@431 (line 229)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b792:   mov    0x30(%rsp),%r8
   0.01%  │  0x00007f21aad8b797:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@173 (line 98)
   0.00%  │  0x00007f21aad8b79b:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@177 (line 98)
   0.14%  │  0x00007f21aad8b7a2:   add    0x68(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@178 (line 98)
          │  0x00007f21aad8b7a7:   sar    $0x16,%rax                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@281 (line 108)
   0.01%  │  0x00007f21aad8b7ab:   add    %rax,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@282 (line 108)
   0.00%  │  0x00007f21aad8b7ae:   shl    $0x16,%r14                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@433 (line 123)
   0.13%  │  0x00007f21aad8b7b2:   and    $0x3ffffff,%r14              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@437 (line 123)
   0.00%  │  0x00007f21aad8b7b9:   sub    %r14,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@438 (line 123)
   0.00%  │  0x00007f21aad8b7bc:   sar    $0x4,%rbp                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@540 (line 133)
   0.00%  │  0x00007f21aad8b7c0:   sub    %rbp,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@541 (line 133)
   0.12%  │  0x00007f21aad8b7c3:   shl    $0xe,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@785 (line 157)
   0.00%  │  0x00007f21aad8b7c7:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@789 (line 157)
   0.01%  │  0x00007f21aad8b7ce:   sub    %rbx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@790 (line 157)
   0.00%  │  0x00007f21aad8b7d1:   mov    %r9,%rcx
   0.15%  │  0x00007f21aad8b7d4:   shl    $0xe,%rcx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@86 (line 180)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b7d8:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@90 (line 180)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b7df:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@91 (line 180)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b7e2:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@321 (line 211)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f21aad8b7e6:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@338 (line 213)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b7e9:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@346 (line 215)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b7f0:   mov    %r11,%rcx
   0.00%  │  0x00007f21aad8b7f3:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@358 (line 216)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.20%  │  0x00007f21aad8b7fa:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@359 (line 216)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b7fd:   mov    %r8,0x48(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@437 (line 230)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.02%  │  0x00007f21aad8b801:   mov    0x8(%rsp),%r8
          │  0x00007f21aad8b806:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@17 (line 171)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.18%  │  0x00007f21aad8b80d:   mov    0x10(%rsp),%rcx
          │  0x00007f21aad8b812:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@18 (line 171)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b815:   shl    $0x14,%r9                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@62 (line 178)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b819:   and    $0x3ffffff,%r9               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@66 (line 178)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.15%  │  0x00007f21aad8b820:   add    %r9,%rcx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@67 (line 178)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b823:   mov    %rdx,%r8
   0.01%  │  0x00007f21aad8b826:   sar    $0x26,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@100 (line 181)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b82a:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@101 (line 181)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f21aad8b82d:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@349 (line 215)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b831:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@366 (line 217)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │                                                            ;   {no_reloc}
   0.01%  │  0x00007f21aad8b834:   lea    0x2000000(%rcx),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@374 (line 219)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b83b:   mov    %r11,%r8
   0.11%  │  0x00007f21aad8b83e:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@386 (line 220)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b845:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@387 (line 220)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.02%  │  0x00007f21aad8b848:   mov    %rcx,0x50(%r10)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@443 (line 231)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f21aad8b84c:   mov    %rdx,%r8
   0.14%  │  0x00007f21aad8b84f:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@45 (line 175)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b856:   mov    0x18(%rsp),%r9
   0.01%  │  0x00007f21aad8b85b:   sub    %r8,%r9                      ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@46 (line 175)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b85e:   sar    $0x20,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@76 (line 179)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.11%  │  0x00007f21aad8b862:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@77 (line 179)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f21aad8b865:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@377 (line 219)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.02%  │  0x00007f21aad8b869:   add    %r11,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@394 (line 221)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f21aad8b86c:   mov    %r9,0x58(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@449 (line 232)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f21aad8b870:   mov    0x40(%rsp),%rbp
   0.00%  │  0x00007f21aad8b875:   add    $0x48,%rsp
   0.02%  │  0x00007f21aad8b879:   nopl   0x0(%rax)
   0.00%  │  0x00007f21aad8b880:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f21aad8b887:   ja     0x00007f21aad8b907
   0.14%  │  0x00007f21aad8b88d:   ret    
          ↘  0x00007f21aad8b88e:   mov    0xc0(%rsp),%r10
             0x00007f21aad8b896:   mov    0xb8(%rsp),%r11
             0x00007f21aad8b89e:   mov    0xb0(%rsp),%rax
             0x00007f21aad8b8a6:   mov    0xa8(%rsp),%r13
             0x00007f21aad8b8ae:   mov    0xa0(%rsp),%r14
             0x00007f21aad8b8b6:   mov    0x98(%rsp),%rbp
             0x00007f21aad8b8be:   mov    0x80(%rsp),%rbx
             0x00007f21aad8b8c6:   mov    0x88(%rsp),%rdi
             0x00007f21aad8b8ce:   mov    0x78(%rsp),%r9
             0x00007f21aad8b8d3:   mov    0x70(%rsp),%r8
....................................................................................................
  15.76%  <total for region 2>

....[Hottest Regions]...............................................................................
  16.97%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1152 
  15.76%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 1072 
   9.30%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 1177 
   4.59%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1204 
   4.32%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1091 
   4.22%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1082 
   4.12%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1065 
   4.09%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 3, compile id 1352 
   3.18%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1152 
   2.57%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1064 
   1.17%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 1101 
   1.06%              kernel  [unknown] 
   1.03%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1448 
   1.03%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1448 
   0.98%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1448 
   0.97%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 1256 
   0.93%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 3, compile id 1403 
   0.92%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 1256 
   0.91%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1448 
   0.84%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 3, compile id 1403 
  21.04%  <...other 1218 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  22.28%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1152 
  15.76%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 1072 
  10.36%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1448 
   9.30%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 1177 
   4.75%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 3, compile id 1352 
   4.59%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1204 
   4.32%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1091 
   4.22%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1082 
   4.12%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1065 
   3.32%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 3, compile id 1403 
   3.01%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 1256 
   2.87%              kernel  [unknown] 
   2.57%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1064 
   1.17%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 1101 
   1.10%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 1178 
   0.86%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1219 
   0.75%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.64%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::square, version 2, compile id 1188 
   0.46%                      <unknown> 
   0.41%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::evaluate, version 2, compile id 1457 
   3.13%  <...other 117 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.42%      jvmci, level 4
   2.87%              kernel
   0.89%        runtime stub
   0.46%                    
   0.17%           libjvm.so
   0.11%        libc-2.31.so
   0.02%              [vdso]
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%    perf-2127363.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp256r1, messageLength = 2048)

# Run progress: 16.67% complete, ETA 00:19:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1220.212 us/op
# Warmup Iteration   2: 281.232 us/op
# Warmup Iteration   3: 256.022 us/op
# Warmup Iteration   4: 255.729 us/op
# Warmup Iteration   5: 255.801 us/op
Iteration   1: 255.782 us/op
Iteration   2: 255.842 us/op
Iteration   3: 255.708 us/op
Iteration   4: 255.715 us/op
Iteration   5: 255.445 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  255.698 ±(99.9%) 0.584 us/op [Average]
  (min, avg, max) = (255.445, 255.698, 255.842), stdev = 0.152
  CI (99.9%): [255.115, 256.282] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 458334 total address lines.
Perf output processed (skipped 63.672 seconds):
 Column 1: cycles (50993 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1162 

            # parm0:    rdx:rdx   = &apos;sun/security/util/math/IntegerModuloP&apos;
            #           [sp+0x130]  (sp of caller)
            0x00007f4fc6dac3c0:   mov    0x8(%rsi),%r10d
            0x00007f4fc6dac3c4:   movabs $0x7f4f4b000000,%r12
            0x00007f4fc6dac3ce:   add    %r12,%r10
            0x00007f4fc6dac3d1:   xor    %r12,%r12
            0x00007f4fc6dac3d4:   cmp    %r10,%rax
            0x00007f4fc6dac3d7:   jne    0x00007f4fc6764080           ;   {runtime_call ic_miss_stub}
            0x00007f4fc6dac3dd:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.11%    0x00007f4fc6dac3e0:   mov    %eax,-0x14000(%rsp)
   0.19%    0x00007f4fc6dac3e7:   sub    $0x128,%rsp
   0.01%    0x00007f4fc6dac3ee:   xchg   %ax,%ax
   0.06%    0x00007f4fc6dac3f0:   cmpl   $0x0,0x20(%r15)
   0.04%    0x00007f4fc6dac3f8:   jne    0x00007f4fc6dacd32
   0.05%    0x00007f4fc6dac3fe:   mov    %rbp,0x120(%rsp)
   0.02%    0x00007f4fc6dac406:   mov    %rsi,0x88(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.14%    0x00007f4fc6dac40e:   mov    0x8(%rdx),%ecx               ; implicit exception: dispatches to 0x00007f4fc6dacd6e
   0.09%    0x00007f4fc6dac411:   movabs $0x7f4f4b000000,%r8
   0.03%    0x00007f4fc6dac41b:   lea    (%r8,%rcx,1),%rcx
   0.05%    0x00007f4fc6dac41f:   movabs $0x7f4f4c0c2a48,%r8          ;   {metadata(&apos;sun/security/util/math/intpoly/IntegerPolynomial$Element&apos;)}
   0.06%    0x00007f4fc6dac429:   cmp    0x38(%rcx),%r8
            0x00007f4fc6dac42d:   jne    0x00007f4fc6dacd14           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@28 (line 734)
   0.60%    0x00007f4fc6dac433:   mov    0x18(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rsi=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.01%    0x00007f4fc6dac436:   mov    0x14(,%rcx,8),%r8d           ; implicit exception: dispatches to 0x00007f4fc6dacd91
   0.02%    0x00007f4fc6dac43e:   xchg   %ax,%ax
            0x00007f4fc6dac440:   cmp    0xc(%rsi),%r8d
            0x00007f4fc6dac444:   jl     0x00007f4fc6dacd23           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@43 (line 737)
   0.15%    0x00007f4fc6dac44a:   cmp    0xc(%rdx),%r8d
            0x00007f4fc6dac44e:   jl     0x00007f4fc6daccce           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@73 (line 742)
   0.05%    0x00007f4fc6dac454:   mov    0x8(,%rcx,8),%r8d            ;*invokevirtual mult {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac45c:   mov    0x10(%rdx),%r10d             ;*getfield limbs {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@101 (line 747)
            0x00007f4fc6dac460:   mov    0x10(%rsi),%r9d
   0.11%    0x00007f4fc6dac464:   mov    %r9d,%r11d
   0.04%    0x00007f4fc6dac467:   shl    $0x3,%r11                    ;*getfield limbs {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@97 (line 747)
   0.00%    0x00007f4fc6dac46b:   shl    $0x3,%rcx
   0.00%    0x00007f4fc6dac46f:   cmp    $0x10c24f0,%r8d              ;   {metadata(&apos;sun/security/util/math/intpoly/IntegerPolynomialP256&apos;)}
            0x00007f4fc6dac476:   jne    0x00007f4fc6dacc6e           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop r11=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.10%    0x00007f4fc6dac47c:   mov    0xc(,%r9,8),%r8d             ; implicit exception: dispatches to 0x00007f4fc6dacdb4
                                                                      ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop r11=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.07%    0x00007f4fc6dac484:   mov    0xc(,%r10,8),%edi            ; implicit exception: dispatches to 0x00007f4fc6dacdd7
   0.01%    0x00007f4fc6dac48c:   cmp    $0xa,%r8d
            0x00007f4fc6dac490:   jb     0x00007f4fc6dacd05           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac496:   cmp    $0xa,%edi
            0x00007f4fc6dac499:   jb     0x00007f4fc6daccf6           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@5 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f4fc6dac49f:   mov    %rcx,0x80(%rsp)
   0.06%    0x00007f4fc6dac4a7:   mov    %r11,0x78(%rsp)
   0.00%    0x00007f4fc6dac4ac:   mov    0x10(,%r9,8),%rdx            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac4b4:   mov    0x18(,%r9,8),%r8             ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@18 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f4fc6dac4bc:   mov    0x20(,%r9,8),%rdi            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@43 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f4fc6dac4c4:   mov    0x28(,%r9,8),%rbx            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@76 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac4cc:   mov    0x30(,%r9,8),%rax            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@117 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac4d4:   mov    0x38(,%r9,8),%rbp            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@166 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f4fc6dac4dc:   mov    0x40(,%r9,8),%r13            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@225 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f4fc6dac4e4:   mov    0x48(,%r9,8),%r14            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@294 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac4ec:   mov    0x50(,%r9,8),%r11            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@373 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f4fc6dac4f4:   mov    0x58(,%r9,8),%r9             ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@462 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f4fc6dac4fc:   mov    0x58(,%r10,8),%rcx           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@387 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f4fc6dac504:   mov    0x50(,%r10,8),%rsi           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@308 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f4fc6dac50c:   mov    %r9,0x110(%rsp)
   0.03%    0x00007f4fc6dac514:   mov    0x48(,%r10,8),%r9            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@239 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.11%    0x00007f4fc6dac51c:   mov    %rcx,0x108(%rsp)
   0.09%    0x00007f4fc6dac524:   mov    0x40(,%r10,8),%rcx           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@180 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac52c:   mov    %r11,0x100(%rsp)
   0.03%    0x00007f4fc6dac534:   mov    0x38(,%r10,8),%r11           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@130 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f4fc6dac53c:   mov    %rsi,0xf8(%rsp)
   0.09%    0x00007f4fc6dac544:   mov    0x30(,%r10,8),%rsi           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@89 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f4fc6dac54c:   mov    %r14,0xf0(%rsp)
   0.07%    0x00007f4fc6dac554:   mov    0x28(,%r10,8),%r14           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@56 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f4fc6dac55c:   mov    %r9,0xe8(%rsp)
   0.16%    0x00007f4fc6dac564:   mov    0x20(,%r10,8),%r9            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@31 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac56c:   mov    %r13,0xe0(%rsp)              ;   {no_reloc}
   0.15%    0x00007f4fc6dac574:   mov    0x18(,%r10,8),%r13           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@14 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f4fc6dac57c:   mov    0x10(,%r10,8),%r10           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@5 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f4fc6dac584:   mov    %rcx,0xd8(%rsp)
   0.13%    0x00007f4fc6dac58c:   mov    %rdx,%rcx
   0.01%    0x00007f4fc6dac58f:   imul   %r10,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@6 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f4fc6dac593:   mov    %rcx,0xd0(%rsp)
   0.40%    0x00007f4fc6dac59b:   mov    %r13,%rcx
   0.00%    0x00007f4fc6dac59e:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@15 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f4fc6dac5a2:   mov    %rbp,0xc8(%rsp)
   0.10%    0x00007f4fc6dac5aa:   mov    %r8,%rbp
   0.10%    0x00007f4fc6dac5ad:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@22 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac5b1:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@23 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f4fc6dac5b4:   mov    %r9,%rcx
   0.05%    0x00007f4fc6dac5b7:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@32 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f4fc6dac5bb:   mov    %rbp,0xc0(%rsp)
   0.05%    0x00007f4fc6dac5c3:   mov    %r8,%rbp
            0x00007f4fc6dac5c6:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@39 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f4fc6dac5ca:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@40 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f4fc6dac5cd:   mov    %rdi,%rbp
   0.07%    0x00007f4fc6dac5d0:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@47 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac5d4:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@48 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f4fc6dac5d7:   mov    %r14,%rcx
   0.08%    0x00007f4fc6dac5da:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@57 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f4fc6dac5de:   mov    %rbp,0xb8(%rsp)
   0.00%    0x00007f4fc6dac5e6:   mov    %r8,%rbp
   0.02%    0x00007f4fc6dac5e9:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@64 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f4fc6dac5ed:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@65 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f4fc6dac5f0:   mov    %rdi,%rbp
   0.00%    0x00007f4fc6dac5f3:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@72 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f4fc6dac5f7:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@73 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f4fc6dac5fa:   mov    %rbx,%rbp
   0.05%    0x00007f4fc6dac5fd:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@80 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f4fc6dac601:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@81 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f4fc6dac604:   mov    %rsi,%rcx
   0.10%    0x00007f4fc6dac607:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@90 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f4fc6dac60b:   mov    %rbp,0xb0(%rsp)
   0.07%    0x00007f4fc6dac613:   mov    %r8,%rbp
   0.01%    0x00007f4fc6dac616:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@97 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f4fc6dac61a:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@98 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac61d:   mov    %rdi,%rbp
   0.06%    0x00007f4fc6dac620:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@105 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f4fc6dac624:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@106 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f4fc6dac627:   mov    %rbx,%rbp
   0.01%    0x00007f4fc6dac62a:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@113 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.10%    0x00007f4fc6dac62e:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@114 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f4fc6dac631:   mov    %rax,%rbp
   0.08%    0x00007f4fc6dac634:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@121 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac638:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@122 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f4fc6dac63b:   mov    %r11,%rcx
   0.01%    0x00007f4fc6dac63e:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@131 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f4fc6dac642:   mov    %rbp,0xa8(%rsp)
   0.14%    0x00007f4fc6dac64a:   mov    %r8,%rbp
            0x00007f4fc6dac64d:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@138 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f4fc6dac651:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@139 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac654:   mov    %rdi,%rbp
   0.14%    0x00007f4fc6dac657:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@146 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac65b:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@147 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac65e:   mov    %rbx,%rbp
   0.01%    0x00007f4fc6dac661:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@154 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f4fc6dac665:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@155 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac668:   mov    %rax,%rbp
   0.00%    0x00007f4fc6dac66b:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@162 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac66f:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@163 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
   0.24%    0x00007f4fc6dac672:   mov    0xc8(%rsp),%rbp
            0x00007f4fc6dac67a:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@170 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac67e:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@171 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f4fc6dac681:   mov    0xd8(%rsp),%rcx
   0.07%    0x00007f4fc6dac689:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@181 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac68d:   mov    %rbp,0xa0(%rsp)
   0.16%    0x00007f4fc6dac695:   mov    %r8,%rbp
            0x00007f4fc6dac698:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@188 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac69c:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@189 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac69f:   mov    %rdi,%rbp
   0.12%    0x00007f4fc6dac6a2:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@196 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac6a6:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@197 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac6a9:   mov    %rbx,%rbp
   0.00%    0x00007f4fc6dac6ac:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@204 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f4fc6dac6b0:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@205 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac6b3:   mov    %rax,%rbp
            0x00007f4fc6dac6b6:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@212 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac6ba:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@213 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.29%    0x00007f4fc6dac6bd:   mov    0xc8(%rsp),%rbp
   0.00%    0x00007f4fc6dac6c5:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@220 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac6c9:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@221 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac6cc:   mov    0xe0(%rsp),%rbp
   0.16%    0x00007f4fc6dac6d4:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@229 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac6d8:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@230 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac6db:   mov    0xe8(%rsp),%rcx
   0.00%    0x00007f4fc6dac6e3:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@240 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f4fc6dac6e7:   mov    %rbp,0x98(%rsp)
   0.16%    0x00007f4fc6dac6ef:   mov    %r8,%rbp
            0x00007f4fc6dac6f2:   imul   0xd8(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@248 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac6fb:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@249 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac6fe:   mov    %rdi,%rbp
   0.14%    0x00007f4fc6dac701:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@256 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac705:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@257 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac708:   mov    %rbx,%rbp
   0.00%    0x00007f4fc6dac70b:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@264 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.19%    0x00007f4fc6dac70f:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@265 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac712:   mov    %rax,%rbp
            0x00007f4fc6dac715:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@272 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac719:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@273 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.29%    0x00007f4fc6dac71c:   mov    0xc8(%rsp),%rbp
            0x00007f4fc6dac724:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@280 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac728:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@281 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac72b:   mov    0xe0(%rsp),%rbp
   0.19%    0x00007f4fc6dac733:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@289 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac737:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@290 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac73a:   mov    0xf0(%rsp),%rbp
            0x00007f4fc6dac742:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@298 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f4fc6dac746:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@299 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac749:   mov    0xf8(%rsp),%rcx
            0x00007f4fc6dac751:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@309 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac755:   mov    %rbp,0x90(%rsp)
   0.29%    0x00007f4fc6dac75d:   mov    %r8,%rbp
   0.00%    0x00007f4fc6dac760:   imul   0xe8(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@317 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac769:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@318 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac76c:   mov    %rdi,%rbp
   0.20%    0x00007f4fc6dac76f:   imul   0xd8(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@326 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
            0x00007f4fc6dac778:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@327 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac77b:   mov    %rbx,%rbp
            0x00007f4fc6dac77e:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@334 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f4fc6dac782:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@335 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f4fc6dac785:   mov    %rax,%rbp
            0x00007f4fc6dac788:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@342 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac78c:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@343 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.20%    0x00007f4fc6dac78f:   mov    0xc8(%rsp),%rbp
   0.06%    0x00007f4fc6dac797:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@350 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac79b:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@351 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac79e:   mov    0xe0(%rsp),%rbp
   0.08%    0x00007f4fc6dac7a6:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@359 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f4fc6dac7aa:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@360 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac7ad:   mov    0xf0(%rsp),%rbp
   0.00%    0x00007f4fc6dac7b5:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@368 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.10%    0x00007f4fc6dac7b9:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@369 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f4fc6dac7bc:   mov    0x100(%rsp),%rbp
            0x00007f4fc6dac7c4:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@377 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac7c8:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@378 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f4fc6dac7cb:   mov    0x108(%rsp),%rcx
   0.00%    0x00007f4fc6dac7d3:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@388 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac7d7:   mov    %r8,%rdx
            0x00007f4fc6dac7da:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@396 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f4fc6dac7e3:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@397 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.03%    0x00007f4fc6dac7e6:   mov    %rdi,%rdx
            0x00007f4fc6dac7e9:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@405 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac7f2:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@406 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f4fc6dac7f5:   mov    %rbx,%rdx
            0x00007f4fc6dac7f8:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@414 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f4fc6dac801:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@415 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f4fc6dac804:   mov    %rax,%rdx
            0x00007f4fc6dac807:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@422 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac80b:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@423 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.33%    0x00007f4fc6dac80e:   mov    0xc8(%rsp),%rdx
            0x00007f4fc6dac816:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@430 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac81a:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@431 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac81d:   mov    0xe0(%rsp),%rdx
   0.14%    0x00007f4fc6dac825:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@439 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac829:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@440 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac82c:   mov    0xf0(%rsp),%rdx
            0x00007f4fc6dac834:   imul   %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@448 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f4fc6dac838:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@449 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac83b:   mov    0x100(%rsp),%rdx
            0x00007f4fc6dac843:   imul   %r13,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@457 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac847:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@458 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f4fc6dac84a:   mov    0x110(%rsp),%rdx
            0x00007f4fc6dac852:   imul   %r10,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@466 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac856:   mov    %rcx,%r10
   0.00%    0x00007f4fc6dac859:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@467 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f4fc6dac85c:   imul   0x108(%rsp),%r8              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@477 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac865:   mov    %rdi,%rdx
            0x00007f4fc6dac868:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@485 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
   0.13%    0x00007f4fc6dac871:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@486 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f4fc6dac874:   mov    %rbx,%rdx
            0x00007f4fc6dac877:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@494 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac880:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@495 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f4fc6dac883:   mov    %rax,%rdx
            0x00007f4fc6dac886:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@503 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac88f:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@504 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f4fc6dac892:   mov    0xc8(%rsp),%rdx
            0x00007f4fc6dac89a:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@511 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac89e:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@512 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f4fc6dac8a1:   mov    0xe0(%rsp),%rdx
            0x00007f4fc6dac8a9:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@520 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac8ad:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@521 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f4fc6dac8b0:   mov    0xf0(%rsp),%rdx
            0x00007f4fc6dac8b8:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@529 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac8bc:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@530 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.19%    0x00007f4fc6dac8bf:   mov    0x100(%rsp),%rdx
            0x00007f4fc6dac8c7:   imul   %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@538 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac8cb:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@539 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f4fc6dac8ce:   mov    0x110(%rsp),%rdx
            0x00007f4fc6dac8d6:   imul   %r13,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@547 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac8da:   mov    %r8,%r13
            0x00007f4fc6dac8dd:   add    %rdx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@548 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f4fc6dac8e0:   imul   0x108(%rsp),%rdi             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@558 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac8e9:   mov    %rbx,%rdx
            0x00007f4fc6dac8ec:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@566 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f4fc6dac8f5:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@567 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f4fc6dac8f8:   mov    %rax,%rdx
   0.00%    0x00007f4fc6dac8fb:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@575 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac904:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@576 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f4fc6dac907:   mov    0xc8(%rsp),%rdx
            0x00007f4fc6dac90f:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@584 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac918:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@585 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f4fc6dac91b:   mov    0xe0(%rsp),%rdx
            0x00007f4fc6dac923:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@593 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac927:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@594 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f4fc6dac92a:   mov    0xf0(%rsp),%rdx
            0x00007f4fc6dac932:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@602 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac936:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@603 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f4fc6dac939:   mov    0x100(%rsp),%rdx
            0x00007f4fc6dac941:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@611 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac945:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@612 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f4fc6dac948:   imul   0x110(%rsp),%r9              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@620 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f4fc6dac951:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@621 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f4fc6dac954:   imul   0x108(%rsp),%rbx             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@631 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac95d:   mov    %rax,%rdx
            0x00007f4fc6dac960:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@639 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f4fc6dac969:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@640 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f4fc6dac96c:   mov    0xc8(%rsp),%rdx              ;   {no_reloc}
            0x00007f4fc6dac974:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@648 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6dac97d:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@649 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f4fc6dac980:   mov    0xe0(%rsp),%rdx
            0x00007f4fc6dac988:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@658 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f4fc6dac991:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@659 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f4fc6dac994:   mov    0xf0(%rsp),%rdx
            0x00007f4fc6dac99c:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@667 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac9a0:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@668 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f4fc6dac9a3:   mov    0x100(%rsp),%rdx
   0.00%    0x00007f4fc6dac9ab:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@676 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac9af:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@677 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f4fc6dac9b2:   mov    0x110(%rsp),%r9
            0x00007f4fc6dac9ba:   imul   %r14,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@685 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac9be:   add    %r9,%rbx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@686 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f4fc6dac9c1:   imul   0x108(%rsp),%rax             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@696 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac9ca:   mov    0xc8(%rsp),%rdx
            0x00007f4fc6dac9d2:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@704 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f4fc6dac9db:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@705 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f4fc6dac9de:   mov    0xe0(%rsp),%rdx
            0x00007f4fc6dac9e6:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@714 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6dac9ef:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@715 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f4fc6dac9f2:   mov    0xf0(%rsp),%r14
            0x00007f4fc6dac9fa:   imul   0xd8(%rsp),%r14              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@724 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f4fc6daca03:   add    %r14,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@725 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f4fc6daca06:   mov    0x100(%rsp),%rdx
            0x00007f4fc6daca0e:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@733 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6daca12:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@734 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f4fc6daca15:   mov    0x110(%rsp),%r9
            0x00007f4fc6daca1d:   imul   %rsi,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@742 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6daca21:   add    %r9,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@743 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f4fc6daca24:   mov    0xc8(%rsp),%rsi
            0x00007f4fc6daca2c:   imul   0x108(%rsp),%rsi             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@753 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f4fc6daca35:   mov    0xe0(%rsp),%rdx
            0x00007f4fc6daca3d:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@762 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f4fc6daca46:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  16.64%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 1086 

             # parm18:   [sp+0xb8]   = long
             # parm19:   [sp+0xc0]   = long
             0x00007f4fc6d8dba0:   mov    0x8(%rsi),%r10d
             0x00007f4fc6d8dba4:   movabs $0x7f4f4b000000,%r12
             0x00007f4fc6d8dbae:   add    %r12,%r10
             0x00007f4fc6d8dbb1:   xor    %r12,%r12
             0x00007f4fc6d8dbb4:   cmp    %r10,%rax
             0x00007f4fc6d8dbb7:   jne    0x00007f4fc6764080           ;   {runtime_call ic_miss_stub}
             0x00007f4fc6d8dbbd:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.14%     0x00007f4fc6d8dbc0:   mov    %eax,-0x14000(%rsp)
   0.15%     0x00007f4fc6d8dbc7:   sub    $0x48,%rsp
             0x00007f4fc6d8dbcb:   nop
             0x00007f4fc6d8dbcc:   cmpl   $0x1,0x20(%r15)
             0x00007f4fc6d8dbd4:   jne    0x00007f4fc6d8e277
   0.16%     0x00007f4fc6d8dbda:   mov    %rbp,0x40(%rsp)
   0.04%     0x00007f4fc6d8dbdf:   mov    %r8,0x30(%rsp)
   0.14%     0x00007f4fc6d8dbe4:   mov    %r9,0x28(%rsp)
   0.19%     0x00007f4fc6d8dbe9:   mov    %rdi,0x20(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop }
                                                                       ;*lconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@0 (line 81)
   0.15%     0x00007f4fc6d8dbee:   cmpl   $0xa,0xc(%rdx)               ; implicit exception: dispatches to 0x00007f4fc6d8e29b
   0.02%  ╭  0x00007f4fc6d8dbf2:   jb     0x00007f4fc6d8e20e           ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@400 (line 223)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8dbf8:   mov    0xc0(%rsp),%r10
   0.00%  │  0x00007f4fc6d8dc00:   mov    0xb8(%rsp),%r11
   0.15%  │  0x00007f4fc6d8dc08:   mov    0xb0(%rsp),%rax
          │  0x00007f4fc6d8dc10:   mov    0xa8(%rsp),%r13
          │  0x00007f4fc6d8dc18:   mov    0xa0(%rsp),%r14
   0.00%  │  0x00007f4fc6d8dc20:   mov    0x98(%rsp),%rbp
   0.20%  │  0x00007f4fc6d8dc28:   mov    0x90(%rsp),%rsi
          │  0x00007f4fc6d8dc30:   mov    0x80(%rsp),%rbx
   0.01%  │  0x00007f4fc6d8dc38:   mov    %rdx,(%rsp)
   0.00%  │  0x00007f4fc6d8dc3c:   mov    0x88(%rsp),%rdi
   0.14%  │  0x00007f4fc6d8dc44:   mov    0x78(%rsp),%r9
          │  0x00007f4fc6d8dc49:   mov    0x70(%rsp),%r8
   0.01%  │  0x00007f4fc6d8dc4e:   mov    %r10,%rdx
   0.01%  │  0x00007f4fc6d8dc51:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@23 (line 84)
   0.14%  │  0x00007f4fc6d8dc55:   add    %rdx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@24 (line 84)
          │  0x00007f4fc6d8dc58:   mov    %r11,%rdx
   0.00%  │  0x00007f4fc6d8dc5b:   shl    $0x16,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@151 (line 96)
   0.00%  │  0x00007f4fc6d8dc5f:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@155 (line 96)
   0.12%  │  0x00007f4fc6d8dc66:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@156 (line 96)
          │  0x00007f4fc6d8dc69:   mov    %r10,%rdx
          │  0x00007f4fc6d8dc6c:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@9 (line 83)
   0.00%  │  0x00007f4fc6d8dc70:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@13 (line 83)
   0.14%  │  0x00007f4fc6d8dc77:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@14 (line 83)
          │  0x00007f4fc6d8dc7a:   mov    %r10,%rdx
          │  0x00007f4fc6d8dc7d:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@47 (line 86)
   0.00%  │  0x00007f4fc6d8dc81:   sub    %rdx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@48 (line 86)
   0.15%  │  0x00007f4fc6d8dc84:   mov    %r11,%rdx
          │  0x00007f4fc6d8dc87:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@117 (line 93)
   0.00%  │  0x00007f4fc6d8dc8b:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@118 (line 93)
   0.00%  │  0x00007f4fc6d8dc8e:   mov    %rax,%rdx
   0.14%  │  0x00007f4fc6d8dc91:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@258 (line 106)
          │  0x00007f4fc6d8dc95:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@259 (line 106)
   0.00%  │  0x00007f4fc6d8dc98:   mov    %rax,%rdx
   0.01%  │  0x00007f4fc6d8dc9b:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@221 (line 103)
   0.15%  │  0x00007f4fc6d8dc9f:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@225 (line 103)
          │  0x00007f4fc6d8dca6:   sub    %rdx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@226 (line 103)
   0.01%  │  0x00007f4fc6d8dca9:   mov    %r10,%rdx
   0.00%  │  0x00007f4fc6d8dcac:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@33 (line 85)
   0.12%  │  0x00007f4fc6d8dcb0:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@37 (line 85)
          │                                                            ;   {no_reloc}
          │  0x00007f4fc6d8dcb7:   sub    %rdx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@38 (line 85)
   0.01%  │  0x00007f4fc6d8dcba:   mov    %r11,%rdx
   0.01%  │  0x00007f4fc6d8dcbd:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@103 (line 92)
   0.16%  │  0x00007f4fc6d8dcc1:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@107 (line 92)
          │  0x00007f4fc6d8dcc8:   add    %rdx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@108 (line 92)
   0.00%  │  0x00007f4fc6d8dccb:   mov    %r11,%rdx
   0.01%  │  0x00007f4fc6d8dcce:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@141 (line 95)
   0.16%  │  0x00007f4fc6d8dcd2:   sub    %rdx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@142 (line 95)
          │  0x00007f4fc6d8dcd5:   mov    %rax,%rdx
   0.01%  │  0x00007f4fc6d8dcd8:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@211 (line 102)
          │  0x00007f4fc6d8dcdc:   add    %rdx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@212 (line 102)
   0.15%  │  0x00007f4fc6d8dcdf:   mov    %r13,%rdx
          │  0x00007f4fc6d8dce2:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@291 (line 110)
   0.00%  │  0x00007f4fc6d8dce6:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@295 (line 110)
   0.00%  │  0x00007f4fc6d8dced:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@296 (line 110)
   0.14%  │  0x00007f4fc6d8dcf0:   mov    %r13,%rdx
          │  0x00007f4fc6d8dcf3:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@329 (line 113)
   0.01%  │  0x00007f4fc6d8dcf7:   sub    %rdx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@330 (line 113)
          │  0x00007f4fc6d8dcfa:   mov    %r11,%rdx
   0.15%  │  0x00007f4fc6d8dcfd:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@127 (line 94)
          │  0x00007f4fc6d8dd01:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@131 (line 94)
          │  0x00007f4fc6d8dd08:   sub    %rdx,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@132 (line 94)
   0.00%  │  0x00007f4fc6d8dd0b:   mov    %rax,%rdx
   0.14%  │  0x00007f4fc6d8dd0e:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@197 (line 101)
          │  0x00007f4fc6d8dd12:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@201 (line 101)
   0.00%  │  0x00007f4fc6d8dd19:   add    %rdx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@202 (line 101)
          │  0x00007f4fc6d8dd1c:   mov    %rax,%rdx
   0.16%  │  0x00007f4fc6d8dd1f:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@235 (line 104)
          │  0x00007f4fc6d8dd23:   sub    %rdx,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@236 (line 104)
   0.01%  │  0x00007f4fc6d8dd26:   mov    %r13,%rdx
   0.00%  │  0x00007f4fc6d8dd29:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@305 (line 111)
   0.14%  │  0x00007f4fc6d8dd2d:   add    %rdx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@306 (line 111)
          │  0x00007f4fc6d8dd30:   mov    %r14,%rdx
   0.00%  │  0x00007f4fc6d8dd33:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@399 (line 120)
   0.01%  │  0x00007f4fc6d8dd37:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@400 (line 120)
   0.14%  │  0x00007f4fc6d8dd3a:   mov    %rbp,%rdx
          │  0x00007f4fc6d8dd3d:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@503 (line 130)
          │  0x00007f4fc6d8dd41:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@507 (line 130)
   0.00%  │  0x00007f4fc6d8dd48:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@508 (line 130)
   0.16%  │  0x00007f4fc6d8dd4b:   mov    %r10,%rdx
          │  0x00007f4fc6d8dd4e:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@70 (line 88)
   0.00%  │  0x00007f4fc6d8dd52:   sub    %rdx,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@71 (line 88)
   0.00%  │  0x00007f4fc6d8dd55:   mov    %r13,%rdx
   0.17%  │  0x00007f4fc6d8dd58:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@315 (line 112)
          │  0x00007f4fc6d8dd5c:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@319 (line 112)
   0.01%  │  0x00007f4fc6d8dd63:   sub    %rdx,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@320 (line 112)
   0.01%  │  0x00007f4fc6d8dd66:   mov    %r14,%rdx
   0.14%  │  0x00007f4fc6d8dd69:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@385 (line 119)
          │  0x00007f4fc6d8dd6d:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@389 (line 119)
   0.00%  │  0x00007f4fc6d8dd74:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@390 (line 119)
   0.00%  │  0x00007f4fc6d8dd77:   mov    %r14,%rdx
   0.15%  │  0x00007f4fc6d8dd7a:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@423 (line 122)
          │  0x00007f4fc6d8dd7e:   sub    %rdx,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@424 (line 122)
   0.00%  │  0x00007f4fc6d8dd81:   mov    %rbp,%rdx
   0.00%  │  0x00007f4fc6d8dd84:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@493 (line 129)
   0.17%  │  0x00007f4fc6d8dd88:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@494 (line 129)
          │  0x00007f4fc6d8dd8b:   mov    %rsi,%rdx
   0.00%  │  0x00007f4fc6d8dd8e:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@573 (line 137)
   0.00%  │  0x00007f4fc6d8dd92:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@577 (line 137)
   0.14%  │  0x00007f4fc6d8dd99:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@578 (line 137)
   0.00%  │  0x00007f4fc6d8dd9c:   mov    %rsi,%rdx
   0.01%  │  0x00007f4fc6d8dd9f:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@611 (line 140)
   0.01%  │  0x00007f4fc6d8dda3:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@612 (line 140)
   0.17%  │  0x00007f4fc6d8dda6:   mov    %r10,%rdx
          │  0x00007f4fc6d8dda9:   shl    $0x16,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@57 (line 87)
   0.00%  │  0x00007f4fc6d8ddad:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@61 (line 87)
   0.01%  │  0x00007f4fc6d8ddb4:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@62 (line 87)
          │                                                            ;   {no_reloc}
   0.16%  │  0x00007f4fc6d8ddb7:   mov    %r11,%rdx
          │  0x00007f4fc6d8ddba:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@164 (line 97)
          │  0x00007f4fc6d8ddbe:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@165 (line 97)
   0.00%  │  0x00007f4fc6d8ddc1:   mov    %r14,%rdx
   0.14%  │  0x00007f4fc6d8ddc4:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@409 (line 121)
   0.00%  │  0x00007f4fc6d8ddc8:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@413 (line 121)
          │  0x00007f4fc6d8ddcf:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@414 (line 121)
   0.00%  │  0x00007f4fc6d8ddd2:   mov    %rbp,%rdx
   0.16%  │  0x00007f4fc6d8ddd5:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@479 (line 128)
          │  0x00007f4fc6d8ddd9:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@483 (line 128)
   0.01%  │  0x00007f4fc6d8dde0:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@484 (line 128)
          │  0x00007f4fc6d8dde3:   mov    %rbp,%rdx
   0.16%  │  0x00007f4fc6d8dde6:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@517 (line 131)
          │  0x00007f4fc6d8ddea:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@518 (line 131)
   0.00%  │  0x00007f4fc6d8dded:   mov    %rsi,%rdx
   0.00%  │  0x00007f4fc6d8ddf0:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@587 (line 138)
   0.12%  │  0x00007f4fc6d8ddf4:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@588 (line 138)
          │  0x00007f4fc6d8ddf7:   mov    %rdi,%rdx
   0.00%  │  0x00007f4fc6d8ddfa:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@681 (line 147)
   0.00%  │  0x00007f4fc6d8ddfe:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@682 (line 147)
   0.13%  │  0x00007f4fc6d8de01:   mov    %rbx,%rdx
          │  0x00007f4fc6d8de04:   shl    $0x4,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@830 (line 161)
   0.01%  │  0x00007f4fc6d8de08:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@834 (line 161)
   0.00%  │  0x00007f4fc6d8de0f:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@835 (line 161)
   0.14%  │  0x00007f4fc6d8de12:   mov    %r10,%rdx
          │  0x00007f4fc6d8de15:   sar    $0x16,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@93 (line 90)
   0.00%  │  0x00007f4fc6d8de19:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@94 (line 90)
   0.00%  │  0x00007f4fc6d8de1c:   mov    %rax,%rdx
   0.15%  │  0x00007f4fc6d8de1f:   shl    $0x16,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@245 (line 105)
   0.00%  │  0x00007f4fc6d8de23:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@249 (line 105)
   0.01%  │  0x00007f4fc6d8de2a:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@250 (line 105)
   0.01%  │  0x00007f4fc6d8de2d:   mov    %r13,%rdx
   0.15%  │  0x00007f4fc6d8de30:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@352 (line 115)
          │  0x00007f4fc6d8de34:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@353 (line 115)
   0.00%  │  0x00007f4fc6d8de37:   mov    %rsi,%rdx
   0.01%  │  0x00007f4fc6d8de3a:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@597 (line 139)
   0.15%  │  0x00007f4fc6d8de3e:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@601 (line 139)
          │  0x00007f4fc6d8de45:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@602 (line 139)
          │  0x00007f4fc6d8de48:   mov    %rdi,%rdx
   0.00%  │  0x00007f4fc6d8de4b:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@667 (line 146)
   0.13%  │  0x00007f4fc6d8de4f:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@671 (line 146)
   0.00%  │  0x00007f4fc6d8de56:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@672 (line 146)
   0.01%  │  0x00007f4fc6d8de59:   mov    %rdi,%rdx
   0.00%  │  0x00007f4fc6d8de5c:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@705 (line 149)
   0.13%  │  0x00007f4fc6d8de60:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@706 (line 149)
          │  0x00007f4fc6d8de63:   mov    %rbx,%rdx
   0.00%  │  0x00007f4fc6d8de66:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@775 (line 156)
   0.00%  │  0x00007f4fc6d8de6a:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@776 (line 156)
   0.16%  │  0x00007f4fc6d8de6d:   shl    $0x4,%r10                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@79 (line 89)
          │  0x00007f4fc6d8de71:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@83 (line 89)
   0.00%  │  0x00007f4fc6d8de78:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@84 (line 89)
   0.01%  │  0x00007f4fc6d8de7b:   mov    %r11,%r10
   0.12%  │  0x00007f4fc6d8de7e:   sar    $0x16,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@187 (line 99)
          │  0x00007f4fc6d8de82:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@188 (line 99)
   0.00%  │  0x00007f4fc6d8de85:   mov    %r13,%r10
   0.00%  │  0x00007f4fc6d8de88:   shl    $0x16,%r10                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@339 (line 114)
   0.15%  │  0x00007f4fc6d8de8c:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@343 (line 114)
   0.00%  │  0x00007f4fc6d8de93:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@344 (line 114)
   0.00%  │  0x00007f4fc6d8de96:   mov    %r14,%r10
   0.01%  │  0x00007f4fc6d8de99:   sar    $0x4,%r10                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@446 (line 124)
   0.14%  │  0x00007f4fc6d8de9d:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@447 (line 124)
          │  0x00007f4fc6d8dea0:   mov    %rdi,%r10
   0.00%  │  0x00007f4fc6d8dea3:   shl    $0xe,%r10                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@691 (line 148)
   0.00%  │  0x00007f4fc6d8dea7:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@695 (line 148)
   0.15%  │  0x00007f4fc6d8deae:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@696 (line 148)
          │  0x00007f4fc6d8deb1:   mov    %rbx,%r10
   0.00%  │  0x00007f4fc6d8deb4:   shl    $0x14,%r10                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@761 (line 155)
          │                                                            ;   {no_reloc}
          │  0x00007f4fc6d8deb8:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@765 (line 155)
   0.16%  │  0x00007f4fc6d8debf:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@766 (line 155)
          │  0x00007f4fc6d8dec2:   mov    %rbx,%r10
   0.01%  │  0x00007f4fc6d8dec5:   sar    $0xc,%r10                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@799 (line 158)
   0.01%  │  0x00007f4fc6d8dec9:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@800 (line 158)
   0.14%  │  0x00007f4fc6d8decc:   lea    0x2000000(%r8),%r10          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@5 (line 170)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8ded3:   mov    %r10,%rdx
          │  0x00007f4fc6d8ded6:   sar    $0x1a,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@8 (line 170)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8deda:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@25 (line 172)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f4fc6d8dedd:   lea    0x2000000(%r9),%rdx          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@33 (line 174)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8dee4:   mov    %r9,0x18(%rsp)
          │  0x00007f4fc6d8dee9:   mov    %rdx,%r9
   0.00%  │  0x00007f4fc6d8deec:   sar    $0x1a,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@36 (line 174)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.17%  │  0x00007f4fc6d8def0:   mov    %r8,0x10(%rsp)
          │  0x00007f4fc6d8def5:   mov    %r9,%r8
   0.01%  │  0x00007f4fc6d8def8:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@131 (line 184)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8defc:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@135 (line 184)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f4fc6d8df03:   add    %r8,%rcx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@136 (line 184)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8df06:   lea    0x2000000(%rcx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@152 (line 187)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8df0d:   mov    %r10,0x8(%rsp)
   0.00%  │  0x00007f4fc6d8df12:   mov    %r8,%r10
   0.10%  │  0x00007f4fc6d8df15:   and    $0xfffffffffc000000,%r10     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@163 (line 188)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8df1c:   sub    %r10,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@164 (line 188)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.03%  │  0x00007f4fc6d8df1f:   mov    (%rsp),%r10
          │  0x00007f4fc6d8df23:   mov    %rcx,0x10(%r10)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@400 (line 223)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.21%  │  0x00007f4fc6d8df27:   mov    %rdi,%rcx
   0.00%  │  0x00007f4fc6d8df2a:   shl    $0x4,%rcx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@737 (line 152)
   0.00%  │  0x00007f4fc6d8df2e:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@741 (line 152)
   0.00%  │  0x00007f4fc6d8df35:   add    0x30(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@742 (line 152)
   0.13%  │  0x00007f4fc6d8df3a:   mov    %r11,0x30(%rsp)
          │  0x00007f4fc6d8df3f:   mov    %rbx,%r11
   0.01%  │  0x00007f4fc6d8df42:   sar    $0x16,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@843 (line 162)
   0.00%  │  0x00007f4fc6d8df46:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@844 (line 162)
   0.15%  │  0x00007f4fc6d8df49:   mov    %rdx,%r11
          │  0x00007f4fc6d8df4c:   sar    $0x30,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@144 (line 185)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8df50:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@145 (line 185)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8df53:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@155 (line 187)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.13%  │  0x00007f4fc6d8df57:   add    %r8,%rcx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@170 (line 189)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8df5a:   lea    0x2000000(%rcx),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@178 (line 191)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8df61:   mov    %r11,%r8
   0.00%  │  0x00007f4fc6d8df64:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@190 (line 192)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.13%  │  0x00007f4fc6d8df6b:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@191 (line 192)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8df6e:   mov    %rcx,0x18(%r10)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@405 (line 224)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8df72:   mov    %rsi,%r8
   0.00%  │  0x00007f4fc6d8df75:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@643 (line 143)
   0.15%  │  0x00007f4fc6d8df79:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@647 (line 143)
          │  0x00007f4fc6d8df80:   add    0x28(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@648 (line 143)
   0.01%  │  0x00007f4fc6d8df85:   mov    %rdi,%rcx
   0.00%  │  0x00007f4fc6d8df88:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@751 (line 153)
   0.15%  │  0x00007f4fc6d8df8c:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@752 (line 153)
          │  0x00007f4fc6d8df8f:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@181 (line 191)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8df93:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@198 (line 193)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8df96:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@206 (line 195)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.15%  │  0x00007f4fc6d8df9d:   mov    %r11,%rcx
          │  0x00007f4fc6d8dfa0:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@218 (line 196)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8dfa7:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@219 (line 196)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8dfaa:   mov    %r8,0x20(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@410 (line 225)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f4fc6d8dfae:   mov    %rbp,%r8
          │  0x00007f4fc6d8dfb1:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@549 (line 134)
          │                                                            ;   {no_reloc}
   0.00%  │  0x00007f4fc6d8dfb5:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@553 (line 134)
   0.00%  │  0x00007f4fc6d8dfbc:   add    0x20(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@554 (line 134)
   0.16%  │  0x00007f4fc6d8dfc1:   mov    %rsi,%rcx
          │  0x00007f4fc6d8dfc4:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@657 (line 144)
   0.02%  │  0x00007f4fc6d8dfc8:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@658 (line 144)
          │  0x00007f4fc6d8dfcb:   mov    %rbx,%rcx
   0.14%  │  0x00007f4fc6d8dfce:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@809 (line 159)
          │  0x00007f4fc6d8dfd2:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@813 (line 159)
   0.01%  │  0x00007f4fc6d8dfd9:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@814 (line 159)
   0.00%  │  0x00007f4fc6d8dfdc:   mov    %r9,%rcx
   0.19%  │  0x00007f4fc6d8dfdf:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@110 (line 182)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8dfe3:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@114 (line 182)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8dfea:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@115 (line 182)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8dfed:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@209 (line 195)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f4fc6d8dff1:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@226 (line 197)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8dff4:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@234 (line 199)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8dffb:   mov    %r11,%rcx
   0.00%  │  0x00007f4fc6d8dffe:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@246 (line 200)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f4fc6d8e005:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@247 (line 200)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e008:   mov    %r8,0x28(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@415 (line 226)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8e00c:   mov    %r14,%r8
          │  0x00007f4fc6d8e00f:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@455 (line 125)
   0.14%  │  0x00007f4fc6d8e013:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@459 (line 125)
          │  0x00007f4fc6d8e01a:   add    0x50(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@460 (line 125)
   0.01%  │  0x00007f4fc6d8e01f:   mov    %rbp,%rcx
   0.00%  │  0x00007f4fc6d8e022:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@563 (line 135)
   0.16%  │  0x00007f4fc6d8e026:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@564 (line 135)
   0.00%  │  0x00007f4fc6d8e029:   mov    %rdi,%rcx
   0.01%  │  0x00007f4fc6d8e02c:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@715 (line 150)
   0.01%  │  0x00007f4fc6d8e030:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@719 (line 150)
   0.14%  │  0x00007f4fc6d8e037:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@720 (line 150)
          │  0x00007f4fc6d8e03a:   mov    %rbx,%rcx
   0.02%  │  0x00007f4fc6d8e03d:   sar    $0x4,%rcx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@822 (line 160)
          │  0x00007f4fc6d8e041:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@823 (line 160)
   0.15%  │  0x00007f4fc6d8e044:   mov    %rdx,%rcx
   0.00%  │  0x00007f4fc6d8e047:   sar    $0x1e,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@123 (line 183)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8e04b:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@124 (line 183)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8e04e:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@237 (line 199)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.16%  │  0x00007f4fc6d8e052:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@254 (line 201)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e055:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@262 (line 203)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8e05c:   mov    %r11,%rcx
          │  0x00007f4fc6d8e05f:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@274 (line 204)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.15%  │  0x00007f4fc6d8e066:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@275 (line 204)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8e069:   mov    %r8,0x30(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@420 (line 227)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8e06d:   mov    %r13,%r8
   0.00%  │  0x00007f4fc6d8e070:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@361 (line 116)
   0.14%  │  0x00007f4fc6d8e074:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@365 (line 116)
          │  0x00007f4fc6d8e07b:   add    0x58(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@366 (line 116)
   0.01%  │  0x00007f4fc6d8e080:   mov    %r14,%rcx
   0.00%  │  0x00007f4fc6d8e083:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@469 (line 126)
   0.12%  │  0x00007f4fc6d8e087:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@470 (line 126)
          │  0x00007f4fc6d8e08a:   mov    %rsi,%rcx
   0.01%  │  0x00007f4fc6d8e08d:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@621 (line 141)
          │  0x00007f4fc6d8e091:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@625 (line 141)
   0.14%  │  0x00007f4fc6d8e098:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@626 (line 141)
          │  0x00007f4fc6d8e09b:   sar    $0x4,%rdi                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@728 (line 151)
   0.01%  │  0x00007f4fc6d8e09f:   sub    %rdi,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@729 (line 151)
          │  0x00007f4fc6d8e0a2:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@265 (line 203)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f4fc6d8e0a6:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@282 (line 205)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e0a9:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@290 (line 207)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8e0b0:   mov    %r11,%rcx                    ;   {no_reloc}
          │  0x00007f4fc6d8e0b3:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@302 (line 208)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.16%  │  0x00007f4fc6d8e0ba:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@303 (line 208)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e0bd:   mov    %r8,0x38(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@425 (line 228)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8e0c1:   mov    %rax,%r8
   0.00%  │  0x00007f4fc6d8e0c4:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@267 (line 107)
   0.16%  │  0x00007f4fc6d8e0c8:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@271 (line 107)
   0.00%  │  0x00007f4fc6d8e0cf:   add    0x60(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@272 (line 107)
   0.02%  │  0x00007f4fc6d8e0d4:   sar    $0x16,%r13                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@375 (line 117)
          │  0x00007f4fc6d8e0d8:   add    %r13,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@376 (line 117)
   0.16%  │  0x00007f4fc6d8e0db:   mov    %rbp,%rcx
          │  0x00007f4fc6d8e0de:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@527 (line 132)
   0.01%  │  0x00007f4fc6d8e0e2:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@531 (line 132)
   0.00%  │  0x00007f4fc6d8e0e9:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@532 (line 132)
   0.14%  │  0x00007f4fc6d8e0ec:   sar    $0x4,%rsi                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@634 (line 142)
   0.00%  │  0x00007f4fc6d8e0f0:   sub    %rsi,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@635 (line 142)
   0.01%  │  0x00007f4fc6d8e0f3:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@293 (line 207)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8e0f7:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@310 (line 209)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.15%  │  0x00007f4fc6d8e0fa:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@318 (line 211)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e101:   mov    %r11,%rcx
   0.01%  │  0x00007f4fc6d8e104:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@330 (line 212)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e10b:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@331 (line 212)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.15%  │  0x00007f4fc6d8e10e:   mov    %r8,0x40(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@431 (line 229)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e112:   mov    0x30(%rsp),%r8
   0.01%  │  0x00007f4fc6d8e117:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@173 (line 98)
   0.00%  │  0x00007f4fc6d8e11b:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@177 (line 98)
   0.15%  │  0x00007f4fc6d8e122:   add    0x68(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@178 (line 98)
   0.00%  │  0x00007f4fc6d8e127:   sar    $0x16,%rax                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@281 (line 108)
   0.01%  │  0x00007f4fc6d8e12b:   add    %rax,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@282 (line 108)
   0.01%  │  0x00007f4fc6d8e12e:   shl    $0x16,%r14                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@433 (line 123)
   0.15%  │  0x00007f4fc6d8e132:   and    $0x3ffffff,%r14              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@437 (line 123)
          │  0x00007f4fc6d8e139:   sub    %r14,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@438 (line 123)
   0.01%  │  0x00007f4fc6d8e13c:   sar    $0x4,%rbp                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@540 (line 133)
   0.00%  │  0x00007f4fc6d8e140:   sub    %rbp,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@541 (line 133)
   0.13%  │  0x00007f4fc6d8e143:   shl    $0xe,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@785 (line 157)
   0.00%  │  0x00007f4fc6d8e147:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@789 (line 157)
   0.00%  │  0x00007f4fc6d8e14e:   sub    %rbx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@790 (line 157)
          │  0x00007f4fc6d8e151:   mov    %r9,%rcx
   0.15%  │  0x00007f4fc6d8e154:   shl    $0xe,%rcx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@86 (line 180)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e158:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@90 (line 180)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8e15f:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@91 (line 180)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8e162:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@321 (line 211)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.15%  │  0x00007f4fc6d8e166:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@338 (line 213)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8e169:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@346 (line 215)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8e170:   mov    %r11,%rcx
          │  0x00007f4fc6d8e173:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@358 (line 216)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f4fc6d8e17a:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@359 (line 216)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8e17d:   mov    %r8,0x48(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@437 (line 230)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.05%  │  0x00007f4fc6d8e181:   mov    0x8(%rsp),%r8
   0.00%  │  0x00007f4fc6d8e186:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@17 (line 171)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f4fc6d8e18d:   mov    0x10(%rsp),%rcx
          │  0x00007f4fc6d8e192:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@18 (line 171)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.03%  │  0x00007f4fc6d8e195:   shl    $0x14,%r9                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@62 (line 178)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8e199:   and    $0x3ffffff,%r9               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@66 (line 178)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f4fc6d8e1a0:   add    %r9,%rcx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@67 (line 178)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e1a3:   mov    %rdx,%r8
   0.04%  │  0x00007f4fc6d8e1a6:   sar    $0x26,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@100 (line 181)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e1aa:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@101 (line 181)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f4fc6d8e1ad:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@349 (line 215)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e1b1:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@366 (line 217)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │                                                            ;   {no_reloc}
   0.04%  │  0x00007f4fc6d8e1b4:   lea    0x2000000(%rcx),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@374 (line 219)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8e1bb:   mov    %r11,%r8
   0.14%  │  0x00007f4fc6d8e1be:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@386 (line 220)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e1c5:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@387 (line 220)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.05%  │  0x00007f4fc6d8e1c8:   mov    %rcx,0x50(%r10)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@443 (line 231)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8e1cc:   mov    %rdx,%r8
   0.10%  │  0x00007f4fc6d8e1cf:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@45 (line 175)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e1d6:   mov    0x18(%rsp),%r9
   0.03%  │  0x00007f4fc6d8e1db:   sub    %r8,%r9                      ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@46 (line 175)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f4fc6d8e1de:   sar    $0x20,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@76 (line 179)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.10%  │  0x00007f4fc6d8e1e2:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@77 (line 179)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f4fc6d8e1e5:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@377 (line 219)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.04%  │  0x00007f4fc6d8e1e9:   add    %r11,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@394 (line 221)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f4fc6d8e1ec:   mov    %r9,0x58(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@449 (line 232)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f4fc6d8e1f0:   mov    0x40(%rsp),%rbp
          │  0x00007f4fc6d8e1f5:   add    $0x48,%rsp
   0.03%  │  0x00007f4fc6d8e1f9:   nopl   0x0(%rax)
   0.00%  │  0x00007f4fc6d8e200:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f4fc6d8e207:   ja     0x00007f4fc6d8e287
   0.11%  │  0x00007f4fc6d8e20d:   ret    
          ↘  0x00007f4fc6d8e20e:   mov    0xc0(%rsp),%r10
             0x00007f4fc6d8e216:   mov    0xb8(%rsp),%r11
             0x00007f4fc6d8e21e:   mov    0xb0(%rsp),%rax
             0x00007f4fc6d8e226:   mov    0xa8(%rsp),%r13
             0x00007f4fc6d8e22e:   mov    0xa0(%rsp),%r14
             0x00007f4fc6d8e236:   mov    0x98(%rsp),%rbp
             0x00007f4fc6d8e23e:   mov    0x80(%rsp),%rbx
             0x00007f4fc6d8e246:   mov    0x88(%rsp),%rdi
             0x00007f4fc6d8e24e:   mov    0x78(%rsp),%r9
             0x00007f4fc6d8e253:   mov    0x70(%rsp),%r8
....................................................................................................
  15.59%  <total for region 2>

....[Hottest Regions]...............................................................................
  16.64%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1162 
  15.59%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 1086 
   8.83%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 1184 
   4.89%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 3, compile id 1350 
   4.68%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1209 
   4.29%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1079 
   4.23%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1104 
   4.04%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1096 
   3.43%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1162 
   2.55%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1078 
   1.37%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1162 
   1.26%        runtime stub  StubRoutines::sha256_implCompressMB 
   1.20%        runtime stub  StubRoutines::sha256_implCompressMB 
   1.12%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 1185 
   1.02%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 4, compile id 1451 
   0.96%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 4, compile id 1451 
   0.95%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 1256 
   0.92%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 4, compile id 1451 
   0.91%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 4, compile id 1451 
   0.89%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 4, compile id 1417 
  20.23%  <...other 1119 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  21.89%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1162 
  15.59%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 1086 
  10.08%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 4, compile id 1451 
   8.83%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 1184 
   5.79%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 3, compile id 1350 
   4.68%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1209 
   4.29%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1079 
   4.23%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1104 
   4.04%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1096 
   3.16%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 4, compile id 1417 
   2.62%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 1256 
   2.59%        runtime stub  StubRoutines::sha256_implCompressMB 
   2.55%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1078 
   2.02%              kernel  [unknown] 
   1.20%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 1185 
   1.20%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 1115 
   0.84%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1231 
   0.73%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::square, version 2, compile id 1204 
   0.43%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 1092 
   0.37%                      <unknown> 
   2.88%  <...other 138 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.46%      jvmci, level 4
   2.70%        runtime stub
   2.02%              kernel
   0.37%                    
   0.22%           libjvm.so
   0.12%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.00%    perf-2127430.map
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%          libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp256r1, messageLength = 16384)

# Run progress: 25.00% complete, ETA 00:17:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1860.609 us/op
# Warmup Iteration   2: 359.196 us/op
# Warmup Iteration   3: 304.167 us/op
# Warmup Iteration   4: 303.581 us/op
# Warmup Iteration   5: 303.545 us/op
Iteration   1: 303.526 us/op
Iteration   2: 303.315 us/op
Iteration   3: 303.460 us/op
Iteration   4: 303.652 us/op
Iteration   5: 303.556 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  303.502 ±(99.9%) 0.482 us/op [Average]
  (min, avg, max) = (303.315, 303.502, 303.652), stdev = 0.125
  CI (99.9%): [303.020, 303.983] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 461930 total address lines.
Perf output processed (skipped 63.518 seconds):
 Column 1: cycles (50778 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1096 lines, but threshold is 1000>
....................................................................................................
  17.46%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1166 

            # parm0:    rdx:rdx   = &apos;sun/security/util/math/IntegerModuloP&apos;
            #           [sp+0x130]  (sp of caller)
            0x00007f2a4adb0040:   mov    0x8(%rsi),%r10d
            0x00007f2a4adb0044:   movabs $0x7f29cf000000,%r12
            0x00007f2a4adb004e:   add    %r12,%r10
            0x00007f2a4adb0051:   xor    %r12,%r12
            0x00007f2a4adb0054:   cmp    %r10,%rax
            0x00007f2a4adb0057:   jne    0x00007f2a4a764080           ;   {runtime_call ic_miss_stub}
            0x00007f2a4adb005d:   data16 xchg %ax,%ax
          [Verified Entry Point]
   0.07%    0x00007f2a4adb0060:   mov    %eax,-0x14000(%rsp)
   0.16%    0x00007f2a4adb0067:   sub    $0x128,%rsp
   0.01%    0x00007f2a4adb006e:   xchg   %ax,%ax
   0.04%    0x00007f2a4adb0070:   cmpl   $0x1,0x20(%r15)
   0.03%    0x00007f2a4adb0078:   jne    0x00007f2a4adb09b2
   0.06%    0x00007f2a4adb007e:   mov    %rbp,0x120(%rsp)
   0.03%    0x00007f2a4adb0086:   mov    %rsi,0x88(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.13%    0x00007f2a4adb008e:   mov    0x8(%rdx),%ecx               ; implicit exception: dispatches to 0x00007f2a4adb09ee
   0.08%    0x00007f2a4adb0091:   movabs $0x7f29cf000000,%r8
   0.03%    0x00007f2a4adb009b:   lea    (%r8,%rcx,1),%rcx
   0.05%    0x00007f2a4adb009f:   movabs $0x7f29d00c1ae0,%r8          ;   {metadata(&apos;sun/security/util/math/intpoly/IntegerPolynomial$Element&apos;)}
   0.05%    0x00007f2a4adb00a9:   cmp    0x38(%rcx),%r8
            0x00007f2a4adb00ad:   jne    0x00007f2a4adb0994           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@28 (line 734)
   0.50%    0x00007f2a4adb00b3:   mov    0x18(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rsi=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.01%    0x00007f2a4adb00b6:   mov    0x14(,%rcx,8),%r8d           ; implicit exception: dispatches to 0x00007f2a4adb0a11
   0.03%    0x00007f2a4adb00be:   xchg   %ax,%ax
   0.00%    0x00007f2a4adb00c0:   cmp    0xc(%rsi),%r8d
            0x00007f2a4adb00c4:   jl     0x00007f2a4adb09a3           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@43 (line 737)
   0.13%    0x00007f2a4adb00ca:   cmp    0xc(%rdx),%r8d
            0x00007f2a4adb00ce:   jl     0x00007f2a4adb094e           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@73 (line 742)
   0.06%    0x00007f2a4adb00d4:   mov    0x8(,%rcx,8),%r8d            ;*invokevirtual mult {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb00dc:   mov    0x10(%rdx),%r10d             ;*getfield limbs {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@101 (line 747)
   0.01%    0x00007f2a4adb00e0:   mov    0x10(%rsi),%r9d
   0.07%    0x00007f2a4adb00e4:   mov    %r9d,%r11d
   0.05%    0x00007f2a4adb00e7:   shl    $0x3,%r11                    ;*getfield limbs {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@97 (line 747)
            0x00007f2a4adb00eb:   shl    $0x3,%rcx
            0x00007f2a4adb00ef:   cmp    $0x10c1588,%r8d              ;   {metadata(&apos;sun/security/util/math/intpoly/IntegerPolynomialP256&apos;)}
            0x00007f2a4adb00f6:   jne    0x00007f2a4adb08ee           ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop r11=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.07%    0x00007f2a4adb00fc:   mov    0xc(,%r9,8),%r8d             ; implicit exception: dispatches to 0x00007f2a4adb0a34
                                                                      ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=Oop r9=NarrowOop r10=NarrowOop r11=Oop [136]=Oop }
                                                                      ;*getstatic $assertionsDisabled {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@0 (line 733)
   0.08%    0x00007f2a4adb0104:   mov    0xc(,%r10,8),%edi            ; implicit exception: dispatches to 0x00007f2a4adb0a57
   0.01%    0x00007f2a4adb010c:   cmp    $0xa,%r8d
            0x00007f2a4adb0110:   jb     0x00007f2a4adb0985           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0116:   cmp    $0xa,%edi
            0x00007f2a4adb0119:   jb     0x00007f2a4adb0976           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@5 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.10%    0x00007f2a4adb011f:   mov    %rcx,0x80(%rsp)
   0.04%    0x00007f2a4adb0127:   mov    %r11,0x78(%rsp)
            0x00007f2a4adb012c:   mov    0x10(,%r9,8),%rdx            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@2 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f2a4adb0134:   mov    0x18(,%r9,8),%r8             ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@18 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.11%    0x00007f2a4adb013c:   mov    0x20(,%r9,8),%rdi            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@43 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f2a4adb0144:   mov    0x28(,%r9,8),%rbx            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@76 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb014c:   mov    0x30(,%r9,8),%rax            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@117 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f2a4adb0154:   mov    0x38(,%r9,8),%rbp            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@166 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f2a4adb015c:   mov    0x40(,%r9,8),%r13            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@225 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f2a4adb0164:   mov    0x48(,%r9,8),%r14            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@294 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb016c:   mov    0x50(,%r9,8),%r11            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@373 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb0174:   mov    0x58(,%r9,8),%r9             ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@462 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f2a4adb017c:   mov    0x58(,%r10,8),%rcx           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@387 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f2a4adb0184:   mov    0x50(,%r10,8),%rsi           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@308 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f2a4adb018c:   mov    %r9,0x110(%rsp)
   0.02%    0x00007f2a4adb0194:   mov    0x48(,%r10,8),%r9            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@239 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f2a4adb019c:   mov    %rcx,0x108(%rsp)
   0.06%    0x00007f2a4adb01a4:   mov    0x40(,%r10,8),%rcx           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@180 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb01ac:   mov    %r11,0x100(%rsp)
   0.01%    0x00007f2a4adb01b4:   mov    0x38(,%r10,8),%r11           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@130 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f2a4adb01bc:   mov    %rsi,0xf8(%rsp)
   0.06%    0x00007f2a4adb01c4:   mov    0x30(,%r10,8),%rsi           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@89 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb01cc:   mov    %r14,0xf0(%rsp)
   0.09%    0x00007f2a4adb01d4:   mov    0x28(,%r10,8),%r14           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@56 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f2a4adb01dc:   mov    %r9,0xe8(%rsp)
   0.11%    0x00007f2a4adb01e4:   mov    0x20(,%r10,8),%r9            ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@31 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb01ec:   mov    %r13,0xe0(%rsp)              ;   {no_reloc}
   0.11%    0x00007f2a4adb01f4:   mov    0x18(,%r10,8),%r13           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@14 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f2a4adb01fc:   mov    0x10(,%r10,8),%r10           ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@5 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f2a4adb0204:   mov    %rcx,0xd8(%rsp)
   0.14%    0x00007f2a4adb020c:   mov    %rdx,%rcx
   0.00%    0x00007f2a4adb020f:   imul   %r10,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@6 (line 303)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.03%    0x00007f2a4adb0213:   mov    %rcx,0xd0(%rsp)
   0.39%    0x00007f2a4adb021b:   mov    %r13,%rcx
            0x00007f2a4adb021e:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@15 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb0222:   mov    %rbp,0xc8(%rsp)
   0.08%    0x00007f2a4adb022a:   mov    %r8,%rbp
   0.07%    0x00007f2a4adb022d:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@22 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0231:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@23 (line 304)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f2a4adb0234:   mov    %r9,%rcx
   0.04%    0x00007f2a4adb0237:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@32 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f2a4adb023b:   mov    %rbp,0xc0(%rsp)
   0.06%    0x00007f2a4adb0243:   mov    %r8,%rbp
   0.00%    0x00007f2a4adb0246:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@39 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f2a4adb024a:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@40 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f2a4adb024d:   mov    %rdi,%rbp
   0.07%    0x00007f2a4adb0250:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@47 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f2a4adb0254:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@48 (line 305)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.03%    0x00007f2a4adb0257:   mov    %r14,%rcx
   0.05%    0x00007f2a4adb025a:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@57 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f2a4adb025e:   mov    %rbp,0xb8(%rsp)
   0.00%    0x00007f2a4adb0266:   mov    %r8,%rbp
   0.02%    0x00007f2a4adb0269:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@64 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f2a4adb026d:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@65 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f2a4adb0270:   mov    %rdi,%rbp
   0.00%    0x00007f2a4adb0273:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@72 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f2a4adb0277:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@73 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f2a4adb027a:   mov    %rbx,%rbp
   0.05%    0x00007f2a4adb027d:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@80 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.01%    0x00007f2a4adb0281:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@81 (line 306)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f2a4adb0284:   mov    %rsi,%rcx
   0.06%    0x00007f2a4adb0287:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@90 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.03%    0x00007f2a4adb028b:   mov    %rbp,0xb0(%rsp)
   0.06%    0x00007f2a4adb0293:   mov    %r8,%rbp
   0.02%    0x00007f2a4adb0296:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@97 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f2a4adb029a:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@98 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb029d:   mov    %rdi,%rbp
   0.06%    0x00007f2a4adb02a0:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@105 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f2a4adb02a4:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@106 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f2a4adb02a7:   mov    %rbx,%rbp
   0.00%    0x00007f2a4adb02aa:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@113 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f2a4adb02ae:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@114 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.02%    0x00007f2a4adb02b1:   mov    %rax,%rbp
   0.05%    0x00007f2a4adb02b4:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@121 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb02b8:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@122 (line 307)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f2a4adb02bb:   mov    %r11,%rcx
   0.02%    0x00007f2a4adb02be:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@131 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f2a4adb02c2:   mov    %rbp,0xa8(%rsp)
   0.11%    0x00007f2a4adb02ca:   mov    %r8,%rbp
            0x00007f2a4adb02cd:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@138 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb02d1:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@139 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb02d4:   mov    %rdi,%rbp
   0.13%    0x00007f2a4adb02d7:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@146 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb02db:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@147 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb02de:   mov    %rbx,%rbp
   0.00%    0x00007f2a4adb02e1:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@154 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f2a4adb02e5:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@155 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb02e8:   mov    %rax,%rbp
            0x00007f2a4adb02eb:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@162 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb02ef:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@163 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
   0.21%    0x00007f2a4adb02f2:   mov    0xc8(%rsp),%rbp
   0.00%    0x00007f2a4adb02fa:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@170 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb02fe:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@171 (line 308)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f2a4adb0301:   mov    0xd8(%rsp),%rcx
   0.08%    0x00007f2a4adb0309:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@181 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb030d:   mov    %rbp,0xa0(%rsp)
   0.18%    0x00007f2a4adb0315:   mov    %r8,%rbp
            0x00007f2a4adb0318:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@188 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb031c:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@189 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb031f:   mov    %rdi,%rbp
   0.10%    0x00007f2a4adb0322:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@196 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb0326:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@197 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0329:   mov    %rbx,%rbp
   0.00%    0x00007f2a4adb032c:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@204 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f2a4adb0330:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@205 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0333:   mov    %rax,%rbp
   0.00%    0x00007f2a4adb0336:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@212 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb033a:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@213 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.23%    0x00007f2a4adb033d:   mov    0xc8(%rsp),%rbp
            0x00007f2a4adb0345:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@220 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0349:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@221 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb034c:   mov    0xe0(%rsp),%rbp
   0.13%    0x00007f2a4adb0354:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@229 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb0358:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@230 (line 309)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb035b:   mov    0xe8(%rsp),%rcx
   0.00%    0x00007f2a4adb0363:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@240 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb0367:   mov    %rbp,0x98(%rsp)
   0.14%    0x00007f2a4adb036f:   mov    %r8,%rbp
   0.00%    0x00007f2a4adb0372:   imul   0xd8(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@248 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb037b:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@249 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb037e:   mov    %rdi,%rbp
   0.12%    0x00007f2a4adb0381:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@256 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb0385:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@257 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0388:   mov    %rbx,%rbp
            0x00007f2a4adb038b:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@264 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.18%    0x00007f2a4adb038f:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@265 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb0392:   mov    %rax,%rbp
            0x00007f2a4adb0395:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@272 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb0399:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@273 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.25%    0x00007f2a4adb039c:   mov    0xc8(%rsp),%rbp
   0.00%    0x00007f2a4adb03a4:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@280 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb03a8:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@281 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb03ab:   mov    0xe0(%rsp),%rbp
   0.13%    0x00007f2a4adb03b3:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@289 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb03b7:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@290 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb03ba:   mov    0xf0(%rsp),%rbp
            0x00007f2a4adb03c2:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@298 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb03c6:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@299 (line 310)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb03c9:   mov    0xf8(%rsp),%rcx
            0x00007f2a4adb03d1:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@309 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb03d5:   mov    %rbp,0x90(%rsp)
   0.24%    0x00007f2a4adb03dd:   mov    %r8,%rbp
            0x00007f2a4adb03e0:   imul   0xe8(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@317 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb03e9:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@318 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb03ec:   mov    %rdi,%rbp
   0.10%    0x00007f2a4adb03ef:   imul   0xd8(%rsp),%rbp              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@326 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
            0x00007f2a4adb03f8:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@327 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb03fb:   mov    %rbx,%rbp
            0x00007f2a4adb03fe:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@334 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f2a4adb0402:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@335 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.10%    0x00007f2a4adb0405:   mov    %rax,%rbp
            0x00007f2a4adb0408:   imul   %rsi,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@342 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb040c:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@343 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f2a4adb040f:   mov    0xc8(%rsp),%rbp
   0.04%    0x00007f2a4adb0417:   imul   %r14,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@350 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb041b:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@351 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb041e:   mov    0xe0(%rsp),%rbp
   0.06%    0x00007f2a4adb0426:   imul   %r9,%rbp                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@359 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f2a4adb042a:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@360 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb042d:   mov    0xf0(%rsp),%rbp
            0x00007f2a4adb0435:   imul   %r13,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@368 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.09%    0x00007f2a4adb0439:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@369 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.07%    0x00007f2a4adb043c:   mov    0x100(%rsp),%rbp
            0x00007f2a4adb0444:   imul   %r10,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@377 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0448:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@378 (line 311)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f2a4adb044b:   mov    0x108(%rsp),%rcx
            0x00007f2a4adb0453:   imul   %rdx,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@388 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb0457:   mov    %r8,%rdx
            0x00007f2a4adb045a:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@396 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f2a4adb0463:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@397 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.03%    0x00007f2a4adb0466:   mov    %rdi,%rdx
            0x00007f2a4adb0469:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@405 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb0472:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@406 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb0475:   mov    %rbx,%rdx
            0x00007f2a4adb0478:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@414 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.06%    0x00007f2a4adb0481:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@415 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb0484:   mov    %rax,%rdx
            0x00007f2a4adb0487:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@422 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb048b:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@423 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.28%    0x00007f2a4adb048e:   mov    0xc8(%rsp),%rdx
            0x00007f2a4adb0496:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@430 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb049a:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@431 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb049d:   mov    0xe0(%rsp),%rdx
   0.12%    0x00007f2a4adb04a5:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@439 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb04a9:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@440 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb04ac:   mov    0xf0(%rsp),%rdx
            0x00007f2a4adb04b4:   imul   %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@448 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb04b8:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@449 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb04bb:   mov    0x100(%rsp),%rdx
            0x00007f2a4adb04c3:   imul   %r13,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@457 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb04c7:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@458 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.11%    0x00007f2a4adb04ca:   mov    0x110(%rsp),%rdx
            0x00007f2a4adb04d2:   imul   %r10,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@466 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb04d6:   mov    %rcx,%r10
            0x00007f2a4adb04d9:   add    %rdx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@467 (line 312)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb04dc:   imul   0x108(%rsp),%r8              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@477 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb04e5:   mov    %rdi,%rdx
            0x00007f2a4adb04e8:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@485 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
   0.14%    0x00007f2a4adb04f1:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@486 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb04f4:   mov    %rbx,%rdx
            0x00007f2a4adb04f7:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@494 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0500:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@495 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb0503:   mov    %rax,%rdx
            0x00007f2a4adb0506:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@503 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb050f:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@504 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb0512:   mov    0xc8(%rsp),%rdx
            0x00007f2a4adb051a:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@511 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb051e:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@512 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb0521:   mov    0xe0(%rsp),%rdx
            0x00007f2a4adb0529:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@520 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb052d:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@521 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb0530:   mov    0xf0(%rsp),%rdx
            0x00007f2a4adb0538:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@529 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb053c:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@530 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f2a4adb053f:   mov    0x100(%rsp),%rdx
            0x00007f2a4adb0547:   imul   %r9,%rdx                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@538 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb054b:   add    %rdx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@539 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f2a4adb054e:   mov    0x110(%rsp),%rdx
   0.00%    0x00007f2a4adb0556:   imul   %r13,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@547 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb055a:   mov    %r8,%r13
            0x00007f2a4adb055d:   add    %rdx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@548 (line 313)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f2a4adb0560:   imul   0x108(%rsp),%rdi             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@558 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0569:   mov    %rbx,%rdx
            0x00007f2a4adb056c:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@566 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.05%    0x00007f2a4adb0575:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@567 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.11%    0x00007f2a4adb0578:   mov    %rax,%rdx
            0x00007f2a4adb057b:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@575 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0584:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@576 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f2a4adb0587:   mov    0xc8(%rsp),%rdx
   0.00%    0x00007f2a4adb058f:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@584 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0598:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@585 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb059b:   mov    0xe0(%rsp),%rdx
            0x00007f2a4adb05a3:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@593 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb05a7:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@594 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb05aa:   mov    0xf0(%rsp),%rdx
            0x00007f2a4adb05b2:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@602 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb05b6:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@603 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb05b9:   mov    0x100(%rsp),%rdx
            0x00007f2a4adb05c1:   imul   %r14,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@611 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb05c5:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@612 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb05c8:   imul   0x110(%rsp),%r9              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@620 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f2a4adb05d1:   add    %r9,%rdi                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@621 (line 314)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f2a4adb05d4:   imul   0x108(%rsp),%rbx             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@631 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb05dd:   mov    %rax,%rdx
            0x00007f2a4adb05e0:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@639 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.04%    0x00007f2a4adb05e9:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@640 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f2a4adb05ec:   mov    0xc8(%rsp),%rdx              ;   {no_reloc}
            0x00007f2a4adb05f4:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@648 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb05fd:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@649 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.11%    0x00007f2a4adb0600:   mov    0xe0(%rsp),%rdx
   0.00%    0x00007f2a4adb0608:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@658 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.03%    0x00007f2a4adb0611:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@659 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.14%    0x00007f2a4adb0614:   mov    0xf0(%rsp),%rdx
            0x00007f2a4adb061c:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@667 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb0620:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@668 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb0623:   mov    0x100(%rsp),%rdx
            0x00007f2a4adb062b:   imul   %rsi,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@676 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb062f:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@677 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.11%    0x00007f2a4adb0632:   mov    0x110(%rsp),%r9
            0x00007f2a4adb063a:   imul   %r14,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@685 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb063e:   add    %r9,%rbx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@686 (line 315)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.16%    0x00007f2a4adb0641:   imul   0x108(%rsp),%rax             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@696 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb064a:   mov    0xc8(%rsp),%rdx
            0x00007f2a4adb0652:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@704 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.08%    0x00007f2a4adb065b:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@705 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb065e:   mov    0xe0(%rsp),%rdx
            0x00007f2a4adb0666:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@714 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb066f:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@715 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.11%    0x00007f2a4adb0672:   mov    0xf0(%rsp),%r14
            0x00007f2a4adb067a:   imul   0xd8(%rsp),%r14              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@724 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0683:   add    %r14,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@725 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.11%    0x00007f2a4adb0686:   mov    0x100(%rsp),%rdx
            0x00007f2a4adb068e:   imul   %r11,%rdx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@733 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0692:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@734 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb0695:   mov    0x110(%rsp),%r9
            0x00007f2a4adb069d:   imul   %rsi,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@742 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb06a1:   add    %r9,%rax                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@743 (line 316)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb06a4:   mov    0xc8(%rsp),%rsi
            0x00007f2a4adb06ac:   imul   0x108(%rsp),%rsi             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@753 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb06b5:   mov    0xe0(%rsp),%rdx
   0.00%    0x00007f2a4adb06bd:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@762 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb06c6:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@763 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.12%    0x00007f2a4adb06c9:   mov    0xf0(%rsp),%r14
            0x00007f2a4adb06d1:   imul   0xe8(%rsp),%r14              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@772 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb06da:   add    %r14,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@773 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.15%    0x00007f2a4adb06dd:   mov    0x100(%rsp),%rdx
   0.00%    0x00007f2a4adb06e5:   imul   0xd8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@782 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
                                                                      ;   {no_reloc}
            0x00007f2a4adb06ee:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@783 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb06f1:   mov    0x110(%rsp),%r9
            0x00007f2a4adb06f9:   imul   %r11,%r9                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@791 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb06fd:   mov    %rsi,%r11
            0x00007f2a4adb0700:   add    %r9,%r11                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@792 (line 317)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb0703:   mov    0xe0(%rsp),%rsi
            0x00007f2a4adb070b:   imul   0x108(%rsp),%rsi             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@803 (line 318)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.00%    0x00007f2a4adb0714:   mov    0xf0(%rsp),%r14
            0x00007f2a4adb071c:   imul   0xf8(%rsp),%r14              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@812 (line 318)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.17%    0x00007f2a4adb0725:   add    %r14,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@813 (line 318)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb0728:   mov    0x100(%rsp),%rdx
            0x00007f2a4adb0730:   imul   0xe8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@822 (line 318)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0739:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@823 (line 318)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb073c:   mov    0x110(%rsp),%r9
            0x00007f2a4adb0744:   imul   0xd8(%rsp),%r9               ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@832 (line 318)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb074d:   mov    %rsi,%r14
            0x00007f2a4adb0750:   add    %r9,%r14                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@833 (line 318)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.13%    0x00007f2a4adb0753:   mov    0xf0(%rsp),%rsi
            0x00007f2a4adb075b:   imul   0x108(%rsp),%rsi             ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@844 (line 319)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
            0x00007f2a4adb0764:   mov    0x100(%rsp),%rdx
            0x00007f2a4adb076c:   imul   0xf8(%rsp),%rdx              ;*lmul {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomialP256::mult@853 (line 319)
                                                                      ; - sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct@108 (line 747)
   0.11%    0x00007f2a4adb0775:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  15.33%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 1078 

             # parm18:   [sp+0xb8]   = long
             # parm19:   [sp+0xc0]   = long
             0x00007f2a4ad897a0:   mov    0x8(%rsi),%r10d
             0x00007f2a4ad897a4:   movabs $0x7f29cf000000,%r12
             0x00007f2a4ad897ae:   add    %r12,%r10
             0x00007f2a4ad897b1:   xor    %r12,%r12
             0x00007f2a4ad897b4:   cmp    %r10,%rax
             0x00007f2a4ad897b7:   jne    0x00007f2a4a764080           ;   {runtime_call ic_miss_stub}
             0x00007f2a4ad897bd:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.11%     0x00007f2a4ad897c0:   mov    %eax,-0x14000(%rsp)
   0.12%     0x00007f2a4ad897c7:   sub    $0x48,%rsp
             0x00007f2a4ad897cb:   nop
   0.00%     0x00007f2a4ad897cc:   cmpl   $0x0,0x20(%r15)
             0x00007f2a4ad897d4:   jne    0x00007f2a4ad89e77
   0.13%     0x00007f2a4ad897da:   mov    %rbp,0x40(%rsp)
   0.04%     0x00007f2a4ad897df:   mov    %r8,0x30(%rsp)
   0.08%     0x00007f2a4ad897e4:   mov    %r9,0x28(%rsp)
   0.13%     0x00007f2a4ad897e9:   mov    %rdi,0x20(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop }
                                                                       ;*lconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@0 (line 81)
   0.12%     0x00007f2a4ad897ee:   cmpl   $0xa,0xc(%rdx)               ; implicit exception: dispatches to 0x00007f2a4ad89e9b
   0.01%  ╭  0x00007f2a4ad897f2:   jb     0x00007f2a4ad89e0e           ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@400 (line 223)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad897f8:   mov    0xc0(%rsp),%r10
   0.01%  │  0x00007f2a4ad89800:   mov    0xb8(%rsp),%r11
   0.11%  │  0x00007f2a4ad89808:   mov    0xb0(%rsp),%rax
          │  0x00007f2a4ad89810:   mov    0xa8(%rsp),%r13
   0.00%  │  0x00007f2a4ad89818:   mov    0xa0(%rsp),%r14
          │  0x00007f2a4ad89820:   mov    0x98(%rsp),%rbp
   0.15%  │  0x00007f2a4ad89828:   mov    0x90(%rsp),%rsi
          │  0x00007f2a4ad89830:   mov    0x80(%rsp),%rbx
   0.00%  │  0x00007f2a4ad89838:   mov    %rdx,(%rsp)
   0.00%  │  0x00007f2a4ad8983c:   mov    0x88(%rsp),%rdi
   0.11%  │  0x00007f2a4ad89844:   mov    0x78(%rsp),%r9
          │  0x00007f2a4ad89849:   mov    0x70(%rsp),%r8
   0.00%  │  0x00007f2a4ad8984e:   mov    %r10,%rdx
   0.00%  │  0x00007f2a4ad89851:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@23 (line 84)
   0.11%  │  0x00007f2a4ad89855:   add    %rdx,%r11                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@24 (line 84)
          │  0x00007f2a4ad89858:   mov    %r11,%rdx
          │  0x00007f2a4ad8985b:   shl    $0x16,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@151 (line 96)
   0.00%  │  0x00007f2a4ad8985f:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@155 (line 96)
   0.14%  │  0x00007f2a4ad89866:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@156 (line 96)
          │  0x00007f2a4ad89869:   mov    %r10,%rdx
   0.00%  │  0x00007f2a4ad8986c:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@9 (line 83)
          │  0x00007f2a4ad89870:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@13 (line 83)
   0.14%  │  0x00007f2a4ad89877:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@14 (line 83)
          │  0x00007f2a4ad8987a:   mov    %r10,%rdx
   0.00%  │  0x00007f2a4ad8987d:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@47 (line 86)
   0.00%  │  0x00007f2a4ad89881:   sub    %rdx,%rax                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@48 (line 86)
   0.14%  │  0x00007f2a4ad89884:   mov    %r11,%rdx
          │  0x00007f2a4ad89887:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@117 (line 93)
          │  0x00007f2a4ad8988b:   add    %rdx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@118 (line 93)
   0.00%  │  0x00007f2a4ad8988e:   mov    %rax,%rdx
   0.13%  │  0x00007f2a4ad89891:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@258 (line 106)
          │  0x00007f2a4ad89895:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@259 (line 106)
   0.00%  │  0x00007f2a4ad89898:   mov    %rax,%rdx
          │  0x00007f2a4ad8989b:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@221 (line 103)
   0.13%  │  0x00007f2a4ad8989f:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@225 (line 103)
          │  0x00007f2a4ad898a6:   sub    %rdx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@226 (line 103)
   0.01%  │  0x00007f2a4ad898a9:   mov    %r10,%rdx
   0.01%  │  0x00007f2a4ad898ac:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@33 (line 85)
   0.13%  │  0x00007f2a4ad898b0:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@37 (line 85)
          │                                                            ;   {no_reloc}
          │  0x00007f2a4ad898b7:   sub    %rdx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@38 (line 85)
   0.00%  │  0x00007f2a4ad898ba:   mov    %r11,%rdx
          │  0x00007f2a4ad898bd:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@103 (line 92)
   0.12%  │  0x00007f2a4ad898c1:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@107 (line 92)
          │  0x00007f2a4ad898c8:   add    %rdx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@108 (line 92)
   0.00%  │  0x00007f2a4ad898cb:   mov    %r11,%rdx
   0.00%  │  0x00007f2a4ad898ce:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@141 (line 95)
   0.11%  │  0x00007f2a4ad898d2:   sub    %rdx,%r13                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@142 (line 95)
          │  0x00007f2a4ad898d5:   mov    %rax,%rdx
   0.01%  │  0x00007f2a4ad898d8:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@211 (line 102)
   0.00%  │  0x00007f2a4ad898dc:   add    %rdx,%r13                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@212 (line 102)
   0.13%  │  0x00007f2a4ad898df:   mov    %r13,%rdx
          │  0x00007f2a4ad898e2:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@291 (line 110)
          │  0x00007f2a4ad898e6:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@295 (line 110)
   0.01%  │  0x00007f2a4ad898ed:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@296 (line 110)
   0.13%  │  0x00007f2a4ad898f0:   mov    %r13,%rdx
          │  0x00007f2a4ad898f3:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@329 (line 113)
   0.00%  │  0x00007f2a4ad898f7:   sub    %rdx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@330 (line 113)
   0.01%  │  0x00007f2a4ad898fa:   mov    %r11,%rdx
   0.10%  │  0x00007f2a4ad898fd:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@127 (line 94)
          │  0x00007f2a4ad89901:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@131 (line 94)
          │  0x00007f2a4ad89908:   sub    %rdx,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@132 (line 94)
   0.00%  │  0x00007f2a4ad8990b:   mov    %rax,%rdx
   0.13%  │  0x00007f2a4ad8990e:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@197 (line 101)
          │  0x00007f2a4ad89912:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@201 (line 101)
          │  0x00007f2a4ad89919:   add    %rdx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@202 (line 101)
   0.00%  │  0x00007f2a4ad8991c:   mov    %rax,%rdx
   0.14%  │  0x00007f2a4ad8991f:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@235 (line 104)
          │  0x00007f2a4ad89923:   sub    %rdx,%r14                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@236 (line 104)
   0.00%  │  0x00007f2a4ad89926:   mov    %r13,%rdx
          │  0x00007f2a4ad89929:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@305 (line 111)
   0.12%  │  0x00007f2a4ad8992d:   add    %rdx,%r14                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@306 (line 111)
          │  0x00007f2a4ad89930:   mov    %r14,%rdx
   0.00%  │  0x00007f2a4ad89933:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@399 (line 120)
   0.01%  │  0x00007f2a4ad89937:   add    %rdx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@400 (line 120)
   0.12%  │  0x00007f2a4ad8993a:   mov    %rbp,%rdx
          │  0x00007f2a4ad8993d:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@503 (line 130)
   0.00%  │  0x00007f2a4ad89941:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@507 (line 130)
   0.00%  │  0x00007f2a4ad89948:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@508 (line 130)
   0.13%  │  0x00007f2a4ad8994b:   mov    %r10,%rdx
          │  0x00007f2a4ad8994e:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@70 (line 88)
   0.00%  │  0x00007f2a4ad89952:   sub    %rdx,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@71 (line 88)
   0.00%  │  0x00007f2a4ad89955:   mov    %r13,%rdx
   0.11%  │  0x00007f2a4ad89958:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@315 (line 112)
          │  0x00007f2a4ad8995c:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@319 (line 112)
   0.00%  │  0x00007f2a4ad89963:   sub    %rdx,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@320 (line 112)
          │  0x00007f2a4ad89966:   mov    %r14,%rdx
   0.16%  │  0x00007f2a4ad89969:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@385 (line 119)
          │  0x00007f2a4ad8996d:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@389 (line 119)
   0.01%  │  0x00007f2a4ad89974:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@390 (line 119)
   0.01%  │  0x00007f2a4ad89977:   mov    %r14,%rdx
   0.09%  │  0x00007f2a4ad8997a:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@423 (line 122)
          │  0x00007f2a4ad8997e:   sub    %rdx,%rsi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@424 (line 122)
   0.00%  │  0x00007f2a4ad89981:   mov    %rbp,%rdx
   0.00%  │  0x00007f2a4ad89984:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@493 (line 129)
   0.12%  │  0x00007f2a4ad89988:   add    %rdx,%rsi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@494 (line 129)
          │  0x00007f2a4ad8998b:   mov    %rsi,%rdx
          │  0x00007f2a4ad8998e:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@573 (line 137)
          │  0x00007f2a4ad89992:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@577 (line 137)
   0.13%  │  0x00007f2a4ad89999:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@578 (line 137)
          │  0x00007f2a4ad8999c:   mov    %rsi,%rdx
   0.00%  │  0x00007f2a4ad8999f:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@611 (line 140)
   0.01%  │  0x00007f2a4ad899a3:   sub    %rdx,%rbx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@612 (line 140)
   0.11%  │  0x00007f2a4ad899a6:   mov    %r10,%rdx
   0.00%  │  0x00007f2a4ad899a9:   shl    $0x16,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@57 (line 87)
   0.01%  │  0x00007f2a4ad899ad:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@61 (line 87)
   0.01%  │  0x00007f2a4ad899b4:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@62 (line 87)
          │                                                            ;   {no_reloc}
   0.13%  │  0x00007f2a4ad899b7:   mov    %r11,%rdx
          │  0x00007f2a4ad899ba:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@164 (line 97)
   0.00%  │  0x00007f2a4ad899be:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@165 (line 97)
   0.01%  │  0x00007f2a4ad899c1:   mov    %r14,%rdx
   0.14%  │  0x00007f2a4ad899c4:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@409 (line 121)
          │  0x00007f2a4ad899c8:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@413 (line 121)
   0.01%  │  0x00007f2a4ad899cf:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@414 (line 121)
   0.00%  │  0x00007f2a4ad899d2:   mov    %rbp,%rdx
   0.12%  │  0x00007f2a4ad899d5:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@479 (line 128)
          │  0x00007f2a4ad899d9:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@483 (line 128)
   0.01%  │  0x00007f2a4ad899e0:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@484 (line 128)
   0.00%  │  0x00007f2a4ad899e3:   mov    %rbp,%rdx
   0.12%  │  0x00007f2a4ad899e6:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@517 (line 131)
          │  0x00007f2a4ad899ea:   sub    %rdx,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@518 (line 131)
          │  0x00007f2a4ad899ed:   mov    %rsi,%rdx
   0.01%  │  0x00007f2a4ad899f0:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@587 (line 138)
   0.12%  │  0x00007f2a4ad899f4:   add    %rdx,%rdi                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@588 (line 138)
   0.00%  │  0x00007f2a4ad899f7:   mov    %rdi,%rdx
   0.01%  │  0x00007f2a4ad899fa:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@681 (line 147)
          │  0x00007f2a4ad899fe:   add    %rdx,%rbx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@682 (line 147)
   0.15%  │  0x00007f2a4ad89a01:   mov    %rbx,%rdx
          │  0x00007f2a4ad89a04:   shl    $0x4,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@830 (line 161)
   0.01%  │  0x00007f2a4ad89a08:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@834 (line 161)
   0.00%  │  0x00007f2a4ad89a0f:   add    %rdx,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@835 (line 161)
   0.14%  │  0x00007f2a4ad89a12:   mov    %r10,%rdx
          │  0x00007f2a4ad89a15:   sar    $0x16,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@93 (line 90)
   0.00%  │  0x00007f2a4ad89a19:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@94 (line 90)
   0.00%  │  0x00007f2a4ad89a1c:   mov    %rax,%rdx
   0.12%  │  0x00007f2a4ad89a1f:   shl    $0x16,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@245 (line 105)
          │  0x00007f2a4ad89a23:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@249 (line 105)
          │  0x00007f2a4ad89a2a:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@250 (line 105)
   0.00%  │  0x00007f2a4ad89a2d:   mov    %r13,%rdx
   0.11%  │  0x00007f2a4ad89a30:   sar    $0x4,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@352 (line 115)
          │  0x00007f2a4ad89a34:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@353 (line 115)
   0.00%  │  0x00007f2a4ad89a37:   mov    %rsi,%rdx
          │  0x00007f2a4ad89a3a:   shl    $0xe,%rdx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@597 (line 139)
   0.16%  │  0x00007f2a4ad89a3e:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@601 (line 139)
   0.00%  │  0x00007f2a4ad89a45:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@602 (line 139)
   0.00%  │  0x00007f2a4ad89a48:   mov    %rdi,%rdx
   0.00%  │  0x00007f2a4ad89a4b:   shl    $0x14,%rdx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@667 (line 146)
   0.12%  │  0x00007f2a4ad89a4f:   and    $0x3ffffff,%rdx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@671 (line 146)
          │  0x00007f2a4ad89a56:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@672 (line 146)
   0.00%  │  0x00007f2a4ad89a59:   mov    %rdi,%rdx
   0.00%  │  0x00007f2a4ad89a5c:   sar    $0xc,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@705 (line 149)
   0.09%  │  0x00007f2a4ad89a60:   sub    %rdx,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@706 (line 149)
          │  0x00007f2a4ad89a63:   mov    %rbx,%rdx
   0.00%  │  0x00007f2a4ad89a66:   sar    $0x6,%rdx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@775 (line 156)
   0.00%  │  0x00007f2a4ad89a6a:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@776 (line 156)
   0.12%  │  0x00007f2a4ad89a6d:   shl    $0x4,%r10                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@79 (line 89)
          │  0x00007f2a4ad89a71:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@83 (line 89)
   0.01%  │  0x00007f2a4ad89a78:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@84 (line 89)
   0.00%  │  0x00007f2a4ad89a7b:   mov    %r11,%r10
   0.10%  │  0x00007f2a4ad89a7e:   sar    $0x16,%r10                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@187 (line 99)
   0.00%  │  0x00007f2a4ad89a82:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@188 (line 99)
          │  0x00007f2a4ad89a85:   mov    %r13,%r10
   0.00%  │  0x00007f2a4ad89a88:   shl    $0x16,%r10                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@339 (line 114)
   0.14%  │  0x00007f2a4ad89a8c:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@343 (line 114)
          │  0x00007f2a4ad89a93:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@344 (line 114)
   0.00%  │  0x00007f2a4ad89a96:   mov    %r14,%r10
          │  0x00007f2a4ad89a99:   sar    $0x4,%r10                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@446 (line 124)
   0.13%  │  0x00007f2a4ad89a9d:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@447 (line 124)
          │  0x00007f2a4ad89aa0:   mov    %rdi,%r10
   0.00%  │  0x00007f2a4ad89aa3:   shl    $0xe,%r10                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@691 (line 148)
   0.00%  │  0x00007f2a4ad89aa7:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@695 (line 148)
   0.11%  │  0x00007f2a4ad89aae:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@696 (line 148)
          │  0x00007f2a4ad89ab1:   mov    %rbx,%r10
   0.00%  │  0x00007f2a4ad89ab4:   shl    $0x14,%r10                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@761 (line 155)
          │                                                            ;   {no_reloc}
   0.00%  │  0x00007f2a4ad89ab8:   and    $0x3ffffff,%r10              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@765 (line 155)
   0.14%  │  0x00007f2a4ad89abf:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@766 (line 155)
          │  0x00007f2a4ad89ac2:   mov    %rbx,%r10
   0.00%  │  0x00007f2a4ad89ac5:   sar    $0xc,%r10                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@799 (line 158)
   0.00%  │  0x00007f2a4ad89ac9:   sub    %r10,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@800 (line 158)
   0.15%  │  0x00007f2a4ad89acc:   lea    0x2000000(%r8),%r10          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@5 (line 170)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89ad3:   mov    %r10,%rdx
   0.01%  │  0x00007f2a4ad89ad6:   sar    $0x1a,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@8 (line 170)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89ada:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@25 (line 172)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.13%  │  0x00007f2a4ad89add:   lea    0x2000000(%r9),%rdx          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@33 (line 174)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89ae4:   mov    %r9,0x18(%rsp)
          │  0x00007f2a4ad89ae9:   mov    %rdx,%r9
   0.00%  │  0x00007f2a4ad89aec:   sar    $0x1a,%r9                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@36 (line 174)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f2a4ad89af0:   mov    %r8,0x10(%rsp)
   0.00%  │  0x00007f2a4ad89af5:   mov    %r9,%r8
   0.00%  │  0x00007f2a4ad89af8:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@131 (line 184)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89afc:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@135 (line 184)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.09%  │  0x00007f2a4ad89b03:   add    %r8,%rcx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@136 (line 184)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89b06:   lea    0x2000000(%rcx),%r8          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@152 (line 187)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89b0d:   mov    %r10,0x8(%rsp)
   0.00%  │  0x00007f2a4ad89b12:   mov    %r8,%r10
   0.14%  │  0x00007f2a4ad89b15:   and    $0xfffffffffc000000,%r10     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@163 (line 188)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89b1c:   sub    %r10,%rcx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@164 (line 188)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.05%  │  0x00007f2a4ad89b1f:   mov    (%rsp),%r10
   0.00%  │  0x00007f2a4ad89b23:   mov    %rcx,0x10(%r10)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@400 (line 223)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.19%  │  0x00007f2a4ad89b27:   mov    %rdi,%rcx
          │  0x00007f2a4ad89b2a:   shl    $0x4,%rcx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@737 (line 152)
   0.00%  │  0x00007f2a4ad89b2e:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@741 (line 152)
          │  0x00007f2a4ad89b35:   add    0x30(%rsp),%rcx              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@742 (line 152)
   0.15%  │  0x00007f2a4ad89b3a:   mov    %r11,0x30(%rsp)
          │  0x00007f2a4ad89b3f:   mov    %rbx,%r11
   0.00%  │  0x00007f2a4ad89b42:   sar    $0x16,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@843 (line 162)
          │  0x00007f2a4ad89b46:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@844 (line 162)
   0.15%  │  0x00007f2a4ad89b49:   mov    %rdx,%r11
          │  0x00007f2a4ad89b4c:   sar    $0x30,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@144 (line 185)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89b50:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@145 (line 185)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89b53:   sar    $0x1a,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@155 (line 187)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.11%  │  0x00007f2a4ad89b57:   add    %r8,%rcx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@170 (line 189)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89b5a:   lea    0x2000000(%rcx),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@178 (line 191)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89b61:   mov    %r11,%r8
   0.00%  │  0x00007f2a4ad89b64:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@190 (line 192)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.15%  │  0x00007f2a4ad89b6b:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@191 (line 192)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89b6e:   mov    %rcx,0x18(%r10)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@405 (line 224)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89b72:   mov    %rsi,%r8
          │  0x00007f2a4ad89b75:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@643 (line 143)
   0.14%  │  0x00007f2a4ad89b79:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@647 (line 143)
          │  0x00007f2a4ad89b80:   add    0x28(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@648 (line 143)
   0.00%  │  0x00007f2a4ad89b85:   mov    %rdi,%rcx
   0.00%  │  0x00007f2a4ad89b88:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@751 (line 153)
   0.10%  │  0x00007f2a4ad89b8c:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@752 (line 153)
          │  0x00007f2a4ad89b8f:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@181 (line 191)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89b93:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@198 (line 193)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89b96:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@206 (line 195)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f2a4ad89b9d:   mov    %r11,%rcx
   0.00%  │  0x00007f2a4ad89ba0:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@218 (line 196)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89ba7:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@219 (line 196)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89baa:   mov    %r8,0x20(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@410 (line 225)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f2a4ad89bae:   mov    %rbp,%r8
          │  0x00007f2a4ad89bb1:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@549 (line 134)
          │                                                            ;   {no_reloc}
   0.01%  │  0x00007f2a4ad89bb5:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@553 (line 134)
   0.00%  │  0x00007f2a4ad89bbc:   add    0x20(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@554 (line 134)
   0.13%  │  0x00007f2a4ad89bc1:   mov    %rsi,%rcx
   0.00%  │  0x00007f2a4ad89bc4:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@657 (line 144)
   0.01%  │  0x00007f2a4ad89bc8:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@658 (line 144)
          │  0x00007f2a4ad89bcb:   mov    %rbx,%rcx
   0.14%  │  0x00007f2a4ad89bce:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@809 (line 159)
          │  0x00007f2a4ad89bd2:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@813 (line 159)
   0.01%  │  0x00007f2a4ad89bd9:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@814 (line 159)
   0.01%  │  0x00007f2a4ad89bdc:   mov    %r9,%rcx
   0.10%  │  0x00007f2a4ad89bdf:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@110 (line 182)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89be3:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@114 (line 182)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89bea:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@115 (line 182)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89bed:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@209 (line 195)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f2a4ad89bf1:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@226 (line 197)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89bf4:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@234 (line 199)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89bfb:   mov    %r11,%rcx
   0.00%  │  0x00007f2a4ad89bfe:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@246 (line 200)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f2a4ad89c05:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@247 (line 200)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89c08:   mov    %r8,0x28(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@415 (line 226)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89c0c:   mov    %r14,%r8
   0.00%  │  0x00007f2a4ad89c0f:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@455 (line 125)
   0.15%  │  0x00007f2a4ad89c13:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@459 (line 125)
   0.00%  │  0x00007f2a4ad89c1a:   add    0x50(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@460 (line 125)
          │  0x00007f2a4ad89c1f:   mov    %rbp,%rcx
   0.00%  │  0x00007f2a4ad89c22:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@563 (line 135)
   0.14%  │  0x00007f2a4ad89c26:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@564 (line 135)
          │  0x00007f2a4ad89c29:   mov    %rdi,%rcx
   0.00%  │  0x00007f2a4ad89c2c:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@715 (line 150)
   0.00%  │  0x00007f2a4ad89c30:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@719 (line 150)
   0.15%  │  0x00007f2a4ad89c37:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@720 (line 150)
          │  0x00007f2a4ad89c3a:   mov    %rbx,%rcx
   0.01%  │  0x00007f2a4ad89c3d:   sar    $0x4,%rcx                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@822 (line 160)
   0.00%  │  0x00007f2a4ad89c41:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@823 (line 160)
   0.12%  │  0x00007f2a4ad89c44:   mov    %rdx,%rcx
   0.00%  │  0x00007f2a4ad89c47:   sar    $0x1e,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@123 (line 183)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89c4b:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@124 (line 183)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89c4e:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@237 (line 199)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.11%  │  0x00007f2a4ad89c52:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@254 (line 201)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89c55:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@262 (line 203)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89c5c:   mov    %r11,%rcx
   0.00%  │  0x00007f2a4ad89c5f:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@274 (line 204)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.15%  │  0x00007f2a4ad89c66:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@275 (line 204)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89c69:   mov    %r8,0x30(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@420 (line 227)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89c6d:   mov    %r13,%r8
          │  0x00007f2a4ad89c70:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@361 (line 116)
   0.13%  │  0x00007f2a4ad89c74:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@365 (line 116)
          │  0x00007f2a4ad89c7b:   add    0x58(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@366 (line 116)
   0.00%  │  0x00007f2a4ad89c80:   mov    %r14,%rcx
   0.00%  │  0x00007f2a4ad89c83:   sar    $0x16,%rcx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@469 (line 126)
   0.12%  │  0x00007f2a4ad89c87:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@470 (line 126)
          │  0x00007f2a4ad89c8a:   mov    %rsi,%rcx
   0.00%  │  0x00007f2a4ad89c8d:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@621 (line 141)
          │  0x00007f2a4ad89c91:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@625 (line 141)
   0.11%  │  0x00007f2a4ad89c98:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@626 (line 141)
          │  0x00007f2a4ad89c9b:   sar    $0x4,%rdi                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@728 (line 151)
          │  0x00007f2a4ad89c9f:   sub    %rdi,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@729 (line 151)
   0.00%  │  0x00007f2a4ad89ca2:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@265 (line 203)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.10%  │  0x00007f2a4ad89ca6:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@282 (line 205)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89ca9:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@290 (line 207)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89cb0:   mov    %r11,%rcx                    ;   {no_reloc}
   0.00%  │  0x00007f2a4ad89cb3:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@302 (line 208)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.13%  │  0x00007f2a4ad89cba:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@303 (line 208)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89cbd:   mov    %r8,0x38(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@425 (line 228)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89cc1:   mov    %rax,%r8
   0.00%  │  0x00007f2a4ad89cc4:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@267 (line 107)
   0.10%  │  0x00007f2a4ad89cc8:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@271 (line 107)
          │  0x00007f2a4ad89ccf:   add    0x60(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@272 (line 107)
   0.01%  │  0x00007f2a4ad89cd4:   sar    $0x16,%r13                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@375 (line 117)
   0.00%  │  0x00007f2a4ad89cd8:   add    %r13,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@376 (line 117)
   0.11%  │  0x00007f2a4ad89cdb:   mov    %rbp,%rcx
          │  0x00007f2a4ad89cde:   shl    $0x16,%rcx                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@527 (line 132)
   0.01%  │  0x00007f2a4ad89ce2:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@531 (line 132)
   0.01%  │  0x00007f2a4ad89ce9:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@532 (line 132)
   0.10%  │  0x00007f2a4ad89cec:   sar    $0x4,%rsi                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@634 (line 142)
          │  0x00007f2a4ad89cf0:   sub    %rsi,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@635 (line 142)
   0.01%  │  0x00007f2a4ad89cf3:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@293 (line 207)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89cf7:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@310 (line 209)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.09%  │  0x00007f2a4ad89cfa:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@318 (line 211)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89d01:   mov    %r11,%rcx
   0.01%  │  0x00007f2a4ad89d04:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@330 (line 212)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89d0b:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@331 (line 212)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f2a4ad89d0e:   mov    %r8,0x40(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@431 (line 229)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89d12:   mov    0x30(%rsp),%r8
   0.01%  │  0x00007f2a4ad89d17:   shl    $0x4,%r8                     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@173 (line 98)
   0.01%  │  0x00007f2a4ad89d1b:   and    $0x3ffffff,%r8               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@177 (line 98)
   0.11%  │  0x00007f2a4ad89d22:   add    0x68(%rsp),%r8               ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@178 (line 98)
          │  0x00007f2a4ad89d27:   sar    $0x16,%rax                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@281 (line 108)
   0.01%  │  0x00007f2a4ad89d2b:   add    %rax,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@282 (line 108)
   0.00%  │  0x00007f2a4ad89d2e:   shl    $0x16,%r14                   ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@433 (line 123)
   0.12%  │  0x00007f2a4ad89d32:   and    $0x3ffffff,%r14              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@437 (line 123)
   0.00%  │  0x00007f2a4ad89d39:   sub    %r14,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@438 (line 123)
   0.00%  │  0x00007f2a4ad89d3c:   sar    $0x4,%rbp                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@540 (line 133)
          │  0x00007f2a4ad89d40:   sub    %rbp,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@541 (line 133)
   0.17%  │  0x00007f2a4ad89d43:   shl    $0xe,%rbx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@785 (line 157)
          │  0x00007f2a4ad89d47:   and    $0x3ffffff,%rbx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@789 (line 157)
   0.00%  │  0x00007f2a4ad89d4e:   sub    %rbx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@790 (line 157)
   0.00%  │  0x00007f2a4ad89d51:   mov    %r9,%rcx
   0.12%  │  0x00007f2a4ad89d54:   shl    $0xe,%rcx                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@86 (line 180)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89d58:   and    $0x3ffffff,%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@90 (line 180)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89d5f:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@91 (line 180)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89d62:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@321 (line 211)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.13%  │  0x00007f2a4ad89d66:   add    %r11,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@338 (line 213)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89d69:   lea    0x2000000(%r8),%r11          ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@346 (line 215)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89d70:   mov    %r11,%rcx
   0.00%  │  0x00007f2a4ad89d73:   and    $0xfffffffffc000000,%rcx     ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@358 (line 216)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.14%  │  0x00007f2a4ad89d7a:   sub    %rcx,%r8                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@359 (line 216)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89d7d:   mov    %r8,0x48(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@437 (line 230)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.03%  │  0x00007f2a4ad89d81:   mov    0x8(%rsp),%r8
   0.00%  │  0x00007f2a4ad89d86:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@17 (line 171)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.07%  │  0x00007f2a4ad89d8d:   mov    0x10(%rsp),%rcx
          │  0x00007f2a4ad89d92:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@18 (line 171)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.04%  │  0x00007f2a4ad89d95:   shl    $0x14,%r9                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@62 (line 178)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89d99:   and    $0x3ffffff,%r9               ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@66 (line 178)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.10%  │  0x00007f2a4ad89da0:   add    %r9,%rcx                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@67 (line 178)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89da3:   mov    %rdx,%r8
   0.03%  │  0x00007f2a4ad89da6:   sar    $0x26,%r8                    ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@100 (line 181)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89daa:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@101 (line 181)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.12%  │  0x00007f2a4ad89dad:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@349 (line 215)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89db1:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@366 (line 217)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │                                                            ;   {no_reloc}
   0.03%  │  0x00007f2a4ad89db4:   lea    0x2000000(%rcx),%r11         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@374 (line 219)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89dbb:   mov    %r11,%r8
   0.11%  │  0x00007f2a4ad89dbe:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@386 (line 220)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89dc5:   sub    %r8,%rcx                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@387 (line 220)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.03%  │  0x00007f2a4ad89dc8:   mov    %rcx,0x50(%r10)              ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@443 (line 231)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89dcc:   mov    %rdx,%r8
   0.09%  │  0x00007f2a4ad89dcf:   and    $0xfffffffffc000000,%r8      ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@45 (line 175)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89dd6:   mov    0x18(%rsp),%r9
   0.03%  │  0x00007f2a4ad89ddb:   sub    %r8,%r9                      ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@46 (line 175)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.01%  │  0x00007f2a4ad89dde:   sar    $0x20,%rdx                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@76 (line 179)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.10%  │  0x00007f2a4ad89de2:   add    %rdx,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@77 (line 179)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
          │  0x00007f2a4ad89de5:   sar    $0x1a,%r11                   ;*lshr {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@377 (line 219)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.02%  │  0x00007f2a4ad89de9:   add    %r11,%r9                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@394 (line 221)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.00%  │  0x00007f2a4ad89dec:   mov    %r9,0x58(%r10)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce0@449 (line 232)
          │                                                            ; - sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce@891 (line 165)
   0.11%  │  0x00007f2a4ad89df0:   mov    0x40(%rsp),%rbp
          │  0x00007f2a4ad89df5:   add    $0x48,%rsp
   0.03%  │  0x00007f2a4ad89df9:   nopl   0x0(%rax)
   0.00%  │  0x00007f2a4ad89e00:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f2a4ad89e07:   ja     0x00007f2a4ad89e87
   0.09%  │  0x00007f2a4ad89e0d:   ret    
          ↘  0x00007f2a4ad89e0e:   mov    0xc0(%rsp),%r10
             0x00007f2a4ad89e16:   mov    0xb8(%rsp),%r11
             0x00007f2a4ad89e1e:   mov    0xb0(%rsp),%rax
             0x00007f2a4ad89e26:   mov    0xa8(%rsp),%r13
             0x00007f2a4ad89e2e:   mov    0xa0(%rsp),%r14
             0x00007f2a4ad89e36:   mov    0x98(%rsp),%rbp
             0x00007f2a4ad89e3e:   mov    0x80(%rsp),%rbx
             0x00007f2a4ad89e46:   mov    0x88(%rsp),%rdi
             0x00007f2a4ad89e4e:   mov    0x78(%rsp),%r9
             0x00007f2a4ad89e53:   mov    0x70(%rsp),%r8
....................................................................................................
  13.22%  <total for region 3>

....[Hottest Regions]...............................................................................
  17.46%        runtime stub  StubRoutines::sha256_implCompressMB 
  15.33%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1166 
  13.22%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 1078 
   7.38%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 1190 
   4.23%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 3, compile id 1336 
   3.57%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1099 
   3.50%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1070 
   3.45%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1083 
   3.07%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1238 
   2.73%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1166 
   2.05%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1076 
   1.16%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 1262 
   0.95%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1469 
   0.92%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1469 
   0.87%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1469 
   0.78%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1469 
   0.75%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 1262 
   0.74%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1238 
   0.71%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 5, compile id 1444 
   0.65%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 5, compile id 1444 
  16.45%  <...other 974 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  18.75%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1166 
  17.57%        runtime stub  StubRoutines::sha256_implCompressMB 
  13.22%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::carryReduce, version 2, compile id 1078 
   8.77%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Secp256R1GeneratorMultiplier::pointMultiply, version 3, compile id 1469 
   7.38%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce, version 2, compile id 1190 
   4.93%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1::inverse, version 3, compile id 1336 
   3.80%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1238 
   3.57%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1099 
   3.50%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 2, compile id 1070 
   3.45%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1083 
   2.60%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Secp256R1Field::inverse, version 5, compile id 1444 
   2.36%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::mult, version 2, compile id 1262 
   2.05%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1076 
   1.81%              kernel  [unknown] 
   1.00%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::carryReduce0, version 2, compile id 1207 
   0.99%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::square, version 2, compile id 1109 
   0.71%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1216 
   0.60%      jvmci, level 4  sun.security.util.math.intpoly.P256OrderField::square, version 2, compile id 1201 
   0.37%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP256::mult, version 2, compile id 1079 
   0.30%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::evaluate, version 2, compile id 1471 
   2.25%  <...other 111 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  79.97%      jvmci, level 4
  17.67%        runtime stub
   1.81%              kernel
   0.24%                    
   0.16%           libjvm.so
   0.09%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%              [vdso]
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%    perf-2127493.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp384r1, messageLength = 64)

# Run progress: 33.33% complete, ETA 00:15:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7267.902 us/op
# Warmup Iteration   2: 1713.893 us/op
# Warmup Iteration   3: 1668.702 us/op
# Warmup Iteration   4: 1561.465 us/op
# Warmup Iteration   5: 1561.142 us/op
Iteration   1: 1560.908 us/op
Iteration   2: 1561.281 us/op
Iteration   3: 1561.061 us/op
Iteration   4: 1560.561 us/op
Iteration   5: 1561.931 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  1561.149 ±(99.9%) 1.964 us/op [Average]
  (min, avg, max) = (1560.561, 1561.149, 1561.931), stdev = 0.510
  CI (99.9%): [1559.185, 1563.112] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 465790 total address lines.
Perf output processed (skipped 62.116 seconds):
 Column 1: cycles (50552 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 1064 

 <region is too big to display, has 2443 lines, but threshold is 1000>
....................................................................................................
  53.88%  <total for region 1>

....[Hottest Regions]...............................................................................
  53.88%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 1064 
   7.14%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 1113 
   5.72%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1090 
   3.26%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1316 
   2.98%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1158 
   2.44%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1316 
   2.34%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1063 
   2.17%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1041 
   1.99%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1059 
   1.89%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1060 
   1.49%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1316 
   1.09%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1316 
   0.96%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1316 
   0.84%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1316 
   0.56%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1316 
   0.54%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1454 
   0.47%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1454 
   0.45%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1316 
   0.45%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1316 
   0.43%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1316 
   8.91%  <...other 792 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.88%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 1064 
  14.66%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1316 
   7.14%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 1113 
   5.87%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1090 
   3.30%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1158 
   2.64%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1454 
   2.34%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1063 
   2.17%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1041 
   1.99%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1059 
   1.89%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1060 
   1.61%              kernel  [unknown] 
   0.97%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1213 
   0.32%                      <unknown> 
   0.23%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1387 
   0.09%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 2, compile id 1543 
   0.09%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier::of, version 2, compile id 1545 
   0.08%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1503 
   0.07%      jvmci, level 4  sun.security.ec.ECDSAOperations::toAffinePoint, version 2, compile id 1528 
   0.07%      jvmci, level 4  java.security.SecureRandom::nextBytes, version 2, compile id 1511 
   0.04%      jvmci, level 4  sun.security.util.math.intpoly.P384OrderField::mult, version 2, compile id 1180 
   0.56%  <...other 105 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.72%      jvmci, level 4
   1.61%              kernel
   0.32%                    
   0.14%           libjvm.so
   0.11%        libc-2.31.so
   0.04%         interpreter
   0.02%        runtime stub
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%    perf-2127561.map
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp384r1, messageLength = 512)

# Run progress: 41.67% complete, ETA 00:13:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9664.354 us/op
# Warmup Iteration   2: 1962.119 us/op
# Warmup Iteration   3: 1590.129 us/op
# Warmup Iteration   4: 1561.939 us/op
# Warmup Iteration   5: 1561.833 us/op
Iteration   1: 1560.580 us/op
Iteration   2: 1561.332 us/op
Iteration   3: 1561.158 us/op
Iteration   4: 1560.611 us/op
Iteration   5: 1561.449 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  1561.026 ±(99.9%) 1.566 us/op [Average]
  (min, avg, max) = (1560.580, 1561.026, 1561.449), stdev = 0.407
  CI (99.9%): [1559.460, 1562.592] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 471732 total address lines.
Perf output processed (skipped 62.605 seconds):
 Column 1: cycles (50972 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 1092 

 <region is too big to display, has 2442 lines, but threshold is 1000>
....................................................................................................
  53.54%  <total for region 1>

....[Hottest Regions]...............................................................................
  53.54%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 1092 
   7.40%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1342 
   6.95%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 1147 
   5.67%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1127 
   3.47%       jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1184 
   2.21%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1091 
   2.18%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1059 
   1.97%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1087 
   1.77%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1088 
   1.09%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1342 
   1.01%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1342 
   0.86%               kernel  [unknown] 
   0.83%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1342 
   0.74%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1342 
   0.61%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1342 
   0.53%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1342 
   0.48%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1490 
   0.47%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1342 
   0.46%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1490 
   0.42%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1342 
   7.33%  <...other 763 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.54%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 1092 
  14.61%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1342 
   6.95%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 1147 
   5.81%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1127 
   3.47%       jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1184 
   2.69%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1490 
   2.21%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1091 
   2.18%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1059 
   2.06%               kernel  [unknown] 
   1.97%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1087 
   1.77%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1088 
   0.97%       jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1243 
   0.33%                       <unknown> 
   0.27%       jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1412 
   0.09%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1502 
   0.08%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier::of, version 2, compile id 1564 
   0.08%         runtime stub  StubRoutines::sha512_implCompressMB 
   0.08%       jvmci, level 4  java.security.SecureRandom::nextBytes, version 2, compile id 1528 
   0.06%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 2, compile id 1563 
   0.05%       jvmci, level 4  sun.security.util.ECUtil::encodeSignature, version 2, compile id 1552 
   0.71%  <...other 137 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.05%       jvmci, level 4
   2.06%               kernel
   0.33%                     
   0.15%            libjvm.so
   0.13%         libc-2.31.so
   0.12%         runtime stub
   0.05%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.02%          interpreter
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%     perf-2127625.map
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp384r1, messageLength = 2048)

# Run progress: 50.00% complete, ETA 00:11:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11443.301 us/op
# Warmup Iteration   2: 2062.063 us/op
# Warmup Iteration   3: 1757.433 us/op
# Warmup Iteration   4: 1566.306 us/op
# Warmup Iteration   5: 1566.351 us/op
Iteration   1: 1566.328 us/op
Iteration   2: 1566.221 us/op
Iteration   3: 1566.167 us/op
Iteration   4: 1566.075 us/op
Iteration   5: 1566.139 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  1566.186 ±(99.9%) 0.366 us/op [Average]
  (min, avg, max) = (1566.075, 1566.186, 1566.328), stdev = 0.095
  CI (99.9%): [1565.820, 1566.552] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 486945 total address lines.
Perf output processed (skipped 62.500 seconds):
 Column 1: cycles (50965 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 1092 

 <region is too big to display, has 2439 lines, but threshold is 1000>
....................................................................................................
  53.60%  <total for region 1>

....[Hottest Regions]...............................................................................
  53.60%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 1092 
   6.90%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 1146 
   5.54%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1123 
   3.82%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1320 
   3.67%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1320 
   3.26%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1191 
   2.36%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1091 
   2.16%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1056 
   1.99%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1086 
   1.86%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1130 
   1.77%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1320 
   1.16%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1320 
   0.72%              kernel  [unknown] 
   0.59%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1320 
   0.50%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1496 
   0.44%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1320 
   0.44%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1496 
   0.39%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1320 
   0.36%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1320 
   0.34%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1496 
   8.13%  <...other 856 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.60%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 1092 
  14.47%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1320 
   6.90%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 1146 
   5.72%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1123 
   3.43%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1191 
   2.52%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1496 
   2.36%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1091 
   2.16%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1056 
   1.99%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1086 
   1.91%              kernel  [unknown] 
   1.86%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 4, compile id 1130 
   1.02%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1253 
   0.41%                      <unknown> 
   0.28%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.24%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1420 
   0.12%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier::of, version 2, compile id 1572 
   0.10%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1514 
   0.07%      jvmci, level 4  java.security.SecureRandom::nextBytes, version 2, compile id 1538 
   0.07%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 2, compile id 1518 
   0.04%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.72%  <...other 121 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.93%      jvmci, level 4
   1.91%              kernel
   0.41%                    
   0.32%        runtime stub
   0.19%           libjvm.so
   0.15%        libc-2.31.so
   0.04%         interpreter
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp384r1, messageLength = 16384)

# Run progress: 58.33% complete, ETA 00:09:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9757.129 us/op
# Warmup Iteration   2: 1684.013 us/op
# Warmup Iteration   3: 1630.000 us/op
# Warmup Iteration   4: 1599.904 us/op
# Warmup Iteration   5: 1599.085 us/op
Iteration   1: 1599.526 us/op
Iteration   2: 1599.011 us/op
Iteration   3: 1599.118 us/op
Iteration   4: 1599.717 us/op
Iteration   5: 1598.733 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  1599.221 ±(99.9%) 1.530 us/op [Average]
  (min, avg, max) = (1598.733, 1599.221, 1599.717), stdev = 0.397
  CI (99.9%): [1597.691, 1600.751] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 470274 total address lines.
Perf output processed (skipped 62.839 seconds):
 Column 1: cycles (50803 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 1096 

 <region is too big to display, has 2443 lines, but threshold is 1000>
....................................................................................................
  52.33%  <total for region 1>

....[Hottest Regions]...............................................................................
  52.33%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 1096 
   6.77%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 1154 
   5.64%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1115 
   3.77%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1329 
   3.28%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1329 
   2.77%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1199 
   2.46%        runtime stub  StubRoutines::sha512_implCompressMB 
   2.37%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1095 
   2.16%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1047 
   1.83%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1091 
   1.82%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1092 
   1.52%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1329 
   0.88%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1329 
   0.59%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1199 
   0.57%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1329 
   0.53%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1501 
   0.50%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1501 
   0.49%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1329 
   0.48%              kernel  [unknown] 
   0.44%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1329 
   8.83%  <...other 802 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.33%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::mult, version 2, compile id 1096 
  13.95%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 5, compile id 1329 
   6.77%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP384::square, version 2, compile id 1154 
   5.80%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1115 
   3.36%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1199 
   2.63%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1501 
   2.47%        runtime stub  StubRoutines::sha512_implCompressMB 
   2.37%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1095 
   2.16%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1047 
   2.01%              kernel  [unknown] 
   1.83%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1091 
   1.82%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1092 
   0.92%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1232 
   0.30%                      <unknown> 
   0.22%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1416 
   0.12%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier::of, version 2, compile id 1577 
   0.09%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1526 
   0.07%      jvmci, level 4  sun.security.provider.SHA::implDigest, version 2, compile id 1525 
   0.06%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 2, compile id 1578 
   0.05%      jvmci, level 4  sun.security.ec.ECOperations::forParameters, version 2, compile id 1552 
   0.66%  <...other 120 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.82%      jvmci, level 4
   2.50%        runtime stub
   2.01%              kernel
   0.30%                    
   0.19%           libjvm.so
   0.09%        libc-2.31.so
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.00%    perf-2127760.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp521r1, messageLength = 64)

# Run progress: 66.67% complete, ETA 00:07:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13085.889 us/op
# Warmup Iteration   2: 2732.329 us/op
# Warmup Iteration   3: 2561.173 us/op
# Warmup Iteration   4: 2585.023 us/op
# Warmup Iteration   5: 2550.312 us/op
Iteration   1: 2549.766 us/op
Iteration   2: 2550.217 us/op
Iteration   3: 2550.761 us/op
Iteration   4: 2549.745 us/op
Iteration   5: 2549.524 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  2550.003 ±(99.9%) 1.899 us/op [Average]
  (min, avg, max) = (2549.524, 2550.003, 2550.761), stdev = 0.493
  CI (99.9%): [2548.104, 2551.901] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 470345 total address lines.
Perf output processed (skipped 62.256 seconds):
 Column 1: cycles (50514 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 1058 

 <region is too big to display, has 2729 lines, but threshold is 1000>
....................................................................................................
  51.87%  <total for region 1>

....[Hottest Regions]...............................................................................
  51.87%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 1058 
   6.12%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 1106 
   6.05%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1085 
   2.10%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1288 
   2.03%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1288 
   1.93%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1288 
   1.84%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1059 
   1.65%       jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1147 
   1.29%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1471 
   1.28%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1036 
   1.26%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1288 
   1.20%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1471 
   1.08%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1288 
   0.94%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1288 
   0.91%       jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1147 
   0.88%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1060 
   0.76%       jvmci, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 1125 
   0.73%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1288 
   0.72%       jvmci, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 1125 
   0.68%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1288 
  14.67%  <...other 707 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.87%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 1058 
  15.92%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1288 
   6.28%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1085 
   6.12%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 1106 
   4.41%       jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1147 
   4.17%       jvmci, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 1125 
   2.68%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1471 
   1.84%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1059 
   1.47%               kernel  [unknown] 
   1.28%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1036 
   0.88%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1060 
   0.73%       jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1198 
   0.66%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 1044 
   0.62%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1057 
   0.18%       jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1394 
   0.07%                       <unknown> 
   0.06%       jvmci, level 4  java.security.SecureRandom::nextBytes, version 2, compile id 1520 
   0.06%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier::of, version 2, compile id 1551 
   0.05%       jvmci, level 4  sun.security.ec.ECOperations::forParameters, version 2, compile id 1537 
   0.04%       jvmci, level 4  sun.security.ec.ECDSAOperations::toAffinePoint, version 2, compile id 1547 
   0.60%  <...other 108 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.11%       jvmci, level 4
   1.47%               kernel
   0.12%            libjvm.so
   0.10%         libc-2.31.so
   0.07%                     
   0.04%          interpreter
   0.03%         runtime stub
   0.03%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%     perf-2127823.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp521r1, messageLength = 512)

# Run progress: 75.00% complete, ETA 00:05:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14101.572 us/op
# Warmup Iteration   2: 2821.637 us/op
# Warmup Iteration   3: 2602.839 us/op
# Warmup Iteration   4: 2581.470 us/op
# Warmup Iteration   5: 2557.580 us/op
Iteration   1: 2557.166 us/op
Iteration   2: 2557.747 us/op
Iteration   3: 2556.795 us/op
Iteration   4: 2557.078 us/op
Iteration   5: 2556.639 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  2557.085 ±(99.9%) 1.643 us/op [Average]
  (min, avg, max) = (2556.639, 2557.085, 2557.747), stdev = 0.427
  CI (99.9%): [2555.442, 2558.728] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 473161 total address lines.
Perf output processed (skipped 62.272 seconds):
 Column 1: cycles (50617 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 1088 

 <region is too big to display, has 2729 lines, but threshold is 1000>
....................................................................................................
  51.56%  <total for region 1>

....[Hottest Regions]...............................................................................
  51.56%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 1088 
   6.35%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 1130 
   6.05%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1112 
   1.74%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1089 
   1.51%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1301 
   1.39%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1301 
   1.36%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1301 
   1.36%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1301 
   1.31%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1512 
   1.27%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1060 
   1.19%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1512 
   1.14%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1301 
   1.14%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1181 
   1.03%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1181 
   0.92%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1090 
   0.87%      jvmci, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 1161 
   0.86%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1301 
   0.81%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1301 
   0.74%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1181 
   0.73%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1301 
  16.68%  <...other 706 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.56%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 1088 
  15.66%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1301 
   6.35%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 1130 
   6.21%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1112 
   4.59%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1181 
   4.36%      jvmci, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 1161 
   2.71%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1512 
   1.74%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1089 
   1.46%              kernel  [unknown] 
   1.27%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1060 
   0.92%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1090 
   0.86%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1233 
   0.65%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 1068 
   0.57%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1087 
   0.15%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1419 
   0.11%                      <unknown> 
   0.08%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier::of, version 2, compile id 1585 
   0.06%      jvmci, level 4  sun.security.provider.SHA::implDigest, version 2, compile id 1533 
   0.05%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1526 
   0.05%      jvmci, level 4  sun.security.ec.ECOperations::forParameters, version 2, compile id 1570 
   0.61%  <...other 114 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.06%      jvmci, level 4
   1.46%              kernel
   0.12%           libjvm.so
   0.11%                    
   0.10%        libc-2.31.so
   0.06%        runtime stub
   0.03%         interpreter
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp521r1, messageLength = 2048)

# Run progress: 83.33% complete, ETA 00:03:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13814.653 us/op
# Warmup Iteration   2: 2977.501 us/op
# Warmup Iteration   3: 2568.878 us/op
# Warmup Iteration   4: 2580.881 us/op
# Warmup Iteration   5: 2557.112 us/op
Iteration   1: 2554.390 us/op
Iteration   2: 2554.606 us/op
Iteration   3: 2555.395 us/op
Iteration   4: 2555.470 us/op
Iteration   5: 2553.858 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  2554.744 ±(99.9%) 2.639 us/op [Average]
  (min, avg, max) = (2553.858, 2554.744, 2555.470), stdev = 0.685
  CI (99.9%): [2552.104, 2557.383] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 487704 total address lines.
Perf output processed (skipped 62.083 seconds):
 Column 1: cycles (50626 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 1090 

 <region is too big to display, has 2731 lines, but threshold is 1000>
....................................................................................................
  51.48%  <total for region 1>

....[Hottest Regions]...............................................................................
  51.48%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 1090 
   6.26%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1120 
   6.05%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 1133 
   4.40%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   1.85%       jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1187 
   1.84%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1092 
   1.26%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1509 
   1.20%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1509 
   1.16%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1059 
   1.09%       jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1187 
   1.05%       jvmci, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 1167 
   1.02%       jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1187 
   0.92%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1093 
   0.91%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   0.88%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   0.77%       jvmci, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 1167 
   0.73%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   0.73%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   0.72%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   0.72%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 1067 
  14.94%  <...other 742 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.48%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 1090 
  15.72%       jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   6.47%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1120 
   6.05%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 1133 
   4.57%       jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1187 
   4.35%       jvmci, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 1167 
   2.68%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1509 
   1.84%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1092 
   1.40%               kernel  [unknown] 
   1.16%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1059 
   0.92%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1093 
   0.75%       jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1254 
   0.72%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 1067 
   0.57%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1089 
   0.18%       jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1434 
   0.15%         runtime stub  StubRoutines::sha512_implCompressMB 
   0.09%                       <unknown> 
   0.08%       jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier::of, version 2, compile id 1587 
   0.07%       jvmci, level 4  java.security.SecureRandom::nextBytes, version 2, compile id 1557 
   0.05%       jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::encode, version 2, compile id 1534 
   0.68%  <...other 138 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.92%       jvmci, level 4
   1.40%               kernel
   0.19%         runtime stub
   0.16%            libjvm.so
   0.09%         libc-2.31.so
   0.09%                     
   0.07%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.02%          interpreter
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.00%     perf-2127955.map
   0.00%          c1, level 3
   0.00%          c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign
# Parameters: (algorithm = secp521r1, messageLength = 16384)

# Run progress: 91.67% complete, ETA 00:01:56
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 16502.984 us/op
# Warmup Iteration   2: 3150.026 us/op
# Warmup Iteration   3: 2600.232 us/op
# Warmup Iteration   4: 2635.552 us/op
# Warmup Iteration   5: 2594.476 us/op
Iteration   1: 2592.710 us/op
Iteration   2: 2593.211 us/op
Iteration   3: 2593.244 us/op
Iteration   4: 2593.663 us/op
Iteration   5: 2593.960 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign":
  2593.358 ±(99.9%) 1.837 us/op [Average]
  (min, avg, max) = (2592.710, 2593.358, 2593.960), stdev = 0.477
  CI (99.9%): [2591.521, 2595.194] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.signature.DsaEcSignatureBenchmark.sign:asm":
PrintAssembly processed: 505352 total address lines.
Perf output processed (skipped 62.299 seconds):
 Column 1: cycles (50651 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 1100 

 <region is too big to display, has 2729 lines, but threshold is 1000>
....................................................................................................
  50.71%  <total for region 1>

....[Hottest Regions]...............................................................................
  50.71%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 1100 
   6.09%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 1142 
   5.93%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1128 
   2.20%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   1.90%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   1.64%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1101 
   1.31%        runtime stub  StubRoutines::sha512_implCompressMB 
   1.30%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1055 
   1.27%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   1.23%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1534 
   1.19%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1534 
   1.11%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1197 
   1.09%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1197 
   0.95%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   0.94%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   0.90%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1102 
   0.81%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   0.70%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   0.67%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   0.63%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
  17.43%  <...other 792 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.71%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::mult, version 2, compile id 1100 
  15.67%      jvmci, level 4  sun.security.util.math.IntegerModuloP$MultiplicativeInverser$Default::inverse, version 3, compile id 1298 
   6.13%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1128 
   6.09%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::square, version 2, compile id 1142 
   4.42%      jvmci, level 4  sun.security.ec.ECOperations::setDouble, version 2, compile id 1197 
   4.19%      jvmci, level 4  sun.security.util.math.intpoly.P521OrderField::carryReduce, version 2, compile id 1183 
   2.65%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier$Default::pointMultiply, version 3, compile id 1534 
   1.70%              kernel  [unknown] 
   1.64%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setSum, version 4, compile id 1101 
   1.45%        runtime stub  StubRoutines::sha512_implCompressMB 
   1.30%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setDifference, version 2, compile id 1055 
   0.90%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setValue, version 2, compile id 1102 
   0.73%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 2, compile id 1257 
   0.63%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial$MutableElement::setProduct, version 2, compile id 1099 
   0.61%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomialP521::carryReduce, version 2, compile id 1063 
   0.16%                      <unknown> 
   0.16%      jvmci, level 4  sun.security.ec.ECOperations::setSum, version 3, compile id 1495 
   0.07%      jvmci, level 4  java.security.SecureRandom::nextBytes, version 2, compile id 1585 
   0.06%      jvmci, level 4  sun.security.ec.ECOperations$PointMultiplier::of, version 2, compile id 1619 
   0.05%      jvmci, level 4  sun.security.util.math.intpoly.IntegerPolynomial::limbsToByteArray, version 2, compile id 1562 
   0.70%  <...other 118 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.29%      jvmci, level 4
   1.70%              kernel
   1.47%        runtime stub
   0.16%                    
   0.16%           libjvm.so
   0.11%        libc-2.31.so
   0.03%         interpreter
   0.03%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-2128020.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:23:21

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
DsaEcSignatureBenchmark.sign        secp256r1               64  avgt    5   249.572 ± 0.249  us/op
DsaEcSignatureBenchmark.sign:asm    secp256r1               64  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp256r1              512  avgt    5   250.088 ± 0.278  us/op
DsaEcSignatureBenchmark.sign:asm    secp256r1              512  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp256r1             2048  avgt    5   255.698 ± 0.584  us/op
DsaEcSignatureBenchmark.sign:asm    secp256r1             2048  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp256r1            16384  avgt    5   303.502 ± 0.482  us/op
DsaEcSignatureBenchmark.sign:asm    secp256r1            16384  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp384r1               64  avgt    5  1561.149 ± 1.964  us/op
DsaEcSignatureBenchmark.sign:asm    secp384r1               64  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp384r1              512  avgt    5  1561.026 ± 1.566  us/op
DsaEcSignatureBenchmark.sign:asm    secp384r1              512  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp384r1             2048  avgt    5  1566.186 ± 0.366  us/op
DsaEcSignatureBenchmark.sign:asm    secp384r1             2048  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp384r1            16384  avgt    5  1599.221 ± 1.530  us/op
DsaEcSignatureBenchmark.sign:asm    secp384r1            16384  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp521r1               64  avgt    5  2550.003 ± 1.899  us/op
DsaEcSignatureBenchmark.sign:asm    secp521r1               64  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp521r1              512  avgt    5  2557.085 ± 1.643  us/op
DsaEcSignatureBenchmark.sign:asm    secp521r1              512  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp521r1             2048  avgt    5  2554.744 ± 2.639  us/op
DsaEcSignatureBenchmark.sign:asm    secp521r1             2048  avgt            NaN            ---
DsaEcSignatureBenchmark.sign        secp521r1            16384  avgt    5  2593.358 ± 1.837  us/op
DsaEcSignatureBenchmark.sign:asm    secp521r1            16384  avgt            NaN            ---
