# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline
# Parameters: (size = 32768)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 146.090 us/op
# Warmup Iteration   2: 143.061 us/op
# Warmup Iteration   3: 143.067 us/op
# Warmup Iteration   4: 143.083 us/op
# Warmup Iteration   5: 143.416 us/op
Iteration   1: 143.429 us/op
Iteration   2: 143.419 us/op
Iteration   3: 143.259 us/op
Iteration   4: 143.329 us/op
Iteration   5: 143.244 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline":
  143.336 ±(99.9%) 0.333 us/op [Average]
  (min, avg, max) = (143.244, 143.336, 143.429), stdev = 0.087
  CI (99.9%): [143.002, 143.669] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 169086 total address lines.
Perf output processed (skipped 56.834 seconds):
 Column 1: cycles (53133 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 660 

               0x00007fb6406401e7:   vmovss -0x17b(%rip),%xmm5        # 0x00007fb640640074
                                                                         ;   {section_word}
               0x00007fb6406401ef:   vmovss -0x17f(%rip),%xmm8        # 0x00007fb640640078
                                                                         ;   {section_word}
               0x00007fb6406401f7:   vmovss -0x183(%rip),%xmm7        # 0x00007fb64064007c
                                                                         ;   {section_word}
               0x00007fb6406401ff:   vmovss -0x187(%rip),%xmm10        # 0x00007fb640640080
                                                                         ;   {section_word}
               0x00007fb640640207:   vmovss -0x18b(%rip),%xmm9        # 0x00007fb640640084
                                                                         ;   {section_word}
   0.00%       0x00007fb64064020f:   xor    %r11d,%r11d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@178 (line 81)
               0x00007fb640640212:   xor    %edx,%edx
   0.00%    ↗  0x00007fb640640214:   mov    %edi,%ecx
   0.00%    │  0x00007fb640640216:   sub    %edx,%ecx
            │  0x00007fb640640218:   cmp    %edx,%edi
   0.01%    │  0x00007fb64064021a:   cmovl  %r11d,%ecx
            │  0x00007fb64064021e:   cmp    $0x3e8,%ecx
   0.00%    │  0x00007fb640640224:   cmova  %r8d,%ecx
   0.00%    │  0x00007fb640640228:   add    %edx,%ecx
            │  0x00007fb64064022a:   nopw   0x0(%rax,%rax,1)             ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@10 (line 82)
   1.60%   ↗│  0x00007fb640640230:   vmulss 0x10(%rbp,%rdx,4),%xmm4,%xmm1
   5.12%   ││  0x00007fb640640236:   vmulss 0x10(%rsi,%rdx,4),%xmm8,%xmm0
   4.39%   ││  0x00007fb64064023c:   vmulss 0x10(%rax,%rdx,4),%xmm7,%xmm3
   4.78%   ││  0x00007fb640640242:   vaddss %xmm3,%xmm0,%xmm0
   2.87%   ││  0x00007fb640640246:   vaddss %xmm1,%xmm0,%xmm1
   3.19%   ││  0x00007fb64064024a:   vmovss %xmm1,0x10(%r13,%rdx,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@44 (line 82)
   3.17%   ││  0x00007fb640640251:   vmulss 0x10(%rsi,%rdx,4),%xmm9,%xmm0
   3.96%   ││  0x00007fb640640257:   vmulss 0x10(%rbp,%rdx,4),%xmm5,%xmm2
   4.45%   ││  0x00007fb64064025d:   vmulss 0x10(%rax,%rdx,4),%xmm10,%xmm3
   3.76%   ││  0x00007fb640640263:   vaddss %xmm3,%xmm0,%xmm0
   1.47%   ││  0x00007fb640640267:   vaddss %xmm2,%xmm0,%xmm1
   3.41%   ││  0x00007fb64064026b:   vmovss %xmm1,0x10(%r14,%rdx,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@79 (line 83)
   1.98%   ││  0x00007fb640640272:   vmulss 0x10(%rsi,%rdx,4),%xmm6,%xmm0
   3.48%   ││  0x00007fb640640278:   vmovss 0x10(%rbp,%rdx,4),%xmm2      ;*faload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@111 (line 84)
   2.93%   ││  0x00007fb64064027e:   vmovss 0x10(%rax,%rdx,4),%xmm1      ;*faload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@101 (line 84)
   1.95%   ││  0x00007fb640640284:   vmulss -0x228(%rip),%xmm2,%xmm3        # 0x00007fb640640064
           ││                                                            ;   {section_word}
   2.03%   ││  0x00007fb64064028c:   vmulss -0x22c(%rip),%xmm1,%xmm1        # 0x00007fb640640068
           ││                                                            ;   {section_word}
   1.26%   ││  0x00007fb640640294:   vaddss %xmm1,%xmm0,%xmm1
   2.86%   ││  0x00007fb640640298:   vaddss %xmm3,%xmm1,%xmm0            ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@113 (line 84)
   2.19%   ││  0x00007fb64064029c:   vmovss %xmm0,0x10(%rbx,%rdx,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@114 (line 84)
   2.09%   ││  0x00007fb6406402a2:   vmovss 0x10(%r13,%rdx,4),%xmm2      ;*faload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@120 (line 85)
   1.36%   ││  0x00007fb6406402a9:   vucomiss -0x251(%rip),%xmm2        # 0x00007fb640640060
           ││                                                            ;   {section_word}
   5.46%  ╭││  0x00007fb6406402b1:   ja     0x00007fb640640313           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@124 (line 85)
   2.74%  │││  0x00007fb6406402b7:   vmovss 0x10(%r14,%rdx,4),%xmm2      ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@140 (line 88)
   1.25%  │││  0x00007fb6406402be:   xchg   %ax,%ax
   2.40%  │││  0x00007fb6406402c0:   vucomiss -0x268(%rip),%xmm2        # 0x00007fb640640060
          │││                                                            ;   {section_word}
   5.08%  │││  0x00007fb6406402c8:   ja     0x00007fb640640350           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@144 (line 88)
   1.85%  │││  0x00007fb6406402ce:   vucomiss -0x276(%rip),%xmm0        # 0x00007fb640640060
          │││                                                            ;   {section_word}
   3.86%  │││  0x00007fb6406402d6:   ja     0x00007fb64064038c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@164 (line 91)
   2.43%  │││  0x00007fb6406402dc:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@175 (line 81)
   1.76%  │││  0x00007fb6406402de:   xchg   %ax,%ax
   2.31%  │││  0x00007fb6406402e0:   cmp    %ecx,%edx
          │╰│  0x00007fb6406402e2:   jl     0x00007fb640640230           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@178 (line 81)
   0.00%  │ │  0x00007fb6406402e8:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {r10=NarrowOop r9=Oop rbx=Oop rsi=Oop rax=Oop rbp=Oop r13=Oop r14=Oop }
          │ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@178 (line 81)
   0.01%  │ │  0x00007fb6406402ef:   test   %eax,(%rcx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@178 (line 81)
          │ │                                                            ;   {poll}
   0.04%  │ │  0x00007fb6406402f1:   cmp    %edi,%edx
          │ ╰  0x00007fb6406402f3:   jl     0x00007fb640640214           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@7 (line 81)
          │    0x00007fb6406402f9:   mov    %r10,%rax
          │    0x00007fb6406402fc:   shl    $0x3,%rax                    ;*getfield resultR {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@11 (line 82)
   0.00%  │    0x00007fb640640300:   add    $0x20,%rsp
          │    0x00007fb640640304:   pop    %rbp
   0.02%  │    0x00007fb640640305:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │    0x00007fb64064030c:   ja     0x00007fb6406403e0
          │    0x00007fb640640312:   ret                                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@10 (line 82)
          ↘    0x00007fb640640313:   vucomiss -0x2bb(%rip),%xmm2        # 0x00007fb640640060
                                                                         ;   {section_word}
               0x00007fb64064031b:   mov    $0xffffffff,%ebp
               0x00007fb640640320:   jp     0x00007fb640640334
               0x00007fb640640326:   jb     0x00007fb640640334
               0x00007fb64064032c:   setne  %bpl
               0x00007fb640640330:   movzbl %bpl,%ebp                    ;*fcmpl {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  93.51%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 660 
   0.59%              kernel  [unknown] 
   0.51%              kernel  [unknown] 
   0.34%              kernel  [unknown] 
   0.28%              kernel  [unknown] 
   0.24%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.14%           libjvm.so  ElfSymbolTable::lookup 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%          ld-2.31.so  __tls_get_addr 
   0.04%              kernel  [unknown] 
   0.04%        libc-2.31.so  __strchrnul_avx2 
   0.04%  libpthread-2.31.so  __libc_write 
   0.03%              kernel  [unknown] 
   3.64%  <...other 957 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 660 
   4.04%              kernel  [unknown] 
   0.14%                      <unknown> 
   0.14%           libjvm.so  ElfSymbolTable::lookup 
   0.10%        libc-2.31.so  __vfprintf_internal 
   0.06%           libjvm.so  defaultStream::write 
   0.05%         interpreter  method entry point (kind = zerolocals)  
   0.05%           libjvm.so  xmlStream::write_text 
   0.05%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.05%        libc-2.31.so  __strchrnul_avx2 
   0.05%        libc-2.31.so  _IO_default_xsputn 
   0.04%          ld-2.31.so  __tls_get_addr 
   0.04%        libc-2.31.so  _IO_fwrite 
   0.04%  libpthread-2.31.so  __libc_write 
   0.03%        libc-2.31.so  __strlen_avx2 
   0.03%         interpreter  return entry points  
   0.03%      hsdis-amd64.so  print_insn 
   0.03%        libc-2.31.so  syscall 
   0.03%           libjvm.so  fileStream::write 
   0.03%        libc-2.31.so  __vsnprintf_internal 
   1.42%  <...other 401 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.58%         c2, level 4
   4.04%              kernel
   1.03%           libjvm.so
   0.54%        libc-2.31.so
   0.40%         interpreter
   0.14%                    
   0.08%  libpthread-2.31.so
   0.07%      hsdis-amd64.so
   0.04%          ld-2.31.so
   0.02%    perf-1955642.map
   0.02%         c1, level 3
   0.01%              [vdso]
   0.01%         c1, level 1
   0.00%         c1, level 2
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline
# Parameters: (size = 65536)

# Run progress: 25.00% complete, ETA 00:05:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 290.371 us/op
# Warmup Iteration   2: 286.051 us/op
# Warmup Iteration   3: 285.716 us/op
# Warmup Iteration   4: 285.743 us/op
# Warmup Iteration   5: 286.566 us/op
Iteration   1: 286.582 us/op
Iteration   2: 286.592 us/op
Iteration   3: 286.594 us/op
Iteration   4: 286.581 us/op
Iteration   5: 286.594 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline":
  286.588 ±(99.9%) 0.025 us/op [Average]
  (min, avg, max) = (286.581, 286.588, 286.594), stdev = 0.007
  CI (99.9%): [286.563, 286.614] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.baseline:asm":
PrintAssembly processed: 172581 total address lines.
Perf output processed (skipped 56.826 seconds):
 Column 1: cycles (53431 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 678 

               0x00007fc854641a7f:   vmovss -0x187(%rip),%xmm10        # 0x00007fc854641900
                                                                         ;   {section_word}
               0x00007fc854641a87:   vmovss -0x18b(%rip),%xmm9        # 0x00007fc854641904
                                                                         ;   {section_word}
               0x00007fc854641a8f:   xor    %r11d,%r11d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@178 (line 81)
               0x00007fc854641a92:   xor    %edx,%edx
            ↗  0x00007fc854641a94:   mov    %edi,%ecx
            │  0x00007fc854641a96:   sub    %edx,%ecx
            │  0x00007fc854641a98:   cmp    %edx,%edi
   0.00%    │  0x00007fc854641a9a:   cmovl  %r11d,%ecx
            │  0x00007fc854641a9e:   cmp    $0x3e8,%ecx
            │  0x00007fc854641aa4:   cmova  %r8d,%ecx
   0.01%    │  0x00007fc854641aa8:   add    %edx,%ecx
            │  0x00007fc854641aaa:   nopw   0x0(%rax,%rax,1)             ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@10 (line 82)
   2.81%   ↗│  0x00007fc854641ab0:   vmulss 0x10(%rbp,%rdx,4),%xmm4,%xmm1
   5.25%   ││  0x00007fc854641ab6:   vmulss 0x10(%rsi,%rdx,4),%xmm8,%xmm0
   4.14%   ││  0x00007fc854641abc:   vmulss 0x10(%rax,%rdx,4),%xmm7,%xmm3
   5.11%   ││  0x00007fc854641ac2:   vaddss %xmm3,%xmm0,%xmm0
   1.32%   ││  0x00007fc854641ac6:   vaddss %xmm1,%xmm0,%xmm1
   3.33%   ││  0x00007fc854641aca:   vmovss %xmm1,0x10(%r13,%rdx,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@44 (line 82)
   1.62%   ││  0x00007fc854641ad1:   vmulss 0x10(%rsi,%rdx,4),%xmm9,%xmm0
   4.15%   ││  0x00007fc854641ad7:   vmulss 0x10(%rbp,%rdx,4),%xmm5,%xmm2
   4.24%   ││  0x00007fc854641add:   vmulss 0x10(%rax,%rdx,4),%xmm10,%xmm3
   4.07%   ││  0x00007fc854641ae3:   vaddss %xmm3,%xmm0,%xmm0
   2.40%   ││  0x00007fc854641ae7:   vaddss %xmm2,%xmm0,%xmm1
   2.22%   ││  0x00007fc854641aeb:   vmovss %xmm1,0x10(%r14,%rdx,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@79 (line 83)
   3.50%   ││  0x00007fc854641af2:   vmulss 0x10(%rsi,%rdx,4),%xmm6,%xmm0
   3.28%   ││  0x00007fc854641af8:   vmovss 0x10(%rbp,%rdx,4),%xmm2      ;*faload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@111 (line 84)
   1.47%   ││  0x00007fc854641afe:   vmovss 0x10(%rax,%rdx,4),%xmm1      ;*faload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@101 (line 84)
   3.47%   ││  0x00007fc854641b04:   vmulss -0x228(%rip),%xmm2,%xmm3        # 0x00007fc8546418e4
           ││                                                            ;   {section_word}
   1.13%   ││  0x00007fc854641b0c:   vmulss -0x22c(%rip),%xmm1,%xmm1        # 0x00007fc8546418e8
           ││                                                            ;   {section_word}
   2.32%   ││  0x00007fc854641b14:   vaddss %xmm1,%xmm0,%xmm1
   1.40%   ││  0x00007fc854641b18:   vaddss %xmm3,%xmm1,%xmm0            ;*fadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@113 (line 84)
   3.57%   ││  0x00007fc854641b1c:   vmovss %xmm0,0x10(%rbx,%rdx,4)      ;*fastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@114 (line 84)
   1.11%   ││  0x00007fc854641b22:   vmovss 0x10(%r13,%rdx,4),%xmm2      ;*faload {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@120 (line 85)
   2.19%   ││  0x00007fc854641b29:   vucomiss -0x251(%rip),%xmm2        # 0x00007fc8546418e0
           ││                                                            ;   {section_word}
   5.08%  ╭││  0x00007fc854641b31:   ja     0x00007fc854641b93           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@124 (line 85)
   1.58%  │││  0x00007fc854641b37:   vmovss 0x10(%r14,%rdx,4),%xmm2      ;*faload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@140 (line 88)
   2.15%  │││  0x00007fc854641b3e:   xchg   %ax,%ax
   1.23%  │││  0x00007fc854641b40:   vucomiss -0x268(%rip),%xmm2        # 0x00007fc8546418e0
          │││                                                            ;   {section_word}
   6.25%  │││  0x00007fc854641b48:   ja     0x00007fc854641bd0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@144 (line 88)
   2.97%  │││  0x00007fc854641b4e:   vucomiss -0x276(%rip),%xmm0        # 0x00007fc8546418e0
          │││                                                            ;   {section_word}
   3.79%  │││  0x00007fc854641b56:   ja     0x00007fc854641c0c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@164 (line 91)
   1.36%  │││  0x00007fc854641b5c:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@175 (line 81)
   2.99%  │││  0x00007fc854641b5e:   xchg   %ax,%ax
   1.21%  │││  0x00007fc854641b60:   cmp    %ecx,%edx
          │╰│  0x00007fc854641b62:   jl     0x00007fc854641ab0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@178 (line 81)
   0.00%  │ │  0x00007fc854641b68:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {r10=NarrowOop r9=Oop rbx=Oop rsi=Oop rax=Oop rbp=Oop r13=Oop r14=Oop }
          │ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@178 (line 81)
   0.01%  │ │  0x00007fc854641b6f:   test   %eax,(%rcx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@178 (line 81)
          │ │                                                            ;   {poll}
   0.02%  │ │  0x00007fc854641b71:   cmp    %edi,%edx
          │ ╰  0x00007fc854641b73:   jl     0x00007fc854641a94           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@7 (line 81)
          │    0x00007fc854641b79:   mov    %r10,%rax
          │    0x00007fc854641b7c:   shl    $0x3,%rax                    ;*getfield resultR {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@11 (line 82)
          │    0x00007fc854641b80:   add    $0x20,%rsp
          │    0x00007fc854641b84:   pop    %rbp
   0.01%  │    0x00007fc854641b85:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │    0x00007fc854641b8c:   ja     0x00007fc854641c60
          │    0x00007fc854641b92:   ret                                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline@10 (line 82)
          ↘    0x00007fc854641b93:   vucomiss -0x2bb(%rip),%xmm2        # 0x00007fc8546418e0
                                                                         ;   {section_word}
               0x00007fc854641b9b:   mov    $0xffffffff,%ebp
               0x00007fc854641ba0:   jp     0x00007fc854641bb4
               0x00007fc854641ba6:   jb     0x00007fc854641bb4
               0x00007fc854641bac:   setne  %bpl
               0x00007fc854641bb0:   movzbl %bpl,%ebp                    ;*fcmpl {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  92.75%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 678 
   0.56%              kernel  [unknown] 
   0.38%              kernel  [unknown] 
   0.34%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%           libjvm.so  ElfSymbolTable::lookup 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  fileStream::write 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%          ld-2.31.so  __tls_get_addr 
   0.04%        libc-2.31.so  _IO_default_xsputn 
   4.22%  <...other 1058 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.77%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::baseline, version 3, compile id 678 
   4.50%              kernel  [unknown] 
   0.18%                      <unknown> 
   0.10%        libc-2.31.so  __vfprintf_internal 
   0.09%           libjvm.so  ElfSymbolTable::lookup 
   0.07%        libc-2.31.so  _IO_default_xsputn 
   0.06%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.06%           libjvm.so  xmlStream::write_text 
   0.06%         interpreter  method entry point (kind = zerolocals)  
   0.05%           libjvm.so  fileStream::write 
   0.05%         interpreter  invokevirtual  182 invokevirtual  
   0.05%           libjvm.so  defaultStream::write 
   0.05%      hsdis-amd64.so  print_insn 
   0.05%          ld-2.31.so  __tls_get_addr 
   0.05%         interpreter  return entry points  
   0.05%        libc-2.31.so  _IO_fwrite 
   0.04%  libpthread-2.31.so  __libc_write 
   0.04%        libc-2.31.so  __strchrnul_avx2 
   0.03%         interpreter  checkcast  192 checkcast  
   0.03%        libc-2.31.so  syscall 
   1.62%  <...other 458 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.83%         c2, level 4
   4.50%              kernel
   1.20%           libjvm.so
   0.53%        libc-2.31.so
   0.49%         interpreter
   0.18%                    
   0.09%  libpthread-2.31.so
   0.07%      hsdis-amd64.so
   0.05%          ld-2.31.so
   0.02%    perf-1955712.map
   0.01%    Unknown, level 0
   0.01%         c1, level 3
   0.01%         c1, level 2
   0.00%       libdl-2.31.so
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized
# Parameters: (size = 32768)

# Run progress: 50.00% complete, ETA 00:03:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 88.987 us/op
# Warmup Iteration   2: 62.990 us/op
# Warmup Iteration   3: 62.984 us/op
# Warmup Iteration   4: 62.681 us/op
# Warmup Iteration   5: 62.698 us/op
Iteration   1: 62.714 us/op
Iteration   2: 62.697 us/op
Iteration   3: 62.675 us/op
Iteration   4: 62.706 us/op
Iteration   5: 62.677 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized":
  62.694 ±(99.9%) 0.068 us/op [Average]
  (min, avg, max) = (62.675, 62.694, 62.714), stdev = 0.018
  CI (99.9%): [62.626, 62.761] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 188733 total address lines.
Perf output processed (skipped 57.045 seconds):
 Column 1: cycles (50995 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 905 

                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@326 (line 101)
                0x00007f72d4665041:   mov    $0x7d00,%esi
           ↗    0x00007f72d4665046:   mov    %eax,%r10d
           │    0x00007f72d4665049:   sub    %edi,%r10d
           │    0x00007f72d466504c:   cmp    %edi,%eax
           │    0x00007f72d466504e:   cmovl  %edx,%r10d
           │    0x00007f72d4665052:   cmp    $0x7d00,%r10d
           │    0x00007f72d4665059:   cmova  %esi,%r10d
           │    0x00007f72d466505d:   add    %edi,%r10d                   ;*getstatic FLOAT_SPECIES {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@18 (line 102)
   0.30%  ↗│    0x00007f72d4665060:   vmovdqu 0x10(%rbp,%rdi,4),%ymm0     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   2.72%  ││    0x00007f72d4665066:   vmovdqu 0x10(%r13,%rdi,4),%ymm1     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
   0.02%  ││    0x00007f72d466506d:   vmovdqu 0x10(%r8,%rdi,4),%ymm5      ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
   0.00%  ││    0x00007f72d4665074:   vbroadcastss -0x359(%rip),%ymm2        # 0x00007f72d4664d24
          ││                                                              ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          ││                                                              ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@101 (line 110)
          ││                                                              ;   {section_word}
   0.41%  ││    0x00007f72d466507d:   vmulps %ymm2,%ymm0,%ymm2
   2.64%  ││    0x00007f72d4665081:   vmulps %ymm8,%ymm5,%ymm3
   0.00%  ││    0x00007f72d4665086:   vmulps %ymm11,%ymm5,%ymm4           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
          ││    0x00007f72d466508b:   vbroadcastss -0x374(%rip),%ymm6        # 0x00007f72d4664d20
          ││                                                              ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          ││                                                              ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@23 (line 102)
          ││                                                              ;   {section_word}
   0.11%  ││    0x00007f72d4665094:   vmulps %ymm6,%ymm5,%ymm5
   0.62%  ││    0x00007f72d4665098:   vmulps %ymm10,%ymm1,%ymm6
   0.00%  ││    0x00007f72d466509d:   vmulps %ymm14,%ymm1,%ymm7
          ││    0x00007f72d46650a2:   vaddps %ymm6,%ymm4,%ymm4
   0.12%  ││    0x00007f72d46650a6:   vaddps %ymm7,%ymm5,%ymm5
   1.24%  ││    0x00007f72d46650aa:   vmulps %ymm9,%ymm0,%ymm6
          ││    0x00007f72d46650af:   vmulps %ymm13,%ymm0,%ymm0           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
          ││    0x00007f72d46650b4:   vaddps %ymm6,%ymm4,%ymm4            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          ││                                                              ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
   0.61%  ││    0x00007f72d46650b8:   vaddps %ymm0,%ymm5,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          ││                                                              ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
   0.77%  ││    0x00007f72d46650bc:   vcmpgt_oqps %ymm12,%ymm4,%ymm0
   1.26%  ││    0x00007f72d46650c2:   vblendvps %ymm0,%ymm12,%ymm4,%ymm0
   1.32%  ││    0x00007f72d46650c8:   vcmpgt_oqps %ymm12,%ymm5,%ymm4
   0.21%  ││    0x00007f72d46650ce:   vblendvps %ymm4,%ymm12,%ymm5,%ymm4  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   1.44%  ││    0x00007f72d46650d4:   vmovdqu %ymm4,0x10(%r11,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
   0.38%  ││    0x00007f72d46650db:   vmovdqu %ymm0,0x10(%r9,%rdi,4)      ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
          ││    0x00007f72d46650e2:   vbroadcastss -0x3c3(%rip),%ymm0        # 0x00007f72d4664d28
          ││                                                              ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          ││                                                              ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@91 (line 109)
          ││                                                              ;   {section_word}
   0.49%  ││    0x00007f72d46650eb:   vmulps %ymm0,%ymm1,%ymm0
   0.36%  ││    0x00007f72d46650ef:   vaddps %ymm0,%ymm3,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.74%  ││    0x00007f72d46650f3:   vaddps %ymm2,%ymm0,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          ││                                                              ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   1.52%  ││    0x00007f72d46650f7:   vcmpgt_oqps %ymm12,%ymm0,%ymm1
   1.74%  ││    0x00007f72d46650fd:   vblendvps %ymm1,%ymm12,%ymm0,%ymm0
   2.44%  ││    0x00007f72d4665103:   vmovdqu %ymm0,0x10(%rcx,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.12%  ││    0x00007f72d4665109:   vmovdqu 0x30(%r8,%rdi,4),%ymm0      ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
   0.04%  ││    0x00007f72d4665110:   vmovdqu 0x30(%rbp,%rdi,4),%ymm1     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   0.16%  ││    0x00007f72d4665116:   vmovdqu 0x30(%r13,%rdi,4),%ymm5     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
   1.41%  ││    0x00007f72d466511d:   vmulps %ymm8,%ymm0,%ymm3            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.04%  ││    0x00007f72d4665122:   vbroadcastss -0x403(%rip),%ymm2        # 0x00007f72d4664d28
          ││                                                              ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          ││                                                              ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@91 (line 109)
          ││                                                              ;   {section_word}
          ││    0x00007f72d466512b:   vmulps %ymm2,%ymm5,%ymm4
   2.29%  ││    0x00007f72d466512f:   vmulps %ymm10,%ymm5,%ymm2
   0.37%  ││    0x00007f72d4665134:   vaddps %ymm4,%ymm3,%ymm3
   1.55%  ││    0x00007f72d4665138:   vmulps %ymm14,%ymm5,%ymm4
          ││    0x00007f72d466513d:   vmulps %ymm9,%ymm1,%ymm5
   0.07%  ││    0x00007f72d4665142:   vmulps %ymm13,%ymm1,%ymm6
   0.05%  ││    0x00007f72d4665147:   vmulps %ymm11,%ymm0,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.47%  ││    0x00007f72d466514c:   vbroadcastss -0x435(%rip),%ymm15        # 0x00007f72d4664d20
          ││                                                              ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          ││                                                              ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@23 (line 102)
          ││                                                              ;   {section_word}
          ││    0x00007f72d4665155:   vmulps %ymm15,%ymm0,%ymm0
   0.08%  ││    0x00007f72d466515a:   vaddps %ymm2,%ymm7,%ymm2
   0.05%  ││    0x00007f72d466515e:   vaddps %ymm4,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.50%  ││    0x00007f72d4665162:   vaddps %ymm5,%ymm2,%ymm2            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          ││                                                              ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
   1.60%  ││    0x00007f72d4665166:   vaddps %ymm6,%ymm0,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          ││                                                              ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
   0.18%  ││    0x00007f72d466516a:   vcmpgt_oqps %ymm12,%ymm2,%ymm4
   1.64%  ││    0x00007f72d4665170:   vblendvps %ymm4,%ymm12,%ymm2,%ymm2
   1.22%  ││    0x00007f72d4665176:   vcmpgt_oqps %ymm12,%ymm0,%ymm4
          ││    0x00007f72d466517c:   vblendvps %ymm4,%ymm12,%ymm0,%ymm0  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   1.24%  ││    0x00007f72d4665182:   vmovdqu %ymm0,0x30(%r11,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
  13.24%  ││    0x00007f72d4665189:   vmovdqu %ymm2,0x30(%r9,%rdi,4)      ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
          ││    0x00007f72d4665190:   vbroadcastss -0x475(%rip),%ymm0        # 0x00007f72d4664d24
          ││                                                              ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          ││                                                              ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@101 (line 110)
          ││                                                              ;   {section_word}
   0.64%  ││    0x00007f72d4665199:   vmulps %ymm0,%ymm1,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.48%  ││    0x00007f72d466519d:   vaddps %ymm0,%ymm3,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          ││                                                              ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   1.84%  ││    0x00007f72d46651a1:   vcmpgt_oqps %ymm12,%ymm0,%ymm1
   0.47%  ││    0x00007f72d46651a7:   vblendvps %ymm1,%ymm12,%ymm0,%ymm0
   2.51%  ││    0x00007f72d46651ad:   vmovdqu %ymm0,0x30(%rcx,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.02%  ││    0x00007f72d46651b3:   vmovdqu 0x50(%r8,%rdi,4),%ymm0      ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
   0.01%  ││    0x00007f72d46651ba:   vmovdqu 0x50(%rbp,%rdi,4),%ymm1     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   2.66%  ││    0x00007f72d46651c0:   vmovdqu 0x50(%r13,%rdi,4),%ymm5     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
   0.04%  ││    0x00007f72d46651c7:   vmulps %ymm8,%ymm0,%ymm3            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.00%  ││    0x00007f72d46651cc:   vbroadcastss -0x4ad(%rip),%ymm2        # 0x00007f72d4664d28
          ││                                                              ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          ││                                                              ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@91 (line 109)
          ││                                                              ;   {section_word}
   0.31%  ││    0x00007f72d46651d5:   vmulps %ymm2,%ymm5,%ymm4
   0.75%  ││    0x00007f72d46651d9:   vmulps %ymm10,%ymm5,%ymm2
   0.02%  ││    0x00007f72d46651de:   vaddps %ymm4,%ymm3,%ymm3
   1.50%  ││    0x00007f72d46651e2:   vmulps %ymm14,%ymm5,%ymm4
          ││    0x00007f72d46651e7:   vmulps %ymm9,%ymm1,%ymm5
   0.77%  ││    0x00007f72d46651ec:   vmulps %ymm13,%ymm1,%ymm6
   0.00%  ││    0x00007f72d46651f1:   vmulps %ymm11,%ymm0,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.32%  ││    0x00007f72d46651f6:   vbroadcastss -0x4df(%rip),%ymm15        # 0x00007f72d4664d20
          ││                                                              ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          ││                                                              ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@23 (line 102)
          ││                                                              ;   {section_word}
          ││    0x00007f72d46651ff:   vmulps %ymm15,%ymm0,%ymm0
   0.35%  ││    0x00007f72d4665204:   vaddps %ymm2,%ymm7,%ymm2
   0.01%  ││    0x00007f72d4665208:   vaddps %ymm4,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.28%  ││    0x00007f72d466520c:   vaddps %ymm5,%ymm2,%ymm2            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          ││                                                              ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
   1.02%  ││    0x00007f72d4665210:   vaddps %ymm6,%ymm0,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          ││                                                              ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
   0.53%  ││    0x00007f72d4665214:   vcmpgt_oqps %ymm12,%ymm2,%ymm4
   1.25%  ││    0x00007f72d466521a:   vblendvps %ymm4,%ymm12,%ymm2,%ymm2
   1.24%  ││    0x00007f72d4665220:   vcmpgt_oqps %ymm12,%ymm0,%ymm4
   0.25%  ││    0x00007f72d4665226:   vblendvps %ymm4,%ymm12,%ymm0,%ymm0  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   1.79%  ││    0x00007f72d466522c:   vmovdqu %ymm0,0x50(%r11,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
   0.39%  ││    0x00007f72d4665233:   vmovdqu %ymm2,0x50(%r9,%rdi,4)      ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
          ││    0x00007f72d466523a:   vbroadcastss -0x51f(%rip),%ymm0        # 0x00007f72d4664d24
          ││                                                              ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          ││                                                              ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@101 (line 110)
          ││                                                              ;   {section_word}
   0.46%  ││    0x00007f72d4665243:   vmulps %ymm0,%ymm1,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.48%  ││    0x00007f72d4665247:   vaddps %ymm0,%ymm3,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          ││                                                              ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   0.86%  ││    0x00007f72d466524b:   vcmpgt_oqps %ymm12,%ymm0,%ymm1
   1.43%  ││    0x00007f72d4665251:   vblendvps %ymm1,%ymm12,%ymm0,%ymm0
   2.70%  ││    0x00007f72d4665257:   vmovdqu %ymm0,0x50(%rcx,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   1.01%  ││    0x00007f72d466525d:   vmovdqu 0x70(%r8,%rdi,4),%ymm0      ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
   0.63%  ││    0x00007f72d4665264:   vmovdqu 0x70(%rbp,%rdi,4),%ymm1     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   0.19%  ││    0x00007f72d466526a:   vmovdqu 0x70(%r13,%rdi,4),%ymm5     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          ││                                                              ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
   2.64%  ││    0x00007f72d4665271:   vmulps %ymm8,%ymm0,%ymm3            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.04%  ││    0x00007f72d4665276:   vbroadcastss -0x557(%rip),%ymm2        # 0x00007f72d4664d28
          ││                                                              ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          ││                                                              ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@91 (line 109)
          ││                                                              ;   {section_word}
          ││    0x00007f72d466527f:   vmulps %ymm2,%ymm5,%ymm4
   2.64%  ││    0x00007f72d4665283:   vmulps %ymm10,%ymm5,%ymm2
   0.21%  ││    0x00007f72d4665288:   vaddps %ymm4,%ymm3,%ymm3
   1.62%  ││    0x00007f72d466528c:   vmulps %ymm14,%ymm5,%ymm4
          ││    0x00007f72d4665291:   vmulps %ymm9,%ymm1,%ymm5
   0.07%  ││    0x00007f72d4665296:   vmulps %ymm13,%ymm1,%ymm6
   0.05%  ││    0x00007f72d466529b:   vmulps %ymm11,%ymm0,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.49%  ││    0x00007f72d46652a0:   vbroadcastss -0x589(%rip),%ymm15        # 0x00007f72d4664d20
          ││                                                              ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          ││                                                              ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@23 (line 102)
          ││                                                              ;   {section_word}
          ││    0x00007f72d46652a9:   vmulps %ymm15,%ymm0,%ymm0
   0.09%  ││    0x00007f72d46652ae:   vaddps %ymm2,%ymm7,%ymm2
   0.04%  ││    0x00007f72d46652b2:   vaddps %ymm4,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.42%  ││    0x00007f72d46652b6:   vaddps %ymm5,%ymm2,%ymm2            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          ││                                                              ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
   1.46%  ││    0x00007f72d46652ba:   vaddps %ymm6,%ymm0,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          ││                                                              ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
   0.26%  ││    0x00007f72d46652be:   vcmpgt_oqps %ymm12,%ymm2,%ymm4
   1.52%  ││    0x00007f72d46652c4:   vblendvps %ymm4,%ymm12,%ymm2,%ymm2
   1.19%  ││    0x00007f72d46652ca:   vcmpgt_oqps %ymm12,%ymm0,%ymm4
   0.00%  ││    0x00007f72d46652d0:   vblendvps %ymm4,%ymm12,%ymm0,%ymm0  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   1.29%  ││    0x00007f72d46652d6:   vmovdqu %ymm0,0x70(%r11,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
   1.15%  ││    0x00007f72d46652dd:   vmovdqu %ymm2,0x70(%r9,%rdi,4)      ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
          ││    0x00007f72d46652e4:   vbroadcastss -0x5c9(%rip),%ymm0        # 0x00007f72d4664d24
          ││                                                              ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          ││                                                              ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          ││                                                              ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@101 (line 110)
          ││                                                              ;   {section_word}
   0.71%  ││    0x00007f72d46652ed:   vmulps %ymm0,%ymm1,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.42%  ││    0x00007f72d46652f1:   vaddps %ymm0,%ymm3,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          ││                                                              ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          ││                                                              ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   1.99%  ││    0x00007f72d46652f5:   vcmpgt_oqps %ymm12,%ymm0,%ymm1
   0.54%  ││    0x00007f72d46652fb:   vblendvps %ymm1,%ymm12,%ymm0,%ymm0
   2.74%  ││    0x00007f72d4665301:   vmovdqu %ymm0,0x70(%rcx,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.03%  ││    0x00007f72d4665307:   add    $0x20,%edi
          ││    0x00007f72d466530a:   cmp    %r10d,%edi
          ╰│    0x00007f72d466530d:   jl     0x00007f72d4665060
   0.00%   │    0x00007f72d4665313:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r11=Oop r8=Oop r9=Oop rcx=Oop rbp=Oop r13=Oop r14=NarrowOop [0]=Oop }
           │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@326 (line 101)
   0.03%   │    0x00007f72d466531a:   test   %eax,(%r10)                  ;   {poll}
   0.03%   │    0x00007f72d466531d:   data16 xchg %ax,%ax
           │    0x00007f72d4665320:   cmp    %eax,%edi
           ╰    0x00007f72d4665322:   jl     0x00007f72d4665046
                0x00007f72d4665328:   cmp    %ebx,%edi
            ╭   0x00007f72d466532a:   jge    0x00007f72d46653e8           ;*getstatic FLOAT_SPECIES {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@18 (line 102)
            │↗  0x00007f72d4665330:   vmovdqu 0x10(%rbp,%rdi,4),%ymm3     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
            ││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
            ││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   0.00%    ││  0x00007f72d4665336:   vmovdqu 0x10(%r13,%rdi,4),%ymm4     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
            ││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
            ││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
            ││  0x00007f72d466533d:   vmovdqu 0x10(%r8,%rdi,4),%ymm0      ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
            ││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
            ││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
            ││  0x00007f72d4665344:   vbroadcastss -0x629(%rip),%ymm1        # 0x00007f72d4664d24
            ││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
            ││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
            ││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@101 (line 110)
            ││                                                            ;   {section_word}
            ││  0x00007f72d466534d:   vmulps %ymm1,%ymm3,%ymm5
   0.00%    ││  0x00007f72d4665351:   vmulps %ymm8,%ymm0,%ymm6
            ││  0x00007f72d4665356:   vmulps %ymm11,%ymm0,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
            ││  0x00007f72d466535b:   vbroadcastss -0x644(%rip),%ymm1        # 0x00007f72d4664d20
            ││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
            ││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
            ││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@23 (line 102)
            ││                                                            ;   {section_word}
            ││  0x00007f72d4665364:   vmulps %ymm1,%ymm0,%ymm0
   0.00%    ││  0x00007f72d4665368:   vmulps %ymm10,%ymm4,%ymm1
   0.00%    ││  0x00007f72d466536d:   vmulps %ymm14,%ymm4,%ymm2
   0.00%    ││  0x00007f72d4665372:   vaddps %ymm1,%ymm7,%ymm7
   0.00%    ││  0x00007f72d4665376:   vaddps %ymm2,%ymm0,%ymm0
            ││  0x00007f72d466537a:   vmulps %ymm9,%ymm3,%ymm1
            ││  0x00007f72d466537f:   vmulps %ymm13,%ymm3,%ymm2           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.00%    ││  0x00007f72d4665384:   vaddps %ymm1,%ymm7,%ymm1            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
            ││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
            ││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
            ││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
            ││  0x00007f72d4665388:   vaddps %ymm2,%ymm0,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
            ││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
            ││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
            ││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
            ││  0x00007f72d466538c:   vcmpgt_oqps %ymm12,%ymm1,%ymm2
   0.00%    ││  0x00007f72d4665392:   vblendvps %ymm2,%ymm12,%ymm1,%ymm1
   0.00%    ││  0x00007f72d4665398:   vcmpgt_oqps %ymm12,%ymm0,%ymm2
            ││  0x00007f72d466539e:   vblendvps %ymm2,%ymm12,%ymm0,%ymm0  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.00%    ││  0x00007f72d46653a4:   vmovdqu %ymm0,0x10(%r11,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
   0.43%    ││  0x00007f72d46653ab:   vmovdqu %ymm1,0x10(%r9,%rdi,4)      ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
            ││  0x00007f72d46653b2:   vbroadcastss -0x693(%rip),%ymm0        # 0x00007f72d4664d28
            ││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
            ││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
            ││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@91 (line 109)
            ││                                                            ;   {section_word}
            ││  0x00007f72d46653bb:   vmulps %ymm0,%ymm4,%ymm0
            ││  0x00007f72d46653bf:   vaddps %ymm0,%ymm6,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.00%    ││  0x00007f72d46653c3:   vaddps %ymm5,%ymm0,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
            ││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
            ││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
            ││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
            ││  0x00007f72d46653c7:   vcmpgt_oqps %ymm12,%ymm0,%ymm1
   0.00%    ││  0x00007f72d46653cd:   vblendvps %ymm1,%ymm12,%ymm0,%ymm0
   0.01%    ││  0x00007f72d46653d3:   vmovdqu %ymm0,0x10(%rcx,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.04%    ││  0x00007f72d46653d9:   add    $0x8,%edi
            ││  0x00007f72d46653dc:   nopl   0x0(%rax)
            ││  0x00007f72d46653e0:   cmp    %ebx,%edi
            │╰  0x00007f72d46653e2:   jl     0x00007f72d4665330           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@15 (line 101)
            ↘   0x00007f72d46653e8:   mov    %r14,%rax
                0x00007f72d46653eb:   shl    $0x3,%rax
                0x00007f72d46653ef:   vzeroupper 
                0x00007f72d46653f2:   add    $0x20,%rsp
....................................................................................................
  97.19%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 905 
   0.96%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.01%  <...other 309 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 905 
   2.42%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.01%         interpreter  faload  48 faload  
   0.01%         interpreter  ldc  18 ldc  
   0.01%         interpreter  fast_aaccess_0  222 fast_aaccess_0  
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.jmh_generated.SepiaVectorApiBenchmark_vectorized_jmhTest::vectorized_avgt_jmhStub, version 5, compile id 935 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.01%                      <unknown> 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%         interpreter  iload_1  27 iload_1  
   0.01%         interpreter  fastore  81 fastore  
   0.01%        libc-2.31.so  _IO_fflush 
   0.01%        libc-2.31.so  syscall 
   0.17%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.22%         c2, level 4
   2.42%              kernel
   0.12%           libjvm.so
   0.09%         interpreter
   0.09%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%                    
   0.00%    perf-1955778.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch --add-modules=jdk.incubator.vector
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized
# Parameters: (size = 65536)

# Run progress: 75.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 148.604 us/op
# Warmup Iteration   2: 105.107 us/op
# Warmup Iteration   3: 105.099 us/op
# Warmup Iteration   4: 105.093 us/op
# Warmup Iteration   5: 105.102 us/op
Iteration   1: 105.116 us/op
Iteration   2: 105.104 us/op
Iteration   3: 105.114 us/op
Iteration   4: 105.116 us/op
Iteration   5: 105.105 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized":
  105.111 ±(99.9%) 0.023 us/op [Average]
  (min, avg, max) = (105.104, 105.111, 105.116), stdev = 0.006
  CI (99.9%): [105.088, 105.135] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark.vectorized:asm":
PrintAssembly processed: 186093 total address lines.
Perf output processed (skipped 56.856 seconds):
 Column 1: cycles (50678 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 904 

               0x00007f4dfc665208:   vaddps %ymm1,%ymm4,%ymm1            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
               0x00007f4dfc66520c:   vaddps %ymm0,%ymm1,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
                                                                         ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
                                                                         ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
               0x00007f4dfc665210:   vcmpgt_oqps %ymm12,%ymm0,%ymm1
   0.00%       0x00007f4dfc665216:   vblendvps %ymm1,%ymm12,%ymm0,%ymm0  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
               0x00007f4dfc66521c:   vmovdqu %ymm0,0x10(%r12,%r14,8)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
               0x00007f4dfc665223:   vmovdqu %ymm2,0x10(%r12,%rdi,8)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
               0x00007f4dfc66522a:   vmovdqu %ymm6,0x10(%r12,%rdx,8)
   0.00%       0x00007f4dfc665231:   mov    $0x8,%edi
               0x00007f4dfc665236:   cmp    $0x8,%eax
          ╭    0x00007f4dfc665239:   jle    0x00007f4dfc665528
          │    0x00007f4dfc66523f:   xor    %edx,%edx                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@326 (line 101)
          │    0x00007f4dfc665241:   mov    $0x7d00,%esi
          │ ↗  0x00007f4dfc665246:   mov    %eax,%r10d
          │ │  0x00007f4dfc665249:   sub    %edi,%r10d
   0.00%  │ │  0x00007f4dfc66524c:   cmp    %edi,%eax
          │ │  0x00007f4dfc66524e:   cmovl  %edx,%r10d
          │ │  0x00007f4dfc665252:   cmp    $0x7d00,%r10d
          │ │  0x00007f4dfc665259:   cmova  %esi,%r10d
          │ │  0x00007f4dfc66525d:   add    %edi,%r10d                   ;*getstatic FLOAT_SPECIES {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@18 (line 102)
   0.62%  │↗│  0x00007f4dfc665260:   vmovdqu 0x10(%rbp,%rdi,4),%ymm0     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   4.85%  │││  0x00007f4dfc665266:   vmovdqu 0x10(%r13,%rdi,4),%ymm1     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
          │││  0x00007f4dfc66526d:   vmovdqu 0x10(%r8,%rdi,4),%ymm5      ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
   0.56%  │││  0x00007f4dfc665274:   vbroadcastss -0x359(%rip),%ymm2        # 0x00007f4dfc664f24
          │││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          │││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@101 (line 110)
          │││                                                            ;   {section_word}
   0.31%  │││  0x00007f4dfc66527d:   vmulps %ymm2,%ymm0,%ymm2
   2.48%  │││  0x00007f4dfc665281:   vmulps %ymm8,%ymm5,%ymm3
   0.22%  │││  0x00007f4dfc665286:   vmulps %ymm11,%ymm5,%ymm4           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.00%  │││  0x00007f4dfc66528b:   vbroadcastss -0x374(%rip),%ymm6        # 0x00007f4dfc664f20
          │││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          │││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@23 (line 102)
          │││                                                            ;   {section_word}
   0.25%  │││  0x00007f4dfc665294:   vmulps %ymm6,%ymm5,%ymm5
   0.49%  │││  0x00007f4dfc665298:   vmulps %ymm10,%ymm1,%ymm6
   0.00%  │││  0x00007f4dfc66529d:   vmulps %ymm14,%ymm1,%ymm7
   0.00%  │││  0x00007f4dfc6652a2:   vaddps %ymm6,%ymm4,%ymm4
   0.45%  │││  0x00007f4dfc6652a6:   vaddps %ymm7,%ymm5,%ymm5
   1.32%  │││  0x00007f4dfc6652aa:   vmulps %ymm9,%ymm0,%ymm6
   0.00%  │││  0x00007f4dfc6652af:   vmulps %ymm13,%ymm0,%ymm0           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.00%  │││  0x00007f4dfc6652b4:   vaddps %ymm6,%ymm4,%ymm4            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
   1.02%  │││  0x00007f4dfc6652b8:   vaddps %ymm0,%ymm5,%ymm5            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
   1.32%  │││  0x00007f4dfc6652bc:   vcmpgt_oqps %ymm12,%ymm4,%ymm0
   0.88%  │││  0x00007f4dfc6652c2:   vblendvps %ymm0,%ymm12,%ymm4,%ymm0
   1.49%  │││  0x00007f4dfc6652c8:   vcmpgt_oqps %ymm12,%ymm5,%ymm4
          │││  0x00007f4dfc6652ce:   vblendvps %ymm4,%ymm12,%ymm5,%ymm4  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   2.09%  │││  0x00007f4dfc6652d4:   vmovdqu %ymm4,0x10(%r11,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
   0.41%  │││  0x00007f4dfc6652db:   vmovdqu %ymm0,0x10(%r9,%rdi,4)      ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.01%  │││  0x00007f4dfc6652e2:   vbroadcastss -0x3c3(%rip),%ymm0        # 0x00007f4dfc664f28
          │││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          │││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@91 (line 109)
          │││                                                            ;   {section_word}
   0.65%  │││  0x00007f4dfc6652eb:   vmulps %ymm0,%ymm1,%ymm0
   0.97%  │││  0x00007f4dfc6652ef:   vaddps %ymm0,%ymm3,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   1.19%  │││  0x00007f4dfc6652f3:   vaddps %ymm2,%ymm0,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   2.09%  │││  0x00007f4dfc6652f7:   vcmpgt_oqps %ymm12,%ymm0,%ymm1
   0.69%  │││  0x00007f4dfc6652fd:   vblendvps %ymm1,%ymm12,%ymm0,%ymm0
   2.63%  │││  0x00007f4dfc665303:   vmovdqu %ymm0,0x10(%rcx,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.03%  │││  0x00007f4dfc665309:   vmovdqu 0x30(%r8,%rdi,4),%ymm0      ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
   0.77%  │││  0x00007f4dfc665310:   vmovdqu 0x30(%rbp,%rdi,4),%ymm1     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   0.33%  │││  0x00007f4dfc665316:   vmovdqu 0x30(%r13,%rdi,4),%ymm5     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
   1.10%  │││  0x00007f4dfc66531d:   vmulps %ymm8,%ymm0,%ymm3            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.06%  │││  0x00007f4dfc665322:   vbroadcastss -0x403(%rip),%ymm2        # 0x00007f4dfc664f28
          │││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          │││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@91 (line 109)
          │││                                                            ;   {section_word}
          │││  0x00007f4dfc66532b:   vmulps %ymm2,%ymm5,%ymm4
   0.70%  │││  0x00007f4dfc66532f:   vmulps %ymm10,%ymm5,%ymm2
   0.37%  │││  0x00007f4dfc665334:   vaddps %ymm4,%ymm3,%ymm3
   0.26%  │││  0x00007f4dfc665338:   vmulps %ymm14,%ymm5,%ymm4
          │││  0x00007f4dfc66533d:   vmulps %ymm9,%ymm1,%ymm5
   0.31%  │││  0x00007f4dfc665342:   vmulps %ymm13,%ymm1,%ymm6
   0.32%  │││  0x00007f4dfc665347:   vmulps %ymm11,%ymm0,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.10%  │││  0x00007f4dfc66534c:   vbroadcastss -0x435(%rip),%ymm15        # 0x00007f4dfc664f20
          │││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          │││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@23 (line 102)
          │││                                                            ;   {section_word}
          │││  0x00007f4dfc665355:   vmulps %ymm15,%ymm0,%ymm0
   0.34%  │││  0x00007f4dfc66535a:   vaddps %ymm2,%ymm7,%ymm2
   0.32%  │││  0x00007f4dfc66535e:   vaddps %ymm4,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.08%  │││  0x00007f4dfc665362:   vaddps %ymm5,%ymm2,%ymm2            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
   0.29%  │││  0x00007f4dfc665366:   vaddps %ymm6,%ymm0,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
   0.47%  │││  0x00007f4dfc66536a:   vcmpgt_oqps %ymm12,%ymm2,%ymm4
   0.83%  │││  0x00007f4dfc665370:   vblendvps %ymm4,%ymm12,%ymm2,%ymm2
   1.15%  │││  0x00007f4dfc665376:   vcmpgt_oqps %ymm12,%ymm0,%ymm4
   0.00%  │││  0x00007f4dfc66537c:   vblendvps %ymm4,%ymm12,%ymm0,%ymm0  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   1.12%  │││  0x00007f4dfc665382:   vmovdqu %ymm0,0x30(%r11,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
   0.31%  │││  0x00007f4dfc665389:   vmovdqu %ymm2,0x30(%r9,%rdi,4)      ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
  11.51%  │││  0x00007f4dfc665390:   vbroadcastss -0x475(%rip),%ymm0        # 0x00007f4dfc664f24
          │││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          │││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@101 (line 110)
          │││                                                            ;   {section_word}
   0.39%  │││  0x00007f4dfc665399:   vmulps %ymm0,%ymm1,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.02%  │││  0x00007f4dfc66539d:   vaddps %ymm0,%ymm3,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   0.30%  │││  0x00007f4dfc6653a1:   vcmpgt_oqps %ymm12,%ymm0,%ymm1
   0.01%  │││  0x00007f4dfc6653a7:   vblendvps %ymm1,%ymm12,%ymm0,%ymm0
   0.93%  │││  0x00007f4dfc6653ad:   vmovdqu %ymm0,0x30(%rcx,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.01%  │││  0x00007f4dfc6653b3:   vmovdqu 0x50(%r8,%rdi,4),%ymm0      ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
   0.99%  │││  0x00007f4dfc6653ba:   vmovdqu 0x50(%rbp,%rdi,4),%ymm1     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   3.06%  │││  0x00007f4dfc6653c0:   vmovdqu 0x50(%r13,%rdi,4),%ymm5     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
   0.01%  │││  0x00007f4dfc6653c7:   vmulps %ymm8,%ymm0,%ymm3            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.37%  │││  0x00007f4dfc6653cc:   vbroadcastss -0x4ad(%rip),%ymm2        # 0x00007f4dfc664f28
          │││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          │││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@91 (line 109)
          │││                                                            ;   {section_word}
          │││  0x00007f4dfc6653d5:   vmulps %ymm2,%ymm5,%ymm4
   0.68%  │││  0x00007f4dfc6653d9:   vmulps %ymm10,%ymm5,%ymm2
   0.01%  │││  0x00007f4dfc6653de:   vaddps %ymm4,%ymm3,%ymm3
   0.48%  │││  0x00007f4dfc6653e2:   vmulps %ymm14,%ymm5,%ymm4
          │││  0x00007f4dfc6653e7:   vmulps %ymm9,%ymm1,%ymm5
   1.75%  │││  0x00007f4dfc6653ec:   vmulps %ymm13,%ymm1,%ymm6
   0.03%  │││  0x00007f4dfc6653f1:   vmulps %ymm11,%ymm0,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.09%  │││  0x00007f4dfc6653f6:   vbroadcastss -0x4df(%rip),%ymm15        # 0x00007f4dfc664f20
          │││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          │││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@23 (line 102)
          │││                                                            ;   {section_word}
          │││  0x00007f4dfc6653ff:   vmulps %ymm15,%ymm0,%ymm0
   0.65%  │││  0x00007f4dfc665404:   vaddps %ymm2,%ymm7,%ymm2
   0.02%  │││  0x00007f4dfc665408:   vaddps %ymm4,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.09%  │││  0x00007f4dfc66540c:   vaddps %ymm5,%ymm2,%ymm2            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
   2.60%  │││  0x00007f4dfc665410:   vaddps %ymm6,%ymm0,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
   0.40%  │││  0x00007f4dfc665414:   vcmpgt_oqps %ymm12,%ymm2,%ymm4
   1.09%  │││  0x00007f4dfc66541a:   vblendvps %ymm4,%ymm12,%ymm2,%ymm2
   1.60%  │││  0x00007f4dfc665420:   vcmpgt_oqps %ymm12,%ymm0,%ymm4
   0.00%  │││  0x00007f4dfc665426:   vblendvps %ymm4,%ymm12,%ymm0,%ymm0  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   1.94%  │││  0x00007f4dfc66542c:   vmovdqu %ymm0,0x50(%r11,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
   0.57%  │││  0x00007f4dfc665433:   vmovdqu %ymm2,0x50(%r9,%rdi,4)      ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.01%  │││  0x00007f4dfc66543a:   vbroadcastss -0x51f(%rip),%ymm0        # 0x00007f4dfc664f24
          │││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          │││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@101 (line 110)
          │││                                                            ;   {section_word}
   0.52%  │││  0x00007f4dfc665443:   vmulps %ymm0,%ymm1,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   1.01%  │││  0x00007f4dfc665447:   vaddps %ymm0,%ymm3,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   1.33%  │││  0x00007f4dfc66544b:   vcmpgt_oqps %ymm12,%ymm0,%ymm1
   1.18%  │││  0x00007f4dfc665451:   vblendvps %ymm1,%ymm12,%ymm0,%ymm0
   2.66%  │││  0x00007f4dfc665457:   vmovdqu %ymm0,0x50(%rcx,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.74%  │││  0x00007f4dfc66545d:   vmovdqu 0x70(%r8,%rdi,4),%ymm0      ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
   0.53%  │││  0x00007f4dfc665464:   vmovdqu 0x70(%rbp,%rdi,4),%ymm1     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   0.49%  │││  0x00007f4dfc66546a:   vmovdqu 0x70(%r13,%rdi,4),%ymm5     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
          │││                                                            ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
   0.86%  │││  0x00007f4dfc665471:   vmulps %ymm8,%ymm0,%ymm3            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.06%  │││  0x00007f4dfc665476:   vbroadcastss -0x557(%rip),%ymm2        # 0x00007f4dfc664f28
          │││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          │││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@91 (line 109)
          │││                                                            ;   {section_word}
          │││  0x00007f4dfc66547f:   vmulps %ymm2,%ymm5,%ymm4
   0.59%  │││  0x00007f4dfc665483:   vmulps %ymm10,%ymm5,%ymm2
   0.31%  │││  0x00007f4dfc665488:   vaddps %ymm4,%ymm3,%ymm3
   0.29%  │││  0x00007f4dfc66548c:   vmulps %ymm14,%ymm5,%ymm4
          │││  0x00007f4dfc665491:   vmulps %ymm9,%ymm1,%ymm5
   0.45%  │││  0x00007f4dfc665496:   vmulps %ymm13,%ymm1,%ymm6
   0.22%  │││  0x00007f4dfc66549b:   vmulps %ymm11,%ymm0,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.13%  │││  0x00007f4dfc6654a0:   vbroadcastss -0x589(%rip),%ymm15        # 0x00007f4dfc664f20
          │││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          │││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@23 (line 102)
          │││                                                            ;   {section_word}
          │││  0x00007f4dfc6654a9:   vmulps %ymm15,%ymm0,%ymm0
   0.41%  │││  0x00007f4dfc6654ae:   vaddps %ymm2,%ymm7,%ymm2
   0.25%  │││  0x00007f4dfc6654b2:   vaddps %ymm4,%ymm0,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.11%  │││  0x00007f4dfc6654b6:   vaddps %ymm5,%ymm2,%ymm2            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
   0.64%  │││  0x00007f4dfc6654ba:   vaddps %ymm6,%ymm0,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
   0.42%  │││  0x00007f4dfc6654be:   vcmpgt_oqps %ymm12,%ymm2,%ymm4
   1.26%  │││  0x00007f4dfc6654c4:   vblendvps %ymm4,%ymm12,%ymm2,%ymm2
   1.27%  │││  0x00007f4dfc6654ca:   vcmpgt_oqps %ymm12,%ymm0,%ymm4
   0.00%  │││  0x00007f4dfc6654d0:   vblendvps %ymm4,%ymm12,%ymm0,%ymm0  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   1.19%  │││  0x00007f4dfc6654d6:   vmovdqu %ymm0,0x70(%r11,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
  13.09%  │││  0x00007f4dfc6654dd:   vmovdqu %ymm2,0x70(%r9,%rdi,4)      ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
          │││  0x00007f4dfc6654e4:   vbroadcastss -0x5c9(%rip),%ymm0        # 0x00007f4dfc664f24
          │││                                                            ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
          │││                                                            ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
          │││                                                            ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@101 (line 110)
          │││                                                            ;   {section_word}
   0.38%  │││  0x00007f4dfc6654ed:   vmulps %ymm0,%ymm1,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.08%  │││  0x00007f4dfc6654f1:   vaddps %ymm0,%ymm3,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
          │││                                                            ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
          │││                                                            ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@235 (line 117)
   0.28%  │││  0x00007f4dfc6654f5:   vcmpgt_oqps %ymm12,%ymm0,%ymm1
   0.01%  │││  0x00007f4dfc6654fb:   vblendvps %ymm1,%ymm12,%ymm0,%ymm0
   1.03%  │││  0x00007f4dfc665501:   vmovdqu %ymm0,0x70(%rcx,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.01%  │││  0x00007f4dfc665507:   add    $0x20,%edi
          │││  0x00007f4dfc66550a:   cmp    %r10d,%edi
          │╰│  0x00007f4dfc66550d:   jl     0x00007f4dfc665260
          │ │  0x00007f4dfc665513:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r11=Oop r8=Oop r9=Oop rcx=Oop rbp=Oop r13=Oop r14=NarrowOop [0]=Oop }
          │ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@326 (line 101)
   0.03%  │ │  0x00007f4dfc66551a:   test   %eax,(%r10)                  ;   {poll}
   0.05%  │ │  0x00007f4dfc66551d:   data16 xchg %ax,%ax
          │ │  0x00007f4dfc665520:   cmp    %eax,%edi
          │ ╰  0x00007f4dfc665522:   jl     0x00007f4dfc665246
          ↘    0x00007f4dfc665528:   cmp    %ebx,%edi
               0x00007f4dfc66552a:   jge    0x00007f4dfc6655e8           ;*getstatic FLOAT_SPECIES {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@18 (line 102)
               0x00007f4dfc665530:   vmovdqu 0x10(%rbp,%rdi,4),%ymm3     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
                                                                         ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
                                                                         ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@150 (line 114)
   0.01%       0x00007f4dfc665536:   vmovdqu 0x10(%r13,%rdi,4),%ymm4     ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
                                                                         ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
                                                                         ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@137 (line 113)
   0.00%       0x00007f4dfc66553d:   vmovdqu 0x10(%r8,%rdi,4),%ymm0      ;*invokestatic load {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::fromArray0Template@32 (line 3286)
                                                                         ; - jdk.incubator.vector.Float256Vector::fromArray0@3 (line 849)
                                                                         ; - jdk.incubator.vector.FloatVector::fromArray@24 (line 2799)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@124 (line 112)
   0.01%       0x00007f4dfc665544:   vbroadcastss -0x629(%rip),%ymm1        # 0x00007f4dfc664f24
                                                                         ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
                                                                         ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
                                                                         ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@101 (line 110)
                                                                         ;   {section_word}
               0x00007f4dfc66554d:   vmulps %ymm1,%ymm3,%ymm5
   0.00%       0x00007f4dfc665551:   vmulps %ymm8,%ymm0,%ymm6
   0.00%       0x00007f4dfc665556:   vmulps %ymm11,%ymm0,%ymm7           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
               0x00007f4dfc66555b:   vbroadcastss -0x644(%rip),%ymm1        # 0x00007f4dfc664f20
                                                                         ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
                                                                         ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
                                                                         ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@23 (line 102)
                                                                         ;   {section_word}
               0x00007f4dfc665564:   vmulps %ymm1,%ymm0,%ymm0
               0x00007f4dfc665568:   vmulps %ymm10,%ymm4,%ymm1
               0x00007f4dfc66556d:   vmulps %ymm14,%ymm4,%ymm2
   0.00%       0x00007f4dfc665572:   vaddps %ymm1,%ymm7,%ymm7
   0.00%       0x00007f4dfc665576:   vaddps %ymm2,%ymm0,%ymm0
               0x00007f4dfc66557a:   vmulps %ymm9,%ymm3,%ymm1
               0x00007f4dfc66557f:   vmulps %ymm13,%ymm3,%ymm2           ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
               0x00007f4dfc665584:   vaddps %ymm1,%ymm7,%ymm1            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
                                                                         ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
                                                                         ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@206 (line 116)
   0.00%       0x00007f4dfc665588:   vaddps %ymm2,%ymm0,%ymm0            ;*invokestatic binaryOp {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::lanewiseTemplate@96 (line 774)
                                                                         ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 285)
                                                                         ; - jdk.incubator.vector.Float256Vector::lanewise@3 (line 41)
                                                                         ; - jdk.incubator.vector.FloatVector::add@5 (line 1223)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@177 (line 115)
               0x00007f4dfc66558c:   vcmpgt_oqps %ymm12,%ymm1,%ymm2
               0x00007f4dfc665592:   vblendvps %ymm2,%ymm12,%ymm1,%ymm1
   0.01%       0x00007f4dfc665598:   vcmpgt_oqps %ymm12,%ymm0,%ymm2
               0x00007f4dfc66559e:   vblendvps %ymm2,%ymm12,%ymm0,%ymm0  ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@312 (line 120)
   0.00%       0x00007f4dfc6655a4:   vmovdqu %ymm0,0x10(%r11,%rdi,4)     ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@262 (line 118)
               0x00007f4dfc6655ab:   vmovdqu %ymm1,0x10(%r9,%rdi,4)      ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector::intoArray@43 (line 3072)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@287 (line 119)
   0.21%       0x00007f4dfc6655b2:   vbroadcastss -0x693(%rip),%ymm0        # 0x00007f4dfc664f28
                                                                         ;*invokestatic fromBitsCoerced {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcastBits@19 (line 3692)
                                                                         ; - jdk.incubator.vector.FloatVector$FloatSpecies::broadcast@5 (line 3701)
                                                                         ; - jdk.incubator.vector.FloatVector::broadcast@7 (line 600)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized@91 (line 109)
                                                                         ;   {section_word}
               0x00007f4dfc6655bb:   vmulps %ymm0,%ymm4,%ymm0
               0x00007f4dfc6655bf:   vaddps %ymm0,%ymm6,%ymm0            ;*invokestatic store {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.05%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 904 
   0.31%              kernel  [unknown] 
   0.16%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         interpreter  fast_aaccess_0  222 fast_aaccess_0  
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 904 
   0.02%         interpreter  faload  48 faload  
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         interpreter  ldc  18 ldc  
   0.89%  <...other 278 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 904 
   1.45%              kernel  [unknown] 
   0.04%         interpreter  fast_aaccess_0  222 fast_aaccess_0  
   0.03%                      <unknown> 
   0.02%         interpreter  ldc  18 ldc  
   0.02%         interpreter  faload  48 faload  
   0.02%           libjvm.so  fileStream::write 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%         interpreter  fastore  81 fastore  
   0.01%         interpreter  lload  22 lload  
   0.01%         interpreter  ifle  158 ifle  
   0.01%      hsdis-amd64.so  print_insn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         interpreter  lstore  55 lstore  
   0.01%    perf-1955846.map  [unknown] 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.21%  <...other 81 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.10%         c2, level 4
   1.45%              kernel
   0.16%         interpreter
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         c1, level 3
   0.01%    perf-1955846.map
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:25

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

Benchmark                               (size)  Mode  Cnt    Score   Error  Units
SepiaVectorApiBenchmark.baseline         32768  avgt    5  143.336 ± 0.333  us/op
SepiaVectorApiBenchmark.baseline:asm     32768  avgt           NaN            ---
SepiaVectorApiBenchmark.baseline         65536  avgt    5  286.588 ± 0.025  us/op
SepiaVectorApiBenchmark.baseline:asm     65536  avgt           NaN            ---
SepiaVectorApiBenchmark.vectorized       32768  avgt    5   62.694 ± 0.068  us/op
SepiaVectorApiBenchmark.vectorized:asm   32768  avgt           NaN            ---
SepiaVectorApiBenchmark.vectorized       65536  avgt    5  105.111 ± 0.023  us/op
SepiaVectorApiBenchmark.vectorized:asm   65536  avgt           NaN            ---
