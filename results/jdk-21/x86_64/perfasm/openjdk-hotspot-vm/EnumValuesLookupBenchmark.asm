# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: <none>
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
# Warmup Iteration   1: 88.072 ns/op
# Warmup Iteration   2: 82.474 ns/op
# Warmup Iteration   3: 85.685 ns/op
# Warmup Iteration   4: 82.649 ns/op
# Warmup Iteration   5: 81.968 ns/op
Iteration   1: 82.776 ns/op
Iteration   2: 82.867 ns/op
Iteration   3: 82.204 ns/op
Iteration   4: 82.221 ns/op
Iteration   5: 82.740 ns/op
# Processing profiler results: LinuxPerfAsmProfiler


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values":
  82.561 ±(99.9%) 1.240 ns/op [Average]
  (min, avg, max) = (82.204, 82.561, 82.867), stdev = 0.322
  CI (99.9%): [81.321, 83.802] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.cached_enum_values:asm":
PrintAssembly processed: 131525 total address lines.
Perf output processed (skipped 66.902 seconds):
 Column 1: cycles (50231 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 662

                 0x00007f2fe44fa1e4:   lea    0x2(%rdi),%rdi
                 0x00007f2fe44fa1e8:   lea    0x2(%rsi),%rsi
                 0x00007f2fe44fa1ec:   test   $0x1,%al
          ╭      0x00007f2fe44fa1ee:   je     0x00007f2fe44fa1fa
          │      0x00007f2fe44fa1f0:   movzbl (%rdi),%ebx
          │      0x00007f2fe44fa1f3:   movzbl (%rsi),%ecx
          │      0x00007f2fe44fa1f6:   cmp    %ecx,%ebx
          │╭     0x00007f2fe44fa1f8:   jne    0x00007f2fe44fa201
          ↘│     0x00007f2fe44fa1fa:   mov    $0x1,%eax
           │╭    0x00007f2fe44fa1ff:   jmp    0x00007f2fe44fa203
   1.30%   ↘│    0x00007f2fe44fa201:   xor    %eax,%eax
            ↘    0x00007f2fe44fa203:   vpxor  %ymm1,%ymm1,%ymm1
                 0x00007f2fe44fa207:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::equals@44 (line 1863)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                 0x00007f2fe44fa20b:   test   %eax,%eax
                 0x00007f2fe44fa20d:   jne    0x00007f2fe44fa335
   1.26%         0x00007f2fe44fa213:   mov    $0x2,%r10d
             ╭   0x00007f2fe44fa219:   jmp    0x00007f2fe44fa22d
             │   0x00007f2fe44fa21b:   nopl   0x0(%rax,%rax,1)             ;*goto {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@37 (line 149)
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
  22.97%     │↗  0x00007f2fe44fa220:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@34 (line 149)
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.02%     ││  0x00007f2fe44fa223:   cmp    $0x29,%r10d
             ││  0x00007f2fe44fa227:   jge    0x00007f2fe44fa388           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@14 (line 149)
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%     ↘│  0x00007f2fe44fa22d:   mov    0x10(%rdx,%r10,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%      │  0x00007f2fe44fa232:   mov    0x18(%r12,%rbx,8),%edi       ; implicit exception: dispatches to 0x00007f2fe44fa3a4
              │                                                            ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@21 (line 150)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
  24.24%      │  0x00007f2fe44fa237:   nopw   0x0(%rax,%rax,1)
   0.04%      │  0x00007f2fe44fa240:   movsbl 0x10(%r12,%rdi,8),%ecx       ; implicit exception: dispatches to 0x00007f2fe44fa3bc
              │                                                            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.lang.String::equals@26 (line 1861)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.08%      │  0x00007f2fe44fa246:   lea    (%r12,%rbx,8),%r13           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@16 (line 149)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%      │  0x00007f2fe44fa24a:   cmp    %r11d,%edi
              │  0x00007f2fe44fa24d:   je     0x00007f2fe44fa335           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.lang.String::equals@2 (line 1858)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
  23.21%      │  0x00007f2fe44fa253:   cmp    %r9d,%ecx
              │  0x00007f2fe44fa256:   jne    0x00007f2fe44fa354           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.lang.String::equals@33 (line 1861)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.05%      │  0x00007f2fe44fa25c:   mov    0x14(%r12,%rdi,8),%ebx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.lang.String::equals@37 (line 1861)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
   0.00%      │  0x00007f2fe44fa261:   mov    0xc(%r12,%rbx,8),%ecx
   0.88%      │  0x00007f2fe44fa266:   cmp    %r8d,%ecx
              ╰  0x00007f2fe44fa269:   jne    0x00007f2fe44fa220           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::equals@44 (line 1863)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                 0x00007f2fe44fa26b:   lea    (%r12,%rbx,8),%rdi           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::equals@37 (line 1861)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromCachedValues@25 (line 150)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values@4 (line 75)
                 0x00007f2fe44fa26f:   lea    0x10(%r12,%rbx,8),%rdi
                 0x00007f2fe44fa274:   mov    %rbp,%rsi
....................................................................................................
  74.07%  <total for region 1>

....[Hottest Regions]...............................................................................
  74.07%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 662
   7.56%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 662
   4.87%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 662
   3.80%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 700
   3.66%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 662
   3.47%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 662
   0.23%                kernel  [unknown]
   0.16%                kernel  [unknown]
   0.16%                kernel  [unknown]
   0.14%                kernel  [unknown]
   0.13%                kernel  [unknown]
   0.09%                kernel  [unknown]
   0.08%             libjvm.so  ElfSymbolTable::lookup
   0.03%                kernel  [unknown]
   0.02%                kernel  [unknown]
   0.02%                kernel  [unknown]
   0.02%                kernel  [unknown]
   0.02%                kernel  [unknown]
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool>
   0.02%                kernel  [unknown]
   1.46%  <...other 505 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.63%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::cached_enum_values, version 2, compile id 662
   3.80%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 700
   1.93%                kernel  [unknown]
   0.08%             libjvm.so  ElfSymbolTable::lookup
   0.06%                        <unknown>
   0.03%             libjvm.so  xmlStream::write_text
   0.02%        hsdis-amd64.so  print_insn
   0.02%             libjvm.so  defaultStream::write
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool>
   0.02%             libc.so.6  _IO_fwrite
   0.01%             libc.so.6  __GI___libc_write
   0.01%             libc.so.6  __vfprintf_internal
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr
   0.01%             libjvm.so  fileStream::write
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17
   0.01%             libc.so.6  __strlen_avx2
   0.01%             libc.so.6  pthread_mutex_unlock@@GLIBC_2.2.5
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5
   0.01%             libjvm.so  stringStream::write
   0.01%             libc.so.6  syscall
   0.29%  <...other 119 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.43%           c2, level 4
   1.93%                kernel
   0.33%             libjvm.so
   0.17%             libc.so.6
   0.06%
   0.03%        hsdis-amd64.so
   0.02%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%         perf-7356.map
   0.00%           c1, level 3
....................................................................................................
  99.99%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: <none>
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:02:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 141.349 ns/op
# Warmup Iteration   2: 122.691 ns/op
# Warmup Iteration   3: 116.710 ns/op
# Warmup Iteration   4: 117.265 ns/op
# Warmup Iteration   5: 118.221 ns/op
Iteration   1: 116.278 ns/op
Iteration   2: 118.940 ns/op
Iteration   3: 119.364 ns/op
Iteration   4: 116.541 ns/op
Iteration   5: 120.577 ns/op
# Processing profiler results: LinuxPerfAsmProfiler


Result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values":
  118.340 ±(99.9%) 7.178 ns/op [Average]
  (min, avg, max) = (116.278, 118.340, 120.577), stdev = 1.864
  CI (99.9%): [111.162, 125.519] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark.enum_values:asm":
PrintAssembly processed: 126833 total address lines.
Perf output processed (skipped 66.141 seconds):
 Column 1: cycles (51216 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 643

               0x00007f77984f8f42:   mov    $0x1,%eax
          ╭    0x00007f77984f8f47:   jmp    0x00007f77984f8f4b
          │    0x00007f77984f8f49:   xor    %eax,%eax
          ↘    0x00007f77984f8f4b:   vpxor  %ymm1,%ymm1,%ymm1
               0x00007f77984f8f4f:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@44 (line 1863)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
               0x00007f77984f8f53:   test   %eax,%eax
               0x00007f77984f8f55:   jne    0x00007f77984f9078
   0.80%       0x00007f77984f8f5b:   mov    $0x1,%r10d
   0.02%   ╭   0x00007f77984f8f61:   jmp    0x00007f77984f8f70           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@37 (line 140)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.90%   │↗  0x00007f77984f8f63:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@34 (line 140)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   3.55%   ││  0x00007f77984f8f66:   cmp    $0x29,%r10d
           ││  0x00007f77984f8f6a:   jge    0x00007f77984f90f0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@14 (line 140)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.68%   ↘│  0x00007f77984f8f70:   mov    0x10(%r13,%r10,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.43%    │  0x00007f77984f8f75:   mov    0x18(%r12,%r11,8),%ebx       ; implicit exception: dispatches to 0x00007f77984f9108
            │                                                            ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 141)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.92%    │  0x00007f77984f8f7a:   nopw   0x0(%rax,%rax,1)
   3.65%    │  0x00007f77984f8f80:   movsbl 0x10(%r12,%rbx,8),%ebp       ; implicit exception: dispatches to 0x00007f77984f9120
            │                                                            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::equals@26 (line 1861)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.98%    │  0x00007f77984f8f86:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.37%    │  0x00007f77984f8f8a:   mov    0x14(%rsp),%ecx
   5.10%    │  0x00007f77984f8f8e:   cmp    %ecx,%ebx
            │  0x00007f77984f8f90:   je     0x00007f77984f9078           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::equals@2 (line 1858)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   3.37%    │  0x00007f77984f8f96:   cmp    %r9d,%ebp
            │  0x00007f77984f8f99:   jne    0x00007f77984f90bc           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::equals@33 (line 1861)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.63%    │  0x00007f77984f8f9f:   mov    0x14(%r12,%rbx,8),%ebx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::equals@37 (line 1861)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   4.35%    │  0x00007f77984f8fa4:   mov    0xc(%r12,%rbx,8),%ecx
   6.90%    │  0x00007f77984f8fa9:   cmp    %r8d,%ecx
            ╰  0x00007f77984f8fac:   jne    0x00007f77984f8f63           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@44 (line 1863)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.29%       0x00007f77984f8fae:   lea    (%r12,%rbx,8),%rdi           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@37 (line 1861)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.47%       0x00007f77984f8fb2:   lea    0x10(%r12,%rbx,8),%rdi
               0x00007f77984f8fb7:   mov    %rdx,%rsi
               0x00007f77984f8fba:   test   %ecx,%ecx
               0x00007f77984f8fbc:   je     0x00007f77984f905f
   0.36%       0x00007f77984f8fc2:   mov    %ecx,%eax
   0.48%       0x00007f77984f8fc4:   and    $0x1f,%eax
               0x00007f77984f8fc7:   and    $0xffffffe0,%ecx
               0x00007f77984f8fca:   je     0x00007f77984f901b
               0x00007f77984f8fd0:   lea    (%rdi,%rcx,1),%rdi
               0x00007f77984f8fd4:   lea    (%rsi,%rcx,1),%rsi
               0x00007f77984f8fd8:   neg    %rcx
               0x00007f77984f8fdb:   vmovdqu (%rdi,%rcx,1),%ymm0
               0x00007f77984f8fe0:   vmovdqu (%rsi,%rcx,1),%ymm1
               0x00007f77984f8fe5:   vpxor  %ymm1,%ymm0,%ymm0
               0x00007f77984f8fe9:   vptest %ymm0,%ymm0
               0x00007f77984f8fee:   jne    0x00007f77984f9066
....................................................................................................
  62.25%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 643

            # {method} {0x00007f77244774c0} &apos;enum_values&apos; &apos;()Lcom/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark&apos;
            #           [sp+0x40]  (sp of caller)
            0x00007f77984f8d40:   mov    0x8(%rsi),%r10d
            0x00007f77984f8d44:   movabs $0x7f772f000000,%r11
            0x00007f77984f8d4e:   add    %r11,%r10
            0x00007f77984f8d51:   cmp    %r10,%rax
            0x00007f77984f8d54:   jne    0x00007f7797f85080           ;   {runtime_call ic_miss_stub}
            0x00007f77984f8d5a:   xchg   %ax,%ax
            0x00007f77984f8d5c:   nopl   0x0(%rax)
          [Verified Entry Point]
   0.56%    0x00007f77984f8d60:   mov    %eax,-0x14000(%rsp)
   0.34%    0x00007f77984f8d67:   push   %rbp
   0.09%    0x00007f77984f8d68:   sub    $0x30,%rsp
   0.43%    0x00007f77984f8d6c:   cmpl   $0x1,0x20(%r15)
   0.29%    0x00007f77984f8d74:   jne    0x00007f77984f9182           ;*synchronization entry
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@-1 (line 81)
   0.11%    0x00007f77984f8d7a:   mov    0x14(%rsi),%r11d             ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@1 (line 81)
   0.43%    0x00007f77984f8d7e:   mov    %r11d,0x14(%rsp)
   0.01%    0x00007f77984f8d83:   mov    0x1b8(%r15),%r13
   0.34%    0x00007f77984f8d8a:   mov    %r13,%r10
   0.13%    0x00007f77984f8d8d:   add    $0xb8,%r10
   0.40%    0x00007f77984f8d94:   nopl   0x0(%rax,%rax,1)
   0.00%    0x00007f77984f8d9c:   data16 data16 xchg %ax,%ax
   0.36%    0x00007f77984f8da0:   cmp    0x1c8(%r15),%r10
            0x00007f77984f8da7:   jae    0x00007f77984f9091
   0.11%    0x00007f77984f8dad:   mov    %r10,0x1b8(%r15)
   0.43%    0x00007f77984f8db4:   prefetchw 0xc0(%r10)
   0.01%    0x00007f77984f8dbc:   movq   $0x1,0x0(%r13)
   0.31%    0x00007f77984f8dc4:   prefetchw 0x100(%r10)
   0.21%    0x00007f77984f8dcc:   movl   $0x10299f0,0x8(%r13)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[])}
   0.40%    0x00007f77984f8dd4:   prefetchw 0x140(%r10)
   0.20%    0x00007f77984f8ddc:   movl   $0x29,0xc(%r13)
   0.31%    0x00007f77984f8de4:   prefetchw 0x180(%r10)               ;*invokevirtual clone {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@3 (line 84)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.42%    0x00007f77984f8dec:   mov    %r13,%rsi
   0.46%    0x00007f77984f8def:   add    $0x10,%rsi
   0.01%    0x00007f77984f8df3:   mov    $0x15,%edx
   0.29%    0x00007f77984f8df8:   movabs $0x62ae275c0,%r10            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x000000062ae275c0})}
   0.12%    0x00007f77984f8e02:   movabs $0x62ae275c0,%rbx            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark$Car&apos;[41] {0x000000062ae275c0})}
   0.40%    0x00007f77984f8e0c:   add    $0x10,%rbx                   ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.01%    0x00007f77984f8e10:   mov    %rbx,%rdi
   0.33%    0x00007f77984f8e13:   vzeroupper
   0.81%    0x00007f77984f8e16:   movabs $0x7f7797f6a400,%r10
   0.12%    0x00007f77984f8e20:   call   *%r10
   0.01%    0x00007f77984f8e23:   nopl   0x0(%rax,%rax,1)             ;   {other}
   0.78%    0x00007f77984f8e2b:   mov    (%rbx),%r11d                 ;*invokevirtual clone {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::values@3 (line 84)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@0 (line 140)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.06%    0x00007f77984f8e2e:   mov    0x14(%rsp),%r10d
   0.03%    0x00007f77984f8e33:   movsbl 0x10(%r12,%r10,8),%r9d       ; implicit exception: dispatches to 0x00007f77984f913c
                                                                      ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@30 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.82%    0x00007f77984f8e39:   nopl   0x0(%rax)
   0.01%    0x00007f77984f8e40:   mov    0x18(%r12,%r11,8),%r8d       ; implicit exception: dispatches to 0x00007f77984f9108
                                                                      ;*getfield carValue {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@21 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.07%    0x00007f77984f8e45:   movsbl 0x10(%r12,%r8,8),%ebp        ; implicit exception: dispatches to 0x00007f77984f9120
                                                                      ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@26 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.21%    0x00007f77984f8e4b:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@16 (line 140)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.75%    0x00007f77984f8e4f:   cmp    %r10d,%r8d
            0x00007f77984f8e52:   je     0x00007f77984f9078           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@2 (line 1858)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.02%    0x00007f77984f8e58:   cmp    %r9d,%ebp
   0.08%    0x00007f77984f8e5b:   nopl   0x0(%rax,%rax,1)
   0.02%    0x00007f77984f8e60:   jne    0x00007f77984f90c2           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@33 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.81%    0x00007f77984f8e66:   mov    0x14(%r12,%r8,8),%esi        ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@37 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.04%    0x00007f77984f8e6b:   mov    0x14(%rsp),%r10d
   0.01%    0x00007f77984f8e70:   mov    0x14(%r12,%r10,8),%r10d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@41 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.02%    0x00007f77984f8e75:   mov    0xc(%r12,%rsi,8),%ecx
   1.11%    0x00007f77984f8e7a:   mov    0xc(%r12,%r10,8),%r8d        ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@44 (line 1863)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.17%    0x00007f77984f8e7f:   lea    (%r12,%r10,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@41 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
   0.02%    0x00007f77984f8e83:   lea    0x10(%r12,%r10,8),%rdx
   0.00%    0x00007f77984f8e88:   cmp    %r8d,%ecx
            0x00007f77984f8e8b:   jne    0x00007f77984f8f5b           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@44 (line 1863)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
            0x00007f77984f8e91:   lea    (%r12,%rsi,8),%r10           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@37 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark$Car::fromValues@25 (line 141)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values@4 (line 81)
            0x00007f77984f8e95:   lea    0x10(%r12,%rsi,8),%rdi
            0x00007f77984f8e9a:   mov    %rdx,%rsi
....................................................................................................
  13.47%  <total for region 2>

....[Hottest Regions]...............................................................................
  62.25%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 643
  13.47%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 643
   9.31%          runtime stub  StubRoutines::jlong_disjoint_arraycopy
   3.94%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 643
   3.15%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 643
   2.48%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 5, compile id 673
   0.31%                kernel  [unknown]
   0.21%                kernel  [unknown]
   0.21%                kernel  [unknown]
   0.16%             libjvm.so  HeapRegionManager::par_iterate
   0.15%                kernel  [unknown]
   0.14%             libc.so.6  __memset_avx2_unaligned_erms
   0.13%                kernel  [unknown]
   0.11%                kernel  [unknown]
   0.08%             libjvm.so  ElfSymbolTable::lookup
   0.07%             libjvm.so  HeapRegionClaimer::claim_region
   0.06%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region
   0.04%             libjvm.so  G1CardSet::reset_table_scanner
   0.04%             libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region
   0.04%                kernel  [unknown]
   3.63%  <...other 928 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.81%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.EnumValuesLookupBenchmark::enum_values, version 2, compile id 643
   9.31%          runtime stub  StubRoutines::jlong_disjoint_arraycopy
   3.11%                kernel  [unknown]
   2.48%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.jmh_generated.EnumValuesLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 5, compile id 673
   0.17%                        <unknown>
   0.16%             libjvm.so  HeapRegionManager::par_iterate
   0.16%             libc.so.6  __memset_avx2_unaligned_erms
   0.08%             libjvm.so  ElfSymbolTable::lookup
   0.07%             libjvm.so  HeapRegionClaimer::claim_region
   0.07%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region
   0.05%                [vdso]  [unknown]
   0.04%             libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region
   0.04%             libjvm.so  G1CardSet::reset_table_scanner
   0.04%             libc.so.6  __vfprintf_internal
   0.03%             libjvm.so  InstanceKlass::allocate_objArray
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr
   0.03%             libjvm.so  SpinPause
   0.02%             libc.so.6  __GI___futex_abstimed_wait_cancelable64
   0.02%             libjvm.so  G1FromCardCache::clear
   0.02%             libc.so.6  _IO_fwrite
   1.27%  <...other 304 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  85.29%           c2, level 4
   9.31%          runtime stub
   3.11%                kernel
   1.47%             libjvm.so
   0.49%             libc.so.6
   0.17%
   0.05%                [vdso]
   0.04%        hsdis-amd64.so
   0.04%           interpreter
   0.03%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:04:04

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

Benchmark                                         Mode  Cnt    Score   Error  Units
EnumValuesLookupBenchmark.cached_enum_values      avgt    5   82.561 ± 1.240  ns/op
EnumValuesLookupBenchmark.cached_enum_values:asm  avgt           NaN            ---
EnumValuesLookupBenchmark.enum_values             avgt    5  118.340 ± 7.178  ns/op
EnumValuesLookupBenchmark.enum_values:asm         avgt           NaN            ---
