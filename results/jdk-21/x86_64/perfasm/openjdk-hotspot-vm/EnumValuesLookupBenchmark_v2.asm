# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 93.772 ns/op
# Warmup Iteration   2: 89.139 ns/op
# Warmup Iteration   3: 91.639 ns/op
# Warmup Iteration   4: 91.470 ns/op
# Warmup Iteration   5: 90.235 ns/op
Iteration   1: 89.250 ns/op
Iteration   2: 90.317 ns/op
Iteration   3: 91.148 ns/op
Iteration   4: 90.541 ns/op
Iteration   5: 91.308 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values":
  90.513 ±(99.9%) 3.147 ns/op [Average]
  (min, avg, max) = (89.250, 90.513, 91.308), stdev = 0.817
  CI (99.9%): [87.366, 93.660] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values:asm":
PrintAssembly processed: 125706 total address lines.
Perf output processed (skipped 68.060 seconds):
 Column 1: cycles (51017 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 623 

                                                                       # {method} {0x00007fa11b4773f0} &apos;cached_enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
                                                                       #           [sp+0x30]  (sp of caller)
                                                                       0x00007fa1a84f7ca0:   mov    0x8(%rsi),%r10d
                                                                       0x00007fa1a84f7ca4:   movabs $0x7fa11f000000,%r11
                                                                       0x00007fa1a84f7cae:   add    %r11,%r10
                                                                       0x00007fa1a84f7cb1:   cmp    %r10,%rax
                                                                       0x00007fa1a84f7cb4:   jne    0x00007fa1a7f85080           ;   {runtime_call ic_miss_stub}
                                                                       0x00007fa1a84f7cba:   xchg   %ax,%ax
                                                                       0x00007fa1a84f7cbc:   nopl   0x0(%rax)
                                                                     [Verified Entry Point]
   0.01%                                                               0x00007fa1a84f7cc0:   mov    %eax,-0x14000(%rsp)
   1.27%                                                               0x00007fa1a84f7cc7:   push   %rbp
   0.00%                                                               0x00007fa1a84f7cc8:   sub    $0x20,%rsp
   0.00%                                                               0x00007fa1a84f7ccc:   cmpl   $0x1,0x20(%r15)
   1.25%                                                               0x00007fa1a84f7cd4:   jne    0x00007fa1a84f810e           ;*synchronization entry
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@-1 (line 75)
   0.01%                                                               0x00007fa1a84f7cda:   movabs $0x7ff03b178,%rdx            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x00000007ff03b178})}
   0.00%                                                               0x00007fa1a84f7ce4:   mov    0x10(%rdx),%r10d             ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                                                                       0x00007fa1a84f7ce8:   mov    0x18(%r12,%r10,8),%r8d       ; implicit exception: dispatches to 0x00007fa1a84f80a4
                                                                                                                                 ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@21 (line 150)
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   1.13%                                                               0x00007fa1a84f7ced:   mov    0x14(%rsi),%r11d             ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 75)
                                                                       0x00007fa1a84f7cf1:   movsbl 0x10(%r12,%r8,8),%ecx        ; implicit exception: dispatches to 0x00007fa1a84f80bc
                                                                                                                                 ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - java.lang.String::equals@26 (line 1861)
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.06%                                                               0x00007fa1a84f7cf7:   lea    (%r12,%r10,8),%r13           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
                                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%                                                               0x00007fa1a84f7cfb:   nopl   0x0(%rax,%rax,1)
   1.14%                                                               0x00007fa1a84f7d00:   cmp    %r11d,%r8d
          ╭                                                            0x00007fa1a84f7d03:   je     0x00007fa1a84f8035           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                      ; - java.lang.String::equals@2 (line 1858)
          │                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%  │                                                            0x00007fa1a84f7d09:   movsbl 0x10(%r12,%r11,8),%r9d       ; implicit exception: dispatches to 0x00007fa1a84f80d4
          │                                                                                                                      ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                      ; - java.lang.String::equals@30 (line 1861)
          │                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │                                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.03%  │                                                            0x00007fa1a84f7d0f:   cmp    %r9d,%ecx
          │╭                                                           0x00007fa1a84f7d12:   jne    0x00007fa1a84f8059           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                     ; - java.lang.String::equals@33 (line 1861)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ││                                                           0x00007fa1a84f7d18:   mov    0x14(%r12,%r11,8),%ebx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                     ; - java.lang.String::equals@41 (line 1861)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   1.13%  ││                                                           0x00007fa1a84f7d1d:   mov    0x14(%r12,%r8,8),%r10d       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                     ; - java.lang.String::equals@37 (line 1861)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ││                                                           0x00007fa1a84f7d22:   mov    0xc(%r12,%rbx,8),%r8d
   0.02%  ││                                                           0x00007fa1a84f7d27:   mov    0xc(%r12,%r10,8),%ecx        ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                     ; - java.lang.String::equals@44 (line 1863)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.06%  ││                                                           0x00007fa1a84f7d2c:   lea    (%r12,%rbx,8),%rdi           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                     ; - java.lang.String::equals@41 (line 1861)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                                                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   1.22%  ││                                                           0x00007fa1a84f7d30:   lea    0x10(%r12,%rbx,8),%rbp
          ││                                                           0x00007fa1a84f7d35:   cmp    %r8d,%ecx
          ││╭                                                          0x00007fa1a84f7d38:   jne    0x00007fa1a84f7e08           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                    ; - java.lang.String::equals@44 (line 1863)
          │││                                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │││                                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          │││                                                          0x00007fa1a84f7d3e:   lea    (%r12,%r10,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                    ; - java.lang.String::equals@37 (line 1861)
          │││                                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │││                                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          │││                                                          0x00007fa1a84f7d42:   lea    0x10(%r12,%r10,8),%rdi
          │││                                                          0x00007fa1a84f7d47:   mov    %rbp,%rsi
          │││                                                          0x00007fa1a84f7d4a:   test   %ecx,%ecx
          │││╭                                                         0x00007fa1a84f7d4c:   je     0x00007fa1a84f7def
          ││││                                                         0x00007fa1a84f7d52:   mov    %ecx,%eax
          ││││                                                         0x00007fa1a84f7d54:   and    $0x1f,%eax
          ││││                                                         0x00007fa1a84f7d57:   and    $0xffffffe0,%ecx
          ││││╭                                                        0x00007fa1a84f7d5a:   je     0x00007fa1a84f7dab
          │││││                                                        0x00007fa1a84f7d60:   lea    (%rdi,%rcx,1),%rdi
          │││││                                                        0x00007fa1a84f7d64:   lea    (%rsi,%rcx,1),%rsi
          │││││                                                        0x00007fa1a84f7d68:   neg    %rcx
          │││││ ↗                                                      0x00007fa1a84f7d6b:   vmovdqu (%rdi,%rcx,1),%ymm1
          │││││ │                                                      0x00007fa1a84f7d70:   vmovdqu (%rsi,%rcx,1),%ymm0
          │││││ │                                                      0x00007fa1a84f7d75:   vpxor  %ymm0,%ymm1,%ymm1
          │││││ │                                                      0x00007fa1a84f7d79:   vptest %ymm1,%ymm1
          │││││╭│                                                      0x00007fa1a84f7d7e:   jne    0x00007fa1a84f7df6
          │││││││                                                      0x00007fa1a84f7d84:   add    $0x20,%rcx
          ││││││╰                                                      0x00007fa1a84f7d88:   jne    0x00007fa1a84f7d6b
          ││││││                                                       0x00007fa1a84f7d8a:   test   %eax,%eax
          ││││││ ╭                                                     0x00007fa1a84f7d8c:   je     0x00007fa1a84f7def
          ││││││ │                                                     0x00007fa1a84f7d92:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
          ││││││ │                                                     0x00007fa1a84f7d98:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
          ││││││ │                                                     0x00007fa1a84f7d9e:   vpxor  %ymm0,%ymm1,%ymm1
          ││││││ │                                                     0x00007fa1a84f7da2:   vptest %ymm1,%ymm1
          ││││││ │╭                                                    0x00007fa1a84f7da7:   jne    0x00007fa1a84f7df6
          ││││││ ││╭                                                   0x00007fa1a84f7da9:   jmp    0x00007fa1a84f7def
          ││││↘│ │││                                                   0x00007fa1a84f7dab:   mov    %eax,%ecx
          ││││ │ │││                                                   0x00007fa1a84f7dad:   and    $0xfffffffc,%ecx
          ││││ │ │││╭                                                  0x00007fa1a84f7db0:   je     0x00007fa1a84f7dcb
          ││││ │ ││││                                                  0x00007fa1a84f7db2:   lea    (%rdi,%rcx,1),%rdi
          ││││ │ ││││                                                  0x00007fa1a84f7db6:   lea    (%rsi,%rcx,1),%rsi
          ││││ │ ││││                                                  0x00007fa1a84f7dba:   neg    %rcx
          ││││ │ ││││ ↗                                                0x00007fa1a84f7dbd:   mov    (%rdi,%rcx,1),%ebx
          ││││ │ ││││ │                                                0x00007fa1a84f7dc0:   cmp    (%rsi,%rcx,1),%ebx
          ││││ │ ││││╭│                                                0x00007fa1a84f7dc3:   jne    0x00007fa1a84f7df6
          ││││ │ ││││││                                                0x00007fa1a84f7dc5:   add    $0x4,%rcx
          ││││ │ │││││╰                                                0x00007fa1a84f7dc9:   jne    0x00007fa1a84f7dbd
          ││││ │ │││↘│                                                 0x00007fa1a84f7dcb:   test   $0x2,%al
          ││││ │ │││ │ ╭                                               0x00007fa1a84f7dcd:   je     0x00007fa1a84f7de1
          ││││ │ │││ │ │                                               0x00007fa1a84f7dcf:   movzwl (%rdi),%ebx
          ││││ │ │││ │ │                                               0x00007fa1a84f7dd2:   movzwl (%rsi),%ecx
          ││││ │ │││ │ │                                               0x00007fa1a84f7dd5:   cmp    %ecx,%ebx
          ││││ │ │││ │ │╭                                              0x00007fa1a84f7dd7:   jne    0x00007fa1a84f7df6
          ││││ │ │││ │ ││                                              0x00007fa1a84f7dd9:   lea    0x2(%rdi),%rdi               ;   {no_reloc}
          ││││ │ │││ │ ││                                              0x00007fa1a84f7ddd:   lea    0x2(%rsi),%rsi
          ││││ │ │││ │ ↘│                                              0x00007fa1a84f7de1:   test   $0x1,%al
          ││││ │ │││ │  │╭                                             0x00007fa1a84f7de3:   je     0x00007fa1a84f7def
          ││││ │ │││ │  ││                                             0x00007fa1a84f7de5:   movzbl (%rdi),%ebx
          ││││ │ │││ │  ││                                             0x00007fa1a84f7de8:   movzbl (%rsi),%ecx
          ││││ │ │││ │  ││                                             0x00007fa1a84f7deb:   cmp    %ecx,%ebx
          ││││ │ │││ │  ││╭                                            0x00007fa1a84f7ded:   jne    0x00007fa1a84f7df6
          │││↘ │ ↘│↘ │  │↘│                                            0x00007fa1a84f7def:   mov    $0x1,%eax
          │││  │  │  │  │ │╭                                           0x00007fa1a84f7df4:   jmp    0x00007fa1a84f7df8
          │││  ↘  ↘  ↘  ↘ ↘│                                           0x00007fa1a84f7df6:   xor    %eax,%eax
          │││              ↘                                           0x00007fa1a84f7df8:   vpxor  %ymm1,%ymm1,%ymm1
          │││                                                          0x00007fa1a84f7dfc:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                    ; - java.lang.String::equals@44 (line 1863)
          │││                                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          │││                                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          │││                                                          0x00007fa1a84f7e00:   test   %eax,%eax
          │││               ╭                                          0x00007fa1a84f7e02:   jne    0x00007fa1a84f8035           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││               │                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@37 (line 149)
          │││               │                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.02%  ││↘               │                                          0x00007fa1a84f7e08:   mov    0x14(%rdx),%ebx              ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                │                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
          ││                │                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%  ││                │                                          0x00007fa1a84f7e0b:   mov    0x18(%r12,%rbx,8),%r10d      ; implicit exception: dispatches to 0x00007fa1a84f80a4
          ││                │                                                                                                    ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
          ││                │                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@21 (line 150)
          ││                │                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   1.13%  ││                │                                          0x00007fa1a84f7e10:   movsbl 0x10(%r12,%r10,8),%ecx       ; implicit exception: dispatches to 0x00007fa1a84f80bc
          ││                │                                                                                                    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          ││                │                                                                                                    ; - java.lang.String::equals@26 (line 1861)
          ││                │                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                │                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%  ││                │                                          0x00007fa1a84f7e16:   lea    (%r12,%rbx,8),%r13           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                │                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
          ││                │                                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.02%  ││                │                                          0x00007fa1a84f7e1a:   nopw   0x0(%rax,%rax,1)
   0.00%  ││                │                                          0x00007fa1a84f7e20:   cmp    %r11d,%r10d
          ││                │╭                                         0x00007fa1a84f7e23:   je     0x00007fa1a84f8035           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                                                                                                   ; - java.lang.String::equals@2 (line 1858)
          ││                ││                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                ││                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   1.20%  ││                ││                                         0x00007fa1a84f7e29:   cmp    %r9d,%ecx
          ││                ││╭                                        0x00007fa1a84f7e2c:   jne    0x00007fa1a84f804e           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                                                                                                  ; - java.lang.String::equals@33 (line 1861)
          ││                │││                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                │││                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%  ││                │││                                        0x00007fa1a84f7e32:   mov    0x14(%r12,%r10,8),%r10d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                                                                                                  ; - java.lang.String::equals@37 (line 1861)
          ││                │││                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                │││                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.02%  ││                │││                                        0x00007fa1a84f7e37:   mov    0xc(%r12,%r10,8),%ecx
   0.02%  ││                │││                                        0x00007fa1a84f7e3c:   nopl   0x0(%rax)
   1.14%  ││                │││                                        0x00007fa1a84f7e40:   cmp    %r8d,%ecx
          ││                │││╭                                       0x00007fa1a84f7e43:   jne    0x00007fa1a84f7f13           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                ││││                                                                                                 ; - java.lang.String::equals@44 (line 1863)
          ││                ││││                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                ││││                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%  ││                ││││                                       0x00007fa1a84f7e49:   lea    (%r12,%r10,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                ││││                                                                                                 ; - java.lang.String::equals@37 (line 1861)
          ││                ││││                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                ││││                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%  ││                ││││                                       0x00007fa1a84f7e4d:   lea    0x10(%r12,%r10,8),%rdi
          ││                ││││                                       0x00007fa1a84f7e52:   mov    %rbp,%rsi
   1.26%  ││                ││││                                       0x00007fa1a84f7e55:   test   %ecx,%ecx
          ││                ││││╭                                      0x00007fa1a84f7e57:   je     0x00007fa1a84f7efa
   0.01%  ││                │││││                                      0x00007fa1a84f7e5d:   mov    %ecx,%eax
   0.02%  ││                │││││                                      0x00007fa1a84f7e5f:   and    $0x1f,%eax
          ││                │││││                                      0x00007fa1a84f7e62:   and    $0xffffffe0,%ecx
          ││                │││││╭                                     0x00007fa1a84f7e65:   je     0x00007fa1a84f7eb6
          ││                ││││││                                     0x00007fa1a84f7e6b:   lea    (%rdi,%rcx,1),%rdi
          ││                ││││││                                     0x00007fa1a84f7e6f:   lea    (%rsi,%rcx,1),%rsi
          ││                ││││││                                     0x00007fa1a84f7e73:   neg    %rcx
          ││                ││││││ ↗                                   0x00007fa1a84f7e76:   vmovdqu (%rdi,%rcx,1),%ymm1
          ││                ││││││ │                                   0x00007fa1a84f7e7b:   vmovdqu (%rsi,%rcx,1),%ymm0
          ││                ││││││ │                                   0x00007fa1a84f7e80:   vpxor  %ymm0,%ymm1,%ymm1
          ││                ││││││ │                                   0x00007fa1a84f7e84:   vptest %ymm1,%ymm1
          ││                ││││││╭│                                   0x00007fa1a84f7e89:   jne    0x00007fa1a84f7f01
          ││                ││││││││                                   0x00007fa1a84f7e8f:   add    $0x20,%rcx
          ││                │││││││╰                                   0x00007fa1a84f7e93:   jne    0x00007fa1a84f7e76
          ││                │││││││                                    0x00007fa1a84f7e95:   test   %eax,%eax
          ││                │││││││ ╭                                  0x00007fa1a84f7e97:   je     0x00007fa1a84f7efa
          ││                │││││││ │                                  0x00007fa1a84f7e9d:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
          ││                │││││││ │                                  0x00007fa1a84f7ea3:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
          ││                │││││││ │                                  0x00007fa1a84f7ea9:   vpxor  %ymm0,%ymm1,%ymm1
          ││                │││││││ │                                  0x00007fa1a84f7ead:   vptest %ymm1,%ymm1
          ││                │││││││ │╭                                 0x00007fa1a84f7eb2:   jne    0x00007fa1a84f7f01
          ││                │││││││ ││╭                                0x00007fa1a84f7eb4:   jmp    0x00007fa1a84f7efa
   1.19%  ││                │││││↘│ │││                                0x00007fa1a84f7eb6:   mov    %eax,%ecx
   0.02%  ││                │││││ │ │││                                0x00007fa1a84f7eb8:   and    $0xfffffffc,%ecx
          ││                │││││ │ │││╭                               0x00007fa1a84f7ebb:   je     0x00007fa1a84f7ed6
   0.02%  ││                │││││ │ ││││                               0x00007fa1a84f7ebd:   lea    (%rdi,%rcx,1),%rdi
   0.01%  ││                │││││ │ ││││                               0x00007fa1a84f7ec1:   lea    (%rsi,%rcx,1),%rsi
   1.69%  ││                │││││ │ ││││                               0x00007fa1a84f7ec5:   neg    %rcx
   0.01%  ││                │││││ │ ││││ ↗                             0x00007fa1a84f7ec8:   mov    (%rdi,%rcx,1),%ebx
   0.56%  ││                │││││ │ ││││ │                             0x00007fa1a84f7ecb:   cmp    (%rsi,%rcx,1),%ebx
          ││                │││││ │ ││││╭│                             0x00007fa1a84f7ece:   jne    0x00007fa1a84f7f01
          ││                │││││ │ ││││││                             0x00007fa1a84f7ed0:   add    $0x4,%rcx
          ││                │││││ │ │││││╰                             0x00007fa1a84f7ed4:   jne    0x00007fa1a84f7ec8
          ││                │││││ │ │││↘│                              0x00007fa1a84f7ed6:   test   $0x2,%al
          ││                │││││ │ │││ │ ╭                            0x00007fa1a84f7ed8:   je     0x00007fa1a84f7eec           ;   {no_reloc}
          ││                │││││ │ │││ │ │                            0x00007fa1a84f7eda:   movzwl (%rdi),%ebx
          ││                │││││ │ │││ │ │                            0x00007fa1a84f7edd:   movzwl (%rsi),%ecx
          ││                │││││ │ │││ │ │                            0x00007fa1a84f7ee0:   cmp    %ecx,%ebx
          ││                │││││ │ │││ │ │╭                           0x00007fa1a84f7ee2:   jne    0x00007fa1a84f7f01
          ││                │││││ │ │││ │ ││                           0x00007fa1a84f7ee4:   lea    0x2(%rdi),%rdi
          ││                │││││ │ │││ │ ││                           0x00007fa1a84f7ee8:   lea    0x2(%rsi),%rsi
          ││                │││││ │ │││ │ ↘│                           0x00007fa1a84f7eec:   test   $0x1,%al
          ││                │││││ │ │││ │  │╭                          0x00007fa1a84f7eee:   je     0x00007fa1a84f7efa
          ││                │││││ │ │││ │  ││                          0x00007fa1a84f7ef0:   movzbl (%rdi),%ebx
          ││                │││││ │ │││ │  ││                          0x00007fa1a84f7ef3:   movzbl (%rsi),%ecx
          ││                │││││ │ │││ │  ││                          0x00007fa1a84f7ef6:   cmp    %ecx,%ebx
          ││                │││││ │ │││ │  ││╭                         0x00007fa1a84f7ef8:   jne    0x00007fa1a84f7f01
          ││                ││││↘ │ ↘│↘ │  │↘│                         0x00007fa1a84f7efa:   mov    $0x1,%eax
          ││                ││││  │  │  │  │ │╭                        0x00007fa1a84f7eff:   jmp    0x00007fa1a84f7f03
   1.22%  ││                ││││  ↘  ↘  ↘  ↘ ↘│                        0x00007fa1a84f7f01:   xor    %eax,%eax
   0.00%  ││                ││││              ↘                        0x00007fa1a84f7f03:   vpxor  %ymm1,%ymm1,%ymm1
          ││                ││││                                       0x00007fa1a84f7f07:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                ││││                                                                                                 ; - java.lang.String::equals@44 (line 1863)
          ││                ││││                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                ││││                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ││                ││││                                       0x00007fa1a84f7f0b:   test   %eax,%eax
          ││                ││││               ╭                       0x00007fa1a84f7f0d:   jne    0x00007fa1a84f8035
   1.19%  ││                │││↘               │                       0x00007fa1a84f7f13:   mov    $0x2,%r10d
          ││                │││                │╭                      0x00007fa1a84f7f19:   jmp    0x00007fa1a84f7f2d
          ││                │││                ││                      0x00007fa1a84f7f1b:   nopl   0x0(%rax,%rax,1)             ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                ││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@37 (line 149)
          ││                │││                ││                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
  22.50%  ││                │││                ││  ↗               ↗   0x00007fa1a84f7f20:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                ││  │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 149)
          ││                │││                ││  │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.03%  ││                │││                ││  │               │   0x00007fa1a84f7f23:   cmp    $0x29,%r10d
          ││                │││                ││  │               │   0x00007fa1a84f7f27:   jge    0x00007fa1a84f8088           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                ││  │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@14 (line 149)
          ││                │││                ││  │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%  ││                │││                │↘  │               │   0x00007fa1a84f7f2d:   mov    0x10(%rdx,%r10,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                │   │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
          ││                │││                │   │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%  ││                │││                │   │               │   0x00007fa1a84f7f32:   mov    0x18(%r12,%rbx,8),%edi       ; implicit exception: dispatches to 0x00007fa1a84f80a4
          ││                │││                │   │               │                                                             ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                │   │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@21 (line 150)
          ││                │││                │   │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
  24.08%  ││                │││                │   │               │   0x00007fa1a84f7f37:   nopw   0x0(%rax,%rax,1)
   0.03%  ││                │││                │   │               │   0x00007fa1a84f7f40:   movsbl 0x10(%r12,%rdi,8),%ecx       ; implicit exception: dispatches to 0x00007fa1a84f80bc
          ││                │││                │   │               │                                                             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                │   │               │                                                             ; - java.lang.String::equals@26 (line 1861)
          ││                │││                │   │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                │││                │   │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.10%  ││                │││                │   │               │   0x00007fa1a84f7f46:   lea    (%r12,%rbx,8),%r13           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                │   │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
          ││                │││                │   │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.01%  ││                │││                │   │               │   0x00007fa1a84f7f4a:   cmp    %r11d,%edi
          ││                │││                │ ╭ │               │   0x00007fa1a84f7f4d:   je     0x00007fa1a84f8035           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                │ │ │               │                                                             ; - java.lang.String::equals@2 (line 1858)
          ││                │││                │ │ │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                │││                │ │ │               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
  22.74%  ││                │││                │ │ │               │   0x00007fa1a84f7f53:   cmp    %r9d,%ecx
          ││                │││                │ │╭│               │   0x00007fa1a84f7f56:   jne    0x00007fa1a84f8054           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                │ │││               │                                                             ; - java.lang.String::equals@33 (line 1861)
          ││                │││                │ │││               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                │││                │ │││               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.08%  ││                │││                │ │││               │   0x00007fa1a84f7f5c:   mov    0x14(%r12,%rdi,8),%ebx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                │ │││               │                                                             ; - java.lang.String::equals@37 (line 1861)
          ││                │││                │ │││               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                │││                │ │││               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.02%  ││                │││                │ │││               │   0x00007fa1a84f7f61:   mov    0xc(%r12,%rbx,8),%ecx
   0.92%  ││                │││                │ │││               │   0x00007fa1a84f7f66:   cmp    %r8d,%ecx
   0.00%  ││                │││                │ ││╰               │   0x00007fa1a84f7f69:   jne    0x00007fa1a84f7f20           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                │ ││                │                                                             ; - java.lang.String::equals@44 (line 1863)
          ││                │││                │ ││                │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                │││                │ ││                │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ││                │││                │ ││                │   0x00007fa1a84f7f6b:   lea    (%r12,%rbx,8),%rdi           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                │ ││                │                                                             ; - java.lang.String::equals@37 (line 1861)
          ││                │││                │ ││                │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                │││                │ ││                │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ││                │││                │ ││                │   0x00007fa1a84f7f6f:   lea    0x10(%r12,%rbx,8),%rdi
          ││                │││                │ ││                │   0x00007fa1a84f7f74:   mov    %rbp,%rsi
          ││                │││                │ ││                │   0x00007fa1a84f7f77:   test   %ecx,%ecx
          ││                │││                │ ││ ╭              │   0x00007fa1a84f7f79:   je     0x00007fa1a84f801c
          ││                │││                │ ││ │              │   0x00007fa1a84f7f7f:   mov    %ecx,%eax
          ││                │││                │ ││ │              │   0x00007fa1a84f7f81:   and    $0x1f,%eax
          ││                │││                │ ││ │              │   0x00007fa1a84f7f84:   and    $0xffffffe0,%ecx
          ││                │││                │ ││ │╭             │   0x00007fa1a84f7f87:   je     0x00007fa1a84f7fd8
          ││                │││                │ ││ ││             │   0x00007fa1a84f7f8d:   lea    (%rdi,%rcx,1),%rdi
          ││                │││                │ ││ ││             │   0x00007fa1a84f7f91:   lea    (%rsi,%rcx,1),%rsi
          ││                │││                │ ││ ││             │   0x00007fa1a84f7f95:   neg    %rcx
          ││                │││                │ ││ ││ ↗           │   0x00007fa1a84f7f98:   vmovdqu (%rdi,%rcx,1),%ymm1
          ││                │││                │ ││ ││ │           │   0x00007fa1a84f7f9d:   vmovdqu (%rsi,%rcx,1),%ymm0
          ││                │││                │ ││ ││ │           │   0x00007fa1a84f7fa2:   vpxor  %ymm0,%ymm1,%ymm1
          ││                │││                │ ││ ││ │           │   0x00007fa1a84f7fa6:   vptest %ymm1,%ymm1
          ││                │││                │ ││ ││╭│           │   0x00007fa1a84f7fab:   jne    0x00007fa1a84f8023
          ││                │││                │ ││ ││││           │   0x00007fa1a84f7fb1:   add    $0x20,%rcx
          ││                │││                │ ││ │││╰           │   0x00007fa1a84f7fb5:   jne    0x00007fa1a84f7f98
          ││                │││                │ ││ │││            │   0x00007fa1a84f7fb7:   test   %eax,%eax
          ││                │││                │ ││ │││ ╭          │   0x00007fa1a84f7fb9:   je     0x00007fa1a84f801c
          ││                │││                │ ││ │││ │          │   0x00007fa1a84f7fbf:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
          ││                │││                │ ││ │││ │          │   0x00007fa1a84f7fc5:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
          ││                │││                │ ││ │││ │          │   0x00007fa1a84f7fcb:   vpxor  %ymm0,%ymm1,%ymm1
          ││                │││                │ ││ │││ │          │   0x00007fa1a84f7fcf:   vptest %ymm1,%ymm1
          ││                │││                │ ││ │││ │╭         │   0x00007fa1a84f7fd4:   jne    0x00007fa1a84f8023
          ││                │││                │ ││ │││ ││╭        │   0x00007fa1a84f7fd6:   jmp    0x00007fa1a84f801c           ;   {no_reloc}
          ││                │││                │ ││ │↘│ │││        │   0x00007fa1a84f7fd8:   mov    %eax,%ecx
          ││                │││                │ ││ │ │ │││        │   0x00007fa1a84f7fda:   and    $0xfffffffc,%ecx
          ││                │││                │ ││ │ │ │││╭       │   0x00007fa1a84f7fdd:   je     0x00007fa1a84f7ff8
          ││                │││                │ ││ │ │ ││││       │   0x00007fa1a84f7fdf:   lea    (%rdi,%rcx,1),%rdi
          ││                │││                │ ││ │ │ ││││       │   0x00007fa1a84f7fe3:   lea    (%rsi,%rcx,1),%rsi
          ││                │││                │ ││ │ │ ││││       │   0x00007fa1a84f7fe7:   neg    %rcx
          ││                │││                │ ││ │ │ ││││ ↗     │   0x00007fa1a84f7fea:   mov    (%rdi,%rcx,1),%ebx
          ││                │││                │ ││ │ │ ││││ │     │   0x00007fa1a84f7fed:   cmp    (%rsi,%rcx,1),%ebx
          ││                │││                │ ││ │ │ ││││╭│     │   0x00007fa1a84f7ff0:   jne    0x00007fa1a84f8023
          ││                │││                │ ││ │ │ ││││││     │   0x00007fa1a84f7ff2:   add    $0x4,%rcx
          ││                │││                │ ││ │ │ │││││╰     │   0x00007fa1a84f7ff6:   jne    0x00007fa1a84f7fea
          ││                │││                │ ││ │ │ │││↘│      │   0x00007fa1a84f7ff8:   test   $0x2,%al
          ││                │││                │ ││ │ │ │││ │ ╭    │   0x00007fa1a84f7ffa:   je     0x00007fa1a84f800e
          ││                │││                │ ││ │ │ │││ │ │    │   0x00007fa1a84f7ffc:   movzwl (%rdi),%ebx
          ││                │││                │ ││ │ │ │││ │ │    │   0x00007fa1a84f7fff:   movzwl (%rsi),%ecx
          ││                │││                │ ││ │ │ │││ │ │    │   0x00007fa1a84f8002:   cmp    %ecx,%ebx
          ││                │││                │ ││ │ │ │││ │ │╭   │   0x00007fa1a84f8004:   jne    0x00007fa1a84f8023
          ││                │││                │ ││ │ │ │││ │ ││   │   0x00007fa1a84f8006:   lea    0x2(%rdi),%rdi
          ││                │││                │ ││ │ │ │││ │ ││   │   0x00007fa1a84f800a:   lea    0x2(%rsi),%rsi
          ││                │││                │ ││ │ │ │││ │ ↘│   │   0x00007fa1a84f800e:   test   $0x1,%al
          ││                │││                │ ││ │ │ │││ │  │╭  │   0x00007fa1a84f8010:   je     0x00007fa1a84f801c
          ││                │││                │ ││ │ │ │││ │  ││  │   0x00007fa1a84f8012:   movzbl (%rdi),%ebx
          ││                │││                │ ││ │ │ │││ │  ││  │   0x00007fa1a84f8015:   movzbl (%rsi),%ecx
          ││                │││                │ ││ │ │ │││ │  ││  │   0x00007fa1a84f8018:   cmp    %ecx,%ebx
          ││                │││                │ ││ │ │ │││ │  ││╭ │   0x00007fa1a84f801a:   jne    0x00007fa1a84f8023
          ││                │││                │ ││ ↘ │ ↘│↘ │  │↘│ │   0x00007fa1a84f801c:   mov    $0x1,%eax
          ││                │││                │ ││   │  │  │  │ │╭│   0x00007fa1a84f8021:   jmp    0x00007fa1a84f8025
          ││                │││                │ ││   ↘  ↘  ↘  ↘ ↘││   0x00007fa1a84f8023:   xor    %eax,%eax
          ││                │││                │ ││               ↘│   0x00007fa1a84f8025:   vpxor  %ymm1,%ymm1,%ymm1
          ││                │││                │ ││                │   0x00007fa1a84f8029:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                │ ││                │                                                             ; - java.lang.String::equals@44 (line 1863)
          ││                │││                │ ││                │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
          ││                │││                │ ││                │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
          ││                │││                │ ││                │   0x00007fa1a84f802d:   test   %eax,%eax
          ││                │││                │ ││                ╰   0x00007fa1a84f802f:   je     0x00007fa1a84f7f20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                │ ││                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@28 (line 150)
          ││                │││                │ ││                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   1.26%  ↘│                ↘↘│                ↘ ↘│                    0x00007fa1a84f8035:   mov    %r13,%rax
   0.00%   │                  │                   │                    0x00007fa1a84f8038:   vzeroupper 
   1.17%   │                  │                   │                    0x00007fa1a84f803b:   add    $0x20,%rsp
   0.00%   │                  │                   │                    0x00007fa1a84f803f:   pop    %rbp
           │                  │                   │                    0x00007fa1a84f8040:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │                  │                   │                    0x00007fa1a84f8047:   ja     0x00007fa1a84f80f8
   1.18%   │                  │                   │                    0x00007fa1a84f804d:   ret    
           │                  ↘                   │                    0x00007fa1a84f804e:   mov    $0x1,%r10d
           │                                      ↘                    0x00007fa1a84f8054:   mov    %r13,%rbp
           │                                                        ╭  0x00007fa1a84f8057:   jmp    0x00007fa1a84f805f
           ↘                                                        │  0x00007fa1a84f8059:   xor    %r10d,%r10d
                                                                    │  0x00007fa1a84f805c:   mov    %r13,%rbp
                                                                    ↘  0x00007fa1a84f805f:   mov    $0xffffff45,%esi
                                                                       0x00007fa1a84f8064:   mov    %r10d,(%rsp)
                                                                       0x00007fa1a84f8068:   mov    %r11d,0x4(%rsp)
                                                                       0x00007fa1a84f806d:   mov    %ecx,0x8(%rsp)
                                                                       0x00007fa1a84f8071:   mov    %r9d,0xc(%rsp)
....................................................................................................
  92.24%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.24%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 623 
   3.65%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 668 
   0.59%                kernel  [unknown] 
   0.45%                kernel  [unknown] 
   0.23%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.41%  <...other 262 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.24%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 623 
   3.65%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 668 
   3.48%                kernel  [unknown] 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  _IO_fflush 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  memcpy@GLIBC_2.2.5 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%        hsdis-amd64.so  putop 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.28%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.90%           c2, level 4
   3.48%                kernel
   0.31%             libjvm.so
   0.22%             libc.so.6
   0.04%        hsdis-amd64.so
   0.02%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%                      
   0.01%           c1, level 3
   0.00%                [vdso]
   0.00%          runtime stub
   0.00%         perf-8917.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:02:04
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 122.239 ns/op
# Warmup Iteration   2: 117.877 ns/op
# Warmup Iteration   3: 118.389 ns/op
# Warmup Iteration   4: 115.966 ns/op
# Warmup Iteration   5: 115.564 ns/op
Iteration   1: 115.949 ns/op
Iteration   2: 117.020 ns/op
Iteration   3: 120.386 ns/op
Iteration   4: 134.523 ns/op
Iteration   5: 120.252 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values":
  121.626 ±(99.9%) 28.763 ns/op [Average]
  (min, avg, max) = (115.949, 121.626, 134.523), stdev = 7.470
  CI (99.9%): [92.863, 150.389] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values:asm":
PrintAssembly processed: 129426 total address lines.
Perf output processed (skipped 68.597 seconds):
 Column 1: cycles (51292 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 647 

                                                                    # {method} {0x00007fe61c4774c0} &apos;enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
                                                                    #           [sp+0x40]  (sp of caller)
                                                                    0x00007fe6a84f82c0:   mov    0x8(%rsi),%r10d
                                                                    0x00007fe6a84f82c4:   movabs $0x7fe627000000,%r11
                                                                    0x00007fe6a84f82ce:   add    %r11,%r10
                                                                    0x00007fe6a84f82d1:   cmp    %r10,%rax
                                                                    0x00007fe6a84f82d4:   jne    0x00007fe6a7f85080           ;   {runtime_call ic_miss_stub}
                                                                    0x00007fe6a84f82da:   xchg   %ax,%ax
                                                                    0x00007fe6a84f82dc:   nopl   0x0(%rax)
                                                                  [Verified Entry Point]
   0.25%                                                            0x00007fe6a84f82e0:   mov    %eax,-0x14000(%rsp)
   0.73%                                                            0x00007fe6a84f82e7:   push   %rbp
   0.04%                                                            0x00007fe6a84f82e8:   sub    $0x30,%rsp
   0.23%                                                            0x00007fe6a84f82ec:   cmpl   $0x1,0x20(%r15)
   0.66%                                                            0x00007fe6a84f82f4:   jne    0x00007fe6a84f8802           ;*synchronization entry
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@-1 (line 81)
   0.04%                                                            0x00007fe6a84f82fa:   mov    0x14(%rsi),%ebp
   0.23%                                                            0x00007fe6a84f82fd:   mov    0x1b8(%r15),%r13
                                                                    0x00007fe6a84f8304:   mov    %r13,%r10
   0.66%                                                            0x00007fe6a84f8307:   add    $0xb8,%r10
   0.05%                                                            0x00007fe6a84f830e:   cmp    0x1c8(%r15),%r10
          ╭                                                         0x00007fe6a84f8315:   jae    0x00007fe6a84f86ff
   0.20%  │                                                         0x00007fe6a84f831b:   mov    %r10,0x1b8(%r15)
   0.02%  │                                                         0x00007fe6a84f8322:   prefetchw 0xc0(%r10)
   0.75%  │                                                         0x00007fe6a84f832a:   movq   $0x1,0x0(%r13)
   0.05%  │                                                         0x00007fe6a84f8332:   prefetchw 0x100(%r10)
   0.36%  │                                                         0x00007fe6a84f833a:   movl   $0x1029bf8,0x8(%r13)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
   0.07%  │                                                         0x00007fe6a84f8342:   prefetchw 0x140(%r10)
   0.92%  │                                                         0x00007fe6a84f834a:   movl   $0x29,0xc(%r13)
   0.07%  │                                                         0x00007fe6a84f8352:   prefetchw 0x180(%r10)               ;*invokevirtual clone {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@3 (line 84)
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.57%  │                                                         0x00007fe6a84f835a:   mov    %r13,%rsi
   0.01%  │                                                         0x00007fe6a84f835d:   add    $0x10,%rsi
   0.57%  │                                                         0x00007fe6a84f8361:   mov    $0x15,%edx
   0.05%  │                                                         0x00007fe6a84f8366:   movabs $0x7ff03b0c0,%r14            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x00000007ff03b0c0})}
   0.23%  │                                                         0x00007fe6a84f8370:   movabs $0x7ff03b0c0,%rbx            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x00000007ff03b0c0})}
   0.02%  │                                                         0x00007fe6a84f837a:   add    $0x10,%rbx                   ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.52%  │                                                         0x00007fe6a84f837e:   mov    %rbx,%rdi
   0.04%  │                                                         0x00007fe6a84f8381:   vzeroupper 
   0.90%  │                                                         0x00007fe6a84f8384:   movabs $0x7fe6a7f6a400,%r10
   0.27%  │                                                         0x00007fe6a84f838e:   call   *%r10
   0.04%  │                                                         0x00007fe6a84f8391:   nopl   0x0(%rax,%rax,1)             ;   {other}
   0.75%  │                                                         0x00007fe6a84f8399:   mov    0x14(%r14),%r8d
   0.09%  │                                                         0x00007fe6a84f839d:   mov    (%rbx),%r10d                 ;*invokevirtual clone {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@3 (line 84)
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.02%  │                                                         0x00007fe6a84f83a0:   mov    0x18(%r12,%r10,8),%r9d       ; implicit exception: dispatches to 0x00007fe6a84f8780
          │                                                                                                                   ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 141)
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.17%  │                                                         0x00007fe6a84f83a5:   movsbl 0x10(%r12,%r9,8),%ecx        ; implicit exception: dispatches to 0x00007fe6a84f8798
          │                                                                                                                   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                   ; - java.lang.String::equals@26 (line 1861)
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   1.39%  │                                                         0x00007fe6a84f83ab:   lea    (%r12,%r10,8),%r14           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
          │                                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.07%  │                                                         0x00007fe6a84f83af:   cmp    %ebp,%r9d
          │╭                                                        0x00007fe6a84f83b2:   je     0x00007fe6a84f86e6           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                  ; - java.lang.String::equals@2 (line 1858)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%  ││                                                        0x00007fe6a84f83b8:   nopl   0x0(%rax,%rax,1)
   0.02%  ││                                                        0x00007fe6a84f83c0:   movsbl 0x10(%r12,%rbp,8),%r11d      ; implicit exception: dispatches to 0x00007fe6a84f87b0
          ││                                                                                                                  ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                  ; - java.lang.String::equals@30 (line 1861)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.83%  ││                                                        0x00007fe6a84f83c6:   cmp    %r11d,%ecx
          ││                                                        0x00007fe6a84f83c9:   jne    0x00007fe6a84f8734           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                  ; - java.lang.String::equals@33 (line 1861)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.05%  ││                                                        0x00007fe6a84f83cf:   mov    0x14(%r12,%rbp,8),%ebx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                  ; - java.lang.String::equals@41 (line 1861)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%  ││                                                        0x00007fe6a84f83d4:   mov    0x14(%r12,%r9,8),%r9d        ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                  ; - java.lang.String::equals@37 (line 1861)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.02%  ││                                                        0x00007fe6a84f83d9:   mov    0xc(%r12,%rbx,8),%r10d
   0.85%  ││                                                        0x00007fe6a84f83de:   mov    0xc(%r12,%r9,8),%ecx         ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                  ; - java.lang.String::equals@44 (line 1863)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.94%  ││                                                        0x00007fe6a84f83e3:   lea    (%r12,%rbx,8),%rdi           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                                  ; - java.lang.String::equals@41 (line 1861)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                                                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%  ││                                                        0x00007fe6a84f83e7:   lea    0x10(%r12,%rbx,8),%rdx
   0.01%  ││                                                        0x00007fe6a84f83ec:   cmp    %r10d,%ecx
          ││╭                                                       0x00007fe6a84f83ef:   jne    0x00007fe6a84f84bf           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                 ; - java.lang.String::equals@44 (line 1863)
          │││                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │││                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │││                                                       0x00007fe6a84f83f5:   lea    (%r12,%r9,8),%rbx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                 ; - java.lang.String::equals@37 (line 1861)
          │││                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │││                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │││                                                       0x00007fe6a84f83f9:   lea    0x10(%r12,%r9,8),%rdi
          │││                                                       0x00007fe6a84f83fe:   mov    %rdx,%rsi
          │││                                                       0x00007fe6a84f8401:   test   %ecx,%ecx
          │││╭                                                      0x00007fe6a84f8403:   je     0x00007fe6a84f84a6
          ││││                                                      0x00007fe6a84f8409:   mov    %ecx,%eax
          ││││                                                      0x00007fe6a84f840b:   and    $0x1f,%eax
          ││││                                                      0x00007fe6a84f840e:   and    $0xffffffe0,%ecx
          ││││╭                                                     0x00007fe6a84f8411:   je     0x00007fe6a84f8462
          │││││                                                     0x00007fe6a84f8417:   lea    (%rdi,%rcx,1),%rdi
          │││││                                                     0x00007fe6a84f841b:   lea    (%rsi,%rcx,1),%rsi
          │││││                                                     0x00007fe6a84f841f:   neg    %rcx
          │││││ ↗                                                   0x00007fe6a84f8422:   vmovdqu (%rdi,%rcx,1),%ymm1
          │││││ │                                                   0x00007fe6a84f8427:   vmovdqu (%rsi,%rcx,1),%ymm0
          │││││ │                                                   0x00007fe6a84f842c:   vpxor  %ymm0,%ymm1,%ymm1
          │││││ │                                                   0x00007fe6a84f8430:   vptest %ymm1,%ymm1
          │││││╭│                                                   0x00007fe6a84f8435:   jne    0x00007fe6a84f84ad
          │││││││                                                   0x00007fe6a84f843b:   add    $0x20,%rcx
          ││││││╰                                                   0x00007fe6a84f843f:   jne    0x00007fe6a84f8422
          ││││││                                                    0x00007fe6a84f8441:   test   %eax,%eax
          ││││││ ╭                                                  0x00007fe6a84f8443:   je     0x00007fe6a84f84a6
          ││││││ │                                                  0x00007fe6a84f8449:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
          ││││││ │                                                  0x00007fe6a84f844f:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
          ││││││ │                                                  0x00007fe6a84f8455:   vpxor  %ymm0,%ymm1,%ymm1
          ││││││ │                                                  0x00007fe6a84f8459:   vptest %ymm1,%ymm1
          ││││││ │╭                                                 0x00007fe6a84f845e:   jne    0x00007fe6a84f84ad
          ││││││ ││╭                                                0x00007fe6a84f8460:   jmp    0x00007fe6a84f84a6
          ││││↘│ │││                                                0x00007fe6a84f8462:   mov    %eax,%ecx
          ││││ │ │││                                                0x00007fe6a84f8464:   and    $0xfffffffc,%ecx
          ││││ │ │││╭                                               0x00007fe6a84f8467:   je     0x00007fe6a84f8482
          ││││ │ ││││                                               0x00007fe6a84f8469:   lea    (%rdi,%rcx,1),%rdi
          ││││ │ ││││                                               0x00007fe6a84f846d:   lea    (%rsi,%rcx,1),%rsi
          ││││ │ ││││                                               0x00007fe6a84f8471:   neg    %rcx
          ││││ │ ││││ ↗                                             0x00007fe6a84f8474:   mov    (%rdi,%rcx,1),%ebx
          ││││ │ ││││ │                                             0x00007fe6a84f8477:   cmp    (%rsi,%rcx,1),%ebx
          ││││ │ ││││╭│                                             0x00007fe6a84f847a:   jne    0x00007fe6a84f84ad
          ││││ │ ││││││                                             0x00007fe6a84f847c:   add    $0x4,%rcx
          ││││ │ │││││╰                                             0x00007fe6a84f8480:   jne    0x00007fe6a84f8474
          ││││ │ │││↘│                                              0x00007fe6a84f8482:   test   $0x2,%al
          ││││ │ │││ │ ╭                                            0x00007fe6a84f8484:   je     0x00007fe6a84f8498
          ││││ │ │││ │ │                                            0x00007fe6a84f8486:   movzwl (%rdi),%ebx
          ││││ │ │││ │ │                                            0x00007fe6a84f8489:   movzwl (%rsi),%ecx
          ││││ │ │││ │ │                                            0x00007fe6a84f848c:   cmp    %ecx,%ebx
          ││││ │ │││ │ │╭                                           0x00007fe6a84f848e:   jne    0x00007fe6a84f84ad
          ││││ │ │││ │ ││                                           0x00007fe6a84f8490:   lea    0x2(%rdi),%rdi               ;   {no_reloc}
          ││││ │ │││ │ ││                                           0x00007fe6a84f8494:   lea    0x2(%rsi),%rsi
          ││││ │ │││ │ ↘│                                           0x00007fe6a84f8498:   test   $0x1,%al
          ││││ │ │││ │  │╭                                          0x00007fe6a84f849a:   je     0x00007fe6a84f84a6
          ││││ │ │││ │  ││                                          0x00007fe6a84f849c:   movzbl (%rdi),%ebx
          ││││ │ │││ │  ││                                          0x00007fe6a84f849f:   movzbl (%rsi),%ecx
          ││││ │ │││ │  ││                                          0x00007fe6a84f84a2:   cmp    %ecx,%ebx
          ││││ │ │││ │  ││╭                                         0x00007fe6a84f84a4:   jne    0x00007fe6a84f84ad
          │││↘ │ ↘│↘ │  │↘│                                         0x00007fe6a84f84a6:   mov    $0x1,%eax
          │││  │  │  │  │ │╭                                        0x00007fe6a84f84ab:   jmp    0x00007fe6a84f84af
          │││  ↘  ↘  ↘  ↘ ↘│                                        0x00007fe6a84f84ad:   xor    %eax,%eax
          │││              ↘                                        0x00007fe6a84f84af:   vpxor  %ymm1,%ymm1,%ymm1
          │││                                                       0x00007fe6a84f84b3:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                                                                 ; - java.lang.String::equals@44 (line 1863)
          │││                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          │││                                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          │││                                                       0x00007fe6a84f84b7:   test   %eax,%eax
          │││               ╭                                       0x00007fe6a84f84b9:   jne    0x00007fe6a84f86e6           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││               │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@37 (line 140)
          │││               │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.82%  ││↘               │                                       0x00007fe6a84f84bf:   nop
   0.02%  ││                │                                       0x00007fe6a84f84c0:   mov    0x18(%r12,%r8,8),%ebx        ; implicit exception: dispatches to 0x00007fe6a84f8780
          ││                │                                                                                                 ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
          ││                │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 141)
          ││                │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%  ││                │                                       0x00007fe6a84f84c5:   movsbl 0x10(%r12,%rbx,8),%ecx       ; implicit exception: dispatches to 0x00007fe6a84f8798
          ││                │                                                                                                 ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          ││                │                                                                                                 ; - java.lang.String::equals@26 (line 1861)
          ││                │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.05%  ││                │                                       0x00007fe6a84f84cb:   lea    (%r12,%r8,8),%r14            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
          ││                │                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.85%  ││                │                                       0x00007fe6a84f84cf:   cmp    %ebp,%ebx
          ││                │╭                                      0x00007fe6a84f84d1:   je     0x00007fe6a84f86e6           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                                                                                                ; - java.lang.String::equals@2 (line 1858)
          ││                ││                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                ││                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.03%  ││                ││                                      0x00007fe6a84f84d7:   cmp    %r11d,%ecx
   0.03%  ││                ││                                      0x00007fe6a84f84da:   nopw   0x0(%rax,%rax,1)
   0.03%  ││                ││                                      0x00007fe6a84f84e0:   jne    0x00007fe6a84f8728           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                                                                                                ; - java.lang.String::equals@33 (line 1861)
          ││                ││                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                ││                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.85%  ││                ││                                      0x00007fe6a84f84e6:   mov    0x14(%r12,%rbx,8),%r9d       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                                                                                                ; - java.lang.String::equals@37 (line 1861)
          ││                ││                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                ││                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.03%  ││                ││                                      0x00007fe6a84f84eb:   mov    0xc(%r12,%r9,8),%ecx
   0.13%  ││                ││                                      0x00007fe6a84f84f0:   cmp    %r10d,%ecx
          ││                ││╭                                     0x00007fe6a84f84f3:   jne    0x00007fe6a84f85c6           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                                                                                               ; - java.lang.String::equals@44 (line 1863)
          ││                │││                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                │││                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.06%  ││                │││                                     0x00007fe6a84f84f9:   lea    (%r12,%r9,8),%r8             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                                                                                               ; - java.lang.String::equals@37 (line 1861)
          ││                │││                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                │││                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.78%  ││                │││                                     0x00007fe6a84f84fd:   lea    0x10(%r12,%r9,8),%rdi
   0.03%  ││                │││                                     0x00007fe6a84f8502:   mov    %rdx,%rsi
   0.01%  ││                │││                                     0x00007fe6a84f8505:   test   %ecx,%ecx
          ││                │││╭                                    0x00007fe6a84f8507:   je     0x00007fe6a84f85aa
   0.08%  ││                ││││                                    0x00007fe6a84f850d:   mov    %ecx,%eax
   0.79%  ││                ││││                                    0x00007fe6a84f850f:   and    $0x1f,%eax
   0.03%  ││                ││││                                    0x00007fe6a84f8512:   and    $0xffffffe0,%ecx
          ││                ││││╭                                   0x00007fe6a84f8515:   je     0x00007fe6a84f8566
          ││                │││││                                   0x00007fe6a84f851b:   lea    (%rdi,%rcx,1),%rdi
          ││                │││││                                   0x00007fe6a84f851f:   lea    (%rsi,%rcx,1),%rsi
          ││                │││││                                   0x00007fe6a84f8523:   neg    %rcx
          ││                │││││ ↗                                 0x00007fe6a84f8526:   vmovdqu (%rdi,%rcx,1),%ymm1
          ││                │││││ │                                 0x00007fe6a84f852b:   vmovdqu (%rsi,%rcx,1),%ymm0
          ││                │││││ │                                 0x00007fe6a84f8530:   vpxor  %ymm0,%ymm1,%ymm1
          ││                │││││ │                                 0x00007fe6a84f8534:   vptest %ymm1,%ymm1
          ││                │││││╭│                                 0x00007fe6a84f8539:   jne    0x00007fe6a84f85b1
          ││                │││││││                                 0x00007fe6a84f853f:   add    $0x20,%rcx
          ││                ││││││╰                                 0x00007fe6a84f8543:   jne    0x00007fe6a84f8526
          ││                ││││││                                  0x00007fe6a84f8545:   test   %eax,%eax
          ││                ││││││ ╭                                0x00007fe6a84f8547:   je     0x00007fe6a84f85aa
          ││                ││││││ │                                0x00007fe6a84f854d:   vmovdqu -0x20(%rdi,%rax,1),%ymm1
          ││                ││││││ │                                0x00007fe6a84f8553:   vmovdqu -0x20(%rsi,%rax,1),%ymm0
          ││                ││││││ │                                0x00007fe6a84f8559:   vpxor  %ymm0,%ymm1,%ymm1
          ││                ││││││ │                                0x00007fe6a84f855d:   vptest %ymm1,%ymm1
          ││                ││││││ │╭                               0x00007fe6a84f8562:   jne    0x00007fe6a84f85b1
          ││                ││││││ ││╭                              0x00007fe6a84f8564:   jmp    0x00007fe6a84f85aa
   0.01%  ││                ││││↘│ │││                              0x00007fe6a84f8566:   mov    %eax,%ecx
   0.07%  ││                ││││ │ │││                              0x00007fe6a84f8568:   and    $0xfffffffc,%ecx
          ││                ││││ │ │││╭                             0x00007fe6a84f856b:   je     0x00007fe6a84f8586
   0.75%  ││                ││││ │ ││││                             0x00007fe6a84f856d:   lea    (%rdi,%rcx,1),%rdi
   0.06%  ││                ││││ │ ││││                             0x00007fe6a84f8571:   lea    (%rsi,%rcx,1),%rsi
   0.04%  ││                ││││ │ ││││                             0x00007fe6a84f8575:   neg    %rcx
   0.10%  ││                ││││ │ ││││ ↗                           0x00007fe6a84f8578:   mov    (%rdi,%rcx,1),%ebx
   1.42%  ││                ││││ │ ││││ │                           0x00007fe6a84f857b:   cmp    (%rsi,%rcx,1),%ebx
          ││                ││││ │ ││││╭│                           0x00007fe6a84f857e:   jne    0x00007fe6a84f85b1
          ││                ││││ │ ││││││                           0x00007fe6a84f8580:   add    $0x4,%rcx
          ││                ││││ │ │││││╰                           0x00007fe6a84f8584:   jne    0x00007fe6a84f8578
          ││                ││││ │ │││↘│                            0x00007fe6a84f8586:   test   $0x2,%al
          ││                ││││ │ │││ │ ╭                          0x00007fe6a84f8588:   je     0x00007fe6a84f859c
          ││                ││││ │ │││ │ │                          0x00007fe6a84f858a:   movzwl (%rdi),%ebx
          ││                ││││ │ │││ │ │                          0x00007fe6a84f858d:   movzwl (%rsi),%ecx                  ;   {no_reloc}
          ││                ││││ │ │││ │ │                          0x00007fe6a84f8590:   cmp    %ecx,%ebx
          ││                ││││ │ │││ │ │╭                         0x00007fe6a84f8592:   jne    0x00007fe6a84f85b1
          ││                ││││ │ │││ │ ││                         0x00007fe6a84f8594:   lea    0x2(%rdi),%rdi
          ││                ││││ │ │││ │ ││                         0x00007fe6a84f8598:   lea    0x2(%rsi),%rsi
          ││                ││││ │ │││ │ ↘│                         0x00007fe6a84f859c:   test   $0x1,%al
          ││                ││││ │ │││ │  │╭                        0x00007fe6a84f859e:   je     0x00007fe6a84f85aa
          ││                ││││ │ │││ │  ││                        0x00007fe6a84f85a0:   movzbl (%rdi),%ebx
          ││                ││││ │ │││ │  ││                        0x00007fe6a84f85a3:   movzbl (%rsi),%ecx
          ││                ││││ │ │││ │  ││                        0x00007fe6a84f85a6:   cmp    %ecx,%ebx
          ││                ││││ │ │││ │  ││╭                       0x00007fe6a84f85a8:   jne    0x00007fe6a84f85b1
          ││                │││↘ │ ↘│↘ │  │↘│                       0x00007fe6a84f85aa:   mov    $0x1,%eax
          ││                │││  │  │  │  │ │╭                      0x00007fe6a84f85af:   jmp    0x00007fe6a84f85b3
   0.71%  ││                │││  ↘  ↘  ↘  ↘ ↘│                      0x00007fe6a84f85b1:   xor    %eax,%eax
   0.02%  ││                │││              ↘                      0x00007fe6a84f85b3:   vpxor  %ymm1,%ymm1,%ymm1
   0.41%  ││                │││                                     0x00007fe6a84f85b7:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                │││                                                                                               ; - java.lang.String::equals@44 (line 1863)
          ││                │││                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                │││                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.03%  ││                │││                                     0x00007fe6a84f85bb:   test   %eax,%eax
   0.44%  ││                │││                                     0x00007fe6a84f85bd:   data16 xchg %ax,%ax
   0.02%  ││                │││               ╭                     0x00007fe6a84f85c0:   jne    0x00007fe6a84f86e6
   0.40%  ││                ││↘               │                     0x00007fe6a84f85c6:   mov    $0x2,%r9d
   0.03%  ││                ││                │╭                    0x00007fe6a84f85cc:   jmp    0x00007fe6a84f85dd
          ││                ││                ││                    0x00007fe6a84f85ce:   xchg   %ax,%ax                      ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                ││                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@37 (line 140)
          ││                ││                ││                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
  11.73%  ││                ││                ││ ↗               ↗  0x00007fe6a84f85d0:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                ││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 140)
          ││                ││                ││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.63%  ││                ││                ││ │               │  0x00007fe6a84f85d3:   cmp    $0x29,%r9d
          ││                ││                ││ │               │  0x00007fe6a84f85d7:   jge    0x00007fe6a84f8764           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                ││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@14 (line 140)
          ││                ││                ││ │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   5.11%  ││                ││                │↘ │               │  0x00007fe6a84f85dd:   mov    0x10(%r13,%r9,4),%edi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                │  │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
          ││                ││                │  │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.22%  ││                ││                │  │               │  0x00007fe6a84f85e2:   mov    0x18(%r12,%rdi,8),%r8d       ; implicit exception: dispatches to 0x00007fe6a84f8780
          ││                ││                │  │               │                                                            ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                │  │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 141)
          ││                ││                │  │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
  11.99%  ││                ││                │  │               │  0x00007fe6a84f85e7:   movsbl 0x10(%r12,%r8,8),%ecx        ; implicit exception: dispatches to 0x00007fe6a84f8798
          ││                ││                │  │               │                                                            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                │  │               │                                                            ; - java.lang.String::equals@26 (line 1861)
          ││                ││                │  │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                ││                │  │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   1.05%  ││                ││                │  │               │  0x00007fe6a84f85ed:   lea    (%r12,%rdi,8),%r14           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                │  │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
          ││                ││                │  │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   5.30%  ││                ││                │  │               │  0x00007fe6a84f85f1:   cmp    %ebp,%r8d
          ││                ││                │ ╭│               │  0x00007fe6a84f85f4:   je     0x00007fe6a84f86e6           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                │ ││               │                                                            ; - java.lang.String::equals@2 (line 1858)
          ││                ││                │ ││               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                ││                │ ││               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.22%  ││                ││                │ ││               │  0x00007fe6a84f85fa:   nopw   0x0(%rax,%rax,1)
  11.26%  ││                ││                │ ││               │  0x00007fe6a84f8600:   cmp    %r11d,%ecx
          ││                ││                │ ││               │  0x00007fe6a84f8603:   jne    0x00007fe6a84f872e           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                │ ││               │                                                            ; - java.lang.String::equals@33 (line 1861)
          ││                ││                │ ││               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                ││                │ ││               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.80%  ││                ││                │ ││               │  0x00007fe6a84f8609:   mov    0x14(%r12,%r8,8),%r8d        ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                │ ││               │                                                            ; - java.lang.String::equals@37 (line 1861)
          ││                ││                │ ││               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                ││                │ ││               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.86%  ││                ││                │ ││               │  0x00007fe6a84f860e:   mov    0xc(%r12,%r8,8),%ecx
   2.93%  ││                ││                │ ││               │  0x00007fe6a84f8613:   cmp    %r10d,%ecx
   0.00%  ││                ││                │ │╰               │  0x00007fe6a84f8616:   jne    0x00007fe6a84f85d0           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                │ │                │                                                            ; - java.lang.String::equals@44 (line 1863)
          ││                ││                │ │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                ││                │ │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          ││                ││                │ │                │  0x00007fe6a84f8618:   lea    (%r12,%r8,8),%rbx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                │ │                │                                                            ; - java.lang.String::equals@37 (line 1861)
          ││                ││                │ │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                ││                │ │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          ││                ││                │ │                │  0x00007fe6a84f861c:   lea    0x10(%r12,%r8,8),%rdi
          ││                ││                │ │                │  0x00007fe6a84f8621:   mov    %rdx,%rsi
          ││                ││                │ │                │  0x00007fe6a84f8624:   test   %ecx,%ecx
          ││                ││                │ │ ╭              │  0x00007fe6a84f8626:   je     0x00007fe6a84f86c9
          ││                ││                │ │ │              │  0x00007fe6a84f862c:   mov    %ecx,%eax
          ││                ││                │ │ │              │  0x00007fe6a84f862e:   and    $0x1f,%eax
          ││                ││                │ │ │              │  0x00007fe6a84f8631:   and    $0xffffffe0,%ecx
          ││                ││                │ │ │╭             │  0x00007fe6a84f8634:   je     0x00007fe6a84f8685
          ││                ││                │ │ ││             │  0x00007fe6a84f863a:   lea    (%rdi,%rcx,1),%rdi
          ││                ││                │ │ ││             │  0x00007fe6a84f863e:   lea    (%rsi,%rcx,1),%rsi
          ││                ││                │ │ ││             │  0x00007fe6a84f8642:   neg    %rcx
          ││                ││                │ │ ││ ↗           │  0x00007fe6a84f8645:   vmovdqu (%rdi,%rcx,1),%ymm0
          ││                ││                │ │ ││ │           │  0x00007fe6a84f864a:   vmovdqu (%rsi,%rcx,1),%ymm1
          ││                ││                │ │ ││ │           │  0x00007fe6a84f864f:   vpxor  %ymm1,%ymm0,%ymm0
          ││                ││                │ │ ││ │           │  0x00007fe6a84f8653:   vptest %ymm0,%ymm0
          ││                ││                │ │ ││╭│           │  0x00007fe6a84f8658:   jne    0x00007fe6a84f86d0
          ││                ││                │ │ ││││           │  0x00007fe6a84f865e:   add    $0x20,%rcx
          ││                ││                │ │ │││╰           │  0x00007fe6a84f8662:   jne    0x00007fe6a84f8645
          ││                ││                │ │ │││            │  0x00007fe6a84f8664:   test   %eax,%eax
          ││                ││                │ │ │││ ╭          │  0x00007fe6a84f8666:   je     0x00007fe6a84f86c9
          ││                ││                │ │ │││ │          │  0x00007fe6a84f866c:   vmovdqu -0x20(%rdi,%rax,1),%ymm0
          ││                ││                │ │ │││ │          │  0x00007fe6a84f8672:   vmovdqu -0x20(%rsi,%rax,1),%ymm1
          ││                ││                │ │ │││ │          │  0x00007fe6a84f8678:   vpxor  %ymm1,%ymm0,%ymm0
          ││                ││                │ │ │││ │          │  0x00007fe6a84f867c:   vptest %ymm0,%ymm0
          ││                ││                │ │ │││ │╭         │  0x00007fe6a84f8681:   jne    0x00007fe6a84f86d0
          ││                ││                │ │ │││ ││╭        │  0x00007fe6a84f8683:   jmp    0x00007fe6a84f86c9
          ││                ││                │ │ │↘│ │││        │  0x00007fe6a84f8685:   mov    %eax,%ecx
          ││                ││                │ │ │ │ │││        │  0x00007fe6a84f8687:   and    $0xfffffffc,%ecx
          ││                ││                │ │ │ │ │││╭       │  0x00007fe6a84f868a:   je     0x00007fe6a84f86a5
          ││                ││                │ │ │ │ ││││       │  0x00007fe6a84f868c:   lea    (%rdi,%rcx,1),%rdi           ;   {no_reloc}
          ││                ││                │ │ │ │ ││││       │  0x00007fe6a84f8690:   lea    (%rsi,%rcx,1),%rsi
          ││                ││                │ │ │ │ ││││       │  0x00007fe6a84f8694:   neg    %rcx
          ││                ││                │ │ │ │ ││││ ↗     │  0x00007fe6a84f8697:   mov    (%rdi,%rcx,1),%ebx
          ││                ││                │ │ │ │ ││││ │     │  0x00007fe6a84f869a:   cmp    (%rsi,%rcx,1),%ebx
          ││                ││                │ │ │ │ ││││╭│     │  0x00007fe6a84f869d:   jne    0x00007fe6a84f86d0
          ││                ││                │ │ │ │ ││││││     │  0x00007fe6a84f869f:   add    $0x4,%rcx
          ││                ││                │ │ │ │ │││││╰     │  0x00007fe6a84f86a3:   jne    0x00007fe6a84f8697
          ││                ││                │ │ │ │ │││↘│      │  0x00007fe6a84f86a5:   test   $0x2,%al
          ││                ││                │ │ │ │ │││ │ ╭    │  0x00007fe6a84f86a7:   je     0x00007fe6a84f86bb
          ││                ││                │ │ │ │ │││ │ │    │  0x00007fe6a84f86a9:   movzwl (%rdi),%ebx
          ││                ││                │ │ │ │ │││ │ │    │  0x00007fe6a84f86ac:   movzwl (%rsi),%ecx
          ││                ││                │ │ │ │ │││ │ │    │  0x00007fe6a84f86af:   cmp    %ecx,%ebx
          ││                ││                │ │ │ │ │││ │ │╭   │  0x00007fe6a84f86b1:   jne    0x00007fe6a84f86d0
          ││                ││                │ │ │ │ │││ │ ││   │  0x00007fe6a84f86b3:   lea    0x2(%rdi),%rdi
          ││                ││                │ │ │ │ │││ │ ││   │  0x00007fe6a84f86b7:   lea    0x2(%rsi),%rsi
          ││                ││                │ │ │ │ │││ │ ↘│   │  0x00007fe6a84f86bb:   test   $0x1,%al
          ││                ││                │ │ │ │ │││ │  │╭  │  0x00007fe6a84f86bd:   je     0x00007fe6a84f86c9
          ││                ││                │ │ │ │ │││ │  ││  │  0x00007fe6a84f86bf:   movzbl (%rdi),%ebx
          ││                ││                │ │ │ │ │││ │  ││  │  0x00007fe6a84f86c2:   movzbl (%rsi),%ecx
          ││                ││                │ │ │ │ │││ │  ││  │  0x00007fe6a84f86c5:   cmp    %ecx,%ebx
          ││                ││                │ │ │ │ │││ │  ││╭ │  0x00007fe6a84f86c7:   jne    0x00007fe6a84f86d0
          ││                ││                │ │ ↘ │ ↘│↘ │  │↘│ │  0x00007fe6a84f86c9:   mov    $0x1,%eax
          ││                ││                │ │   │  │  │  │ │╭│  0x00007fe6a84f86ce:   jmp    0x00007fe6a84f86d2
          ││                ││                │ │   ↘  ↘  ↘  ↘ ↘││  0x00007fe6a84f86d0:   xor    %eax,%eax
          ││                ││                │ │               ↘│  0x00007fe6a84f86d2:   vpxor  %ymm0,%ymm0,%ymm0
          ││                ││                │ │                │  0x00007fe6a84f86d6:   vpxor  %ymm1,%ymm1,%ymm1            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                │ │                │                                                            ; - java.lang.String::equals@44 (line 1863)
          ││                ││                │ │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
          ││                ││                │ │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
          ││                ││                │ │                │  0x00007fe6a84f86da:   test   %eax,%eax
          ││                ││                │ │                │  0x00007fe6a84f86dc:   nopl   0x0(%rax)
          ││                ││                │ │                ╰  0x00007fe6a84f86e0:   je     0x00007fe6a84f85d0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                ││                │ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@28 (line 141)
          ││                ││                │ │                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%  │↘                ↘↘                ↘ ↘                   0x00007fe6a84f86e6:   mov    %r14,%rax
   0.61%  │                                                         0x00007fe6a84f86e9:   vzeroupper 
   0.87%  │                                                         0x00007fe6a84f86ec:   add    $0x30,%rsp
   0.21%  │                                                         0x00007fe6a84f86f0:   pop    %rbp
   0.01%  │                                                         0x00007fe6a84f86f1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │                                                         0x00007fe6a84f86f8:   ja     0x00007fe6a84f87ec
   0.63%  │                                                         0x00007fe6a84f86fe:   ret    
          ↘                                                         0x00007fe6a84f86ff:   mov    $0x29,%edx
                                                                    0x00007fe6a84f8704:   movabs $0x7fe628029bf8,%rsi         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
                                                                    0x00007fe6a84f870e:   xchg   %ax,%ax
                                                                    0x00007fe6a84f8710:   vzeroupper 
   0.00%                                                            0x00007fe6a84f8713:   call   0x00007fe6a8057780           ; ImmutableOopMap {rbp=NarrowOop }
                                                                                                                              ;*invokevirtual clone {reexecute=1 rethrow=0 return_oop=1}
                                                                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@3 (line 84)
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
                                                                                                                              ;   {runtime_call _new_array_Java}
                                                                    0x00007fe6a84f8718:   nopl   0x608(%rax,%rax,1)           ;*invokevirtual clone {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@3 (line 84)
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
                                                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
                                                                                                                              ;   {other}
....................................................................................................
  81.36%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::jlong_disjoint_arraycopy 

               --------------------------------------------------------------------------------
               - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               StubRoutines::jlong_disjoint_arraycopy [0x00007fe6a7f6a400, 0x00007fe6a7f6a476] (118 bytes)
               --------------------------------------------------------------------------------
   0.66%         0x00007fe6a7f6a400:   push   %rbp
   0.24%         0x00007fe6a7f6a401:   mov    %rsp,%rbp
   0.25%         0x00007fe6a7f6a404:   lea    -0x8(%rdi,%rdx,8),%rdi
   0.60%         0x00007fe6a7f6a409:   lea    -0x8(%rsi,%rdx,8),%rcx
   0.07%         0x00007fe6a7f6a40e:   neg    %rdx
   0.26%  ╭      0x00007fe6a7f6a411:   jmp    0x00007fe6a7f6a448
   0.02%  │↗  ↗  0x00007fe6a7f6a416:   mov    0x8(%rdi,%rdx,8),%rax
   0.89%  ││  │  0x00007fe6a7f6a41b:   mov    %rax,0x8(%rcx,%rdx,8)
   0.11%  ││  │  0x00007fe6a7f6a420:   inc    %rdx
          │╰  │  0x00007fe6a7f6a423:   jne    0x00007fe6a7f6a416
   0.02%  │   │  0x00007fe6a7f6a425:   xor    %rax,%rax
   0.03%  │   │  0x00007fe6a7f6a428:   vzeroupper 
   0.85%  │   │  0x00007fe6a7f6a42b:   leave  
   1.02%  │   │  0x00007fe6a7f6a42c:   ret    
          │   │  0x00007fe6a7f6a42d:   data16 xchg %ax,%ax
   0.96%  │ ↗ │  0x00007fe6a7f6a430:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
   0.18%  │ │ │  0x00007fe6a7f6a436:   vmovdqu %ymm0,-0x38(%rcx,%rdx,8)
   0.58%  │ │ │  0x00007fe6a7f6a43c:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
   1.06%  │ │ │  0x00007fe6a7f6a442:   vmovdqu %ymm0,-0x18(%rcx,%rdx,8)
   1.32%  ↘ │ │  0x00007fe6a7f6a448:   add    $0x8,%rdx
            ╰ │  0x00007fe6a7f6a44c:   jle    0x00007fe6a7f6a430
   0.04%      │  0x00007fe6a7f6a44e:   sub    $0x4,%rdx
             ╭│  0x00007fe6a7f6a452:   jg     0x00007fe6a7f6a468
   0.04%     ││  0x00007fe6a7f6a458:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
   0.82%     ││  0x00007fe6a7f6a45e:   vmovdqu %ymm0,-0x18(%rcx,%rdx,8)
   0.27%     ││  0x00007fe6a7f6a464:   add    $0x4,%rdx
   0.02%     ↘│  0x00007fe6a7f6a468:   sub    $0x4,%rdx
              ╰  0x00007fe6a7f6a46c:   jl     0x00007fe6a7f6a416
                 0x00007fe6a7f6a46e:   vzeroupper 
                 0x00007fe6a7f6a471:   xor    %rax,%rax
                 0x00007fe6a7f6a474:   leave  
                 0x00007fe6a7f6a475:   ret    
               --------------------------------------------------------------------------------
               - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               StubRoutines::jlong_arraycopy [0x00007fe6a7f6a480, 0x00007fe6a7f6a502] (130 bytes)
               --------------------------------------------------------------------------------
....................................................................................................
  10.30%  <total for region 2>

....[Hottest Regions]...............................................................................
  81.36%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 647 
  10.30%          runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   2.64%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 691 
   0.41%                kernel  [unknown] 
   0.25%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.16%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%             libjvm.so  HeapRegionManager::par_iterate 
   0.12%             libjvm.so  G1CardSet::is_empty 
   0.12%             libc.so.6  __memset_avx2_unaligned_erms 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   3.13%  <...other 367 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  81.36%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 647 
  10.30%          runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   3.55%                kernel  [unknown] 
   2.64%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 691 
   0.16%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   0.13%             libjvm.so  HeapRegionManager::par_iterate 
   0.12%             libjvm.so  G1CardSet::is_empty 
   0.12%             libc.so.6  __memset_avx2_unaligned_erms 
   0.07%             libjvm.so  InstanceKlass::allocate_objArray 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.06%             libjvm.so  FreeListAllocator::reset 
   0.05%             libjvm.so  ObjArrayAllocator::initialize 
   0.04%             libjvm.so  OptoRuntime::new_array_C 
   0.04%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.03%             libjvm.so  G1FromCardCache::clear 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libjvm.so  G1MonotonicArena::slot_size 
   0.03%             libjvm.so  FreeCSetClosure::do_heap_region 
   0.03%             libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<598116ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 598116ul>::oop_access_barrier 
   0.03%                [vdso]  [unknown] 
   1.09%  <...other 175 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  84.00%           c2, level 4
  10.30%          runtime stub
   3.55%                kernel
   1.67%             libjvm.so
   0.34%             libc.so.6
   0.03%        hsdis-amd64.so
   0.03%                [vdso]
   0.03%           interpreter
   0.02%                      
   0.02%  ld-linux-x86-64.so.2
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:09

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

Benchmark                                         Mode  Cnt    Score    Error  Units
EnumValuesLookupBenchmark.cached_enum_values      avgt    5   90.513 ±  3.147  ns/op
EnumValuesLookupBenchmark.cached_enum_values:asm  avgt           NaN             ---
EnumValuesLookupBenchmark.enum_values             avgt    5  121.626 ± 28.763  ns/op
EnumValuesLookupBenchmark.enum_values:asm         avgt           NaN             ---
