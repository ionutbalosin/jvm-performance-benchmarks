# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
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
# Warmup Iteration   1: 36.984 ns/op
# Warmup Iteration   2: 35.810 ns/op
# Warmup Iteration   3: 36.468 ns/op
# Warmup Iteration   4: 36.043 ns/op
# Warmup Iteration   5: 35.707 ns/op
Iteration   1: 35.911 ns/op
Iteration   2: 35.861 ns/op
Iteration   3: 35.611 ns/op
Iteration   4: 35.818 ns/op
Iteration   5: 35.811 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values":
  35.802 ±(99.9%) 0.440 ns/op [Average]
  (min, avg, max) = (35.611, 35.802, 35.911), stdev = 0.114
  CI (99.9%): [35.362, 36.242] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values:·asm":
PrintAssembly processed: 114690 total address lines.
Perf output processed (skipped 55.702 seconds):
 Column 1: cycles (50351 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 482 

              0x00007fe830f63aed:   jmp    0x00007fe830f63af1
              0x00007fe830f63aef:   xor    %eax,%eax
              0x00007fe830f63af1:   vpxor  %ymm1,%ymm1,%ymm1
              0x00007fe830f63af5:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@44 (line 1828)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
              0x00007fe830f63af9:   test   %eax,%eax
              0x00007fe830f63afb:   nopl   0x0(%rax,%rax,1)
              0x00007fe830f63b00:   jne    0x00007fe830f63c28
   0.95%      0x00007fe830f63b06:   mov    $0x1,%r13d
          ╭   0x00007fe830f63b0c:   jmp    0x00007fe830f63b1d
          │   0x00007fe830f63b0e:   xchg   %ax,%ax                      ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@37 (line 151)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   5.68%  │↗  0x00007fe830f63b10:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 151)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   4.74%  ││  0x00007fe830f63b13:   cmp    $0x29,%r13d
          ││  0x00007fe830f63b17:   jge    0x00007fe830f63c6c           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@14 (line 151)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   6.48%  ↘│  0x00007fe830f63b1d:   mov    0x10(%r10,%r13,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 151)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   5.99%   │  0x00007fe830f63b22:   mov    0x14(%r12,%rcx,8),%ebx       ; implicit exception: dispatches to 0x00007fe830f63c8d
           │                                                            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@21 (line 152)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   5.38%   │  0x00007fe830f63b27:   movsbl 0x10(%r12,%rbx,8),%r11d      ; implicit exception: dispatches to 0x00007fe830f63c9c
           │                                                            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.String::equals@26 (line 1826)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   4.79%   │  0x00007fe830f63b2d:   lea    (%r12,%rcx,8),%r14           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 151)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   6.09%   │  0x00007fe830f63b31:   cmp    %edx,%ebx
           │  0x00007fe830f63b33:   je     0x00007fe830f63c28           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.String::equals@2 (line 1823)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   5.96%   │  0x00007fe830f63b39:   cmp    %ebp,%r11d
   5.06%   │  0x00007fe830f63b3c:   nopl   0x0(%rax)
   4.53%   │  0x00007fe830f63b40:   jne    0x00007fe830f63c41           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.String::equals@33 (line 1826)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   6.55%   │  0x00007fe830f63b46:   mov    0x14(%r12,%rbx,8),%r11d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.String::equals@37 (line 1826)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   5.97%   │  0x00007fe830f63b4b:   mov    0xc(%r12,%r11,8),%ecx
   5.94%   │  0x00007fe830f63b50:   cmp    %r9d,%ecx
           ╰  0x00007fe830f63b53:   jne    0x00007fe830f63b10           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@44 (line 1828)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   0.26%      0x00007fe830f63b55:   lea    (%r12,%r11,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@37 (line 1826)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 152)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 77)
   0.86%      0x00007fe830f63b59:   lea    0x10(%r12,%r11,8),%rdi
              0x00007fe830f63b5e:   mov    %r8,%rsi
              0x00007fe830f63b61:   test   %ecx,%ecx
              0x00007fe830f63b63:   je     0x00007fe830f63c0e
   0.41%      0x00007fe830f63b69:   mov    %ecx,%eax
   0.85%      0x00007fe830f63b6b:   and    $0x1f,%eax
              0x00007fe830f63b6e:   and    $0xffffffe0,%ecx
              0x00007fe830f63b71:   je     0x00007fe830f63bc2
              0x00007fe830f63b77:   lea    (%rdi,%rcx,1),%rdi
              0x00007fe830f63b7b:   lea    (%rsi,%rcx,1),%rsi
              0x00007fe830f63b7f:   neg    %rcx
              0x00007fe830f63b82:   vmovdqu (%rdi,%rcx,1),%ymm1
              0x00007fe830f63b87:   vmovdqu (%rsi,%rcx,1),%ymm0
              0x00007fe830f63b8c:   vpxor  %ymm0,%ymm1,%ymm1
              0x00007fe830f63b90:   vptest %ymm1,%ymm1
              0x00007fe830f63b95:   jne    0x00007fe830f63c15
