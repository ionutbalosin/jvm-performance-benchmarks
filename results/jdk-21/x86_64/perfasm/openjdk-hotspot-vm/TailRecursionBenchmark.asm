# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.iterative
# Parameters: (n = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 257.030 us/op
# Warmup Iteration   2: 254.226 us/op
# Warmup Iteration   3: 254.079 us/op
# Warmup Iteration   4: 254.058 us/op
# Warmup Iteration   5: 254.062 us/op
Iteration   1: 254.069 us/op
Iteration   2: 254.066 us/op
Iteration   3: 254.061 us/op
Iteration   4: 254.072 us/op
Iteration   5: 254.054 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.iterative":
  254.064 ±(99.9%) 0.028 us/op [Average]
  (min, avg, max) = (254.054, 254.064, 254.072), stdev = 0.007
  CI (99.9%): [254.036, 254.092] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.iterative:asm":
PrintAssembly processed: 128635 total address lines.
Perf output processed (skipped 56.197 seconds):
 Column 1: cycles (51255 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative, version 3, compile id 559 

                 0x00007f0ee8639cbb:   nopl   0x0(%rax,%rax,1)
                 0x00007f0ee8639cc0:   cmp    %r11d,%edx
                 0x00007f0ee8639cc3:   jg     0x00007f0ee8639c8e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@1 (line 92)
                 0x00007f0ee8639cc5:   cmp    $0x3,%edx
          ╭      0x00007f0ee8639cc8:   jle    0x00007f0ee8639d9b
          │      0x00007f0ee8639cce:   mov    $0xfa0,%r11d
          │ ↗    0x00007f0ee8639cd4:   lea    -0x3(%rdx),%esi
          │ │    0x00007f0ee8639cd7:   cmp    $0xfa0,%esi
          │ │    0x00007f0ee8639cdd:   cmova  %r11d,%esi
   0.01%  │ │    0x00007f0ee8639ce1:   mov    %edx,%r9d
          │ │    0x00007f0ee8639ce4:   sub    %esi,%r9d
          │ │    0x00007f0ee8639ce7:   nopw   0x0(%rax,%rax,1)             ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@4 (line 93)
   1.01%  │↗│    0x00007f0ee8639cf0:   mov    %edx,%esi
   8.42%  │││    0x00007f0ee8639cf2:   and    $0xfffffc00,%esi
          │││    0x00007f0ee8639cf8:   mov    %edx,%ebp
   0.05%  │││    0x00007f0ee8639cfa:   sub    %esi,%ebp                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@15 (line 95)
   0.84%  │││    0x00007f0ee8639cfc:   nopl   0x0(%rax)
   8.78%  │││    0x00007f0ee8639d00:   cmp    %r10d,%ebp
          │││    0x00007f0ee8639d03:   jae    0x00007f0ee8639de1
          │││    0x00007f0ee8639d09:   movslq 0x10(%rdi,%rbp,4),%rax
   0.05%  │││    0x00007f0ee8639d0e:   add    %rcx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@18 (line 95)
   0.92%  │││    0x00007f0ee8639d11:   mov    %edx,%ebx
   8.44%  │││    0x00007f0ee8639d13:   dec    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@20 (line 96)
          │││    0x00007f0ee8639d15:   mov    %ebx,%esi
   0.05%  │││    0x00007f0ee8639d17:   and    $0xfffffc00,%esi
   0.94%  │││    0x00007f0ee8639d1d:   mov    %edx,%ecx
   8.71%  │││    0x00007f0ee8639d1f:   sub    %esi,%ecx
          │││    0x00007f0ee8639d21:   mov    %ecx,%ebp
   0.06%  │││    0x00007f0ee8639d23:   dec    %ebp                         ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@15 (line 95)
   0.89%  │││    0x00007f0ee8639d25:   cmp    %r10d,%ebp
          │││    0x00007f0ee8639d28:   jae    0x00007f0ee8639de6
   8.92%  │││    0x00007f0ee8639d2e:   movslq 0xc(%rdi,%rcx,4),%rcx
          │││    0x00007f0ee8639d33:   add    %rax,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@18 (line 95)
          │││                                                              ;   {no_reloc}
   0.04%  │││    0x00007f0ee8639d36:   lea    -0x2(%rdx),%ebx
   1.02%  │││    0x00007f0ee8639d39:   mov    %ebx,%esi
   8.80%  │││    0x00007f0ee8639d3b:   and    $0xfffffc00,%esi
          │││    0x00007f0ee8639d41:   mov    %edx,%ebp
   0.04%  │││    0x00007f0ee8639d43:   sub    %esi,%ebp
   0.94%  │││    0x00007f0ee8639d45:   add    $0xfffffffe,%ebp             ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@15 (line 95)
   8.73%  │││    0x00007f0ee8639d48:   cmp    %r10d,%ebp
          │││    0x00007f0ee8639d4b:   jae    0x00007f0ee8639de3
   0.01%  │││    0x00007f0ee8639d51:   movslq 0x10(%rdi,%rbp,4),%rax
   0.05%  │││    0x00007f0ee8639d56:   add    %rcx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@18 (line 95)
   0.96%  │││    0x00007f0ee8639d59:   lea    -0x3(%rdx),%ebx
   8.83%  │││    0x00007f0ee8639d5c:   mov    %ebx,%esi
          │││    0x00007f0ee8639d5e:   and    $0xfffffc00,%esi
   0.05%  │││    0x00007f0ee8639d64:   mov    %edx,%ebp
   0.93%  │││    0x00007f0ee8639d66:   sub    %esi,%ebp
   8.80%  │││    0x00007f0ee8639d68:   add    $0xfffffffd,%ebp             ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@15 (line 95)
          │││    0x00007f0ee8639d6b:   cmp    %r10d,%ebp
          │││    0x00007f0ee8639d6e:   jae    0x00007f0ee8639de6
   0.04%  │││    0x00007f0ee8639d74:   movslq 0x10(%rdi,%rbp,4),%rcx
   0.94%  │││    0x00007f0ee8639d79:   add    %rax,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@18 (line 95)
   8.50%  │││    0x00007f0ee8639d7c:   add    $0xfffffffc,%edx             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@20 (line 96)
          │││    0x00007f0ee8639d7f:   nop
   0.05%  │││    0x00007f0ee8639d80:   cmp    %r9d,%edx
          │╰│    0x00007f0ee8639d83:   jg     0x00007f0ee8639cf0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@23 (line 96)
   0.00%  │ │    0x00007f0ee8639d89:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {r8=NarrowOop rdi=Oop r13=Oop }
          │ │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@23 (line 96)
   0.08%  │ │    0x00007f0ee8639d90:   test   %eax,(%rbx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@23 (line 96)
          │ │                                                              ;   {poll}
   0.06%  │ │    0x00007f0ee8639d92:   cmp    $0x3,%edx
          │ ╰    0x00007f0ee8639d95:   jg     0x00007f0ee8639cd4
   0.00%  ↘      0x00007f0ee8639d9b:   test   %edx,%edx
             ╭   0x00007f0ee8639d9d:   jle    0x00007f0ee8639dc6
   0.00%     │   0x00007f0ee8639d9f:   nop                                 ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@4 (line 93)
   0.00%     │↗  0x00007f0ee8639da0:   mov    %edx,%r9d
             ││  0x00007f0ee8639da3:   and    $0xfffffc00,%r9d
   0.00%     ││  0x00007f0ee8639daa:   mov    %edx,%ebp
             ││  0x00007f0ee8639dac:   sub    %r9d,%ebp                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@15 (line 95)
             ││  0x00007f0ee8639daf:   cmp    %r10d,%ebp
             ││  0x00007f0ee8639db2:   jae    0x00007f0ee8639e34
             ││  0x00007f0ee8639db8:   movslq 0x10(%rdi,%rbp,4),%r11
   0.00%     ││  0x00007f0ee8639dbd:   add    %r11,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@18 (line 95)
   0.00%     ││  0x00007f0ee8639dc0:   dec    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@20 (line 96)
             ││  0x00007f0ee8639dc2:   test   %edx,%edx
             │╰  0x00007f0ee8639dc4:   jg     0x00007f0ee8639da0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@1 (line 92)
             ↘   0x00007f0ee8639dc6:   mov    %rcx,%rax
                 0x00007f0ee8639dc9:   jmp    0x00007f0ee8639dce
                 0x00007f0ee8639dcb:   mov    %rcx,%rax                    ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@4 (line 93)
                 0x00007f0ee8639dce:   add    $0x30,%rsp
....................................................................................................
  96.98%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative, version 3, compile id 559 
   1.48%              kernel  [unknown] 
   0.28%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.70%  <...other 218 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative, version 3, compile id 559 
   2.77%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.00%        libc-2.31.so  __libc_enable_asynccancel 
   0.00%           libjvm.so  decode_env::print_hook_comments 
   0.00%           libjvm.so  printf_to_env 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%           libjvm.so  MethodMatcher::matches 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  VMError::is_error_reported 
   0.00%           libjvm.so  defaultStream::write 
   0.09%  <...other 44 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.99%         c2, level 4
   2.77%              kernel
   0.11%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%    perf-1958746.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.tail_recursive
# Parameters: (n = 262144)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3400.543 us/op
# Warmup Iteration   2: 3340.615 us/op
# Warmup Iteration   3: 3340.417 us/op
# Warmup Iteration   4: 3341.688 us/op
# Warmup Iteration   5: 3336.481 us/op
Iteration   1: 3334.662 us/op
Iteration   2: 3335.113 us/op
Iteration   3: 3335.719 us/op
Iteration   4: 3338.239 us/op
Iteration   5: 3336.891 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.tail_recursive":
  3336.125 ±(99.9%) 5.575 us/op [Average]
  (min, avg, max) = (3334.662, 3336.125, 3338.239), stdev = 1.448
  CI (99.9%): [3330.550, 3341.700] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.tail_recursive:asm":
PrintAssembly processed: 129465 total address lines.
Perf output processed (skipped 56.301 seconds):
 Column 1: cycles (50674 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive, version 4, compile id 576 

                 # parm1:    rcx:rcx   = long
                 #           [sp+0x40]  (sp of caller)
                 0x00007fc12063aea0:   mov    0x8(%rsi),%r10d
                 0x00007fc12063aea4:   movabs $0x7fc0a7000000,%r11
                 0x00007fc12063aeae:   add    %r11,%r10
                 0x00007fc12063aeb1:   cmp    %r10,%rax
                 0x00007fc12063aeb4:   jne    0x00007fc1200c4080           ;   {runtime_call ic_miss_stub}
                 0x00007fc12063aeba:   xchg   %ax,%ax
                 0x00007fc12063aebc:   nopl   0x0(%rax)
               [Verified Entry Point]
   7.75%     ↗   0x00007fc12063aec0:   mov    %eax,-0x14000(%rsp)
  18.79%     │   0x00007fc12063aec7:   push   %rbp
   1.30%     │   0x00007fc12063aec8:   sub    $0x30,%rsp
   0.06%     │   0x00007fc12063aecc:   cmpl   $0x1,0x20(%r15)
   1.95%     │   0x00007fc12063aed4:   jne    0x00007fc12063b002           ;*synchronization entry
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@-1 (line 83)
   0.63%     │   0x00007fc12063aeda:   mov    %rsi,%rdi
   0.02%     │   0x00007fc12063aedd:   data16 xchg %ax,%ax
   0.04%     │   0x00007fc12063aee0:   test   %edx,%edx
          ╭  │   0x00007fc12063aee2:   je     0x00007fc12063af73           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 83)
   0.77%  │  │   0x00007fc12063aee8:   mov    0x14(%rsi),%r8d              ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@12 (line 86)
   0.67%  │  │   0x00007fc12063aeec:   mov    %edx,%r11d
   0.02%  │  │   0x00007fc12063aeef:   sar    $0x1f,%r11d
   0.04%  │  │   0x00007fc12063aef3:   shr    $0x16,%r11d
   0.84%  │  │   0x00007fc12063aef7:   add    %edx,%r11d
   0.66%  │  │   0x00007fc12063aefa:   and    $0xfffffc00,%r11d
   0.02%  │  │   0x00007fc12063af01:   mov    %edx,%r10d
   0.04%  │  │   0x00007fc12063af04:   sub    %r11d,%r10d                  ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@19 (line 86)
   0.79%  │  │   0x00007fc12063af07:   mov    0xc(%r12,%r8,8),%ebx         ; implicit exception: dispatches to 0x00007fc12063afd5
          │  │                                                             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@20 (line 86)
   0.66%  │  │   0x00007fc12063af0c:   mov    %edx,%ebp
   0.03%  │  │   0x00007fc12063af0e:   dec    %ebp                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@9 (line 86)
   0.03%  │  │   0x00007fc12063af10:   cmp    %ebx,%r10d
          │╭ │   0x00007fc12063af13:   jae    0x00007fc12063af78
   0.83%  ││ │   0x00007fc12063af19:   lea    (%r12,%r8,8),%r11
   0.58%  ││ │   0x00007fc12063af1d:   movslq 0x10(%r11,%r10,4),%rax
   1.36%  ││ │   0x00007fc12063af22:   add    %rcx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@22 (line 86)
   0.14%  ││ │   0x00007fc12063af25:   cmp    $0x1,%edx
          ││╭│   0x00007fc12063af28:   je     0x00007fc12063af60           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 83)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.83%  ││││   0x00007fc12063af2a:   lea    -0x2(%rdx),%r9d
   0.60%  ││││   0x00007fc12063af2e:   sar    $0x1f,%ebp
   0.02%  ││││   0x00007fc12063af31:   shr    $0x16,%ebp
   0.14%  ││││   0x00007fc12063af34:   add    %edx,%ebp
   0.73%  ││││   0x00007fc12063af36:   dec    %ebp
   0.56%  ││││   0x00007fc12063af38:   and    $0xfffffc00,%ebp
   0.01%  ││││   0x00007fc12063af3e:   sub    %ebp,%edx
   0.13%  ││││   0x00007fc12063af40:   mov    %edx,%ebp
   0.83%  ││││   0x00007fc12063af42:   dec    %ebp                         ;*irem {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@19 (line 86)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.65%  ││││   0x00007fc12063af44:   cmp    %ebx,%ebp
          ││││   0x00007fc12063af46:   jae    0x00007fc12063afa0
   0.02%  ││││   0x00007fc12063af48:   movslq 0xc(%r11,%rdx,4),%rcx
   1.43%  ││││   0x00007fc12063af4d:   add    %rax,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@22 (line 86)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.87%  ││││   0x00007fc12063af50:   mov    %r9d,%edx
   0.43%  │││╰   0x00007fc12063af53:   call   0x00007fc12063aec0           ; ImmutableOopMap {}
          │││                                                              ;*invokevirtual recursive {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          │││                                                              ;   {optimized virtual_call}
  23.56%  │││    0x00007fc12063af58:   nopl   0x248(%rax,%rax,1)           ;*synchronization entry
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@-1 (line 83)
          │││                                                              ;   {other}
   1.37%  ││↘ ↗  0x00007fc12063af60:   add    $0x30,%rsp
  11.94%  ││  │  0x00007fc12063af64:   pop    %rbp
  15.28%  ││  │  0x00007fc12063af65:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007fc12063af6c:   ja     0x00007fc12063afec
   0.66%  ││  │  0x00007fc12063af72:   ret    
          ↘│  │  0x00007fc12063af73:   mov    %rcx,%rax
           │  ╰  0x00007fc12063af76:   jmp    0x00007fc12063af60
           ↘     0x00007fc12063af78:   mov    $0xffffffe4,%esi
                 0x00007fc12063af7d:   mov    %rdi,(%rsp)
                 0x00007fc12063af81:   mov    %rcx,0x8(%rsp)
                 0x00007fc12063af86:   mov    %r8d,0x10(%rsp)
                 0x00007fc12063af8b:   mov    %r10d,0x14(%rsp)
                 0x00007fc12063af90:   data16 xchg %ax,%ax
                 0x00007fc12063af93:   call   0x00007fc1200c9f00           ; ImmutableOopMap {[0]=Oop [16]=NarrowOop }
                                                                           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.07%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive, version 4, compile id 576 
   0.39%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.88%  <...other 272 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive, version 4, compile id 576 
   1.60%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%         interpreter  return entry points  
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.14%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%         c2, level 4
   1.60%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.04%                    
   0.03%         interpreter
   0.01%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%    perf-1958817.map
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

Benchmark                                     (n)  Mode  Cnt     Score   Error  Units
TailRecursionBenchmark.iterative           262144  avgt    5   254.064 ± 0.028  us/op
TailRecursionBenchmark.iterative:asm       262144  avgt            NaN            ---
TailRecursionBenchmark.tail_recursive      262144  avgt    5  3336.125 ± 5.575  us/op
TailRecursionBenchmark.tail_recursive:asm  262144  avgt            NaN            ---
