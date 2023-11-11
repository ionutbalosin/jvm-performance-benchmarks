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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 36.752 ns/op
# Warmup Iteration   2: 35.244 ns/op
# Warmup Iteration   3: 36.184 ns/op
# Warmup Iteration   4: 35.677 ns/op
# Warmup Iteration   5: 35.666 ns/op
Iteration   1: 35.670 ns/op
Iteration   2: 35.259 ns/op
Iteration   3: 35.739 ns/op
Iteration   4: 35.745 ns/op
Iteration   5: 35.647 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values":
  35.612 ±(99.9%) 0.776 ns/op [Average]
  (min, avg, max) = (35.259, 35.612, 35.745), stdev = 0.202
  CI (99.9%): [34.835, 36.388] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values:asm":
PrintAssembly processed: 125740 total address lines.
Perf output processed (skipped 56.292 seconds):
 Column 1: cycles (50682 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 555 

                 0x00007f5ca8639064:   lea    0x2(%rdi),%rdi
                 0x00007f5ca8639068:   lea    0x2(%rsi),%rsi
                 0x00007f5ca863906c:   test   $0x1,%al
          ╭      0x00007f5ca863906e:   je     0x00007f5ca863907a
          │      0x00007f5ca8639070:   movzbl (%rdi),%ebx
          │      0x00007f5ca8639073:   movzbl (%rsi),%ecx
          │      0x00007f5ca8639076:   cmp    %ecx,%ebx
          │╭     0x00007f5ca8639078:   jne    0x00007f5ca8639081
          ↘│     0x00007f5ca863907a:   mov    $0x1,%eax
           │╭    0x00007f5ca863907f:   jmp    0x00007f5ca8639083
   1.22%   ↘│    0x00007f5ca8639081:   xor    %eax,%eax
            ↘    0x00007f5ca8639083:   vpxor  %ymm1,%ymm1,%ymm1
                 0x00007f5ca8639087:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::equals@44 (line 1863)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                 0x00007f5ca863908b:   test   %eax,%eax
                 0x00007f5ca863908d:   jne    0x00007f5ca86391b5
   1.04%         0x00007f5ca8639093:   mov    $0x2,%r10d
             ╭   0x00007f5ca8639099:   jmp    0x00007f5ca86390ad
             │   0x00007f5ca863909b:   nopl   0x0(%rax,%rax,1)             ;*goto {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@37 (line 149)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
  20.13%     │↗  0x00007f5ca86390a0:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 149)
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
             ││  0x00007f5ca86390a3:   cmp    $0x29,%r10d
             ││  0x00007f5ca86390a7:   jge    0x00007f5ca8639208           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@14 (line 149)
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
             ↘│  0x00007f5ca86390ad:   mov    0x10(%rdx,%r10,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
              │  0x00007f5ca86390b2:   mov    0x18(%r12,%rbx,8),%edi       ; implicit exception: dispatches to 0x00007f5ca8639224
              │                                                            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@21 (line 150)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
  20.98%      │  0x00007f5ca86390b7:   nopw   0x0(%rax,%rax,1)
              │  0x00007f5ca86390c0:   movsbl 0x10(%r12,%rdi,8),%ecx       ; implicit exception: dispatches to 0x00007f5ca863923c
              │                                                            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.lang.String::equals@26 (line 1861)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%      │  0x00007f5ca86390c6:   lea    (%r12,%rbx,8),%r13           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
              │  0x00007f5ca86390ca:   cmp    %r11d,%edi
              │  0x00007f5ca86390cd:   je     0x00007f5ca86391b5           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.lang.String::equals@2 (line 1858)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
  19.86%      │  0x00007f5ca86390d3:   cmp    %r9d,%ecx
              │  0x00007f5ca86390d6:   jne    0x00007f5ca86391d4           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.lang.String::equals@33 (line 1861)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%      │  0x00007f5ca86390dc:   mov    0x14(%r12,%rdi,8),%ebx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.lang.String::equals@37 (line 1861)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%      │  0x00007f5ca86390e1:   mov    0xc(%r12,%rbx,8),%ecx
   2.97%      │  0x00007f5ca86390e6:   cmp    %r8d,%ecx
              ╰  0x00007f5ca86390e9:   jne    0x00007f5ca86390a0           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::equals@44 (line 1863)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                 0x00007f5ca86390eb:   lea    (%r12,%rbx,8),%rdi           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::equals@37 (line 1861)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                 0x00007f5ca86390ef:   lea    0x10(%r12,%rbx,8),%rdi
                 0x00007f5ca86390f4:   mov    %rbp,%rsi
....................................................................................................
  66.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 555 

            # {method} {0x00007f5c244797f0} &apos;cached_enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
            #           [sp+0x30]  (sp of caller)
            0x00007f5ca8638e20:   mov    0x8(%rsi),%r10d
            0x00007f5ca8638e24:   movabs $0x7f5c2f000000,%r11
            0x00007f5ca8638e2e:   add    %r11,%r10
            0x00007f5ca8638e31:   cmp    %r10,%rax
            0x00007f5ca8638e34:   jne    0x00007f5ca80c4080           ;   {runtime_call ic_miss_stub}
            0x00007f5ca8638e3a:   xchg   %ax,%ax
            0x00007f5ca8638e3c:   nopl   0x0(%rax)
          [Verified Entry Point]
   0.00%    0x00007f5ca8638e40:   mov    %eax,-0x14000(%rsp)
   1.25%    0x00007f5ca8638e47:   push   %rbp
            0x00007f5ca8638e48:   sub    $0x20,%rsp
            0x00007f5ca8638e4c:   cmpl   $0x1,0x20(%r15)
   0.99%    0x00007f5ca8638e54:   jne    0x00007f5ca863928e           ;*synchronization entry
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@-1 (line 75)
            0x00007f5ca8638e5a:   movabs $0x7ff13b040,%rdx            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x00000007ff13b040})}
            0x00007f5ca8638e64:   mov    0x10(%rdx),%r10d             ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
            0x00007f5ca8638e68:   mov    0x18(%r12,%r10,8),%r8d       ; implicit exception: dispatches to 0x00007f5ca8639224
                                                                      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@21 (line 150)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   1.42%    0x00007f5ca8638e6d:   mov    0x14(%rsi),%r11d             ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@1 (line 75)
            0x00007f5ca8638e71:   movsbl 0x10(%r12,%r8,8),%ecx        ; implicit exception: dispatches to 0x00007f5ca863923c
                                                                      ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@26 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   3.20%    0x00007f5ca8638e77:   lea    (%r12,%r10,8),%r13           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
            0x00007f5ca8638e7b:   nopl   0x0(%rax,%rax,1)
   0.32%    0x00007f5ca8638e80:   cmp    %r11d,%r8d
            0x00007f5ca8638e83:   je     0x00007f5ca86391b5           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@2 (line 1858)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
            0x00007f5ca8638e89:   movsbl 0x10(%r12,%r11,8),%r9d       ; implicit exception: dispatches to 0x00007f5ca8639254
                                                                      ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@30 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.74%    0x00007f5ca8638e8f:   cmp    %r9d,%ecx
            0x00007f5ca8638e92:   jne    0x00007f5ca86391d9           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@33 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
            0x00007f5ca8638e98:   mov    0x14(%r12,%r11,8),%ebx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@41 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.28%    0x00007f5ca8638e9d:   mov    0x14(%r12,%r8,8),%r10d       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@37 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
            0x00007f5ca8638ea2:   mov    0xc(%r12,%rbx,8),%r8d
   0.79%    0x00007f5ca8638ea7:   mov    0xc(%r12,%r10,8),%ecx        ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@44 (line 1863)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   2.88%    0x00007f5ca8638eac:   lea    (%r12,%rbx,8),%rdi           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@41 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.04%    0x00007f5ca8638eb0:   lea    0x10(%r12,%rbx,8),%rbp
            0x00007f5ca8638eb5:   cmp    %r8d,%ecx
            0x00007f5ca8638eb8:   jne    0x00007f5ca8638f88           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@44 (line 1863)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
            0x00007f5ca8638ebe:   lea    (%r12,%r10,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@37 (line 1861)
....................................................................................................
  11.92%  <total for region 2>

....[Hottest Regions]...............................................................................
  66.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 555 
  11.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 555 
   7.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 555 
   5.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 555 
   3.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 555 
   3.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 591 
   0.66%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.02%  <...other 308 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 555 
   3.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 591 
   2.00%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  _IO_no_init 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%         interpreter  return entry points  
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  PlatformMonitor::wait 
   0.00%           libjvm.so  GraphBuilder::header_block 
   0.10%  <...other 50 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.78%         c2, level 4
   2.00%              kernel
   0.10%           libjvm.so
   0.04%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 61.847 ns/op
# Warmup Iteration   2: 60.499 ns/op
# Warmup Iteration   3: 61.088 ns/op
# Warmup Iteration   4: 60.391 ns/op
# Warmup Iteration   5: 60.356 ns/op
Iteration   1: 60.394 ns/op
Iteration   2: 60.422 ns/op
Iteration   3: 60.287 ns/op
Iteration   4: 60.462 ns/op
Iteration   5: 60.391 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values":
  60.391 ±(99.9%) 0.249 ns/op [Average]
  (min, avg, max) = (60.287, 60.391, 60.462), stdev = 0.065
  CI (99.9%): [60.142, 60.640] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values:asm":
PrintAssembly processed: 123377 total address lines.
Perf output processed (skipped 56.138 seconds):
 Column 1: cycles (50485 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 572 

               0x00007f2900637442:   mov    $0x1,%eax
          ╭    0x00007f2900637447:   jmp    0x00007f290063744b
          │    0x00007f2900637449:   xor    %eax,%eax
          ↘    0x00007f290063744b:   vpxor  %ymm1,%ymm1,%ymm1
               0x00007f290063744f:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@44 (line 1863)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
               0x00007f2900637453:   test   %eax,%eax
               0x00007f2900637455:   jne    0x00007f2900637578
   0.64%       0x00007f290063745b:   mov    $0x1,%r10d
   0.00%   ╭   0x00007f2900637461:   jmp    0x00007f2900637470           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@37 (line 140)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.29%   │↗  0x00007f2900637463:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 140)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   2.52%   ││  0x00007f2900637466:   cmp    $0x29,%r10d
           ││  0x00007f290063746a:   jge    0x00007f29006375f0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@14 (line 140)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   3.12%   ↘│  0x00007f2900637470:   mov    0x10(%r13,%r10,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   3.20%    │  0x00007f2900637475:   mov    0x18(%r12,%r11,8),%ebx       ; implicit exception: dispatches to 0x00007f2900637608
            │                                                            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 141)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.43%    │  0x00007f290063747a:   nopw   0x0(%rax,%rax,1)
   2.60%    │  0x00007f2900637480:   movsbl 0x10(%r12,%rbx,8),%ebp       ; implicit exception: dispatches to 0x00007f2900637620
            │                                                            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::equals@26 (line 1861)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.90%    │  0x00007f2900637486:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   2.96%    │  0x00007f290063748a:   mov    0x14(%rsp),%ecx
   4.33%    │  0x00007f290063748e:   cmp    %ecx,%ebx
            │  0x00007f2900637490:   je     0x00007f2900637578           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::equals@2 (line 1858)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   1.91%    │  0x00007f2900637496:   cmp    %r9d,%ebp
            │  0x00007f2900637499:   jne    0x00007f29006375bc           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::equals@33 (line 1861)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   3.13%    │  0x00007f290063749f:   mov    0x14(%r12,%rbx,8),%ebx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::equals@37 (line 1861)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   3.24%    │  0x00007f29006374a4:   mov    0xc(%r12,%rbx,8),%ecx
  11.46%    │  0x00007f29006374a9:   cmp    %r8d,%ecx
            ╰  0x00007f29006374ac:   jne    0x00007f2900637463           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@44 (line 1863)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.65%       0x00007f29006374ae:   lea    (%r12,%rbx,8),%rdi           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@37 (line 1861)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.03%       0x00007f29006374b2:   lea    0x10(%r12,%rbx,8),%rdi
               0x00007f29006374b7:   mov    %rdx,%rsi
               0x00007f29006374ba:   test   %ecx,%ecx
               0x00007f29006374bc:   je     0x00007f290063755f
   1.15%       0x00007f29006374c2:   mov    %ecx,%eax
   0.02%       0x00007f29006374c4:   and    $0x1f,%eax
               0x00007f29006374c7:   and    $0xffffffe0,%ecx
               0x00007f29006374ca:   je     0x00007f290063751b
               0x00007f29006374d0:   lea    (%rdi,%rcx,1),%rdi
               0x00007f29006374d4:   lea    (%rsi,%rcx,1),%rsi
               0x00007f29006374d8:   neg    %rcx
               0x00007f29006374db:   vmovdqu (%rdi,%rcx,1),%ymm0
               0x00007f29006374e0:   vmovdqu (%rsi,%rcx,1),%ymm1
               0x00007f29006374e5:   vpxor  %ymm1,%ymm0,%ymm0
               0x00007f29006374e9:   vptest %ymm0,%ymm0
               0x00007f29006374ee:   jne    0x00007f2900637566
....................................................................................................
  54.58%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::jlong_disjoint_arraycopy 

               --------------------------------------------------------------------------------
               - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               StubRoutines::jlong_disjoint_arraycopy [0x00007f29000a9400, 0x00007f29000a9476] (118 bytes)
               --------------------------------------------------------------------------------
   0.02%         0x00007f29000a9400:   push   %rbp
   1.86%         0x00007f29000a9401:   mov    %rsp,%rbp
   0.06%         0x00007f29000a9404:   lea    -0x8(%rdi,%rdx,8),%rdi
                 0x00007f29000a9409:   lea    -0x8(%rsi,%rdx,8),%rcx
   0.54%         0x00007f29000a940e:   neg    %rdx
   0.04%  ╭      0x00007f29000a9411:   jmp    0x00007f29000a9448
   0.01%  │↗  ↗  0x00007f29000a9416:   mov    0x8(%rdi,%rdx,8),%rax
   0.39%  ││  │  0x00007f29000a941b:   mov    %rax,0x8(%rcx,%rdx,8)
   0.33%  ││  │  0x00007f29000a9420:   inc    %rdx
          │╰  │  0x00007f29000a9423:   jne    0x00007f29000a9416
   0.01%  │   │  0x00007f29000a9425:   xor    %rax,%rax
   0.01%  │   │  0x00007f29000a9428:   vzeroupper 
   0.65%  │   │  0x00007f29000a942b:   leave  
   0.68%  │   │  0x00007f29000a942c:   ret    
          │   │  0x00007f29000a942d:   data16 xchg %ax,%ax
   1.07%  │ ↗ │  0x00007f29000a9430:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
   0.27%  │ │ │  0x00007f29000a9436:   vmovdqu %ymm0,-0x38(%rcx,%rdx,8)
   3.74%  │ │ │  0x00007f29000a943c:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
   3.89%  │ │ │  0x00007f29000a9442:   vmovdqu %ymm0,-0x18(%rcx,%rdx,8)
   2.34%  ↘ │ │  0x00007f29000a9448:   add    $0x8,%rdx
            ╰ │  0x00007f29000a944c:   jle    0x00007f29000a9430
   0.00%      │  0x00007f29000a944e:   sub    $0x4,%rdx
             ╭│  0x00007f29000a9452:   jg     0x00007f29000a9468
   0.01%     ││  0x00007f29000a9458:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
   0.60%     ││  0x00007f29000a945e:   vmovdqu %ymm0,-0x18(%rcx,%rdx,8)
   0.55%     ││  0x00007f29000a9464:   add    $0x4,%rdx
   0.00%     ↘│  0x00007f29000a9468:   sub    $0x4,%rdx
              ╰  0x00007f29000a946c:   jl     0x00007f29000a9416
                 0x00007f29000a946e:   vzeroupper 
                 0x00007f29000a9471:   xor    %rax,%rax
                 0x00007f29000a9474:   leave  
                 0x00007f29000a9475:   ret    
               --------------------------------------------------------------------------------
               - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               StubRoutines::jlong_arraycopy [0x00007f29000a9480, 0x00007f29000a9502] (130 bytes)
               --------------------------------------------------------------------------------
....................................................................................................
  17.07%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 572 

            # {method} {0x00007f287c4798c0} &apos;enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
            #           [sp+0x40]  (sp of caller)
            0x00007f2900637240:   mov    0x8(%rsi),%r10d
            0x00007f2900637244:   movabs $0x7f2887000000,%r11
            0x00007f290063724e:   add    %r11,%r10
            0x00007f2900637251:   cmp    %r10,%rax
            0x00007f2900637254:   jne    0x00007f29000c4080           ;   {runtime_call ic_miss_stub}
            0x00007f290063725a:   xchg   %ax,%ax
            0x00007f290063725c:   nopl   0x0(%rax)
          [Verified Entry Point]
   0.06%    0x00007f2900637260:   mov    %eax,-0x14000(%rsp)
   0.51%    0x00007f2900637267:   push   %rbp
   0.04%    0x00007f2900637268:   sub    $0x30,%rsp
   0.03%    0x00007f290063726c:   cmpl   $0x1,0x20(%r15)
   0.60%    0x00007f2900637274:   jne    0x00007f2900637682           ;*synchronization entry
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@-1 (line 81)
   0.03%    0x00007f290063727a:   mov    0x14(%rsi),%r11d             ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@1 (line 81)
   0.03%    0x00007f290063727e:   mov    %r11d,0x14(%rsp)
            0x00007f2900637283:   mov    0x1b8(%r15),%r13
   0.57%    0x00007f290063728a:   mov    %r13,%r10
   0.03%    0x00007f290063728d:   add    $0xb8,%r10
   0.04%    0x00007f2900637294:   nopl   0x0(%rax,%rax,1)
            0x00007f290063729c:   data16 data16 xchg %ax,%ax
   0.56%    0x00007f29006372a0:   cmp    0x1c8(%r15),%r10
            0x00007f29006372a7:   jae    0x00007f2900637591
   0.03%    0x00007f29006372ad:   mov    %r10,0x1b8(%r15)
   0.02%    0x00007f29006372b4:   prefetchw 0xc0(%r10)
            0x00007f29006372bc:   movq   $0x1,0x0(%r13)
   0.56%    0x00007f29006372c4:   prefetchw 0x100(%r10)
   0.27%    0x00007f29006372cc:   movl   $0x102a4b8,0x8(%r13)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
   0.03%    0x00007f29006372d4:   prefetchw 0x140(%r10)
   0.18%    0x00007f29006372dc:   movl   $0x29,0xc(%r13)
   0.51%    0x00007f29006372e4:   prefetchw 0x180(%r10)               ;*invokevirtual clone {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@3 (line 84)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.37%    0x00007f29006372ec:   mov    %r13,%rsi
   0.03%    0x00007f29006372ef:   add    $0x10,%rsi
   0.00%    0x00007f29006372f3:   mov    $0x15,%edx
   0.53%    0x00007f29006372f8:   movabs $0x7ff13af88,%r10            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x00000007ff13af88})}
   0.07%    0x00007f2900637302:   movabs $0x7ff13af88,%rbx            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x00000007ff13af88})}
   0.02%    0x00007f290063730c:   add    $0x10,%rbx                   ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.00%    0x00007f2900637310:   mov    %rbx,%rdi
   0.55%    0x00007f2900637313:   vzeroupper 
   0.64%    0x00007f2900637316:   movabs $0x7f29000a9400,%r10
   0.08%    0x00007f2900637320:   call   *%r10
   0.09%    0x00007f2900637323:   nopl   0x0(%rax,%rax,1)             ;   {other}
   0.33%    0x00007f290063732b:   mov    (%rbx),%r11d                 ;*invokevirtual clone {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@3 (line 84)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.40%    0x00007f290063732e:   mov    0x14(%rsp),%r10d
   1.45%    0x00007f2900637333:   movsbl 0x10(%r12,%r10,8),%r9d       ; implicit exception: dispatches to 0x00007f290063763c
                                                                      ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@30 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   3.02%    0x00007f2900637339:   nopl   0x0(%rax)
   0.02%    0x00007f2900637340:   mov    0x18(%r12,%r11,8),%r8d       ; implicit exception: dispatches to 0x00007f2900637608
                                                                      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.19%    0x00007f2900637345:   movsbl 0x10(%r12,%r8,8),%ebp        ; implicit exception: dispatches to 0x00007f2900637620
                                                                      ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@26 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.82%    0x00007f290063734b:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.03%    0x00007f290063734f:   cmp    %r10d,%r8d
            0x00007f2900637352:   je     0x00007f2900637578           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@2 (line 1858)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.00%    0x00007f2900637358:   cmp    %r9d,%ebp
   0.58%    0x00007f290063735b:   nopl   0x0(%rax,%rax,1)
            0x00007f2900637360:   jne    0x00007f29006375c2           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@33 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.65%    0x00007f2900637366:   mov    0x14(%r12,%r8,8),%esi        ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@37 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%    0x00007f290063736b:   mov    0x14(%rsp),%r10d
            0x00007f2900637370:   mov    0x14(%r12,%r10,8),%r10d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@41 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%    0x00007f2900637375:   mov    0xc(%r12,%rsi,8),%ecx
   1.90%    0x00007f290063737a:   mov    0xc(%r12,%r10,8),%r8d        ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@44 (line 1863)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   1.17%    0x00007f290063737f:   lea    (%r12,%r10,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@41 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
            0x00007f2900637383:   lea    0x10(%r12,%r10,8),%rdx
            0x00007f2900637388:   cmp    %r8d,%ecx
            0x00007f290063738b:   jne    0x00007f290063745b           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@44 (line 1863)
....................................................................................................
  17.05%  <total for region 3>

....[Hottest Regions]...............................................................................
  54.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 572 
  17.07%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
  17.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 572 
   4.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 572 
   2.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 572 
   1.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 610 
   0.13%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   1.75%  <...other 412 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  78.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 572 
  17.07%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 610 
   1.33%              kernel  [unknown] 
   0.09%                      <unknown> 
   0.07%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  InstanceKlass::allocate_objArray 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%           libjvm.so  G1CardSet::reset_table_scanner 
   0.03%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  G1CollectedHeap::allocate_new_tlab 
   0.02%           libjvm.so  InstanceKlass::array_klass 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<598116ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 598116ul>::oop_access_barrier 
   0.02%           libjvm.so  ObjArrayAllocator::initialize 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           libjvm.so  OptoRuntime::new_array_C 
   0.59%  <...other 133 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  80.49%         c2, level 4
  17.07%        runtime stub
   1.33%              kernel
   0.81%           libjvm.so
   0.12%        libc-2.31.so
   0.09%                    
   0.03%  libpthread-2.31.so
   0.02%              [vdso]
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:38

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

Benchmark                                         Mode  Cnt   Score   Error  Units
EnumValuesLookupBenchmark.cached_enum_values      avgt    5  35.612 ± 0.776  ns/op
EnumValuesLookupBenchmark.cached_enum_values:asm  avgt          NaN            ---
EnumValuesLookupBenchmark.enum_values             avgt    5  60.391 ± 0.249  ns/op
EnumValuesLookupBenchmark.enum_values:asm         avgt          NaN            ---