....................................................................................................
  76.51%  <total for region 1>

....[Hottest Regions]...............................................................................
  76.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 482 
   8.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 482 
   6.42%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 482 
   4.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 482 
   2.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 518 
   0.31%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.58%  <...other 188 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 482 
   2.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 518 
   1.00%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  os::elapsed_counter 
   0.00%          ld-2.31.so  dl_open_worker 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __strncat_ssse3 
   0.00%           libjvm.so  HighResTimeSampler::take_sample 
   0.00%         interpreter  getstatic  178 getstatic  
   0.00%           libjvm.so  os::javaTimeNanos 
   0.00%        libc-2.31.so  __strcasecmp_l_sse42 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%           libjvm.so  PhaseChaitin::gather_lrg_masks 
   0.07%  <...other 37 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.82%         c2, level 4
   1.00%              kernel
   0.09%           libjvm.so
   0.02%                    
   0.02%        libc-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 59.728 ns/op
# Warmup Iteration   2: 58.905 ns/op
# Warmup Iteration   3: 59.437 ns/op
# Warmup Iteration   4: 58.211 ns/op
# Warmup Iteration   5: 58.298 ns/op
Iteration   1: 58.213 ns/op
Iteration   2: 58.233 ns/op
Iteration   3: 58.209 ns/op
Iteration   4: 58.291 ns/op
Iteration   5: 58.222 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values":
  58.234 ±(99.9%) 0.129 ns/op [Average]
  (min, avg, max) = (58.209, 58.234, 58.291), stdev = 0.033
  CI (99.9%): [58.105, 58.362] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values:·asm":
