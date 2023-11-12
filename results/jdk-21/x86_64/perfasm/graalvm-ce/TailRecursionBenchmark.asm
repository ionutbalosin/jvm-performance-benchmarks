# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
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
# Warmup Iteration   1: 331.243 us/op
# Warmup Iteration   2: 329.775 us/op
# Warmup Iteration   3: 329.553 us/op
# Warmup Iteration   4: 329.557 us/op
# Warmup Iteration   5: 329.522 us/op
Iteration   1: 329.513 us/op
Iteration   2: 329.518 us/op
Iteration   3: 329.510 us/op
Iteration   4: 329.521 us/op
Iteration   5: 329.521 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.iterative":
  329.517 ±(99.9%) 0.020 us/op [Average]
  (min, avg, max) = (329.510, 329.517, 329.521), stdev = 0.005
  CI (99.9%): [329.497, 329.537] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.iterative:asm":
PrintAssembly processed: 215505 total address lines.
Perf output processed (skipped 60.275 seconds):
 Column 1: cycles (50865 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative, version 4, compile id 953 

              0x00007f2ef323c083:   dec    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@20 (line 96)
              0x00007f2ef323c085:   mov    %edx,%r8d
              0x00007f2ef323c088:   mov    %rcx,%r11
          ╭   0x00007f2ef323c08b:   jmp    0x00007f2ef323c0d4           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@0 (line 92)
          │   0x00007f2ef323c090:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f2ef323c09b:   data16 data16 xchg %ax,%ax
          │   0x00007f2ef323c09f:   nop                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@1 (line 92)
   7.62%  │↗  0x00007f2ef323c0a0:   mov    %r8d,%r9d
   7.53%  ││  0x00007f2ef323c0a3:   sar    $0x1f,%r9d
   7.47%  ││  0x00007f2ef323c0a7:   shr    $0x16,%r9d
   7.61%  ││  0x00007f2ef323c0ab:   add    %r8d,%r9d
   7.67%  ││  0x00007f2ef323c0ae:   and    $0xfffffc00,%r9d
   7.50%  ││  0x00007f2ef323c0b5:   mov    %r8d,%ecx
   7.57%  ││  0x00007f2ef323c0b8:   sub    %r9d,%ecx                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@15 (line 95)
   7.46%  ││  0x00007f2ef323c0bb:   nopl   0x0(%rax,%rax,1)
   7.53%  ││  0x00007f2ef323c0c0:   cmp    %ecx,%r10d
          ││  0x00007f2ef323c0c3:   jbe    0x00007f2ef323c11b           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@16 (line 95)
   7.45%  ││  0x00007f2ef323c0c9:   movslq 0x10(%rax,%rcx,4),%r9        ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@17 (line 95)
   7.51%  ││  0x00007f2ef323c0ce:   add    %r9,%r11                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@18 (line 95)
   7.39%  ││  0x00007f2ef323c0d1:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@20 (line 96)
   7.43%  ↘│  0x00007f2ef323c0d4:   test   %r8d,%r8d
           ╰  0x00007f2ef323c0d7:   jne    0x00007f2ef323c0a0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@1 (line 92)
              0x00007f2ef323c0d9:   mov    %r11,%rax                    ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@5 (line 93)
              0x00007f2ef323c0dc:   mov    0x10(%rsp),%rbp
              0x00007f2ef323c0e1:   add    $0x18,%rsp
              0x00007f2ef323c0e5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007f2ef323c0ec:   ja     0x00007f2ef323c14e
              0x00007f2ef323c0f2:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.73%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.73%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative, version 4, compile id 953 
   0.75%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.69%  <...other 261 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.73%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative, version 4, compile id 953 
   1.92%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  os::current_thread_id 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.12%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.73%      jvmci, level 4
   1.92%              kernel
   0.12%           libjvm.so
   0.11%        libc-2.31.so
   0.08%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.00%    perf-2131968.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.tail_recursive
# Parameters: (n = 262144)

# Run progress: 50.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 857.450 us/op
# Warmup Iteration   2: 852.134 us/op
# Warmup Iteration   3: 848.775 us/op
# Warmup Iteration   4: 849.626 us/op
# Warmup Iteration   5: 851.208 us/op
Iteration   1: 850.925 us/op
Iteration   2: 851.990 us/op
Iteration   3: 852.543 us/op
Iteration   4: 851.967 us/op
Iteration   5: 852.414 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.tail_recursive":
  851.968 ±(99.9%) 2.449 us/op [Average]
  (min, avg, max) = (850.925, 851.968, 852.543), stdev = 0.636
  CI (99.9%): [849.519, 854.416] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.tail_recursive:asm":
PrintAssembly processed: 217686 total address lines.
Perf output processed (skipped 60.411 seconds):
 Column 1: cycles (50833 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive, version 2, compile id 964 

              # parm1:    rcx:rcx   = long
              #           [sp+0x20]  (sp of caller)
              0x00007f603b23ffa0:   mov    0x8(%rsi),%r10d
              0x00007f603b23ffa4:   movabs $0x7f5fbf000000,%r12
              0x00007f603b23ffae:   add    %r12,%r10
              0x00007f603b23ffb1:   xor    %r12,%r12
              0x00007f603b23ffb4:   cmp    %r10,%rax
              0x00007f603b23ffb7:   jne    0x00007f603ac2f080           ;   {runtime_call ic_miss_stub}
              0x00007f603b23ffbd:   data16 xchg %ax,%ax
            [Verified Entry Point]
   0.86%   ↗  0x00007f603b23ffc0:   mov    %eax,-0x14000(%rsp)
   0.83%   │  0x00007f603b23ffc7:   sub    $0x18,%rsp
   0.40%   │  0x00007f603b23ffcb:   nop
   0.43%   │  0x00007f603b23ffcc:   cmpl   $0x1,0x20(%r15)
   0.42%   │  0x00007f603b23ffd4:   jne    0x00007f603b2401b5
   0.43%   │  0x00007f603b23ffda:   mov    %rbp,0x10(%rsp)
   0.36%   │  0x00007f603b23ffdf:   nop
   0.46%   │  0x00007f603b23ffe0:   test   %edx,%edx
          ╭│  0x00007f603b23ffe2:   je     0x00007f603b24015f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 83)
   0.36%  ││  0x00007f603b23ffe8:   mov    0x14(%rsi),%r10d             ; ImmutableOopMap {rsi=Oop r10=NarrowOop }
          ││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@0 (line 83)
   0.43%  ││  0x00007f603b23ffec:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f603b2401ee
   0.43%  ││  0x00007f603b23fff4:   mov    %edx,%r8d
   0.42%  ││  0x00007f603b23fff7:   sar    $0x1f,%r8d
   0.40%  ││  0x00007f603b23fffb:   shr    $0x16,%r8d
   0.40%  ││  0x00007f603b23ffff:   add    %edx,%r8d
   0.41%  ││  0x00007f603b240002:   and    $0xfffffc00,%r8d
   0.41%  ││  0x00007f603b240009:   mov    %edx,%r9d
   0.43%  ││  0x00007f603b24000c:   sub    %r8d,%r9d                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@19 (line 86)
   0.39%  ││  0x00007f603b24000f:   cmp    %r9d,%r11d
          ││  0x00007f603b240012:   jbe    0x00007f603b240192           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@20 (line 86)
   0.43%  ││  0x00007f603b240018:   shl    $0x3,%r10                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@12 (line 86)
   0.43%  ││  0x00007f603b24001c:   movslq 0x10(%r10,%r9,4),%r8         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@21 (line 86)
   0.44%  ││  0x00007f603b240021:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@22 (line 86)
   0.40%  ││  0x00007f603b240024:   cmp    $0x1,%edx
          ││  0x00007f603b240027:   je     0x00007f603b240179           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 83)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.36%  ││  0x00007f603b24002d:   mov    %edx,%r9d
   0.43%  ││  0x00007f603b240030:   dec    %r9d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@9 (line 86)
   0.39%  ││  0x00007f603b240033:   mov    %r9d,%ebx
   0.42%  ││  0x00007f603b240036:   sar    $0x1f,%ebx
   0.42%  ││  0x00007f603b240039:   shr    $0x16,%ebx
   0.41%  ││  0x00007f603b24003c:   add    %r9d,%ebx
   0.45%  ││  0x00007f603b24003f:   and    $0xfffffc00,%ebx
   0.40%  ││  0x00007f603b240045:   sub    %ebx,%r9d                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@19 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.46%  ││  0x00007f603b240048:   cmp    %r9d,%r11d
          ││  0x00007f603b24004b:   jbe    0x00007f603b240192           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@20 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.42%  ││  0x00007f603b240051:   movslq 0x10(%r10,%r9,4),%r9         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@21 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.38%  ││  0x00007f603b240056:   add    %r9,%r8                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@22 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.42%  ││  0x00007f603b240059:   nopl   0x0(%rax)
   0.42%  ││  0x00007f603b240060:   cmp    $0x2,%edx
          ││  0x00007f603b240063:   je     0x00007f603b24017e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 83)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.48%  ││  0x00007f603b240069:   lea    -0x2(%rdx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@9 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.43%  ││  0x00007f603b24006d:   mov    %r9d,%ebx
   0.42%  ││  0x00007f603b240070:   sar    $0x1f,%ebx
   0.39%  ││  0x00007f603b240073:   shr    $0x16,%ebx
   0.44%  ││  0x00007f603b240076:   add    %r9d,%ebx
   0.43%  ││  0x00007f603b240079:   and    $0xfffffc00,%ebx
   0.44%  ││  0x00007f603b24007f:   sub    %ebx,%r9d                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@19 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.48%  ││  0x00007f603b240082:   cmp    %r9d,%r11d
          ││  0x00007f603b240085:   jbe    0x00007f603b240192           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@20 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.39%  ││  0x00007f603b24008b:   movslq 0x10(%r10,%r9,4),%r9         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@21 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.46%  ││  0x00007f603b240090:   add    %r9,%r8                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@22 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.41%  ││  0x00007f603b240093:   cmp    $0x3,%edx
          ││  0x00007f603b240096:   je     0x00007f603b240183           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 83)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.42%  ││  0x00007f603b24009c:   lea    -0x3(%rdx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@9 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.37%  ││  0x00007f603b2400a0:   mov    %r9d,%ebx
   0.45%  ││  0x00007f603b2400a3:   sar    $0x1f,%ebx
   0.40%  ││  0x00007f603b2400a6:   shr    $0x16,%ebx
   0.41%  ││  0x00007f603b2400a9:   add    %r9d,%ebx
   0.40%  ││  0x00007f603b2400ac:   and    $0xfffffc00,%ebx
   0.40%  ││  0x00007f603b2400b2:   sub    %ebx,%r9d                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@19 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.43%  ││  0x00007f603b2400b5:   cmp    %r9d,%r11d                   ;   {no_reloc}
          ││  0x00007f603b2400b8:   jbe    0x00007f603b240192           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@20 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.44%  ││  0x00007f603b2400be:   movslq 0x10(%r10,%r9,4),%r9         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@21 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.47%  ││  0x00007f603b2400c3:   add    %r9,%r8                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@22 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.38%  ││  0x00007f603b2400c6:   cmp    $0x4,%edx
          ││  0x00007f603b2400c9:   je     0x00007f603b240188           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 83)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.48%  ││  0x00007f603b2400cf:   lea    -0x4(%rdx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@9 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.41%  ││  0x00007f603b2400d3:   mov    %r9d,%ebx
   0.41%  ││  0x00007f603b2400d6:   sar    $0x1f,%ebx
   0.39%  ││  0x00007f603b2400d9:   shr    $0x16,%ebx
   0.42%  ││  0x00007f603b2400dc:   add    %r9d,%ebx
   0.42%  ││  0x00007f603b2400df:   and    $0xfffffc00,%ebx
   0.47%  ││  0x00007f603b2400e5:   sub    %ebx,%r9d                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@19 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.45%  ││  0x00007f603b2400e8:   cmp    %r9d,%r11d
          ││  0x00007f603b2400eb:   jbe    0x00007f603b240192           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@20 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.44%  ││  0x00007f603b2400f1:   movslq 0x10(%r10,%r9,4),%r9         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@21 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.38%  ││  0x00007f603b2400f6:   add    %r9,%r8                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@22 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.42%  ││  0x00007f603b2400f9:   nopl   0x0(%rax)
   0.36%  ││  0x00007f603b240100:   cmp    $0x5,%edx
          ││  0x00007f603b240103:   je     0x00007f603b24018d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 83)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.34%  ││  0x00007f603b240109:   lea    -0x5(%rdx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@9 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.38%  ││  0x00007f603b24010d:   mov    %r9d,%ebx
   0.42%  ││  0x00007f603b240110:   sar    $0x1f,%ebx
   0.42%  ││  0x00007f603b240113:   shr    $0x16,%ebx
   0.40%  ││  0x00007f603b240116:   add    %r9d,%ebx
   0.38%  ││  0x00007f603b240119:   and    $0xfffffc00,%ebx
   0.39%  ││  0x00007f603b24011f:   sub    %ebx,%r9d                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@19 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.37%  ││  0x00007f603b240122:   cmp    %r9d,%r11d
          ││  0x00007f603b240125:   jbe    0x00007f603b240192           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@20 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.42%  ││  0x00007f603b24012b:   lea    -0x6(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@9 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.44%  ││  0x00007f603b24012e:   movslq 0x10(%r10,%r9,4),%rcx        ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@21 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.39%  ││  0x00007f603b240133:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@22 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.38%  ││  0x00007f603b240136:   mov    %r8,%rcx                     ;*invokevirtual recursive {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
   0.44%  ││  0x00007f603b240139:   xchg   %ax,%ax
   0.42%  │╰  0x00007f603b24013b:   call   0x00007f603b23ffc0           ; ImmutableOopMap {}
          │                                                             ;*invokevirtual recursive {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          │                                                             ;   {optimized virtual_call}
  30.15%  │   0x00007f603b240140:   nopl   0x1000330(%rax,%rax,1)       ;   {other}
   1.74%  │   0x00007f603b240148:   mov    0x10(%rsp),%rbp
  29.43%  │   0x00007f603b24014d:   add    $0x18,%rsp
   0.24%  │   0x00007f603b240151:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │   0x00007f603b240158:   ja     0x00007f603b2401c6
   0.89%  │   0x00007f603b24015e:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 83)
          ↘   0x00007f603b24015f:   mov    %rcx,%rax                    ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@5 (line 84)
              0x00007f603b240162:   mov    0x10(%rsp),%rbp
              0x00007f603b240167:   add    $0x18,%rsp
              0x00007f603b24016b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007f603b240172:   ja     0x00007f603b2401da
              0x00007f603b240178:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 83)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
....................................................................................................
  97.77%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive, version 2, compile id 964 
   0.43%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   1.13%  <...other 369 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.77%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive, version 2, compile id 964 
   1.71%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.TailRecursionBenchmark_tail_recursive_jmhTest::tail_recursive_avgt_jmhStub, version 2, compile id 1003 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  stringStream::write 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%            libjvm.so  os::current_thread_id 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.28%  <...other 128 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.78%       jvmci, level 4
   1.71%               kernel
   0.18%            libjvm.so
   0.10%  libjvmcicompiler.so
   0.10%         libc-2.31.so
   0.04%                     
   0.04%   libpthread-2.31.so
   0.02%          interpreter
   0.02%          c1, level 3
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:47

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

Benchmark                                     (n)  Mode  Cnt    Score   Error  Units
TailRecursionBenchmark.iterative           262144  avgt    5  329.517 ± 0.020  us/op
TailRecursionBenchmark.iterative:asm       262144  avgt           NaN            ---
TailRecursionBenchmark.tail_recursive      262144  avgt    5  851.968 ± 2.449  us/op
TailRecursionBenchmark.tail_recursive:asm  262144  avgt           NaN            ---
