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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark.read
# Parameters: (chunkSize = _1_KB, fileSize = _64_MB)

# Run progress: 0.00% complete, ETA 00:01:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 186.090 ns/op
# Warmup Iteration   2: 184.888 ns/op
# Warmup Iteration   3: 184.028 ns/op
# Warmup Iteration   4: 184.325 ns/op
# Warmup Iteration   5: 184.080 ns/op
Iteration   1: 183.280 ns/op
Iteration   2: 183.275 ns/op
Iteration   3: 183.254 ns/op
Iteration   4: 183.243 ns/op
Iteration   5: 184.083 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark.read":
  183.427 ±(99.9%) 1.413 ns/op [Average]
  (min, avg, max) = (183.243, 183.427, 184.083), stdev = 0.367
  CI (99.9%): [182.014, 184.840] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark.read:asm":
PrintAssembly processed: 225478 total address lines.
Perf output processed (skipped 60.774 seconds):
 Column 1: cycles (50990 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::jbyte_disjoint_arraycopy 

                   --------------------------------------------------------------------------------
                   - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   StubRoutines::jbyte_disjoint_arraycopy [0x00007fcf62c13d40, 0x00007fcf62c13df7] (183 bytes)
                   --------------------------------------------------------------------------------
                     0x00007fcf62c13d40:   push   %rbp
                     0x00007fcf62c13d41:   mov    %rsp,%rbp
   0.00%             0x00007fcf62c13d44:   mov    %rdx,%rcx
   0.19%             0x00007fcf62c13d47:   shr    $0x3,%rdx
                     0x00007fcf62c13d4b:   lea    -0x8(%rdi,%rdx,8),%rdi
                     0x00007fcf62c13d50:   lea    -0x8(%rsi,%rdx,8),%rsi
                     0x00007fcf62c13d55:   neg    %rdx
   0.21%  ╭          0x00007fcf62c13d58:   jmp    0x00007fcf62c13dc8
          │↗     ↗   0x00007fcf62c13d5d:   mov    0x8(%rdi,%rdx,8),%rax
          ││     │   0x00007fcf62c13d62:   mov    %rax,0x8(%rsi,%rdx,8)
          ││     │   0x00007fcf62c13d67:   inc    %rdx
          │╰     │   0x00007fcf62c13d6a:   jne    0x00007fcf62c13d5d
   0.20%  │      │↗  0x00007fcf62c13d6c:   test   $0x4,%cl
          │ ╭    ││  0x00007fcf62c13d6f:   je     0x00007fcf62c13d7f
          │ │    ││  0x00007fcf62c13d71:   mov    0x8(%rdi),%eax
          │ │    ││  0x00007fcf62c13d74:   mov    %eax,0x8(%rsi)
          │ │    ││  0x00007fcf62c13d77:   add    $0x4,%rdi
          │ │    ││  0x00007fcf62c13d7b:   add    $0x4,%rsi
   0.21%  │ ↘    ││  0x00007fcf62c13d7f:   test   $0x2,%cl
          │  ╭   ││  0x00007fcf62c13d82:   je     0x00007fcf62c13d94
          │  │   ││  0x00007fcf62c13d84:   mov    0x8(%rdi),%ax
          │  │   ││  0x00007fcf62c13d88:   mov    %ax,0x8(%rsi)
          │  │   ││  0x00007fcf62c13d8c:   add    $0x2,%rdi
          │  │   ││  0x00007fcf62c13d90:   add    $0x2,%rsi
   0.21%  │  ↘   ││  0x00007fcf62c13d94:   test   $0x1,%cl
          │   ╭  ││  0x00007fcf62c13d97:   je     0x00007fcf62c13d9f
          │   │  ││  0x00007fcf62c13d99:   mov    0x8(%rdi),%al
          │   │  ││  0x00007fcf62c13d9c:   mov    %al,0x8(%rsi)
   0.22%  │   ↘  ││  0x00007fcf62c13d9f:   xor    %rax,%rax
          │      ││  0x00007fcf62c13da2:   vzeroupper 
   0.20%  │      ││  0x00007fcf62c13da5:   leave  
   0.21%  │      ││  0x00007fcf62c13da6:   ret    
          │      ││  0x00007fcf62c13da7:   nopw   0x0(%rax,%rax,1)
   0.71%  │    ↗ ││  0x00007fcf62c13db0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
   2.98%  │    │ ││  0x00007fcf62c13db6:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
   2.29%  │    │ ││  0x00007fcf62c13dbc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
  26.16%  │    │ ││  0x00007fcf62c13dc2:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
   2.67%  ↘    │ ││  0x00007fcf62c13dc8:   add    $0x8,%rdx
               ╰ ││  0x00007fcf62c13dcc:   jle    0x00007fcf62c13db0
   0.04%         ││  0x00007fcf62c13dce:   sub    $0x4,%rdx
                ╭││  0x00007fcf62c13dd2:   jg     0x00007fcf62c13de8
                │││  0x00007fcf62c13dd8:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
                │││  0x00007fcf62c13dde:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
                │││  0x00007fcf62c13de4:   add    $0x4,%rdx
   0.03%        ↘││  0x00007fcf62c13de8:   sub    $0x4,%rdx
                 ╰│  0x00007fcf62c13dec:   jl     0x00007fcf62c13d5d
   0.02%          ╰  0x00007fcf62c13df2:   jmp    0x00007fcf62c13d6c
                   --------------------------------------------------------------------------------
                   - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   StubRoutines::jbyte_arraycopy [0x00007fcf62c13e00, 0x00007fcf62c13ec2] (194 bytes)
                   --------------------------------------------------------------------------------
   0.20%             0x00007fcf62c13e00:   push   %rbp
   0.00%             0x00007fcf62c13e01:   mov    %rsp,%rbp
....................................................................................................
  36.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 4, compile id 992 

                  # {method} {0x00007fcee347e450} &apos;read&apos; &apos;()[B&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/diskio/ByteArrayInputStreamBenchmark&apos;
                  #           [sp+0x30]  (sp of caller)
                  0x00007fcf632493c0:   mov    0x8(%rsi),%r10d
                  0x00007fcf632493c4:   movabs $0x7fcee7000000,%r12
                  0x00007fcf632493ce:   add    %r12,%r10
                  0x00007fcf632493d1:   xor    %r12,%r12
                  0x00007fcf632493d4:   cmp    %r10,%rax
                  0x00007fcf632493d7:   jne    0x00007fcf62c2f080           ;   {runtime_call ic_miss_stub}
                  0x00007fcf632493dd:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.01%          0x00007fcf632493e0:   mov    %eax,-0x14000(%rsp)
   0.20%          0x00007fcf632493e7:   sub    $0x28,%rsp
                  0x00007fcf632493eb:   nop
   0.01%          0x00007fcf632493ec:   cmpl   $0x1,0x20(%r15)
   0.21%          0x00007fcf632493f4:   jne    0x00007fcf632495d5
                  0x00007fcf632493fa:   mov    %rbp,0x20(%rsp)
                  0x00007fcf632493ff:   mov    0x10(%rsi),%edx              ; ImmutableOopMap {rsi=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@0 (line 101)
   0.02%          0x00007fcf63249402:   mov    0x18(,%rdx,8),%r10d          ; implicit exception: dispatches to 0x00007fcf632495fa
   0.20%          0x00007fcf6324940a:   mov    0x18(%rsi),%r11d             ;*getfield bais {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@11 (line 102)
                  0x00007fcf6324940e:   test   %r11d,%r11d
                  0x00007fcf63249411:   je     0x00007fcf63249585           ;*invokevirtual read {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
                  0x00007fcf63249417:   mov    0x1b8(%r15),%r8
   0.01%          0x00007fcf6324941e:   mov    %r10d,%edx
   0.22%          0x00007fcf63249421:   lea    0x17(%rdx),%rdx
                  0x00007fcf63249425:   and    $0xfffffffffffffff8,%rdx
                  0x00007fcf63249429:   mov    %rdx,%rcx
   0.01%          0x00007fcf6324942c:   add    %r8,%rcx
   0.17%          0x00007fcf6324942f:   cmp    0x1c8(%r15),%rcx
          ╭       0x00007fcf63249436:   ja     0x00007fcf6324951d
          │       0x00007fcf6324943c:   mov    %rcx,0x1b8(%r15)
   0.00%  │       0x00007fcf63249443:   prefetchw 0xc0(%rdx,%r8,1)
   0.32%  │       0x00007fcf6324944c:   prefetchw 0x100(%rdx,%r8,1)
   0.32%  │       0x00007fcf63249455:   prefetchw 0x140(%rdx,%r8,1)
   0.06%  │       0x00007fcf6324945e:   prefetchw 0x180(%rdx,%r8,1)
   0.04%  │       0x00007fcf63249467:   movq   $0x1,(%r8)
   0.01%  │       0x00007fcf6324946e:   movl   $0x22c0,0x8(%r8)             ;   {metadata({type array byte})}
   0.15%  │       0x00007fcf63249476:   mov    %r10d,0xc(%r8)
          │       0x00007fcf6324947a:   lea    -0x10(%rdx),%r9
   0.00%  │       0x00007fcf6324947e:   xchg   %ax,%ax
   0.01%  │       0x00007fcf63249480:   cmp    $0x800,%r9
          │╭      0x00007fcf63249487:   jae    0x00007fcf63249549
   0.21%  ││      0x00007fcf6324948d:   mov    $0x10,%rcx
   0.01%  ││╭     0x00007fcf63249494:   jmp    0x00007fcf632494ac
          │││     0x00007fcf63249499:   nopl   0x0(%rax)
  23.46%  │││↗    0x00007fcf632494a0:   movq   $0x0,(%r8,%rcx,1)
   4.13%  ││││    0x00007fcf632494a8:   lea    0x8(%rcx),%rcx
   0.34%  ││↘│    0x00007fcf632494ac:   cmp    %rcx,%rdx
          ││ ╰    0x00007fcf632494af:   ja     0x00007fcf632494a0
   0.40%  ││   ↗  0x00007fcf632494b1:   mov    %rsi,0x10(%rsp)              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@7 (line 101)
   1.25%  ││  ↗│  0x00007fcf632494b6:   shl    $0x3,%r11                    ;*getfield bais {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@11 (line 102)
          ││  ││  0x00007fcf632494ba:   mov    %r11,%rsi
          ││  ││  0x00007fcf632494bd:   mov    %r8,%rdx
          ││  ││  0x00007fcf632494c0:   mov    $0x0,%ecx
   0.17%  ││  ││  0x00007fcf632494c5:   mov    %r8,0x8(%rsp)
          ││  ││  0x00007fcf632494ca:   mov    %r10d,%r8d                   ;*invokevirtual read {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - java.io.InputStream::read@5 (line 220)
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
          ││  ││  0x00007fcf632494cd:   xchg   %ax,%ax
          ││  ││  0x00007fcf632494cf:   call   0x00007fcf63248840           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          ││  ││                                                            ;*invokevirtual read {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - java.io.InputStream::read@5 (line 220)
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
          ││  ││                                                            ;   {optimized virtual_call}
   0.19%  ││  ││  0x00007fcf632494d4:   nopl   0x10002c4(%rax,%rax,1)       ;   {other}
          ││  ││  0x00007fcf632494dc:   nopl   0x0(%rax)
          ││  ││  0x00007fcf632494e0:   cmp    $0xffffffff,%eax
          ││  ││  0x00007fcf632494e3:   je     0x00007fcf6324955e           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@21 (line 104)
   0.01%  ││  ││  0x00007fcf632494e9:   mov    0x10(%rsp),%rbx
   0.18%  ││  ││  0x00007fcf632494ee:   mov    0x10(%rbx),%esi              ; ImmutableOopMap {rbx=Oop [8]=Oop }
          ││  ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││  ││                                                            ; - (reexecute) java.io.InputStream::read@8 (line 220)
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@15 (line 102)
          ││  ││  0x00007fcf632494f1:   cmp    0x18(,%rsi,8),%eax           ; implicit exception: dispatches to 0x00007fcf6324961d
          ││  ││  0x00007fcf632494f8:   jne    0x00007fcf632495ad           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@46 (line 110)
   0.22%  ││  ││  0x00007fcf632494fe:   mov    0x8(%rsp),%rax               ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@47 (line 110)
          ││  ││  0x00007fcf63249503:   mov    0x20(%rsp),%rbp
          ││  ││  0x00007fcf63249508:   add    $0x28,%rsp
   0.01%  ││  ││  0x00007fcf6324950c:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  ││  0x00007fcf63249513:   ja     0x00007fcf632495e6
   0.18%  ││  ││  0x00007fcf63249519:   vzeroupper 
   0.20%  ││  ││  0x00007fcf6324951c:   ret                                 ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@7 (line 101)
          ↘│  ││  0x00007fcf6324951d:   mov    %rsi,%rbx
           │  ││  0x00007fcf63249520:   movabs $0x7fcee70022c0,%rsi         ;   {metadata({type array byte})}
           │  ││  0x00007fcf6324952a:   mov    %r10d,%edx
   0.00%   │  ││  0x00007fcf6324952d:   call   0x00007fcf62db6900           ; ImmutableOopMap {rbx=Oop r11=NarrowOop }
           │  ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@0 (line 101)
           │  ││                                                            ;   {runtime_call Stub&lt;new_array_or_null(KlassPointer,int)Object&gt;}
           │  ││  0x00007fcf63249532:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=Oop rbx=Oop r11=NarrowOop }
           │  ││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           │  ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@0 (line 101)
           │  ││  0x00007fcf6324953a:   test   %eax,(%rax)                  ; implicit exception: dispatches to 0x00007fcf63249640
   0.00%   │  ││  0x00007fcf6324953c:   mov    %rax,%r8
           │  ││  0x00007fcf6324953f:   mov    %rbx,0x10(%rsp)
           │  ╰│  0x00007fcf63249544:   jmp    0x00007fcf632494b6
           ↘   │  0x00007fcf63249549:   mov    %rsi,%rbx
               │  0x00007fcf6324954c:   mov    %r9,%rcx
               │  0x00007fcf6324954f:   lea    0x10(%r8),%rdi
               │  0x00007fcf63249553:   xor    %rax,%rax
               │  0x00007fcf63249556:   rep rex.W stos %al,%es:(%rdi)
               ╰  0x00007fcf63249559:   jmp    0x00007fcf632494b1           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read@7 (line 101)
                  0x00007fcf6324955e:   mov    0x10(%rsp),%rbx
....................................................................................................
  32.93%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.io.ByteArrayInputStream::read, version 4, compile id 991 

               # parm2:    r8        = int
               #           [sp+0x30]  (sp of caller)
               0x00007fcf63248820:   mov    0x8(%rsi),%r10d
               0x00007fcf63248824:   movabs $0x7fcee7000000,%r12
               0x00007fcf6324882e:   add    %r12,%r10
               0x00007fcf63248831:   xor    %r12,%r12
               0x00007fcf63248834:   cmp    %r10,%rax
               0x00007fcf63248837:   jne    0x00007fcf62c2f080           ;   {runtime_call ic_miss_stub}
               0x00007fcf6324883d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.22%       0x00007fcf63248840:   mov    %eax,-0x14000(%rsp)
   0.24%       0x00007fcf63248847:   sub    $0x28,%rsp
   0.09%       0x00007fcf6324884b:   nop
               0x00007fcf6324884c:   cmpl   $0x1,0x20(%r15)
   0.06%       0x00007fcf63248854:   jne    0x00007fcf63248d2c
   0.14%       0x00007fcf6324885a:   mov    %rbp,0x20(%rsp)
   0.08%       0x00007fcf6324885f:   mov    %rdx,%r11                    ; ImmutableOopMap {rsi=Oop r11=Oop }
                                                                         ;*synchronization entry
                                                                         ; - java.io.ByteArrayInputStream::read@-1 (line 174)
               0x00007fcf63248862:   mov    0xc(%r11),%r9d               ; implicit exception: dispatches to 0x00007fcf63248d66
   0.01%       0x00007fcf63248866:   mov    %ecx,%eax
   0.09%       0x00007fcf63248868:   or     %r9d,%eax                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.util.Preconditions::checkFromIndexSize@2 (line 396)
                                                                         ; - java.util.Objects::checkFromIndexSize@4 (line 437)
                                                                         ; - java.io.ByteArrayInputStream::read@4 (line 174)
   0.11%       0x00007fcf6324886b:   or     %r8d,%eax                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.util.Preconditions::checkFromIndexSize@4 (line 396)
                                                                         ; - java.util.Objects::checkFromIndexSize@4 (line 437)
                                                                         ; - java.io.ByteArrayInputStream::read@4 (line 174)
   0.09%       0x00007fcf6324886e:   test   %eax,%eax
               0x00007fcf63248870:   jl     0x00007fcf63248c67           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.util.Preconditions::checkFromIndexSize@5 (line 396)
                                                                         ; - java.util.Objects::checkFromIndexSize@4 (line 437)
                                                                         ; - java.io.ByteArrayInputStream::read@4 (line 174)
   0.07%       0x00007fcf63248876:   mov    %r9d,%eax
   0.01%       0x00007fcf63248879:   sub    %ecx,%eax                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.util.Preconditions::checkFromIndexSize@11 (line 396)
                                                                         ; - java.util.Objects::checkFromIndexSize@4 (line 437)
                                                                         ; - java.io.ByteArrayInputStream::read@4 (line 174)
   0.07%       0x00007fcf6324887b:   nopl   0x0(%rax,%rax,1)
               0x00007fcf63248880:   cmp    %eax,%r8d
               0x00007fcf63248883:   jg     0x00007fcf63248c67           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.internal.util.Preconditions::checkFromIndexSize@12 (line 396)
                                                                         ; - java.util.Objects::checkFromIndexSize@4 (line 437)
                                                                         ; - java.io.ByteArrayInputStream::read@4 (line 174)
   0.10%       0x00007fcf63248889:   mov    (%rsi),%r10
   0.04%       0x00007fcf6324888c:   lea    0x10(%rsp),%rbx
   0.12%       0x00007fcf63248891:   test   $0x2,%r10
          ╭    0x00007fcf63248898:   jne    0x00007fcf632489ba
   0.00%  │    0x00007fcf6324889e:   or     $0x1,%r10
   0.09%  │    0x00007fcf632488a2:   mov    %r10,(%rbx)
   0.03%  │    0x00007fcf632488a5:   mov    %r10,%rax
   0.10%  │    0x00007fcf632488a8:   lock cmpxchg %rbx,(%rsi)
  16.63%  │    0x00007fcf632488ad:   cmp    %r10,%rax
          │    0x00007fcf632488b0:   jne    0x00007fcf632489f8
          │    0x00007fcf632488b6:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.io.ByteArrayInputStream::read@0 (line 174)
   0.19%  │    0x00007fcf632488bd:   mov    0xc(%rsi),%r10d              ;*getfield pos {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.io.ByteArrayInputStream::read@9 (line 176)
          │    0x00007fcf632488c1:   mov    0x14(%rsi),%edi              ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.io.ByteArrayInputStream::read@13 (line 176)
   0.19%  │    0x00007fcf632488c4:   cmp    %r10d,%edi
          │    0x00007fcf632488c7:   jle    0x00007fcf63248af3           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.io.ByteArrayInputStream::read@16 (line 176)
          │    0x00007fcf632488cd:   sub    %r10d,%edi                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.io.ByteArrayInputStream::read@29 (line 180)
          │    0x00007fcf632488d0:   cmp    %edi,%r8d
          │    0x00007fcf632488d3:   jg     0x00007fcf63248cff           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.io.ByteArrayInputStream::read@35 (line 181)
          │    0x00007fcf632488d9:   nopl   0x0(%rax)
   0.24%  │    0x00007fcf632488e0:   cmp    $0x1,%r8d
          │    0x00007fcf632488e4:   jl     0x00007fcf63248cc0           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.io.ByteArrayInputStream::read@42 (line 184)
          │    0x00007fcf632488ea:   mov    0x18(%rsi),%edi              ; ImmutableOopMap {rsi=Oop rdi=NarrowOop r11=Oop }
          │                                                              ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) java.io.ByteArrayInputStream::read@0 (line 174)
          │    0x00007fcf632488ed:   mov    0xc(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007fcf63248d8d
          │    0x00007fcf632488f4:   test   %r10d,%r10d
          │    0x00007fcf632488f7:   jl     0x00007fcf63248c92
   0.20%  │    0x00007fcf632488fd:   data16 xchg %ax,%ax
          │    0x00007fcf63248900:   test   %ecx,%ecx
          │    0x00007fcf63248902:   jl     0x00007fcf63248cea
          │    0x00007fcf63248908:   sub    %r8d,%edx
          │    0x00007fcf6324890b:   cmp    %edx,%r10d
          │    0x00007fcf6324890e:   jg     0x00007fcf63248d14
   0.20%  │    0x00007fcf63248914:   sub    %r8d,%r9d
          │    0x00007fcf63248917:   cmp    %r9d,%ecx
          │    0x00007fcf6324891a:   jg     0x00007fcf63248cd5           ;* unwind (locked if synchronized)
          │                                                              ; - java.lang.System::arraycopy@-3
          │                                                              ; - java.io.ByteArrayInputStream::read@58 (line 187)
          │    0x00007fcf63248920:   mov    %rsi,(%rsp)
          │    0x00007fcf63248924:   shl    $0x3,%rdi                    ;*getfield buf {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.io.ByteArrayInputStream::read@48 (line 187)
   0.21%  │    0x00007fcf63248928:   mov    %r8d,%edx
          │    0x00007fcf6324892b:   lea    0x10(%rdi,%r10,1),%rdi
          │    0x00007fcf63248930:   lea    0x10(%r11,%rcx,1),%rsi       ;* unwind (locked if synchronized)
          │                                                              ; - java.lang.System::arraycopy@-3
          │                                                              ; - java.io.ByteArrayInputStream::read@58 (line 187)
          │    0x00007fcf63248935:   mov    %r8d,0xc(%rsp)               ;   {no_reloc}
   0.23%  │    0x00007fcf6324893a:   mov    %r10d,0x8(%rsp)
          │    0x00007fcf6324893f:   nop
          │    0x00007fcf63248940:   call   Stub::jbyte_arraycopy        ;   {runtime_call StubRoutines (final stubs)}
          │    0x00007fcf63248945:   nop
          │    0x00007fcf63248946:   mov    0xc(%rsp),%r8d
   0.25%  │    0x00007fcf6324894b:   add    0x8(%rsp),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.io.ByteArrayInputStream::read@67 (line 188)
          │    0x00007fcf63248950:   mov    (%rsp),%rdi
          │    0x00007fcf63248954:   mov    %r8d,0xc(%rdi)               ;*putfield pos {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.io.ByteArrayInputStream::read@68 (line 188)
          │    0x00007fcf63248958:   lea    0x10(%rsp),%r10
   0.19%  │    0x00007fcf6324895d:   mov    (%r10),%rsi
          │    0x00007fcf63248960:   test   %rsi,%rsi
          │╭   0x00007fcf63248963:   je     0x00007fcf632489b1
          ││   0x00007fcf63248969:   mov    (%rdi),%r11
   0.00%  ││   0x00007fcf6324896c:   test   $0x2,%r11
          ││   0x00007fcf63248973:   jne    0x00007fcf63248a25
   0.21%  ││   0x00007fcf63248979:   mov    %r10,%rax
          ││   0x00007fcf6324897c:   lock cmpxchg %rsi,(%rdi)
   4.60%  ││   0x00007fcf63248981:   jne    0x00007fcf63248a96
   0.01%  ││   0x00007fcf63248987:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - java.io.ByteArrayInputStream::read@-1 (line 174)
   0.22%  ││↗  0x00007fcf6324898e:   mov    0xc(%rsp),%eax               ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.io.ByteArrayInputStream::read@72 (line 189)
   0.01%  │││  0x00007fcf63248992:   mov    0x20(%rsp),%rbp
   0.17%  │││  0x00007fcf63248997:   add    $0x28,%rsp
          │││  0x00007fcf6324899b:   nopl   0x0(%rax,%rax,1)
          │││  0x00007fcf632489a0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007fcf632489a7:   ja     0x00007fcf63248d3c
   0.01%  │││  0x00007fcf632489ad:   vzeroupper 
   0.20%  │││  0x00007fcf632489b0:   ret    
          │↘│  0x00007fcf632489b1:   decq   0x550(%r15)
          │ ╰  0x00007fcf632489b8:   jmp    0x00007fcf6324898e           ;*synchronization entry
          │                                                              ; - java.io.ByteArrayInputStream::read@-1 (line 174)
          ↘    0x00007fcf632489ba:   mov    %r8d,0xc(%rsp)
               0x00007fcf632489bf:   mov    %rsi,%rdi
               0x00007fcf632489c2:   movq   $0x3,(%rbx)
               0x00007fcf632489c9:   mov    0x3e(%r10),%rsi
               0x00007fcf632489cd:   test   %rsi,%rsi
               0x00007fcf632489d0:   jne    0x00007fcf63248a7b
               0x00007fcf632489d6:   mov    $0x0,%rax
....................................................................................................
  25.74%  <total for region 3>

....[Hottest Regions]...............................................................................
  36.92%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
  32.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 4, compile id 992 
  25.74%       jvmci, level 4  java.io.ByteArrayInputStream::read, version 4, compile id 991 
   0.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.jmh_generated.ByteArrayInputStreamBenchmark_read_jmhTest::read_avgt_jmhStub, version 5, compile id 1021 
   0.30%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.09%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.09%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%            libjvm.so  G1CardSet::reset_table_scanner 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%            libjvm.so  G1CardSet::clear 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%         libc-2.31.so  __memset_avx2_erms 
   0.04%            libjvm.so  ObjArrayAllocator::initialize 
   0.04%               kernel  [unknown] 
   0.04%   libpthread-2.31.so  __pthread_mutex_trylock 
   2.47%  <...other 579 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  36.92%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
  32.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.ByteArrayInputStreamBenchmark::read, version 4, compile id 992 
  25.74%       jvmci, level 4  java.io.ByteArrayInputStream::read, version 4, compile id 991 
   1.72%               kernel  [unknown] 
   0.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.diskio.jmh_generated.ByteArrayInputStreamBenchmark_read_jmhTest::read_avgt_jmhStub, version 5, compile id 1021 
   0.15%                       <unknown> 
   0.12%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.09%         libc-2.31.so  __memset_avx2_unaligned_erms 
   0.09%            libjvm.so  G1CardSet::reset_table_scanner 
   0.06%            libjvm.so  ObjArrayAllocator::initialize 
   0.04%            libjvm.so  G1CardSet::clear 
   0.04%            libjvm.so  HeapRegionManager::allocate_free_region 
   0.04%         libc-2.31.so  __memset_avx2_erms 
   0.04%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.04%            libjvm.so  TypeArrayKlass::allocate_common 
   0.04%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.04%            libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.03%            libjvm.so  HeapRegionManager::par_iterate 
   0.03%            libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.03%            libjvm.so  HeapRegionClaimer::claim_region 
   1.19%  <...other 246 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  59.28%       jvmci, level 4
  36.92%         runtime stub
   1.72%               kernel
   1.41%            libjvm.so
   0.23%         libc-2.31.so
   0.15%                     
   0.10%  libjvmcicompiler.so
   0.09%   libpthread-2.31.so
   0.03%           ld-2.31.so
   0.03%               [vdso]
   0.02%       hsdis-amd64.so
   0.01%     perf-2105127.map
   0.00%          c1, level 3
   0.00%          interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:01:55

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

Benchmark                               (chunkSize)  (fileSize)  Mode  Cnt    Score   Error  Units
ByteArrayInputStreamBenchmark.read            _1_KB      _64_MB  avgt    5  183.427 ± 1.413  ns/op
ByteArrayInputStreamBenchmark.read:asm        _1_KB      _64_MB  avgt           NaN            ---