PrintAssembly processed: 115244 total address lines.
Perf output processed (skipped 55.665 seconds):
 Column 1: cycles (50461 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 487 

               0x00007f8fe0f65b05:   mov    $0x1,%eax
          ╭    0x00007f8fe0f65b0a:   jmp    0x00007f8fe0f65b0e
          │    0x00007f8fe0f65b0c:   xor    %eax,%eax
          ↘    0x00007f8fe0f65b0e:   vpxor  %ymm0,%ymm0,%ymm0
               0x00007f8fe0f65b12:   vpxor  %ymm1,%ymm1,%ymm1            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@44 (line 1828)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
               0x00007f8fe0f65b16:   test   %eax,%eax
               0x00007f8fe0f65b18:   jne    0x00007f8fe0f65c48
   0.63%       0x00007f8fe0f65b1e:   mov    $0x1,%r10d
   0.00%   ╭   0x00007f8fe0f65b24:   jmp    0x00007f8fe0f65b3d
           │   0x00007f8fe0f65b26:   data16 nopw 0x0(%rax,%rax,1)        ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@37 (line 142)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   3.71%   │↗  0x00007f8fe0f65b30:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 142)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   2.34%   ││  0x00007f8fe0f65b33:   cmp    $0x29,%r10d
           ││  0x00007f8fe0f65b37:   jge    0x00007f8fe0f65cb4           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@14 (line 142)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   3.30%   ↘│  0x00007f8fe0f65b3d:   mov    0x10(%r13,%r10,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 142)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   4.20%    │  0x00007f8fe0f65b42:   mov    0x14(%r12,%rcx,8),%edi       ; implicit exception: dispatches to 0x00007f8fe0f65cd9
            │                                                            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 143)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   3.80%    │  0x00007f8fe0f65b47:   movsbl 0x10(%r12,%rdi,8),%ebx       ; implicit exception: dispatches to 0x00007f8fe0f65ce8
            │                                                            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::equals@26 (line 1826)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   3.59%    │  0x00007f8fe0f65b4d:   lea    (%r12,%rcx,8),%rdx           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 142)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   2.82%    │  0x00007f8fe0f65b51:   cmp    %ebp,%edi
            │  0x00007f8fe0f65b53:   je     0x00007f8fe0f65c48           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::equals@2 (line 1823)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   4.06%    │  0x00007f8fe0f65b59:   cmp    %r9d,%ebx
   4.42%    │  0x00007f8fe0f65b5c:   nopl   0x0(%rax)
   2.33%    │  0x00007f8fe0f65b60:   jne    0x00007f8fe0f65c85           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::equals@33 (line 1826)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   3.60%    │  0x00007f8fe0f65b66:   mov    0x14(%r12,%rdi,8),%edi       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::equals@37 (line 1826)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   3.90%    │  0x00007f8fe0f65b6b:   mov    0xc(%r12,%rdi,8),%ecx
   7.76%    │  0x00007f8fe0f65b70:   cmp    %r8d,%ecx
            ╰  0x00007f8fe0f65b73:   jne    0x00007f8fe0f65b30           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@44 (line 1828)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   0.65%       0x00007f8fe0f65b75:   lea    (%r12,%rdi,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@37 (line 1826)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   0.02%       0x00007f8fe0f65b79:   lea    0x10(%r12,%rdi,8),%rdi
               0x00007f8fe0f65b7e:   mov    %r11,%rsi
               0x00007f8fe0f65b81:   test   %ecx,%ecx
               0x00007f8fe0f65b83:   je     0x00007f8fe0f65c2e
   1.25%       0x00007f8fe0f65b89:   mov    %ecx,%eax
   0.03%       0x00007f8fe0f65b8b:   and    $0x1f,%eax
               0x00007f8fe0f65b8e:   and    $0xffffffe0,%ecx
               0x00007f8fe0f65b91:   je     0x00007f8fe0f65be2
               0x00007f8fe0f65b97:   lea    (%rdi,%rcx,1),%rdi
               0x00007f8fe0f65b9b:   lea    (%rsi,%rcx,1),%rsi
               0x00007f8fe0f65b9f:   neg    %rcx
               0x00007f8fe0f65ba2:   vmovdqu (%rdi,%rcx,1),%ymm1
               0x00007f8fe0f65ba7:   vmovdqu (%rsi,%rcx,1),%ymm0
               0x00007f8fe0f65bac:   vpxor  %ymm0,%ymm1,%ymm1
               0x00007f8fe0f65bb0:   vptest %ymm1,%ymm1
               0x00007f8fe0f65bb5:   jne    0x00007f8fe0f65c35
....................................................................................................
  52.38%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::jlong_disjoint_arraycopy 

               --------------------------------------------------------------------------------
               - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               StubRoutines::jlong_disjoint_arraycopy [0x00007f8fe09e30c0, 0x00007f8fe09e313a] (122 bytes)
               --------------------------------------------------------------------------------
   0.51%         0x00007f8fe09e30c0:   push   %rbp
   3.38%         0x00007f8fe09e30c1:   mov    %rsp,%rbp
   0.00%         0x00007f8fe09e30c4:   lea    -0x8(%rdi,%rdx,8),%rdi
   0.04%         0x00007f8fe09e30c9:   lea    -0x8(%rsi,%rdx,8),%rcx
   0.62%         0x00007f8fe09e30ce:   neg    %rdx
   0.00%  ╭      0x00007f8fe09e30d1:   jmp    Stub::jlong_disjoint_arraycopy+72 0x00007f8fe09e3108
   0.59%  │↗  ↗  0x00007f8fe09e30d6:   mov    0x8(%rdi,%rdx,8),%rax
   0.01%  ││  │  0x00007f8fe09e30db:   mov    %rax,0x8(%rcx,%rdx,8)
   0.25%  ││  │  0x00007f8fe09e30e0:   inc    %rdx
          │╰  │  0x00007f8fe09e30e3:   jne    Stub::jlong_disjoint_arraycopy+22 0x00007f8fe09e30d6
   0.01%  │   │  0x00007f8fe09e30e5:   xor    %rax,%rax
   0.39%  │   │  0x00007f8fe09e30e8:   vzeroupper 
   0.65%  │   │  0x00007f8fe09e30eb:   leave  
   0.50%  │   │  0x00007f8fe09e30ec:   ret    
          │   │  0x00007f8fe09e30ed:   data16 xchg %ax,%ax
   1.19%  │ ↗ │  0x00007f8fe09e30f0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
   0.57%  │ │ │  0x00007f8fe09e30f6:   vmovdqu %ymm0,-0x38(%rcx,%rdx,8)
   4.24%  │ │ │  0x00007f8fe09e30fc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm1
   0.39%  │ │ │  0x00007f8fe09e3102:   vmovdqu %ymm1,-0x18(%rcx,%rdx,8)
   2.99%  ↘ │ │  0x00007f8fe09e3108:   add    $0x8,%rdx
            ╰ │  0x00007f8fe09e310c:   jle    Stub::jlong_disjoint_arraycopy+48 0x00007f8fe09e30f0
   0.12%      │  0x00007f8fe09e310e:   sub    $0x4,%rdx
             ╭│  0x00007f8fe09e3112:   jg     Stub::jlong_disjoint_arraycopy+100 0x00007f8fe09e3124
   0.10%     ││  0x00007f8fe09e3114:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
   0.36%     ││  0x00007f8fe09e311a:   vmovdqu %ymm0,-0x18(%rcx,%rdx,8)
   2.10%     ││  0x00007f8fe09e3120:   add    $0x4,%rdx
   0.01%     ↘│  0x00007f8fe09e3124:   vpxor  %ymm0,%ymm0,%ymm0
              │  0x00007f8fe09e3128:   vpxor  %ymm1,%ymm1,%ymm1
   0.02%      │  0x00007f8fe09e312c:   sub    $0x4,%rdx
              ╰  0x00007f8fe09e3130:   jl     Stub::jlong_disjoint_arraycopy+22 0x00007f8fe09e30d6
                 0x00007f8fe09e3132:   vzeroupper 
                 0x00007f8fe09e3135:   xor    %rax,%rax
                 0x00007f8fe09e3138:   leave  
                 0x00007f8fe09e3139:   ret    
               --------------------------------------------------------------------------------
               - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               StubRoutines::jlong_arraycopy [0x00007f8fe09e3140, 0x00007f8fe09e31c6] (134 bytes)
               --------------------------------------------------------------------------------
....................................................................................................
  19.05%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 487 

            # {method} {0x00007f8fc1873cc8} &apos;enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
            #           [sp+0x50]  (sp of caller)
            0x00007f8fe0f65920:   mov    0x8(%rsi),%r10d
            0x00007f8fe0f65924:   movabs $0x800000000,%r11
            0x00007f8fe0f6592e:   add    %r11,%r10
            0x00007f8fe0f65931:   cmp    %r10,%rax
            0x00007f8fe0f65934:   jne    0x00007f8fe09fbd80           ;   {runtime_call ic_miss_stub}
            0x00007f8fe0f6593a:   xchg   %ax,%ax
            0x00007f8fe0f6593c:   nopl   0x0(%rax)
          [Verified Entry Point]
   0.16%    0x00007f8fe0f65940:   mov    %eax,-0x14000(%rsp)
   0.49%    0x00007f8fe0f65947:   push   %rbp
   0.07%    0x00007f8fe0f65948:   sub    $0x40,%rsp                   ;*synchronization entry
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@-1 (line 83)
   0.41%    0x00007f8fe0f6594c:   mov    0x14(%rsi),%ebp
   0.20%    0x00007f8fe0f6594f:   mov    0x108(%r15),%r13
   0.09%    0x00007f8fe0f65956:   mov    %r13,%r10
   0.06%    0x00007f8fe0f65959:   add    $0xb8,%r10
   0.28%    0x00007f8fe0f65960:   cmp    0x118(%r15),%r10
            0x00007f8fe0f65967:   jae    0x00007f8fe0f65c61
   0.17%    0x00007f8fe0f6596d:   mov    %r10,0x108(%r15)
   0.08%    0x00007f8fe0f65974:   prefetchw 0xc0(%r10)
   0.10%    0x00007f8fe0f6597c:   movq   $0x1,0x0(%r13)
   0.27%    0x00007f8fe0f65984:   prefetchw 0x100(%r10)
   0.46%    0x00007f8fe0f6598c:   movl   $0xc26330,0x8(%r13)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
   0.06%    0x00007f8fe0f65994:   prefetchw 0x140(%r10)
   0.31%    0x00007f8fe0f6599c:   movl   $0x29,0xc(%r13)
   0.30%    0x00007f8fe0f659a4:   prefetchw 0x180(%r10)               ;*invokevirtual clone {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@3 (line 86)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 142)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   0.54%    0x00007f8fe0f659ac:   mov    %r13,%rsi
   0.06%    0x00007f8fe0f659af:   add    $0x10,%rsi
   0.09%    0x00007f8fe0f659b3:   mov    $0x15,%edx
   0.27%    0x00007f8fe0f659b8:   movabs $0x7fee2af38,%r10            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x00000007fee2af38})}
   0.20%    0x00007f8fe0f659c2:   movabs $0x7fee2af38,%rbx            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x00000007fee2af38})}
   0.08%    0x00007f8fe0f659cc:   add    $0x10,%rbx                   ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 142)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   0.11%    0x00007f8fe0f659d0:   mov    %rbx,%rdi
   0.27%    0x00007f8fe0f659d3:   nopw   0x0(%rax,%rax,1)
   0.20%    0x00007f8fe0f659dc:   data16 data16 xchg %ax,%ax
   0.07%    0x00007f8fe0f659e0:   vzeroupper 
   0.61%    0x00007f8fe0f659e3:   movabs $0x7f8fe09e30c0,%r10
   0.09%    0x00007f8fe0f659ed:   call   *%r10
   0.57%    0x00007f8fe0f659f0:   mov    (%rbx),%r11d                 ;*invokevirtual clone {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@3 (line 86)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 142)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   1.00%    0x00007f8fe0f659f3:   movsbl 0x10(%r12,%rbp,8),%r9d       ; implicit exception: dispatches to 0x00007f8fe0f65cf8
                                                                      ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@30 (line 1826)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   1.09%    0x00007f8fe0f659f9:   nopl   0x0(%rax)
   0.00%    0x00007f8fe0f65a00:   mov    0x14(%r12,%r11,8),%r10d      ; implicit exception: dispatches to 0x00007f8fe0f65cd9
                                                                      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 143)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   1.74%    0x00007f8fe0f65a05:   movsbl 0x10(%r12,%r10,8),%ebx       ; implicit exception: dispatches to 0x00007f8fe0f65ce8
                                                                      ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@26 (line 1826)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   3.12%    0x00007f8fe0f65a0b:   lea    (%r12,%r11,8),%rdx           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 142)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   0.01%    0x00007f8fe0f65a0f:   cmp    %ebp,%r10d
            0x00007f8fe0f65a12:   je     0x00007f8fe0f65c48           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@2 (line 1823)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   0.01%    0x00007f8fe0f65a18:   cmp    %r9d,%ebx
   0.66%    0x00007f8fe0f65a1b:   nopl   0x0(%rax,%rax,1)
            0x00007f8fe0f65a20:   jne    0x00007f8fe0f65ccc           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@33 (line 1826)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   0.64%    0x00007f8fe0f65a26:   mov    0x14(%r12,%r10,8),%r10d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@37 (line 1826)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   0.01%    0x00007f8fe0f65a2b:   mov    0x14(%r12,%rbp,8),%r11d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@41 (line 1826)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   0.02%    0x00007f8fe0f65a30:   mov    0xc(%r12,%r10,8),%ecx
   1.79%    0x00007f8fe0f65a35:   mov    0xc(%r12,%r11,8),%r8d        ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@44 (line 1828)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   0.04%    0x00007f8fe0f65a3a:   lea    (%r12,%r11,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@41 (line 1826)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
   0.00%    0x00007f8fe0f65a3e:   lea    0x10(%r12,%r11,8),%r11
   0.01%    0x00007f8fe0f65a43:   cmp    %r8d,%ecx
            0x00007f8fe0f65a46:   jne    0x00007f8fe0f65b1e           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@44 (line 1828)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
            0x00007f8fe0f65a4c:   lea    (%r12,%r10,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@37 (line 1826)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 143)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 83)
            0x00007f8fe0f65a50:   lea    0x10(%r12,%r10,8),%rdi
            0x00007f8fe0f65a55:   mov    %r11,%rsi
