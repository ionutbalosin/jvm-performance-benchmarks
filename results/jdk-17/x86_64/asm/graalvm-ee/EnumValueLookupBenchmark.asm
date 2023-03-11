# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark.cached_enum_values

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 52.610 ns/op
# Warmup Iteration   2: 51.879 ns/op
# Warmup Iteration   3: 52.239 ns/op
# Warmup Iteration   4: 51.898 ns/op
# Warmup Iteration   5: 52.048 ns/op
Iteration   1: 51.939 ns/op
Iteration   2: 52.051 ns/op
Iteration   3: 52.106 ns/op
Iteration   4: 52.006 ns/op
Iteration   5: 51.934 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark.cached_enum_values":
  52.007 ±(99.9%) 0.283 ns/op [Average]
  (min, avg, max) = (51.934, 52.007, 52.106), stdev = 0.074
  CI (99.9%): [51.724, 52.291] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark.cached_enum_values:·asm":
PrintAssembly processed: 185725 total address lines.
Perf output processed (skipped 58.398 seconds):
 Column 1: cycles (50477 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values, version 2, compile id 725 

                     #           [sp+0x30]  (sp of caller)
                     0x00007f0e86b19cc0:   mov    0x8(%rsi),%r10d
                     0x00007f0e86b19cc4:   movabs $0x800000000,%r12
                     0x00007f0e86b19cce:   add    %r12,%r10
                     0x00007f0e86b19cd1:   xor    %r12,%r12
                     0x00007f0e86b19cd4:   cmp    %r10,%rax
                     0x00007f0e86b19cd7:   jne    0x00007f0e7f01e780           ;   {runtime_call ic_miss_stub}
                     0x00007f0e86b19cdd:   nop
                     0x00007f0e86b19cde:   xchg   %ax,%ax
                   [Verified Entry Point]
   0.27%             0x00007f0e86b19ce0:   mov    %eax,-0x14000(%rsp)
   1.11%             0x00007f0e86b19ce7:   sub    $0x28,%rsp
   0.18%             0x00007f0e86b19ceb:   mov    %rbp,0x20(%rsp)
   0.84%             0x00007f0e86b19cf0:   mov    0x14(%rsi),%r11d
   0.10%             0x00007f0e86b19cf4:   mov    %r11d,%ebx
   0.22%             0x00007f0e86b19cf7:   shl    $0x3,%rbx                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@1 (line 77)
   0.06%             0x00007f0e86b19cfb:   mov    %rbx,0x10(%rsp)
   0.60%             0x00007f0e86b19d00:   movabs $0x7fee2aff0,%rbp            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;[41] {0x00000007fee2aff0})}
   0.10%             0x00007f0e86b19d0a:   test   %r11d,%r11d
          ╭          0x00007f0e86b19d0d:   je     0x00007f0e86b19e22           ;* unwind (locked if synchronized)
          │                                                                    ; - java.lang.String::equals@-3
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromCachedValues@25 (line 152)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@4 (line 77)
   0.14%  │          0x00007f0e86b19d13:   mov    0x14(,%r11,8),%edx           ; ImmutableOopMap {rdx=NarrowOop rbp=Oop rsi=Oop r11=NarrowOop [16]=Oop }
          │                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@0 (line 77)
   0.44%  │          0x00007f0e86b19d1b:   mov    0xc(,%rdx,8),%r13d           ; implicit exception: dispatches to 0x00007f0e86b1a046
   3.37%  │          0x00007f0e86b19d23:   movsbl 0x10(,%r11,8),%r14d
          │          0x00007f0e86b19d2c:   test   %r13d,%r13d
          │          0x00007f0e86b19d2f:   je     0x00007f0e86b19f20
   0.76%  │          0x00007f0e86b19d35:   shl    $0x3,%rdx                    ;* unwind (locked if synchronized)
          │                                                                    ; - java.lang.String::equals@-3
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromCachedValues@25 (line 152)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@4 (line 77)
          │          0x00007f0e86b19d39:   mov    %rdx,0x8(%rsp)
          │          0x00007f0e86b19d3e:   mov    $0x0,%r10d
          │          0x00007f0e86b19d44:   nopl   0x0(%rax,%rax,1)
   0.75%  │          0x00007f0e86b19d4c:   data16 data16 xchg %ax,%ax
  14.34%  │    ↗↗↗   0x00007f0e86b19d50:   cmp    $0x29,%r10d
          │    │││   0x00007f0e86b19d54:   jae    0x00007f0e86b19fa5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromCachedValues@11 (line 151)
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@4 (line 77)
   0.08%  │    │││   0x00007f0e86b19d5a:   mov    0x10(%rbp,%r10,4),%edi       ; ImmutableOopMap {rdx=Oop rbp=Oop rdi=NarrowOop r11=NarrowOop [8]=Oop [16]=Oop }
          │    │││                                                             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromCachedValues@9 (line 151)
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@4 (line 77)
   0.69%  │    │││   0x00007f0e86b19d5f:   mov    0x14(,%rdi,8),%esi           ; implicit exception: dispatches to 0x00007f0e86b1a066
          │    │││                                                             ; ImmutableOopMap {rdx=Oop rbp=Oop rsi=NarrowOop rdi=NarrowOop r11=NarrowOop [8]=Oop [16]=Oop }
          │    │││                                                             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromCachedValues@9 (line 151)
          │    │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@4 (line 77)
   1.48%  │    │││   0x00007f0e86b19d66:   movsbl 0x10(,%rsi,8),%ecx           ; implicit exception: dispatches to 0x00007f0e86b1a086
  18.43%  │    │││   0x00007f0e86b19d6e:   mov    0x14(,%rsi,8),%r8d
          │    │││   0x00007f0e86b19d76:   cmp    %r11d,%esi
          │╭   │││   0x00007f0e86b19d79:   je     0x00007f0e86b19e1b           ;* unwind (locked if synchronized)
          ││   │││                                                             ; - java.lang.String::equals@-3
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromCachedValues@25 (line 152)
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@4 (line 77)
   0.01%  ││   │││   0x00007f0e86b19d7f:   mov    %r10d,%eax
   0.45%  ││   │││   0x00007f0e86b19d82:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromCachedValues@34 (line 151)
          ││   │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@4 (line 77)
  14.88%  ││   │││   0x00007f0e86b19d84:   cmp    %r14b,%cl
          ││╭  │││   0x00007f0e86b19d87:   jne    0x00007f0e86b19dea
   0.05%  │││  │││   0x00007f0e86b19d8d:   test   %r8d,%r8d
          │││  │││   0x00007f0e86b19d90:   je     0x00007f0e86b19fc6
   1.03%  │││  │││   0x00007f0e86b19d96:   data16 nopw 0x0(%rax,%rax,1)
   0.41%  │││  │││   0x00007f0e86b19da0:   cmp    0xc(,%r8,8),%r13d
          │││╭ │││   0x00007f0e86b19da8:   jne    0x00007f0e86b19df2
   2.11%  ││││ │││   0x00007f0e86b19dae:   mov    %edi,0x4(%rsp)
          ││││ │││   0x00007f0e86b19db2:   shl    $0x3,%r8
          ││││ │││   0x00007f0e86b19db6:   mov    %rdx,%rsi
   0.05%  ││││ │││   0x00007f0e86b19db9:   mov    $0x10,%rdx
   0.62%  ││││ │││   0x00007f0e86b19dc0:   mov    %r8,%rcx
          ││││ │││   0x00007f0e86b19dc3:   mov    $0x10,%r8
          ││││ │││   0x00007f0e86b19dca:   mov    %r13d,%r9d                   ;* unwind (locked if synchronized)
          ││││ │││                                                             ; - java.lang.String::equals@-3
          ││││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromCachedValues@25 (line 152)
          ││││ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@4 (line 77)
   0.07%  ││││ │││   0x00007f0e86b19dcd:   mov    %eax,%ebx
   0.63%  ││││ │││   0x00007f0e86b19dcf:   call   0x00007f0e7f17b900           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
          ││││ │││   0x00007f0e86b19dd4:   nop
          ││││ │││   0x00007f0e86b19dd5:   test   %eax,%eax
          ││││╭│││   0x00007f0e86b19dd7:   jne    0x00007f0e86b19dfa
   0.06%  ││││││││   0x00007f0e86b19ddd:   mov    %ebx,%r10d
   0.64%  ││││││││   0x00007f0e86b19de0:   mov    0x8(%rsp),%rdx
   0.01%  │││││╰││   0x00007f0e86b19de5:   jmp    0x00007f0e86b19d50
          ││↘││ ││   0x00007f0e86b19dea:   mov    %eax,%r10d
          ││ ││ ╰│   0x00007f0e86b19ded:   jmp    0x00007f0e86b19d50
  18.41%  ││ ↘│  │   0x00007f0e86b19df2:   mov    %eax,%r10d
          ││  │  ╰   0x00007f0e86b19df5:   jmp    0x00007f0e86b19d50
          ││  ↘   ↗  0x00007f0e86b19dfa:   mov    0x4(%rsp),%edi               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromCachedValues@28 (line 152)
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@4 (line 77)
          ││      │  0x00007f0e86b19dfe:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromCachedValues@16 (line 151)
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@4 (line 77)
          ││      │  0x00007f0e86b19e02:   mov    %rdi,%rax                    ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@7 (line 77)
   0.75%  ││      │  0x00007f0e86b19e05:   mov    0x20(%rsp),%rbp
          ││      │  0x00007f0e86b19e0a:   add    $0x28,%rsp
          ││      │  0x00007f0e86b19e0e:   mov    0x348(%r15),%rcx
          ││      │  0x00007f0e86b19e15:   test   %eax,(%rcx)                  ;   {poll_return}
   0.70%  ││      │  0x00007f0e86b19e17:   vzeroupper 
   0.75%  ││      │  0x00007f0e86b19e1a:   ret    
          │↘      │  0x00007f0e86b19e1b:   mov    %edi,0x4(%rsp)
          │       │  0x00007f0e86b19e1f:   nop
   0.74%  │       ╰  0x00007f0e86b19e20:   jmp    0x00007f0e86b19dfa           ;* unwind (locked if synchronized)
          │                                                                    ; - java.lang.String::equals@-3
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromCachedValues@25 (line 152)
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@4 (line 77)
          ↘          0x00007f0e86b19e22:   mov    0x10(%rbp),%r10d             ; ImmutableOopMap {rbp=Oop rsi=Oop [16]=Oop }
                                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@0 (line 77)
                     0x00007f0e86b19e26:   mov    0x14(,%r10,8),%r10d          ; implicit exception: dispatches to 0x00007f0e86b1a0a6
                                                                               ; ImmutableOopMap {rbp=Oop rsi=Oop [16]=Oop }
                                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values@0 (line 77)
