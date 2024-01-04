# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1143.785 us/op
# Warmup Iteration   2: 1123.074 us/op
# Warmup Iteration   3: 1122.244 us/op
# Warmup Iteration   4: 1113.844 us/op
# Warmup Iteration   5: 1117.593 us/op
Iteration   1: 1119.003 us/op
Iteration   2: 1121.742 us/op
Iteration   3: 1117.293 us/op
Iteration   4: 1121.335 us/op
Iteration   5: 1154.009 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop":
  1126.676 ±(99.9%) 59.245 us/op [Average]
  (min, avg, max) = (1117.293, 1126.676, 1154.009), stdev = 15.386
  CI (99.9%): [1067.431, 1185.921] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop:asm":
PrintAssembly processed: 217374 total address lines.
Perf output processed (skipped 78.848 seconds):
 Column 1: cycles (51153 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 1036 

                          0x00007f3907194b8e:   add    %r12,%r10
                          0x00007f3907194b91:   xor    %r12,%r12
                          0x00007f3907194b94:   cmp    %r10,%rax
                          0x00007f3907194b97:   jne    0x00007f3906af9080           ;   {runtime_call ic_miss_stub}
                          0x00007f3907194b9d:   data16 xchg %ax,%ax
                        [Verified Entry Point]
                          0x00007f3907194ba0:   mov    %eax,-0x14000(%rsp)
                          0x00007f3907194ba7:   sub    $0x18,%rsp
                          0x00007f3907194bab:   nop
                          0x00007f3907194bac:   cmpl   $0x1,0x20(%r15)
   0.00%                  0x00007f3907194bb4:   jne    0x00007f3907194e8b
                          0x00007f3907194bba:   mov    %rbp,0x10(%rsp)
                          0x00007f3907194bbf:   mov    0xc(%rsi),%r10d              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@4 (line 88)
                          0x00007f3907194bc3:   cmp    $0x2,%r10d
          ╭               0x00007f3907194bc7:   jl     0x00007f3907194d2b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
          │               0x00007f3907194bcd:   mov    0x10(%rsi),%r11d             ; ImmutableOopMap {rsi=Oop r11=NarrowOop }
          │                                                                         ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@0 (line 88)
          │               0x00007f3907194bd1:   mov    0xc(,%r11,8),%r8d            ; implicit exception: dispatches to 0x00007f3907194eaf
          │               0x00007f3907194bd9:   lea    -0x2(%r10),%r9d
          │               0x00007f3907194bdd:   data16 xchg %ax,%ax
          │               0x00007f3907194be0:   cmp    $0x3,%r10d
          │╭              0x00007f3907194be4:   jl     0x00007f3907194bfd
          ││              0x00007f3907194bea:   cmp    %r9d,%r8d
          ││╭             0x00007f3907194bed:   jbe    0x00007f3907194e0b
          │││             0x00007f3907194bf3:   cmp    $0x2,%r8d
          │││             0x00007f3907194bf7:   jb     0x00007f3907194e79           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@22 (line 89)
          │↘│             0x00007f3907194bfd:   mov    %r9d,%r9d
          │ │             0x00007f3907194c00:   inc    %r9
          │ │             0x00007f3907194c03:   cmp    $0x3,%r10d
          │ │╭            0x00007f3907194c07:   jl     0x00007f3907194c2a
          │ ││            0x00007f3907194c0d:   mov    %r8d,%ecx
          │ ││            0x00007f3907194c10:   cmp    %r9,%rcx
          │ ││            0x00007f3907194c13:   jbe    0x00007f3907194e3a
          │ ││            0x00007f3907194c19:   nopl   0x0(%rax)
          │ ││            0x00007f3907194c20:   cmp    $0x3,%r8d
          │ ││            0x00007f3907194c24:   jb     0x00007f3907194e5e           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@41 (line 90)
          │ │↘            0x00007f3907194c2a:   mov    0x18(%rsi),%ecx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r11=NarrowOop }
          │ │                                                                       ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@0 (line 88)
          │ │             0x00007f3907194c2d:   mov    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007f3907194ed2
          │ │             0x00007f3907194c34:   cmp    $0x3,%r10d
          │ │ ╭           0x00007f3907194c38:   jl     0x00007f3907194c52
          │ │ │           0x00007f3907194c3e:   mov    %ebx,%edi
          │ │ │           0x00007f3907194c40:   cmp    %r9,%rdi
          │ │ │           0x00007f3907194c43:   jbe    0x00007f3907194e82
          │ │ │           0x00007f3907194c49:   cmp    $0x3,%ebx
          │ │ │           0x00007f3907194c4c:   jb     0x00007f3907194e4c           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@47 (line 90)
          │ │ ↘           0x00007f3907194c52:   mov    0x14(%rsi),%edi              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop rdi=NarrowOop r11=NarrowOop }
          │ │                                                                       ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@0 (line 88)
          │ │             0x00007f3907194c55:   mov    0xc(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007f3907194ef5
          │ │             0x00007f3907194c5c:   nopl   0x0(%rax)
          │ │             0x00007f3907194c60:   cmp    $0x3,%r10d
          │ │  ╭          0x00007f3907194c64:   jl     0x00007f3907194c7e
          │ │  │          0x00007f3907194c6a:   mov    %edx,%eax
          │ │  │          0x00007f3907194c6c:   cmp    %r9,%rax
          │ │  │          0x00007f3907194c6f:   jbe    0x00007f3907194e31
          │ │  │          0x00007f3907194c75:   cmp    $0x3,%edx
          │ │  │          0x00007f3907194c78:   jb     0x00007f3907194e43           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
          │ │  ↘          0x00007f3907194c7e:   xchg   %ax,%ax
          │ │             0x00007f3907194c80:   cmp    $0x2,%r8d
          │ │             0x00007f3907194c84:   jb     0x00007f3907194e55           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@22 (line 89)
          │ │             0x00007f3907194c8a:   cmp    $0x2,%ebx
          │ │             0x00007f3907194c8d:   jb     0x00007f3907194e67           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@47 (line 90)
          │ │             0x00007f3907194c93:   cmp    $0x2,%edx
          │ │             0x00007f3907194c96:   jb     0x00007f3907194e70           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
          │ │                                                                       ;   {no_reloc}
          │ │             0x00007f3907194c9c:   mov    0x14(,%rcx,8),%r8d           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
          │ │             0x00007f3907194ca4:   add    0x10(,%r11,8),%r8d           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
          │ │             0x00007f3907194cac:   mov    %r8d,0x14(,%r11,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
          │ │             0x00007f3907194cb4:   add    0x14(,%rcx,8),%r8d           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
          │ │             0x00007f3907194cbc:   mov    %r8d,0x14(,%rdi,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
          │ │             0x00007f3907194cc4:   shl    $0x3,%rdi                    ;*getfield B {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@32 (line 90)
          │ │             0x00007f3907194cc8:   shl    $0x3,%rcx                    ;*getfield C {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@24 (line 89)
          │ │             0x00007f3907194ccc:   shl    $0x3,%r11                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@11 (line 89)
          │ │             0x00007f3907194cd0:   cmp    $0x4,%r10d
          │ │             0x00007f3907194cd4:   mov    $0x3,%r8d
          │ │             0x00007f3907194cda:   cmovl  %r10d,%r8d
          │ │             0x00007f3907194cde:   mov    $0x2,%r9d
          │ │   ╭         0x00007f3907194ce4:   jmp    0x00007f3907194d1c           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@2 (line 88)
          │ │   │         0x00007f3907194ce9:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │   │         0x00007f3907194cf4:   data16 data16 xchg %ax,%ax
          │ │   │         0x00007f3907194cf8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │   │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
          │ │   │ ↗       0x00007f3907194d00:   mov    0x10(%rcx,%r9,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │   │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
          │ │   │ │       0x00007f3907194d05:   add    0xc(%r11,%r9,4),%ebx         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
          │ │   │ │       0x00007f3907194d0a:   mov    %ebx,0x10(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │   │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
          │ │   │ │       0x00007f3907194d0f:   add    0x10(%rcx,%r9,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │   │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
          │ │   │ │       0x00007f3907194d14:   mov    %ebx,0x10(%rdi,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │   │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
          │ │   │ │       0x00007f3907194d19:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │   │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@50 (line 88)
          │ │   ↘ │       0x00007f3907194d1c:   nopl   0x0(%rax)
          │ │     │       0x00007f3907194d20:   cmp    %r9d,%r8d
          │ │    ╭│       0x00007f3907194d23:   jle    0x00007f3907194d4e
          │ │    │╰       0x00007f3907194d29:   jmp    0x00007f3907194d00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
   0.00%  ↘ │    │    ↗   0x00007f3907194d2b:   mov    0x10(%rsp),%rbp
   0.00%    │    │    │   0x00007f3907194d30:   add    $0x18,%rsp
            │    │    │   0x00007f3907194d34:   nopl   0x0(%rax,%rax,1)
            │    │    │   0x00007f3907194d3c:   data16 data16 xchg %ax,%ax
            │    │    │   0x00007f3907194d40:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │    │    │   0x00007f3907194d47:   ja     0x00007f3907194e9b
            │    │    │   0x00007f3907194d4d:   ret                                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
            │    │    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@2 (line 88)
            │    ↘    │   0x00007f3907194d4e:   lea    -0x4(%r10),%r8d
            │      ╭  │   0x00007f3907194d52:   jmp    0x00007f3907194dc2
            │      │  │   0x00007f3907194d57:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │      │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
   0.14%    │      │↗ │   0x00007f3907194d60:   mov    0x10(%rcx,%r9,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.01%    │      ││ │   0x00007f3907194d65:   movslq %r9d,%rdx
   4.74%    │      ││ │   0x00007f3907194d68:   add    0xc(%r11,%rdx,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   3.77%    │      ││ │   0x00007f3907194d6d:   mov    %ebx,0x10(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
  10.28%    │      ││ │   0x00007f3907194d72:   add    0x10(%rcx,%r9,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.03%    │      ││ │   0x00007f3907194d77:   mov    %ebx,0x10(%rdi,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.85%    │      ││ │   0x00007f3907194d7c:   mov    0x14(%rcx,%rdx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.02%    │      ││ │   0x00007f3907194d80:   add    0x10(%r11,%r9,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   9.29%    │      ││ │   0x00007f3907194d85:   mov    %ebx,0x14(%r11,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
  10.04%    │      ││ │   0x00007f3907194d8a:   add    0x14(%rcx,%rdx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.04%    │      ││ │   0x00007f3907194d8e:   mov    %ebx,0x14(%rdi,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.91%    │      ││ │   0x00007f3907194d92:   mov    0x18(%rcx,%rdx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.00%    │      ││ │   0x00007f3907194d96:   add    0x14(%r11,%rdx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   8.98%    │      ││ │   0x00007f3907194d9b:   mov    %ebx,0x18(%r11,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   9.81%    │      ││ │   0x00007f3907194da0:   add    0x18(%rcx,%rdx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.05%    │      ││ │   0x00007f3907194da4:   mov    %ebx,0x18(%rdi,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.96%    │      ││ │   0x00007f3907194da8:   mov    0x1c(%rcx,%rdx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
   0.00%    │      ││ │   0x00007f3907194dac:   add    0x18(%r11,%rdx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   8.97%    │      ││ │   0x00007f3907194db1:   mov    %ebx,0x1c(%r11,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   9.72%    │      ││ │   0x00007f3907194db6:   add    0x1c(%rcx,%rdx,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
   0.04%    │      ││ │   0x00007f3907194dba:   mov    %ebx,0x1c(%rdi,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   4.84%    │      ││ │   0x00007f3907194dbe:   lea    0x4(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │      ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@50 (line 88)
   0.00%    │      ↘│ │   0x00007f3907194dc2:   cmp    %r9d,%r8d
            │       ╰ │   0x00007f3907194dc5:   jg     0x00007f3907194d60
            │        ╭│   0x00007f3907194dc7:   jmp    0x00007f3907194e00
            │        ││   0x00007f3907194dcc:   data16 data16 nopw 0x0(%rax,%rax,1)
            │        ││   0x00007f3907194dd7:   data16 data16 xchg %ax,%ax
            │        ││   0x00007f3907194ddb:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │        ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
            │        ││↗  0x00007f3907194de0:   mov    0x10(%rcx,%r9,4),%r8d        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@28 (line 89)
            │        │││  0x00007f3907194de5:   movslq %r9d,%rbx
            │        │││  0x00007f3907194de8:   add    0xc(%r11,%rbx,4),%r8d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
            │        │││  0x00007f3907194ded:   mov    %r8d,0x10(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
            │        │││  0x00007f3907194df2:   add    0x10(%rcx,%r9,4),%r8d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@48 (line 90)
            │        │││  0x00007f3907194df7:   mov    %r8d,0x10(%rdi,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
            │        │││  0x00007f3907194dfc:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@50 (line 88)
            │        │││  0x00007f3907194dff:   nop
   0.00%    │        ↘││  0x00007f3907194e00:   cmp    %r9d,%r10d
            │         ╰│  0x00007f3907194e03:   jle    0x00007f3907194d2b
            │          ╰  0x00007f3907194e09:   jmp    0x00007f3907194de0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@7 (line 88)
            ↘             0x00007f3907194e0b:   mov    $0x18,%r10
                          0x00007f3907194e12:   movl   $0xffffffe5,0x484(%r15)      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@22 (line 89)
                          0x00007f3907194e1d:   mov    %r10,0x490(%r15)
                          0x00007f3907194e24:   call   0x00007f3906aff17a           ; ImmutableOopMap {rsi=Oop }
                                                                                    ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@0 (line 88)
....................................................................................................
  95.51%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.51%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 1036 
   0.60%                kernel  [unknown] 
   0.45%                kernel  [unknown] 
   0.30%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.87%  <...other 339 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.51%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 1036 
   3.64%                kernel  [unknown] 
   0.04%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  PerfLongVariant::sample 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%           interpreter  invokevirtual  182 invokevirtual  
   0.46%  <...other 159 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.52%        jvmci, level 4
   3.64%                kernel
   0.35%             libjvm.so
   0.24%             libc.so.6
   0.12%   libjvmcicompiler.so
   0.04%           interpreter
   0.04%        hsdis-amd64.so
   0.02%           c1, level 3
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.01%         perf-5038.map
   0.00%                [vdso]
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:02:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1692.225 us/op
# Warmup Iteration   2: 1699.311 us/op
# Warmup Iteration   3: 1656.443 us/op
# Warmup Iteration   4: 1657.154 us/op
# Warmup Iteration   5: 1661.898 us/op
Iteration   1: 1650.971 us/op
Iteration   2: 1653.513 us/op
Iteration   3: 1657.107 us/op
Iteration   4: 1664.188 us/op
Iteration   5: 1670.047 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission":
  1659.165 ±(99.9%) 30.257 us/op [Average]
  (min, avg, max) = (1650.971, 1659.165, 1670.047), stdev = 7.858
  CI (99.9%): [1628.908, 1689.422] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission:asm":
PrintAssembly processed: 216408 total address lines.
Perf output processed (skipped 77.777 seconds):
 Column 1: cycles (51189 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 5, compile id 1042 

                                    0x00007ff4c319d572:   mov    %r11d,%ecx
                                    0x00007ff4c319d575:   shl    $0x3,%rcx                    ;*getfield C {reexecute=0 rethrow=0 return_oop=0}
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@59 (line 106)
                                    0x00007ff4c319d579:   lea    -0x8(%r10),%ebx
                                    0x00007ff4c319d57d:   cmp    $0x80000008,%r10d
                                    0x00007ff4c319d584:   mov    $0x80000000,%edi
                                    0x00007ff4c319d589:   cmovl  %edi,%ebx
                                    0x00007ff4c319d58c:   cmp    $0x4,%r10d
                                    0x00007ff4c319d590:   mov    $0x3,%edi
                                    0x00007ff4c319d595:   cmovl  %r10d,%edi
   0.00%                            0x00007ff4c319d599:   lea    -0x2(%r10),%edx
                                    0x00007ff4c319d59d:   movslq %edx,%rdx
                                    0x00007ff4c319d5a0:   mov    %rdx,%rax
                                    0x00007ff4c319d5a3:   inc    %rax
                                    0x00007ff4c319d5a6:   cmp    $0x2,%r10d
          ╭                         0x00007ff4c319d5aa:   jl     0x00007ff4c319d756           ; ImmutableOopMap {rcx=Oop rsi=Oop r8=NarrowOop r9=Oop r11=NarrowOop }
          │                                                                                   ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@0 (line 101)
          │                         0x00007ff4c319d5b0:   mov    0xc(,%r8,8),%ebp             ; implicit exception: dispatches to 0x00007ff4c319da81
          │                         0x00007ff4c319d5b8:   mov    %ebp,%r13d
          │                         0x00007ff4c319d5bb:   nopl   0x0(%rax,%rax,1)
          │                         0x00007ff4c319d5c0:   cmp    $0x3,%r10d
          │╭                        0x00007ff4c319d5c4:   jl     0x00007ff4c319d5dc
          ││                        0x00007ff4c319d5ca:   cmp    %rdx,%r13
          ││                        0x00007ff4c319d5cd:   jbe    0x00007ff4c319d9e5
          ││                        0x00007ff4c319d5d3:   cmp    $0x2,%ebp
          ││                        0x00007ff4c319d5d6:   jb     0x00007ff4c319d9d9           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@22 (line 102)
          │↘                        0x00007ff4c319d5dc:   nopl   0x0(%rax)
          │                         0x00007ff4c319d5e0:   cmp    $0x3,%r10d
          │ ╭                       0x00007ff4c319d5e4:   jl     0x00007ff4c319d5fc
          │ │                       0x00007ff4c319d5ea:   cmp    %rax,%r13
          │ │╭                      0x00007ff4c319d5ed:   jbe    0x00007ff4c319d959           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
          │ ││                      0x00007ff4c319d5f3:   cmp    $0x3,%ebp
          │ ││                      0x00007ff4c319d5f6:   jb     0x00007ff4c319da1b           ; ImmutableOopMap {rcx=Oop rsi=Oop r8=NarrowOop r9=Oop r11=NarrowOop }
          │ ││                                                                                ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@0 (line 101)
          │ ↘│                      0x00007ff4c319d5fc:   mov    0xc(,%r11,8),%edx            ; implicit exception: dispatches to 0x00007ff4c319daa4
          │  │                      0x00007ff4c319d604:   cmp    $0x3,%r10d
          │  │╭                     0x00007ff4c319d608:   jl     0x00007ff4c319d629
          │  ││                     0x00007ff4c319d60e:   mov    %edx,%r13d
          │  ││                     0x00007ff4c319d611:   cmp    %rax,%r13
          │  ││                     0x00007ff4c319d614:   jbe    0x00007ff4c319da51
          │  ││                     0x00007ff4c319d61a:   nopw   0x0(%rax,%rax,1)
          │  ││                     0x00007ff4c319d620:   cmp    $0x3,%edx
          │  ││                     0x00007ff4c319d623:   jb     0x00007ff4c319da03           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  │↘                     0x00007ff4c319d629:   cmp    $0x2,%ebp
          │  │                      0x00007ff4c319d62c:   jb     0x00007ff4c319da45           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@22 (line 102)
          │  │                      0x00007ff4c319d632:   cmp    $0x2,%edx
          │  │                      0x00007ff4c319d635:   jb     0x00007ff4c319da37           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  │                                                                                ;   {no_reloc}
          │  │                      0x00007ff4c319d63b:   mov    0x10(,%r8,8),%edx            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@22 (line 102)
          │  │                      0x00007ff4c319d643:   add    0x14(,%r11,8),%edx           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
          │  │                      0x00007ff4c319d64b:   mov    %edx,0x14(,%r8,8)            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
          │  │                      0x00007ff4c319d653:   mov    $0x2,%edx
          │  │ ╭                    0x00007ff4c319d658:   jmp    0x00007ff4c319d750           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@2 (line 101)
          │  │ │                    0x00007ff4c319d65d:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
          │  │ │↗                   0x00007ff4c319d660:   mov    0x10(%rcx,%rdx,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
   1.72%  │  │ ││                   0x00007ff4c319d664:   movslq %edx,%r13
   0.00%  │  │ ││                   0x00007ff4c319d667:   add    0xc(%r9,%r13,4),%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   4.45%  │  │ ││                   0x00007ff4c319d66c:   mov    %ebp,0x10(%r9,%rdx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.31%  │  │ ││                   0x00007ff4c319d671:   mov    0x14(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
   0.01%  │  │ ││                   0x00007ff4c319d676:   add    0x10(%r9,%rdx,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   6.03%  │  │ ││                   0x00007ff4c319d67b:   mov    %ebp,0x14(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.32%  │  │ ││                   0x00007ff4c319d680:   mov    0x18(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
   0.00%  │  │ ││                   0x00007ff4c319d685:   add    0x14(%r9,%r13,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   6.01%  │  │ ││                   0x00007ff4c319d68a:   mov    %ebp,0x18(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.14%  │  │ ││                   0x00007ff4c319d68f:   mov    0x1c(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  │ ││                   0x00007ff4c319d694:   add    0x18(%r9,%r13,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   5.88%  │  │ ││                   0x00007ff4c319d699:   mov    %ebp,0x1c(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.27%  │  │ ││                   0x00007ff4c319d69e:   mov    0x20(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  │ ││                   0x00007ff4c319d6a3:   add    0x1c(%r9,%r13,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   6.04%  │  │ ││                   0x00007ff4c319d6a8:   mov    %ebp,0x20(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.24%  │  │ ││                   0x00007ff4c319d6ad:   mov    0x24(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  │ ││                   0x00007ff4c319d6b2:   add    0x20(%r9,%r13,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   5.89%  │  │ ││                   0x00007ff4c319d6b7:   mov    %ebp,0x24(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.21%  │  │ ││                   0x00007ff4c319d6bc:   mov    0x28(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
   0.00%  │  │ ││                   0x00007ff4c319d6c1:   add    0x24(%r9,%r13,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   5.90%  │  │ ││                   0x00007ff4c319d6c6:   mov    %ebp,0x28(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.29%  │  │ ││                   0x00007ff4c319d6cb:   mov    0x2c(%rcx,%r13,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
   0.00%  │  │ ││                   0x00007ff4c319d6d0:   add    0x28(%r9,%r13,4),%ebp        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   6.07%  │  │ ││                   0x00007ff4c319d6d5:   mov    %ebp,0x2c(%r9,%r13,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   3.22%  │  │ ││                   0x00007ff4c319d6da:   lea    0x8(%rdx),%edx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
   0.00%  │  │ ││                   0x00007ff4c319d6dd:   data16 xchg %ax,%ax
          │  │ ││   ↗               0x00007ff4c319d6e0:   cmp    %edx,%ebx
          │  │ │╰   │               0x00007ff4c319d6e2:   jg     0x00007ff4c319d660
          │  │ │ ╭  │               0x00007ff4c319d6e8:   jmp    0x00007ff4c319d720
          │  │ │ │  │               0x00007ff4c319d6ed:   data16 data16 nopw 0x0(%rax,%rax,1)
          │  │ │ │  │               0x00007ff4c319d6f8:   data16 data16 xchg %ax,%ax
          │  │ │ │  │               0x00007ff4c319d6fc:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │ │ │  │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
          │  │ │ │ ↗│               0x00007ff4c319d700:   mov    0x10(%rcx,%rdx,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │ │ │ ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  │ │ │ ││               0x00007ff4c319d704:   movslq %edx,%r13
          │  │ │ │ ││               0x00007ff4c319d707:   add    0xc(%r9,%r13,4),%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │ │ │ ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
          │  │ │ │ ││               0x00007ff4c319d70c:   mov    %ebp,0x10(%r9,%rdx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │ │ │ ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   0.00%  │  │ │ │ ││               0x00007ff4c319d711:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │ │ │ ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
          │  │ │ │ ││               0x00007ff4c319d713:   nopw   0x0(%rax,%rax,1)
          │  │ │ │ ││               0x00007ff4c319d71c:   data16 data16 xchg %ax,%ax
          │  │ │ ↘ ││               0x00007ff4c319d720:   cmp    %edx,%r10d
          │  │ │  ╭││               0x00007ff4c319d723:   jle    0x00007ff4c319d756
          │  │ │  │╰│               0x00007ff4c319d729:   jmp    0x00007ff4c319d700
          │  │ │  │ │               0x00007ff4c319d72b:   data16 data16 nopw 0x0(%rax,%rax,1) ;   {no_reloc}
          │  │ │  │ │               0x00007ff4c319d736:   data16 data16 xchg %ax,%ax
          │  │ │  │ │               0x00007ff4c319d73a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │ │  │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
          │  │ │  │ │↗              0x00007ff4c319d740:   mov    0x10(%rcx,%rdx,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │ │  │ ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@28 (line 102)
          │  │ │  │ ││              0x00007ff4c319d744:   add    0xc(%r9,%rdx,4),%ebp         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │ │  │ ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
          │  │ │  │ ││              0x00007ff4c319d749:   mov    %ebp,0x10(%r9,%rdx,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │ │  │ ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
          │  │ │  │ ││              0x00007ff4c319d74e:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │ │  │ ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
          │  │ ↘  │ ││              0x00007ff4c319d750:   cmp    %edx,%edi
          │  │    │ ╰│              0x00007ff4c319d752:   jle    0x00007ff4c319d6e0
          │  │    │  ╰              0x00007ff4c319d754:   jmp    0x00007ff4c319d740           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │    │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
          ↘  │    ↘                 0x00007ff4c319d756:   cmp    $0x2,%r10d
             │        ╭             0x00007ff4c319d75a:   jl     0x00007ff4c319d939           ; ImmutableOopMap {rcx=Oop rsi=Oop r8=NarrowOop r9=Oop r11=NarrowOop }
             │        │                                                                       ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
             │        │                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@37 (line 105)
             │        │             0x00007ff4c319d760:   mov    0xc(,%r8,8),%edx             ; implicit exception: dispatches to 0x00007ff4c319dac7
             │        │             0x00007ff4c319d768:   cmp    $0x3,%r10d
             │        │╭            0x00007ff4c319d76c:   jl     0x00007ff4c319d789
             │        ││            0x00007ff4c319d772:   mov    %edx,%ebp
             │        ││            0x00007ff4c319d774:   cmp    %rax,%rbp
             │        ││            0x00007ff4c319d777:   jbe    0x00007ff4c319d9cc           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@57 (line 106)
             │        ││            0x00007ff4c319d77d:   data16 xchg %ax,%ax
             │        ││            0x00007ff4c319d780:   cmp    $0x3,%edx
             │        ││            0x00007ff4c319d783:   jb     0x00007ff4c319d97f           ; ImmutableOopMap {rcx=Oop rsi=Oop r8=NarrowOop r9=Oop r11=NarrowOop }
             │        ││                                                                      ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
             │        ││                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@37 (line 105)
             │        │↘            0x00007ff4c319d789:   mov    0xc(,%r11,8),%ebp            ; implicit exception: dispatches to 0x00007ff4c319daed
             │        │             0x00007ff4c319d791:   cmp    $0x3,%r10d
             │        │ ╭           0x00007ff4c319d795:   jl     0x00007ff4c319d7b2
             │        │ │           0x00007ff4c319d79b:   mov    %ebp,%r13d
             │        │ │           0x00007ff4c319d79e:   xchg   %ax,%ax
             │        │ │           0x00007ff4c319d7a0:   cmp    %rax,%r13
             │        │ │           0x00007ff4c319d7a3:   jbe    0x00007ff4c319da27
             │        │ │           0x00007ff4c319d7a9:   cmp    $0x3,%ebp
             │        │ │           0x00007ff4c319d7ac:   jb     0x00007ff4c319d9b6           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
             │        │ ↘           0x00007ff4c319d7b2:   mov    0x14(%rsi),%r13d             ; ImmutableOopMap {rcx=Oop rsi=Oop r8=NarrowOop r9=Oop r11=NarrowOop r13=NarrowOop }
             │        │                                                                       ;*iconst_1 {reexecute=1 rethrow=0 return_oop=0}
             │        │                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@37 (line 105)
             │        │             0x00007ff4c319d7b6:   mov    0xc(,%r13,8),%r14d           ; implicit exception: dispatches to 0x00007ff4c319db10
   0.00%     │        │             0x00007ff4c319d7be:   xchg   %ax,%ax
             │        │             0x00007ff4c319d7c0:   cmp    $0x3,%r10d
             │        │  ╭          0x00007ff4c319d7c4:   jl     0x00007ff4c319d950
             │        │  │          0x00007ff4c319d7ca:   mov    %rsi,(%rsp)
             │        │  │          0x00007ff4c319d7ce:   mov    %r14d,%esi
             │        │  │          0x00007ff4c319d7d1:   cmp    %rax,%rsi
             │        │  │          0x00007ff4c319d7d4:   jbe    0x00007ff4c319d9fa
             │        │  │          0x00007ff4c319d7da:   nopw   0x0(%rax,%rax,1)
             │        │  │          0x00007ff4c319d7e0:   cmp    $0x3,%r14d
             │        │  │          0x00007ff4c319d7e4:   jb     0x00007ff4c319da0f           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
             │        │  │       ↗  0x00007ff4c319d7ea:   cmp    $0x2,%edx
             │        │  │       │  0x00007ff4c319d7ed:   jb     0x00007ff4c319d9ad           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@57 (line 106)
             │        │  │       │  0x00007ff4c319d7f3:   cmp    $0x2,%ebp
             │        │  │       │  0x00007ff4c319d7f6:   jb     0x00007ff4c319d9c3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
             │        │  │       │  0x00007ff4c319d7fc:   nopl   0x0(%rax)
             │        │  │       │  0x00007ff4c319d800:   cmp    $0x2,%r14d
             │        │  │       │  0x00007ff4c319d804:   jb     0x00007ff4c319d9f1           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
             │        │  │       │  0x00007ff4c319d80a:   mov    0x14(,%r11,8),%r11d          ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
             │        │  │       │  0x00007ff4c319d812:   add    0x14(,%r8,8),%r11d           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │        │  │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
             │        │  │       │  0x00007ff4c319d81a:   mov    %r11d,0x14(,%r13,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
             │        │  │       │  0x00007ff4c319d822:   shl    $0x3,%r13                    ;*getfield B {reexecute=0 rethrow=0 return_oop=0}
             │        │  │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@48 (line 106)
             │        │  │       │  0x00007ff4c319d826:   mov    $0x2,%r11d
             │        │  │╭      │  0x00007ff4c319d82c:   jmp    0x00007ff4c319d932           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
             │        │  ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@39 (line 105)
             │        │  ││      │  0x00007ff4c319d831:   data16 data16 nopw 0x0(%rax,%rax,1) ;   {no_reloc}
             │        │  ││      │  0x00007ff4c319d83c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │        │  ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
   0.09%     │        │  ││↗     │  0x00007ff4c319d840:   mov    0x10(%rcx,%r11,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   1.09%     │        │  │││     │  0x00007ff4c319d845:   add    0x10(%r9,%r11,4),%r8d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   0.38%     │        │  │││     │  0x00007ff4c319d84a:   mov    %r8d,0x10(%r13,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   0.49%     │        │  │││     │  0x00007ff4c319d84f:   movslq %r11d,%r8
   0.07%     │        │  │││     │  0x00007ff4c319d852:   mov    0x14(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   3.72%     │        │  │││     │  0x00007ff4c319d857:   add    0x14(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   2.64%     │        │  │││     │  0x00007ff4c319d85c:   mov    %edi,0x14(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.70%     │        │  │││     │  0x00007ff4c319d861:   mov    0x18(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.22%     │        │  │││     │  0x00007ff4c319d866:   add    0x18(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   1.06%     │        │  │││     │  0x00007ff4c319d86b:   mov    %edi,0x18(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.35%     │        │  │││     │  0x00007ff4c319d870:   mov    0x1c(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.48%     │        │  │││     │  0x00007ff4c319d875:   add    0x1c(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   0.17%     │        │  │││     │  0x00007ff4c319d87a:   mov    %edi,0x1c(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.11%     │        │  │││     │  0x00007ff4c319d87f:   mov    0x20(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.31%     │        │  │││     │  0x00007ff4c319d884:   add    0x20(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   0.49%     │        │  │││     │  0x00007ff4c319d889:   mov    %edi,0x20(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.06%     │        │  │││     │  0x00007ff4c319d88e:   mov    0x24(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.24%     │        │  │││     │  0x00007ff4c319d893:   add    0x24(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   0.36%     │        │  │││     │  0x00007ff4c319d898:   mov    %edi,0x24(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.21%     │        │  │││     │  0x00007ff4c319d89d:   mov    0x28(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.15%     │        │  │││     │  0x00007ff4c319d8a2:   add    0x28(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   0.25%     │        │  │││     │  0x00007ff4c319d8a7:   mov    %edi,0x28(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.17%     │        │  │││     │  0x00007ff4c319d8ac:   mov    0x2c(%rcx,%r8,4),%edi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.43%     │        │  │││     │  0x00007ff4c319d8b1:   add    0x2c(%r9,%r8,4),%edi         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
   0.16%     │        │  │││     │  0x00007ff4c319d8b6:   mov    %edi,0x2c(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   1.16%     │        │  │││     │  0x00007ff4c319d8bb:   lea    0x8(%r11),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │        │  │││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@66 (line 105)
   0.28%     │        │  │││     │  0x00007ff4c319d8bf:   nop
   0.31%     │        │  │││   ↗ │  0x00007ff4c319d8c0:   cmp    %r11d,%ebx
             │        │  ││╰   │ │  0x00007ff4c319d8c3:   jg     0x00007ff4c319d840
             │        │  ││ ╭  │ │  0x00007ff4c319d8c9:   jmp    0x00007ff4c319d900
             │        │  ││ │  │ │  0x00007ff4c319d8ce:   data16 data16 nopw 0x0(%rax,%rax,1)
             │        │  ││ │  │ │  0x00007ff4c319d8d9:   data16 data16 xchg %ax,%ax
             │        │  ││ │  │ │  0x00007ff4c319d8dd:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │        │  ││ │  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
             │        │  ││ │ ↗│ │  0x00007ff4c319d8e0:   mov    0x10(%rcx,%r11,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  ││ │ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
   0.01%     │        │  ││ │ ││ │  0x00007ff4c319d8e5:   add    0x10(%r9,%r11,4),%r8d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │        │  ││ │ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
             │        │  ││ │ ││ │  0x00007ff4c319d8ea:   mov    %r8d,0x10(%r13,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  ││ │ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
             │        │  ││ │ ││ │  0x00007ff4c319d8ef:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │        │  ││ │ ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@66 (line 105)
             │        │  ││ │ ││ │  0x00007ff4c319d8f2:   data16 nopw 0x0(%rax,%rax,1)
             │        │  ││ │ ││ │  0x00007ff4c319d8fc:   data16 data16 xchg %ax,%ax
   0.00%     │        │  ││ ↘ ││ │  0x00007ff4c319d900:   cmp    %r11d,%r10d
             │        │  ││  ╭││ │  0x00007ff4c319d903:   jle    0x00007ff4c319d939
             │        │  ││  │╰│ │  0x00007ff4c319d909:   jmp    0x00007ff4c319d8e0
             │        │  ││  │ │ │  0x00007ff4c319d90b:   data16 data16 nopw 0x0(%rax,%rax,1)
             │        │  ││  │ │ │  0x00007ff4c319d916:   data16 data16 xchg %ax,%ax
             │        │  ││  │ │ │  0x00007ff4c319d91a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │        │  ││  │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
             │        │  ││  │ │↗│  0x00007ff4c319d920:   mov    0x10(%rcx,%r11,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │        │  ││  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@63 (line 106)
             │        │  ││  │ │││  0x00007ff4c319d925:   add    0x10(%r9,%r11,4),%r8d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             │        │  ││  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@64 (line 106)
             │        │  ││  │ │││  0x00007ff4c319d92a:   mov    %r8d,0x10(%r13,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │        │  ││  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
             │        │  ││  │ │││  0x00007ff4c319d92f:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │        │  ││  │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@66 (line 105)
             │        │  │↘  │ │││  0x00007ff4c319d932:   cmp    %r11d,%edi                   ;   {no_reloc}
             │        │  │   │ ╰││  0x00007ff4c319d935:   jle    0x00007ff4c319d8c0
             │        │  │   │  ╰│  0x00007ff4c319d937:   jmp    0x00007ff4c319d920           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │        │  │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
             │        ↘  │   ↘   │  0x00007ff4c319d939:   mov    0x10(%rsp),%rbp
   0.00%     │           │       │  0x00007ff4c319d93e:   add    $0x18,%rsp
             │           │       │  0x00007ff4c319d942:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             │           │       │  0x00007ff4c319d949:   ja     0x00007ff4c319da6d
             │           │       │  0x00007ff4c319d94f:   ret    
             │           ↘       │  0x00007ff4c319d950:   mov    %rsi,(%rsp)
             │                   ╰  0x00007ff4c319d954:   jmp    0x00007ff4c319d7ea           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
             ↘                      0x00007ff4c319d959:   mov    $0x18,%r10
                                    0x00007ff4c319d960:   movl   $0xffffffe5,0x484(%r15)      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@22 (line 102)
                                    0x00007ff4c319d96b:   mov    %r10,0x490(%r15)
....................................................................................................
  96.16%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.16%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 5, compile id 1042 
   0.58%                kernel  [unknown] 
   0.42%                kernel  [unknown] 
   0.24%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.49%  <...other 320 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.16%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 5, compile id 1042 
   3.12%                kernel  [unknown] 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%             libc.so.6  read 
   0.01%             libjvm.so  fileStream::flush 
   0.01%             libc.so.6  __strchrnul_avx2 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%             libc.so.6  malloc 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  _IO_old_init 
   0.01%           interpreter  invokestatic  184 invokestatic  
   0.01%             libjvm.so  WatcherThread::sleep 
   0.01%                        <unknown> 
   0.01%             libc.so.6  __memmove_avx_unaligned_erms 
   0.41%  <...other 148 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.16%        jvmci, level 4
   3.12%                kernel
   0.28%             libjvm.so
   0.17%             libc.so.6
   0.13%   libjvmcicompiler.so
   0.07%           interpreter
   0.04%        hsdis-amd64.so
   0.01%                      
   0.01%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.00%         perf-5112.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:30

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

Benchmark                                     (size)  Mode  Cnt     Score    Error  Units
LoopFissionBenchmark.initial_loop             262144  avgt    5  1126.676 ± 59.245  us/op
LoopFissionBenchmark.initial_loop:asm         262144  avgt            NaN             ---
LoopFissionBenchmark.manual_loop_fission      262144  avgt    5  1659.165 ± 30.257  us/op
LoopFissionBenchmark.manual_loop_fission:asm  262144  avgt            NaN             ---