....................................................................................................
  16.81%  <total for region 3>

....[Hottest Regions]...............................................................................
  52.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 487 
  19.05%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
  16.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 487 
   4.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 487 
   3.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 487 
   1.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 517 
   0.20%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%           libjvm.so  HeapRegionManager::par_iterate 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%        libc-2.31.so  [unknown] 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   1.39%  <...other 386 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  77.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 487 
  19.05%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 517 
   0.97%              kernel  [unknown] 
   0.12%                      <unknown> 
   0.06%        libc-2.31.so  [unknown] 
   0.04%           libjvm.so  HeapRegionClaimer::claim_region 
   0.04%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.04%           libjvm.so  HeapRegionManager::par_iterate 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.03%           libjvm.so  OptoRuntime::new_array_C 
   0.03%           libjvm.so  InstanceKlass::allocate_objArray 
   0.03%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.02%           libjvm.so  ObjArrayAllocator::initialize 
   0.51%  <...other 132 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  78.90%         c2, level 4
  19.05%        runtime stub
   0.97%              kernel
   0.76%           libjvm.so
   0.12%                    
   0.09%        libc-2.31.so
   0.04%          ld-2.31.so
   0.03%  libpthread-2.31.so
   0.02%              [vdso]
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:36

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
EnumValuesLookupBenchmark.cached_enum_values       avgt    5  35.802 ± 0.440  ns/op
EnumValuesLookupBenchmark.cached_enum_values:·asm  avgt          NaN            ---
EnumValuesLookupBenchmark.enum_values              avgt    5  58.234 ± 0.129  ns/op
EnumValuesLookupBenchmark.enum_values:·asm         avgt          NaN            ---