....................................................................................................
  86.33%  <total for region 1>

....[Hottest Regions]...............................................................................
  86.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values, version 2, compile id 725 
   7.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.EnumValueLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 747 
   2.27%                       <unknown> 
   1.53%                       <unknown> 
   0.80%                       <unknown> 
   0.36%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.62%  <...other 221 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  86.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::cached_enum_values, version 2, compile id 725 
   7.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.EnumValueLookupBenchmark_cached_enum_values_jmhTest::cached_enum_values_avgt_jmhStub, version 6, compile id 747 
   4.64%                       <unknown> 
   1.16%               kernel  [unknown] 
   0.02%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.00%         libc-2.31.so  __strncat_ssse3 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%            libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.00%          interpreter  method entry point (kind = zerolocals)  
   0.00%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  outputStream::print 
   0.00%            libjvm.so  os::elapsed_counter 
   0.10%  <...other 50 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.98%       jvmci, level 4
   4.64%                     
   1.16%               kernel
   0.10%            libjvm.so
   0.07%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%       perf-50427.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark.enum_values

# Run progress: 50.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 88.277 ns/op
# Warmup Iteration   2: 87.140 ns/op
# Warmup Iteration   3: 87.334 ns/op
# Warmup Iteration   4: 86.930 ns/op
# Warmup Iteration   5: 87.014 ns/op
Iteration   1: 87.015 ns/op
Iteration   2: 86.987 ns/op
Iteration   3: 87.092 ns/op
Iteration   4: 87.027 ns/op
Iteration   5: 87.025 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark.enum_values":
  87.029 ±(99.9%) 0.148 ns/op [Average]
  (min, avg, max) = (86.987, 87.029, 87.092), stdev = 0.039
  CI (99.9%): [86.881, 87.178] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark.enum_values:·asm":
PrintAssembly processed: 190950 total address lines.
Perf output processed (skipped 58.652 seconds):
 Column 1: cycles (50659 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values, version 2, compile id 727 

                  #           [sp+0x30]  (sp of caller)
                  0x00007f99a6b1d840:   mov    0x8(%rsi),%r10d
                  0x00007f99a6b1d844:   movabs $0x800000000,%r12
                  0x00007f99a6b1d84e:   add    %r12,%r10
                  0x00007f99a6b1d851:   xor    %r12,%r12
                  0x00007f99a6b1d854:   cmp    %r10,%rax
                  0x00007f99a6b1d857:   jne    0x00007f999f01e780           ;   {runtime_call ic_miss_stub}
                  0x00007f99a6b1d85d:   nop
                  0x00007f99a6b1d85e:   xchg   %ax,%ax
                [Verified Entry Point]
   0.12%          0x00007f99a6b1d860:   mov    %eax,-0x14000(%rsp)
   0.44%          0x00007f99a6b1d867:   sub    $0x28,%rsp
   0.10%          0x00007f99a6b1d86b:   mov    %rbp,0x20(%rsp)
   0.62%          0x00007f99a6b1d870:   mov    %rsi,%r10
   0.15%          0x00007f99a6b1d873:   mov    0x14(%r10),%r11d             ; ImmutableOopMap {r10=Oop r11=NarrowOop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@0 (line 83)
   0.05%          0x00007f99a6b1d877:   mov    0x14(,%r11,8),%r8d           ; implicit exception: dispatches to 0x00007f99a6b1dc4f
   0.84%          0x00007f99a6b1d87f:   movsbl 0x10(,%r11,8),%ebx           ; ImmutableOopMap {r8=NarrowOop r10=Oop r11=NarrowOop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@0 (line 83)
   0.02%          0x00007f99a6b1d888:   mov    0xc(,%r8,8),%ebp             ; implicit exception: dispatches to 0x00007f99a6b1dc6b
   2.14%          0x00007f99a6b1d890:   mov    0x108(%r15),%rsi
   0.00%          0x00007f99a6b1d897:   lea    0xb8(%rsi),%rdx
                  0x00007f99a6b1d89e:   xchg   %ax,%ax
                  0x00007f99a6b1d8a0:   cmp    0x118(%r15),%rdx
                  0x00007f99a6b1d8a7:   ja     0x00007f99a6b1dbc2
   0.41%          0x00007f99a6b1d8ad:   mov    %rdx,0x108(%r15)
                  0x00007f99a6b1d8b4:   prefetchw 0x178(%rsi)
   0.01%          0x00007f99a6b1d8bb:   prefetchw 0x1b8(%rsi)
   0.17%          0x00007f99a6b1d8c2:   prefetchw 0x1f8(%rsi)
   0.65%          0x00007f99a6b1d8c9:   prefetchw 0x238(%rsi)
   0.16%          0x00007f99a6b1d8d0:   movq   $0x1,(%rsi)
   0.01%          0x00007f99a6b1d8d7:   movl   $0xc26020,0x8(%rsi)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;[])}
   0.01%          0x00007f99a6b1d8de:   movl   $0x29,0xc(%rsi)              ;*getstatic $VALUES {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::values@0 (line 86)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromValues@0 (line 142)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@4 (line 83)
   0.43%          0x00007f99a6b1d8e5:   mov    %rsi,%r13
   0.02%          0x00007f99a6b1d8e8:   movl   $0xffdc5362,0x10(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee29b10})}
   0.00%          0x00007f99a6b1d8f0:   movl   $0xffdc5371,0x14(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee29b88})}
   0.44%          0x00007f99a6b1d8f8:   movl   $0xffdc5382,0x18(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee29c10})}
   0.46%          0x00007f99a6b1d900:   movl   $0xffdc5393,0x1c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee29c98})}
   1.08%          0x00007f99a6b1d908:   movl   $0xffdc53a2,0x20(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee29d10})}
   0.16%          0x00007f99a6b1d910:   movl   $0xffdc53b1,0x24(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee29d88})}
   0.22%          0x00007f99a6b1d918:   movl   $0xffdc53ba,0x28(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee29dd0})}
   0.11%          0x00007f99a6b1d920:   movl   $0xffdc53c9,0x2c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee29e48})}
   0.31%          0x00007f99a6b1d928:   movl   $0xffdc53d8,0x30(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee29ec0})}
   0.23%          0x00007f99a6b1d930:   movl   $0xffdc53e9,0x34(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee29f48})}
   0.03%          0x00007f99a6b1d938:   movl   $0xffdc53f8,0x38(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee29fc0})}
   0.23%          0x00007f99a6b1d940:   movl   $0xffdc5407,0x3c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a038})}
   0.32%          0x00007f99a6b1d948:   movl   $0xffdc5416,0x40(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a0b0})}
   0.41%          0x00007f99a6b1d950:   movl   $0xffdc5425,0x44(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a128})}
   0.29%          0x00007f99a6b1d958:   movl   $0xffdc5434,0x48(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a1a0})}
   0.40%          0x00007f99a6b1d960:   movl   $0xffdc5443,0x4c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a218})}
   0.41%          0x00007f99a6b1d968:   movl   $0xffdc5452,0x50(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a290})}
   0.45%          0x00007f99a6b1d970:   movl   $0xffdc5461,0x54(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a308})}
   0.39%          0x00007f99a6b1d978:   movl   $0xffdc5470,0x58(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a380})}
   0.42%          0x00007f99a6b1d980:   movl   $0xffdc547f,0x5c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a3f8})}
   0.45%          0x00007f99a6b1d988:   movl   $0xffdc548e,0x60(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a470})}
   0.39%          0x00007f99a6b1d990:   movl   $0xffdc549d,0x64(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a4e8})}
   0.42%          0x00007f99a6b1d998:   movl   $0xffdc54ae,0x68(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a570})}
   0.45%          0x00007f99a6b1d9a0:   movl   $0xffdc54bf,0x6c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a5f8})}
   0.42%          0x00007f99a6b1d9a8:   movl   $0xffdc54d0,0x70(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a680})}
   0.45%          0x00007f99a6b1d9b0:   movl   $0xffdc54df,0x74(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a6f8})}
   0.43%          0x00007f99a6b1d9b8:   movl   $0xffdc54ee,0x78(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a770})}
   0.40%          0x00007f99a6b1d9c0:   movl   $0xffdc54fd,0x7c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a7e8})}
   0.40%          0x00007f99a6b1d9c8:   movl   $0xffdc550e,0x80(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a870})}
   0.40%          0x00007f99a6b1d9d3:   movl   $0xffdc551f,0x84(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a8f8})}
   0.47%          0x00007f99a6b1d9de:   movl   $0xffdc552e,0x88(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a970})}
   0.44%          0x00007f99a6b1d9e9:   movl   $0xffdc553d,0x8c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2a9e8})}
   0.47%          0x00007f99a6b1d9f4:   movl   $0xffdc554c,0x90(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2aa60})}
   0.46%          0x00007f99a6b1d9ff:   movl   $0xffdc555b,0x94(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2aad8})}
   0.42%          0x00007f99a6b1da0a:   movl   $0xffdc556a,0x98(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2ab50})}
   0.45%          0x00007f99a6b1da15:   movl   $0xffdc5579,0x9c(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2abc8})}
   0.47%          0x00007f99a6b1da20:   movl   $0xffdc5588,0xa0(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2ac40})}
   0.46%          0x00007f99a6b1da2b:   movl   $0xffdc5599,0xa4(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2acc8})}
   0.41%          0x00007f99a6b1da36:   movl   $0xffdc55aa,0xa8(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2ad50})}
   0.45%          0x00007f99a6b1da41:   movl   $0xffdc55b9,0xac(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2adc8})}
   0.44%          0x00007f99a6b1da4c:   movl   $0xffdc55ca,0xb0(%r13)       ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/EnumValueLookupBenchmark$Car&apos;{0x00000007fee2ae50})}
   0.39%          0x00007f99a6b1da57:   mov    %r11d,%r14d
   0.00%          0x00007f99a6b1da5a:   shl    $0x3,%r14                    ;*getfield lookUpValue {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@1 (line 83)
                  0x00007f99a6b1da5e:   mov    %r14,0x10(%rsp)
   0.49%          0x00007f99a6b1da63:   test   %ebp,%ebp
                  0x00007f99a6b1da65:   je     0x00007f99a6b1db58
                  0x00007f99a6b1da6b:   shl    $0x3,%r8                     ;* unwind (locked if synchronized)
                                                                            ; - java.lang.String::equals@-3
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromValues@25 (line 143)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@4 (line 83)
                  0x00007f99a6b1da6f:   mov    %r8,0x8(%rsp)
   0.47%          0x00007f99a6b1da74:   mov    $0x0,%r10d
   0.00%          0x00007f99a6b1da7a:   nopw   0x0(%rax,%rax,1)
   8.06%     ↗↗↗  0x00007f99a6b1da80:   cmp    $0x29,%r10d
             │││  0x00007f99a6b1da84:   jae    0x00007f99a6b1dbfe           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromValues@11 (line 142)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@4 (line 83)
   0.01%     │││  0x00007f99a6b1da8a:   mov    0x10(%r13,%r10,4),%esi       ; ImmutableOopMap {rsi=NarrowOop r8=Oop r11=NarrowOop r13=Oop [8]=Oop [16]=Oop }
             │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
             │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromValues@9 (line 142)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@4 (line 83)
   0.88%     │││  0x00007f99a6b1da8f:   mov    0x14(,%rsi,8),%edx           ; implicit exception: dispatches to 0x00007f99a6b1dc87
             │││                                                            ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r8=Oop r11=NarrowOop r13=Oop [8]=Oop [16]=Oop }
             │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
             │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromValues@9 (line 142)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@4 (line 83)
   0.53%     │││  0x00007f99a6b1da96:   movsbl 0x10(,%rdx,8),%ecx           ; implicit exception: dispatches to 0x00007f99a6b1dca6
  10.40%     │││  0x00007f99a6b1da9e:   mov    0x14(,%rdx,8),%r9d           ;* unwind (locked if synchronized)
             │││                                                            ; - java.lang.String::equals@-3
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromValues@25 (line 143)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@4 (line 83)
   0.02%     │││  0x00007f99a6b1daa6:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromValues@16 (line 142)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@4 (line 83)
   0.41%     │││  0x00007f99a6b1daaa:   cmp    %r11d,%edx
             │││  0x00007f99a6b1daad:   je     0x00007f99a6b1db3f           ;* unwind (locked if synchronized)
             │││                                                            ; - java.lang.String::equals@-3
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromValues@25 (line 143)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@4 (line 83)
   0.43%     │││  0x00007f99a6b1dab3:   mov    %r10d,%edi
   8.22%     │││  0x00007f99a6b1dab6:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromValues@34 (line 142)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@4 (line 83)
   0.01%     │││  0x00007f99a6b1dab8:   cmp    %bl,%cl
          ╭  │││  0x00007f99a6b1daba:   jne    0x00007f99a6b1db15
   0.94%  │  │││  0x00007f99a6b1dac0:   test   %r9d,%r9d
          │  │││  0x00007f99a6b1dac3:   je     0x00007f99a6b1dc1f
   1.01%  │  │││  0x00007f99a6b1dac9:   cmp    0xc(,%r9,8),%ebp
          │╭ │││  0x00007f99a6b1dad1:   jne    0x00007f99a6b1db1d
   0.08%  ││ │││  0x00007f99a6b1dad7:   mov    %rsi,(%rsp)
   0.00%  ││ │││  0x00007f99a6b1dadb:   shl    $0x3,%r9
   0.44%  ││ │││  0x00007f99a6b1dadf:   mov    %r8,%rsi
   0.01%  ││ │││  0x00007f99a6b1dae2:   mov    $0x10,%rdx
   0.02%  ││ │││  0x00007f99a6b1dae9:   mov    %r9,%rcx
   0.00%  ││ │││  0x00007f99a6b1daec:   mov    $0x10,%r8
   0.40%  ││ │││  0x00007f99a6b1daf3:   mov    %ebp,%r9d                    ;* unwind (locked if synchronized)
          ││ │││                                                            ; - java.lang.String::equals@-3
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromValues@25 (line 143)
          ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@4 (line 83)
   0.02%  ││ │││  0x00007f99a6b1daf6:   mov    %edi,%r14d
   0.01%  ││ │││  0x00007f99a6b1daf9:   call   0x00007f999f17b880           ;   {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   0.38%  ││ │││  0x00007f99a6b1dafe:   nop
          ││ │││  0x00007f99a6b1daff:   nop
   0.02%  ││ │││  0x00007f99a6b1db00:   test   %eax,%eax
          ││╭│││  0x00007f99a6b1db02:   jne    0x00007f99a6b1db25           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromValues@28 (line 143)
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@4 (line 83)
   0.01%  ││││││  0x00007f99a6b1db08:   mov    %r14d,%r10d
   0.43%  ││││││  0x00007f99a6b1db0b:   mov    0x8(%rsp),%r8
          │││╰││  0x00007f99a6b1db10:   jmp    0x00007f99a6b1da80
          ↘││ ││  0x00007f99a6b1db15:   mov    %edi,%r10d
           ││ ╰│  0x00007f99a6b1db18:   jmp    0x00007f99a6b1da80
  32.75%   ↘│  │  0x00007f99a6b1db1d:   mov    %edi,%r10d
   0.43%    │  ╰  0x00007f99a6b1db20:   jmp    0x00007f99a6b1da80
            ↘     0x00007f99a6b1db25:   mov    (%rsp),%rax                  ;*areturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@7 (line 83)
                  0x00007f99a6b1db29:   mov    0x20(%rsp),%rbp
                  0x00007f99a6b1db2e:   add    $0x28,%rsp
                  0x00007f99a6b1db32:   mov    0x348(%r15),%rcx
                  0x00007f99a6b1db39:   test   %eax,(%rcx)                  ;   {poll_return}
                  0x00007f99a6b1db3b:   vzeroupper 
                  0x00007f99a6b1db3e:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark$Car::fromValues@11 (line 142)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values@4 (line 83)
....................................................................................................
  89.15%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values, version 2, compile id 727 
   4.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.EnumValueLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 752 
   1.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values, version 2, compile id 727 
   1.28%                       <unknown> 
   0.86%                       <unknown> 
   0.46%                       <unknown> 
   0.40%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  G1FromCardCache::clear 
   1.84%  <...other 487 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.EnumValueLookupBenchmark::enum_values, version 2, compile id 727 
   4.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.EnumValueLookupBenchmark_enum_values_jmhTest::enum_values_avgt_jmhStub, version 6, compile id 752 
   2.67%                       <unknown> 
   1.76%               kernel  [unknown] 
   0.10%         libc-2.31.so  [unknown] 
   0.04%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%            libjvm.so  JVMCIRuntime::new_array_common 
   0.03%            libjvm.so  HeapRegionClaimer::claim_region 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%            libjvm.so  G1FromCardCache::clear 
   0.02%            libjvm.so  ObjArrayAllocator::initialize 
   0.02%            libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%            libjvm.so  FreeCSetClosure::do_heap_region 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%            libjvm.so  HeapRegionManager::allocate_free_region 
   0.02%            libjvm.so  G1Policy::preventive_collection_required 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.02%            libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.01%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%            libjvm.so  G1RemSetScanState::G1ClearCardTableTask::do_work 
   0.50%  <...other 148 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  94.63%       jvmci, level 4
   2.67%                     
   1.76%               kernel
   0.67%            libjvm.so
   0.15%         libc-2.31.so
   0.04%   libpthread-2.31.so
   0.04%           ld-2.31.so
   0.01%               [vdso]
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%  libjvmcicompiler.so
   0.00%       perf-50491.map
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:03:44

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
EnumValueLookupBenchmark.cached_enum_values       avgt    5  52.007 ± 0.283  ns/op
EnumValueLookupBenchmark.cached_enum_values:·asm  avgt          NaN            ---
EnumValueLookupBenchmark.enum_values              avgt    5  87.029 ± 0.148  ns/op
EnumValueLookupBenchmark.enum_values:·asm         avgt          NaN            ---
