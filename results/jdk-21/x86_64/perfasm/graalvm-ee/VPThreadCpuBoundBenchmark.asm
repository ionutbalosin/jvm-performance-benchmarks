# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = NONE, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = VIRTUAL)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.588 s/op
# Warmup Iteration   2: 4.480 s/op
# Warmup Iteration   3: 4.379 s/op
# Warmup Iteration   4: 4.360 s/op
# Warmup Iteration   5: 4.387 s/op
Iteration   1: 4.444 s/op
Iteration   2: 4.485 s/op
Iteration   3: 4.435 s/op
Iteration   4: 4.371 s/op
Iteration   5: 4.429 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.433 ±(99.9%) 0.158 s/op [Average]
  (min, avg, max) = (4.371, 4.433, 4.485), stdev = 0.041
  CI (99.9%): [4.275, 4.591] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 257272 total address lines.
Perf output processed (skipped 77.293 seconds):
 Column 1: cycles (391395 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 988 

   0.00%      0x00007f293ed81e5c:   mov    %eax,%esi
              0x00007f293ed81e5e:   mov    %ebp,%edx
              0x00007f293ed81e60:   mov    %r13,%r10
          ╭   0x00007f293ed81e63:   jmp    0x00007f293ed81e82
          │   0x00007f293ed81e68:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f293ed81e73:   data16 data16 xchg %ax,%ax
          │   0x00007f293ed81e77:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
          │↗  0x00007f293ed81e80:   mov    %eax,%edx                    ;*lload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
   0.00%  ↘│  0x00007f293ed81e82:   lea    -0x10(%rdx),%eax
   0.89%   │  0x00007f293ed81e85:   mov    %r10,%rbp
   0.01%   │  0x00007f293ed81e88:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   1.83%   │  0x00007f293ed81e8c:   movslq %edx,%r13
   0.00%   │  0x00007f293ed81e8f:   add    %r13,%rbp
   1.36%   │  0x00007f293ed81e92:   add    %rbx,%rbp
   0.47%   │  0x00007f293ed81e95:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.30%   │  0x00007f293ed81e98:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007f293ed81e9b:   mov    %rbp,%r10
   0.01%   │  0x00007f293ed81e9e:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
           │                                                            ;   {no_reloc}
   2.54%   │  0x00007f293ed81ea2:   mov    %edx,%r13d
           │  0x00007f293ed81ea5:   dec    %r13d
           │  0x00007f293ed81ea8:   movslq %r13d,%r13
           │  0x00007f293ed81eab:   add    %r13,%r10
   1.32%   │  0x00007f293ed81eae:   add    %rbx,%r10
   0.51%   │  0x00007f293ed81eb1:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.34%   │  0x00007f293ed81eb4:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.45%   │  0x00007f293ed81eb7:   mov    %r10,%rbp
   0.01%   │  0x00007f293ed81eba:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.65%   │  0x00007f293ed81ebe:   lea    -0x2(%rdx),%r13d
           │  0x00007f293ed81ec2:   movslq %r13d,%r13
           │  0x00007f293ed81ec5:   add    %r13,%rbp
   1.27%   │  0x00007f293ed81ec8:   add    %rbx,%rbp
   0.54%   │  0x00007f293ed81ecb:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.33%   │  0x00007f293ed81ece:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007f293ed81ed1:   mov    %rbp,%r10
   0.01%   │  0x00007f293ed81ed4:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.69%   │  0x00007f293ed81ed8:   lea    -0x3(%rdx),%r13d
           │  0x00007f293ed81edc:   movslq %r13d,%r13
           │  0x00007f293ed81edf:   add    %r13,%r10
   1.34%   │  0x00007f293ed81ee2:   add    %rbx,%r10
   0.52%   │  0x00007f293ed81ee5:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.31%   │  0x00007f293ed81ee8:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.39%   │  0x00007f293ed81eeb:   mov    %r10,%rbp
   0.02%   │  0x00007f293ed81eee:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.62%   │  0x00007f293ed81ef2:   lea    -0x4(%rdx),%r13d
           │  0x00007f293ed81ef6:   movslq %r13d,%r13
           │  0x00007f293ed81ef9:   add    %r13,%rbp
   1.33%   │  0x00007f293ed81efc:   add    %rbx,%rbp
   0.51%   │  0x00007f293ed81eff:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.39%   │  0x00007f293ed81f02:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.36%   │  0x00007f293ed81f05:   mov    %rbp,%r10
   0.00%   │  0x00007f293ed81f08:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.70%   │  0x00007f293ed81f0c:   lea    -0x5(%rdx),%r13d
           │  0x00007f293ed81f10:   movslq %r13d,%r13
           │  0x00007f293ed81f13:   add    %r13,%r10
   1.35%   │  0x00007f293ed81f16:   add    %rbx,%r10
   0.46%   │  0x00007f293ed81f19:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.14%   │  0x00007f293ed81f1c:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.46%   │  0x00007f293ed81f1f:   mov    %r10,%rbp
   0.07%   │  0x00007f293ed81f22:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.64%   │  0x00007f293ed81f26:   lea    -0x6(%rdx),%r13d
           │  0x00007f293ed81f2a:   movslq %r13d,%r13
           │  0x00007f293ed81f2d:   add    %r13,%rbp
   1.23%   │  0x00007f293ed81f30:   add    %rbx,%rbp
   0.52%   │  0x00007f293ed81f33:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.19%   │  0x00007f293ed81f36:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.49%   │  0x00007f293ed81f39:   mov    %rbp,%r10
   0.02%   │  0x00007f293ed81f3c:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.62%   │  0x00007f293ed81f40:   lea    -0x7(%rdx),%r13d
           │  0x00007f293ed81f44:   movslq %r13d,%r13
           │  0x00007f293ed81f47:   add    %r13,%r10
   1.30%   │  0x00007f293ed81f4a:   add    %rbx,%r10
   0.52%   │  0x00007f293ed81f4d:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.30%   │  0x00007f293ed81f50:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.45%   │  0x00007f293ed81f53:   mov    %r10,%rbp
   0.01%   │  0x00007f293ed81f56:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.67%   │  0x00007f293ed81f5a:   lea    -0x8(%rdx),%r13d
           │  0x00007f293ed81f5e:   movslq %r13d,%r13
           │  0x00007f293ed81f61:   add    %r13,%rbp
   1.29%   │  0x00007f293ed81f64:   add    %rbx,%rbp
   0.51%   │  0x00007f293ed81f67:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%   │  0x00007f293ed81f6a:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f293ed81f6d:   mov    %rbp,%r10
   0.01%   │  0x00007f293ed81f70:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.67%   │  0x00007f293ed81f74:   lea    -0x9(%rdx),%r13d
           │  0x00007f293ed81f78:   movslq %r13d,%r13
           │  0x00007f293ed81f7b:   add    %r13,%r10
   1.28%   │  0x00007f293ed81f7e:   add    %rbx,%r10
   0.53%   │  0x00007f293ed81f81:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.33%   │  0x00007f293ed81f84:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.43%   │  0x00007f293ed81f87:   mov    %r10,%rbp
   0.01%   │  0x00007f293ed81f8a:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.67%   │  0x00007f293ed81f8e:   lea    -0xa(%rdx),%r13d
           │  0x00007f293ed81f92:   movslq %r13d,%r13
           │  0x00007f293ed81f95:   add    %r13,%rbp
   1.28%   │  0x00007f293ed81f98:   add    %rbx,%rbp
   0.53%   │  0x00007f293ed81f9b:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
           │                                                            ;   {no_reloc}
   1.34%   │  0x00007f293ed81f9e:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.39%   │  0x00007f293ed81fa1:   mov    %rbp,%r10
   0.01%   │  0x00007f293ed81fa4:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.65%   │  0x00007f293ed81fa8:   lea    -0xb(%rdx),%r13d
           │  0x00007f293ed81fac:   movslq %r13d,%r13
           │  0x00007f293ed81faf:   add    %r13,%r10
   1.27%   │  0x00007f293ed81fb2:   add    %rbx,%r10
   0.52%   │  0x00007f293ed81fb5:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.38%   │  0x00007f293ed81fb8:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f293ed81fbb:   mov    %r10,%rbp
   0.01%   │  0x00007f293ed81fbe:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.58%   │  0x00007f293ed81fc2:   lea    -0xc(%rdx),%r13d
           │  0x00007f293ed81fc6:   movslq %r13d,%r13
           │  0x00007f293ed81fc9:   add    %r13,%rbp
   1.26%   │  0x00007f293ed81fcc:   add    %rbx,%rbp
   0.52%   │  0x00007f293ed81fcf:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.38%   │  0x00007f293ed81fd2:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.39%   │  0x00007f293ed81fd5:   mov    %rbp,%r10
   0.01%   │  0x00007f293ed81fd8:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.56%   │  0x00007f293ed81fdc:   lea    -0xd(%rdx),%r13d
           │  0x00007f293ed81fe0:   movslq %r13d,%r13
           │  0x00007f293ed81fe3:   add    %r13,%r10
   1.23%   │  0x00007f293ed81fe6:   add    %rbx,%r10
   0.54%   │  0x00007f293ed81fe9:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.41%   │  0x00007f293ed81fec:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.39%   │  0x00007f293ed81fef:   mov    %r10,%rbp
   0.00%   │  0x00007f293ed81ff2:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.53%   │  0x00007f293ed81ff6:   lea    -0xe(%rdx),%r13d
           │  0x00007f293ed81ffa:   movslq %r13d,%r13
           │  0x00007f293ed81ffd:   add    %r9,%r13
           │  0x00007f293ed82000:   add    %r13,%rbp
   1.31%   │  0x00007f293ed82003:   lea    0xb(%rbp),%rbp
   0.53%   │  0x00007f293ed82007:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.36%   │  0x00007f293ed8200a:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f293ed8200d:   mov    %rbp,%r10
   0.01%   │  0x00007f293ed82010:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.58%   │  0x00007f293ed82014:   lea    -0xf(%rdx),%edx
           │  0x00007f293ed82017:   movslq %edx,%rdx
           │  0x00007f293ed8201a:   add    %rdx,%r10
   1.24%   │  0x00007f293ed8201d:   add    %rbx,%r10
   0.55%   │  0x00007f293ed82020:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.80%   │  0x00007f293ed82023:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.86%   │  0x00007f293ed82026:   lea    0x10(%rsi),%esi
   0.01%   │  0x00007f293ed82029:   cmp    %esi,%edi
           ╰  0x00007f293ed8202b:   jg     0x00007f293ed81e80           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
              0x00007f293ed82031:   dec    %r13                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
              0x00007f293ed82034:   cmp    %esi,%ecx
              0x00007f293ed82036:   jg     0x00007f293ed82065           ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
              0x00007f293ed8203c:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {}
                                                                        ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
....................................................................................................
  98.95%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.95%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 988 
   0.36%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 988 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 988 
   0.02%               kernel  [unknown] 
   0.01%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 988 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.44%  <...other 791 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.33%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 988 
   0.50%               kernel  [unknown] 
   0.01%                       <unknown> 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  defaultStream::hold 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  syscall 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%           ld-2.31.so  __tls_get_addr 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.08%  <...other 229 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.33%       jvmci, level 4
   0.50%               kernel
   0.06%            libjvm.so
   0.04%         libc-2.31.so
   0.03%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%                     
   0.01%   libpthread-2.31.so
   0.00%           ld-2.31.so
   0.00%          interpreter
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = NONE, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = PLATFORM)

# Run progress: 16.67% complete, ETA 00:12:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.604 s/op
# Warmup Iteration   2: 4.498 s/op
# Warmup Iteration   3: 4.370 s/op
# Warmup Iteration   4: 4.366 s/op
# Warmup Iteration   5: 4.381 s/op
Iteration   1: 4.408 s/op
Iteration   2: 4.369 s/op
Iteration   3: 4.444 s/op
Iteration   4: 4.425 s/op
Iteration   5: 4.429 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.415 ±(99.9%) 0.111 s/op [Average]
  (min, avg, max) = (4.369, 4.415, 4.444), stdev = 0.029
  CI (99.9%): [4.304, 4.526] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 253660 total address lines.
Perf output processed (skipped 77.561 seconds):
 Column 1: cycles (391044 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 995 

   0.00%      0x00007f1516d831dc:   mov    %eax,%esi
              0x00007f1516d831de:   mov    %ebp,%edx
              0x00007f1516d831e0:   mov    %r13,%r10
          ╭   0x00007f1516d831e3:   jmp    0x00007f1516d83202
          │   0x00007f1516d831e8:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f1516d831f3:   data16 data16 xchg %ax,%ax
          │   0x00007f1516d831f7:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
          │↗  0x00007f1516d83200:   mov    %eax,%edx                    ;*lload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
   0.00%  ↘│  0x00007f1516d83202:   lea    -0x10(%rdx),%eax
   0.87%   │  0x00007f1516d83205:   mov    %r10,%rbp
   0.01%   │  0x00007f1516d83208:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   1.86%   │  0x00007f1516d8320c:   movslq %edx,%r13
   0.00%   │  0x00007f1516d8320f:   add    %r13,%rbp
   1.35%   │  0x00007f1516d83212:   add    %rbx,%rbp
   0.48%   │  0x00007f1516d83215:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%   │  0x00007f1516d83218:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.44%   │  0x00007f1516d8321b:   mov    %rbp,%r10
   0.01%   │  0x00007f1516d8321e:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
           │                                                            ;   {no_reloc}
   2.60%   │  0x00007f1516d83222:   mov    %edx,%r13d
           │  0x00007f1516d83225:   dec    %r13d
           │  0x00007f1516d83228:   movslq %r13d,%r13
           │  0x00007f1516d8322b:   add    %r13,%r10
   1.37%   │  0x00007f1516d8322e:   add    %rbx,%r10
   0.50%   │  0x00007f1516d83231:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.30%   │  0x00007f1516d83234:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.45%   │  0x00007f1516d83237:   mov    %r10,%rbp
   0.01%   │  0x00007f1516d8323a:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.62%   │  0x00007f1516d8323e:   lea    -0x2(%rdx),%r13d
           │  0x00007f1516d83242:   movslq %r13d,%r13
           │  0x00007f1516d83245:   add    %r13,%rbp
   1.26%   │  0x00007f1516d83248:   add    %rbx,%rbp
   0.50%   │  0x00007f1516d8324b:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.36%   │  0x00007f1516d8324e:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f1516d83251:   mov    %rbp,%r10
   0.01%   │  0x00007f1516d83254:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.62%   │  0x00007f1516d83258:   lea    -0x3(%rdx),%r13d
           │  0x00007f1516d8325c:   movslq %r13d,%r13
           │  0x00007f1516d8325f:   add    %r13,%r10
   1.32%   │  0x00007f1516d83262:   add    %rbx,%r10
   0.53%   │  0x00007f1516d83265:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%   │  0x00007f1516d83268:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.39%   │  0x00007f1516d8326b:   mov    %r10,%rbp
   0.02%   │  0x00007f1516d8326e:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.68%   │  0x00007f1516d83272:   lea    -0x4(%rdx),%r13d
   0.00%   │  0x00007f1516d83276:   movslq %r13d,%r13
           │  0x00007f1516d83279:   add    %r13,%rbp
   1.32%   │  0x00007f1516d8327c:   add    %rbx,%rbp
   0.49%   │  0x00007f1516d8327f:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.47%   │  0x00007f1516d83282:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.35%   │  0x00007f1516d83285:   mov    %rbp,%r10
   0.00%   │  0x00007f1516d83288:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.69%   │  0x00007f1516d8328c:   lea    -0x5(%rdx),%r13d
           │  0x00007f1516d83290:   movslq %r13d,%r13
           │  0x00007f1516d83293:   add    %r13,%r10
   1.39%   │  0x00007f1516d83296:   add    %rbx,%r10
   0.46%   │  0x00007f1516d83299:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.12%   │  0x00007f1516d8329c:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.43%   │  0x00007f1516d8329f:   mov    %r10,%rbp
   0.06%   │  0x00007f1516d832a2:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.62%   │  0x00007f1516d832a6:   lea    -0x6(%rdx),%r13d
           │  0x00007f1516d832aa:   movslq %r13d,%r13
           │  0x00007f1516d832ad:   add    %r13,%rbp
   1.27%   │  0x00007f1516d832b0:   add    %rbx,%rbp
   0.55%   │  0x00007f1516d832b3:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.19%   │  0x00007f1516d832b6:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.48%   │  0x00007f1516d832b9:   mov    %rbp,%r10
   0.02%   │  0x00007f1516d832bc:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.67%   │  0x00007f1516d832c0:   lea    -0x7(%rdx),%r13d
           │  0x00007f1516d832c4:   movslq %r13d,%r13
           │  0x00007f1516d832c7:   add    %r13,%r10
   1.28%   │  0x00007f1516d832ca:   add    %rbx,%r10
   0.51%   │  0x00007f1516d832cd:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.29%   │  0x00007f1516d832d0:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007f1516d832d3:   mov    %r10,%rbp
   0.01%   │  0x00007f1516d832d6:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.66%   │  0x00007f1516d832da:   lea    -0x8(%rdx),%r13d
           │  0x00007f1516d832de:   movslq %r13d,%r13
           │  0x00007f1516d832e1:   add    %r13,%rbp
   1.27%   │  0x00007f1516d832e4:   add    %rbx,%rbp
   0.51%   │  0x00007f1516d832e7:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.29%   │  0x00007f1516d832ea:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f1516d832ed:   mov    %rbp,%r10
   0.01%   │  0x00007f1516d832f0:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.62%   │  0x00007f1516d832f4:   lea    -0x9(%rdx),%r13d
           │  0x00007f1516d832f8:   movslq %r13d,%r13
           │  0x00007f1516d832fb:   add    %r13,%r10
   1.28%   │  0x00007f1516d832fe:   add    %rbx,%r10
   0.52%   │  0x00007f1516d83301:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.33%   │  0x00007f1516d83304:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.40%   │  0x00007f1516d83307:   mov    %r10,%rbp
   0.01%   │  0x00007f1516d8330a:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.64%   │  0x00007f1516d8330e:   lea    -0xa(%rdx),%r13d
           │  0x00007f1516d83312:   movslq %r13d,%r13
           │  0x00007f1516d83315:   add    %r13,%rbp
   1.26%   │  0x00007f1516d83318:   add    %rbx,%rbp
   0.53%   │  0x00007f1516d8331b:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
           │                                                            ;   {no_reloc}
   1.35%   │  0x00007f1516d8331e:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.40%   │  0x00007f1516d83321:   mov    %rbp,%r10
   0.01%   │  0x00007f1516d83324:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.64%   │  0x00007f1516d83328:   lea    -0xb(%rdx),%r13d
           │  0x00007f1516d8332c:   movslq %r13d,%r13
           │  0x00007f1516d8332f:   add    %r13,%r10
   1.27%   │  0x00007f1516d83332:   add    %rbx,%r10
   0.51%   │  0x00007f1516d83335:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.38%   │  0x00007f1516d83338:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007f1516d8333b:   mov    %r10,%rbp
   0.00%   │  0x00007f1516d8333e:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.63%   │  0x00007f1516d83342:   lea    -0xc(%rdx),%r13d
           │  0x00007f1516d83346:   movslq %r13d,%r13
           │  0x00007f1516d83349:   add    %r13,%rbp
   1.23%   │  0x00007f1516d8334c:   add    %rbx,%rbp
   0.54%   │  0x00007f1516d8334f:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.37%   │  0x00007f1516d83352:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.40%   │  0x00007f1516d83355:   mov    %rbp,%r10
   0.01%   │  0x00007f1516d83358:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.64%   │  0x00007f1516d8335c:   lea    -0xd(%rdx),%r13d
           │  0x00007f1516d83360:   movslq %r13d,%r13
           │  0x00007f1516d83363:   add    %r13,%r10
   1.25%   │  0x00007f1516d83366:   add    %rbx,%r10
   0.55%   │  0x00007f1516d83369:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.38%   │  0x00007f1516d8336c:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.39%   │  0x00007f1516d8336f:   mov    %r10,%rbp
   0.01%   │  0x00007f1516d83372:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.55%   │  0x00007f1516d83376:   lea    -0xe(%rdx),%r13d
           │  0x00007f1516d8337a:   movslq %r13d,%r13
           │  0x00007f1516d8337d:   add    %r9,%r13
           │  0x00007f1516d83380:   add    %r13,%rbp
   1.30%   │  0x00007f1516d83383:   lea    0xb(%rbp),%rbp
   0.54%   │  0x00007f1516d83387:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.38%   │  0x00007f1516d8338a:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f1516d8338d:   mov    %rbp,%r10
   0.01%   │  0x00007f1516d83390:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.59%   │  0x00007f1516d83394:   lea    -0xf(%rdx),%edx
           │  0x00007f1516d83397:   movslq %edx,%rdx
           │  0x00007f1516d8339a:   add    %rdx,%r10
   1.23%   │  0x00007f1516d8339d:   add    %rbx,%r10
   0.54%   │  0x00007f1516d833a0:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.79%   │  0x00007f1516d833a3:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.88%   │  0x00007f1516d833a6:   lea    0x10(%rsi),%esi
   0.01%   │  0x00007f1516d833a9:   cmp    %esi,%edi
           ╰  0x00007f1516d833ab:   jg     0x00007f1516d83200           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
              0x00007f1516d833b1:   dec    %r13                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
              0x00007f1516d833b4:   cmp    %esi,%ecx
              0x00007f1516d833b6:   jg     0x00007f1516d833e5           ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
              0x00007f1516d833bc:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {}
                                                                        ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
....................................................................................................
  99.02%  <total for region 1>

....[Hottest Regions]...............................................................................
  99.02%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 995 
   0.36%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 995 
   0.07%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 995 
   0.01%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 995 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.35%  <...other 688 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.40%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 995 
   0.46%               kernel  [unknown] 
   0.01%                       <unknown> 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  fileStream::write 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  _IO_fwrite 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%         libc-2.31.so  syscall 
   0.00%         libc-2.31.so  __strchrnul_avx2 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           ld-2.31.so  __tls_get_addr 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%         libc-2.31.so  __strchr_avx2 
   0.07%  <...other 163 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.40%       jvmci, level 4
   0.46%               kernel
   0.06%            libjvm.so
   0.04%         libc-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.00%          interpreter
   0.00%           ld-2.31.so
   0.00%     perf-3346932.map
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = YIELD, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = VIRTUAL)

# Run progress: 33.33% complete, ETA 00:10:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.072 s/op
# Warmup Iteration   2: 4.582 s/op
# Warmup Iteration   3: 4.569 s/op
# Warmup Iteration   4: 4.378 s/op
# Warmup Iteration   5: 4.457 s/op
Iteration   1: 4.419 s/op
Iteration   2: 4.379 s/op
Iteration   3: 4.533 s/op
Iteration   4: 4.372 s/op
Iteration   5: 4.429 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.426 ±(99.9%) 0.248 s/op [Average]
  (min, avg, max) = (4.372, 4.426, 4.533), stdev = 0.064
  CI (99.9%): [4.178, 4.675] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 292995 total address lines.
Perf output processed (skipped 74.934 seconds):
 Column 1: cycles (391797 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1002 

   0.00%      0x00007f4032d8245c:   mov    %eax,%esi
              0x00007f4032d8245e:   mov    %ebp,%edx
              0x00007f4032d82460:   mov    %r13,%r10
          ╭   0x00007f4032d82463:   jmp    0x00007f4032d82482
          │   0x00007f4032d82468:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f4032d82473:   data16 data16 xchg %ax,%ax
          │   0x00007f4032d82477:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
          │↗  0x00007f4032d82480:   mov    %eax,%edx                    ;*lload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
   0.00%  ↘│  0x00007f4032d82482:   lea    -0x10(%rdx),%eax
   0.86%   │  0x00007f4032d82485:   mov    %r10,%rbp
   0.01%   │  0x00007f4032d82488:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   1.84%   │  0x00007f4032d8248c:   movslq %edx,%r13
   0.00%   │  0x00007f4032d8248f:   add    %r13,%rbp
   1.33%   │  0x00007f4032d82492:   add    %rbx,%rbp
   0.49%   │  0x00007f4032d82495:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%   │  0x00007f4032d82498:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.43%   │  0x00007f4032d8249b:   mov    %rbp,%r10
   0.01%   │  0x00007f4032d8249e:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
           │                                                            ;   {no_reloc}
   2.55%   │  0x00007f4032d824a2:   mov    %edx,%r13d
           │  0x00007f4032d824a5:   dec    %r13d
           │  0x00007f4032d824a8:   movslq %r13d,%r13
           │  0x00007f4032d824ab:   add    %r13,%r10
   1.34%   │  0x00007f4032d824ae:   add    %rbx,%r10
   0.51%   │  0x00007f4032d824b1:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.33%   │  0x00007f4032d824b4:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.43%   │  0x00007f4032d824b7:   mov    %r10,%rbp
   0.01%   │  0x00007f4032d824ba:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.61%   │  0x00007f4032d824be:   lea    -0x2(%rdx),%r13d
           │  0x00007f4032d824c2:   movslq %r13d,%r13
           │  0x00007f4032d824c5:   add    %r13,%rbp
   1.28%   │  0x00007f4032d824c8:   add    %rbx,%rbp
   0.50%   │  0x00007f4032d824cb:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.33%   │  0x00007f4032d824ce:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.43%   │  0x00007f4032d824d1:   mov    %rbp,%r10
   0.01%   │  0x00007f4032d824d4:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.67%   │  0x00007f4032d824d8:   lea    -0x3(%rdx),%r13d
           │  0x00007f4032d824dc:   movslq %r13d,%r13
           │  0x00007f4032d824df:   add    %r13,%r10
   1.28%   │  0x00007f4032d824e2:   add    %rbx,%r10
   0.53%   │  0x00007f4032d824e5:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%   │  0x00007f4032d824e8:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f4032d824eb:   mov    %r10,%rbp
   0.02%   │  0x00007f4032d824ee:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.62%   │  0x00007f4032d824f2:   lea    -0x4(%rdx),%r13d
           │  0x00007f4032d824f6:   movslq %r13d,%r13
           │  0x00007f4032d824f9:   add    %r13,%rbp
   1.34%   │  0x00007f4032d824fc:   add    %rbx,%rbp
   0.51%   │  0x00007f4032d824ff:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.42%   │  0x00007f4032d82502:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.34%   │  0x00007f4032d82505:   mov    %rbp,%r10
   0.00%   │  0x00007f4032d82508:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.66%   │  0x00007f4032d8250c:   lea    -0x5(%rdx),%r13d
           │  0x00007f4032d82510:   movslq %r13d,%r13
           │  0x00007f4032d82513:   add    %r13,%r10
   1.37%   │  0x00007f4032d82516:   add    %rbx,%r10
   0.47%   │  0x00007f4032d82519:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.12%   │  0x00007f4032d8251c:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.46%   │  0x00007f4032d8251f:   mov    %r10,%rbp
   0.07%   │  0x00007f4032d82522:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.64%   │  0x00007f4032d82526:   lea    -0x6(%rdx),%r13d
           │  0x00007f4032d8252a:   movslq %r13d,%r13
           │  0x00007f4032d8252d:   add    %r13,%rbp
   1.27%   │  0x00007f4032d82530:   add    %rbx,%rbp
   0.52%   │  0x00007f4032d82533:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.19%   │  0x00007f4032d82536:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.49%   │  0x00007f4032d82539:   mov    %rbp,%r10
   0.02%   │  0x00007f4032d8253c:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.69%   │  0x00007f4032d82540:   lea    -0x7(%rdx),%r13d
           │  0x00007f4032d82544:   movslq %r13d,%r13
           │  0x00007f4032d82547:   add    %r13,%r10
   1.31%   │  0x00007f4032d8254a:   add    %rbx,%r10
   0.50%   │  0x00007f4032d8254d:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%   │  0x00007f4032d82550:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.43%   │  0x00007f4032d82553:   mov    %r10,%rbp
   0.01%   │  0x00007f4032d82556:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.67%   │  0x00007f4032d8255a:   lea    -0x8(%rdx),%r13d
           │  0x00007f4032d8255e:   movslq %r13d,%r13
           │  0x00007f4032d82561:   add    %r13,%rbp
   1.29%   │  0x00007f4032d82564:   add    %rbx,%rbp
   0.51%   │  0x00007f4032d82567:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%   │  0x00007f4032d8256a:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.40%   │  0x00007f4032d8256d:   mov    %rbp,%r10
   0.01%   │  0x00007f4032d82570:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.63%   │  0x00007f4032d82574:   lea    -0x9(%rdx),%r13d
           │  0x00007f4032d82578:   movslq %r13d,%r13
           │  0x00007f4032d8257b:   add    %r13,%r10
   1.22%   │  0x00007f4032d8257e:   add    %rbx,%r10
   0.53%   │  0x00007f4032d82581:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.33%   │  0x00007f4032d82584:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.44%   │  0x00007f4032d82587:   mov    %r10,%rbp
   0.01%   │  0x00007f4032d8258a:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.61%   │  0x00007f4032d8258e:   lea    -0xa(%rdx),%r13d
           │  0x00007f4032d82592:   movslq %r13d,%r13
           │  0x00007f4032d82595:   add    %r13,%rbp
   1.28%   │  0x00007f4032d82598:   add    %rbx,%rbp
   0.54%   │  0x00007f4032d8259b:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
           │                                                            ;   {no_reloc}
   1.34%   │  0x00007f4032d8259e:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f4032d825a1:   mov    %rbp,%r10
   0.01%   │  0x00007f4032d825a4:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.65%   │  0x00007f4032d825a8:   lea    -0xb(%rdx),%r13d
           │  0x00007f4032d825ac:   movslq %r13d,%r13
           │  0x00007f4032d825af:   add    %r13,%r10
   1.25%   │  0x00007f4032d825b2:   add    %rbx,%r10
   0.56%   │  0x00007f4032d825b5:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.36%   │  0x00007f4032d825b8:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.40%   │  0x00007f4032d825bb:   mov    %r10,%rbp
   0.01%   │  0x00007f4032d825be:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.61%   │  0x00007f4032d825c2:   lea    -0xc(%rdx),%r13d
   0.00%   │  0x00007f4032d825c6:   movslq %r13d,%r13
           │  0x00007f4032d825c9:   add    %r13,%rbp
   1.23%   │  0x00007f4032d825cc:   add    %rbx,%rbp
   0.54%   │  0x00007f4032d825cf:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.36%   │  0x00007f4032d825d2:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.38%   │  0x00007f4032d825d5:   mov    %rbp,%r10
   0.01%   │  0x00007f4032d825d8:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.66%   │  0x00007f4032d825dc:   lea    -0xd(%rdx),%r13d
           │  0x00007f4032d825e0:   movslq %r13d,%r13
           │  0x00007f4032d825e3:   add    %r13,%r10
   1.24%   │  0x00007f4032d825e6:   add    %rbx,%r10
   0.53%   │  0x00007f4032d825e9:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.40%   │  0x00007f4032d825ec:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.39%   │  0x00007f4032d825ef:   mov    %r10,%rbp
   0.01%   │  0x00007f4032d825f2:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.53%   │  0x00007f4032d825f6:   lea    -0xe(%rdx),%r13d
           │  0x00007f4032d825fa:   movslq %r13d,%r13
           │  0x00007f4032d825fd:   add    %r9,%r13
           │  0x00007f4032d82600:   add    %r13,%rbp
   1.28%   │  0x00007f4032d82603:   lea    0xb(%rbp),%rbp
   0.56%   │  0x00007f4032d82607:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.36%   │  0x00007f4032d8260a:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007f4032d8260d:   mov    %rbp,%r10
   0.01%   │  0x00007f4032d82610:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.61%   │  0x00007f4032d82614:   lea    -0xf(%rdx),%edx
           │  0x00007f4032d82617:   movslq %edx,%rdx
           │  0x00007f4032d8261a:   add    %rdx,%r10
   1.25%   │  0x00007f4032d8261d:   add    %rbx,%r10
   0.55%   │  0x00007f4032d82620:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.79%   │  0x00007f4032d82623:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.85%   │  0x00007f4032d82626:   lea    0x10(%rsi),%esi
   0.01%   │  0x00007f4032d82629:   cmp    %esi,%edi
           ╰  0x00007f4032d8262b:   jg     0x00007f4032d82480           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
              0x00007f4032d82631:   dec    %r13                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
              0x00007f4032d82634:   cmp    %esi,%ecx
              0x00007f4032d82636:   jg     0x00007f4032d82665           ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
              0x00007f4032d8263c:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {}
                                                                        ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
....................................................................................................
  98.89%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.89%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1002 
   0.36%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1002 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1002 
   0.01%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1002 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%              kernel  [unknown] 
   0.00%        libc-2.31.so  syscall 
   0.00%              kernel  [unknown] 
   0.50%  <...other 938 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.28%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1002 
   0.50%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  defaultStream::write 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark::cpuBoundWork, version 3, compile id 1209 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%        libc-2.31.so  syscall 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.08%  <...other 157 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.29%      jvmci, level 4
   0.50%              kernel
   0.07%           libjvm.so
   0.06%                    
   0.06%        libc-2.31.so
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%         interpreter
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-3347181.map
   0.00%        runtime stub
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = YIELD, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = PLATFORM)

# Run progress: 50.00% complete, ETA 00:07:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.563 s/op
# Warmup Iteration   2: 4.487 s/op
# Warmup Iteration   3: 4.400 s/op
# Warmup Iteration   4: 4.366 s/op
# Warmup Iteration   5: 4.394 s/op
Iteration   1: 4.404 s/op
Iteration   2: 4.395 s/op
Iteration   3: 4.445 s/op
Iteration   4: 4.367 s/op
Iteration   5: 4.459 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.414 ±(99.9%) 0.145 s/op [Average]
  (min, avg, max) = (4.367, 4.414, 4.459), stdev = 0.038
  CI (99.9%): [4.269, 4.559] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 247103 total address lines.
Perf output processed (skipped 77.159 seconds):
 Column 1: cycles (390947 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1003 

   0.01%      0x00007fa0ded8185c:   mov    %eax,%esi
              0x00007fa0ded8185e:   mov    %ebp,%edx
              0x00007fa0ded81860:   mov    %r13,%r10
          ╭   0x00007fa0ded81863:   jmp    0x00007fa0ded81882
          │   0x00007fa0ded81868:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa0ded81873:   data16 data16 xchg %ax,%ax
          │   0x00007fa0ded81877:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
          │↗  0x00007fa0ded81880:   mov    %eax,%edx                    ;*lload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
   0.00%  ↘│  0x00007fa0ded81882:   lea    -0x10(%rdx),%eax
   0.87%   │  0x00007fa0ded81885:   mov    %r10,%rbp
   0.01%   │  0x00007fa0ded81888:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   1.83%   │  0x00007fa0ded8188c:   movslq %edx,%r13
   0.00%   │  0x00007fa0ded8188f:   add    %r13,%rbp
   1.35%   │  0x00007fa0ded81892:   add    %rbx,%rbp
   0.50%   │  0x00007fa0ded81895:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%   │  0x00007fa0ded81898:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.44%   │  0x00007fa0ded8189b:   mov    %rbp,%r10
   0.01%   │  0x00007fa0ded8189e:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
           │                                                            ;   {no_reloc}
   2.55%   │  0x00007fa0ded818a2:   mov    %edx,%r13d
           │  0x00007fa0ded818a5:   dec    %r13d
           │  0x00007fa0ded818a8:   movslq %r13d,%r13
           │  0x00007fa0ded818ab:   add    %r13,%r10
   1.37%   │  0x00007fa0ded818ae:   add    %rbx,%r10
   0.50%   │  0x00007fa0ded818b1:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%   │  0x00007fa0ded818b4:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007fa0ded818b7:   mov    %r10,%rbp
   0.01%   │  0x00007fa0ded818ba:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.64%   │  0x00007fa0ded818be:   lea    -0x2(%rdx),%r13d
           │  0x00007fa0ded818c2:   movslq %r13d,%r13
           │  0x00007fa0ded818c5:   add    %r13,%rbp
   1.32%   │  0x00007fa0ded818c8:   add    %rbx,%rbp
   0.51%   │  0x00007fa0ded818cb:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.33%   │  0x00007fa0ded818ce:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007fa0ded818d1:   mov    %rbp,%r10
   0.01%   │  0x00007fa0ded818d4:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.66%   │  0x00007fa0ded818d8:   lea    -0x3(%rdx),%r13d
           │  0x00007fa0ded818dc:   movslq %r13d,%r13
           │  0x00007fa0ded818df:   add    %r13,%r10
   1.30%   │  0x00007fa0ded818e2:   add    %rbx,%r10
   0.54%   │  0x00007fa0ded818e5:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%   │  0x00007fa0ded818e8:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007fa0ded818eb:   mov    %r10,%rbp
   0.02%   │  0x00007fa0ded818ee:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.63%   │  0x00007fa0ded818f2:   lea    -0x4(%rdx),%r13d
           │  0x00007fa0ded818f6:   movslq %r13d,%r13
           │  0x00007fa0ded818f9:   add    %r13,%rbp
   1.28%   │  0x00007fa0ded818fc:   add    %rbx,%rbp
   0.51%   │  0x00007fa0ded818ff:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.44%   │  0x00007fa0ded81902:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.36%   │  0x00007fa0ded81905:   mov    %rbp,%r10
   0.00%   │  0x00007fa0ded81908:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.63%   │  0x00007fa0ded8190c:   lea    -0x5(%rdx),%r13d
           │  0x00007fa0ded81910:   movslq %r13d,%r13
           │  0x00007fa0ded81913:   add    %r13,%r10
   1.34%   │  0x00007fa0ded81916:   add    %rbx,%r10
   0.45%   │  0x00007fa0ded81919:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.13%   │  0x00007fa0ded8191c:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.46%   │  0x00007fa0ded8191f:   mov    %r10,%rbp
   0.07%   │  0x00007fa0ded81922:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.67%   │  0x00007fa0ded81926:   lea    -0x6(%rdx),%r13d
           │  0x00007fa0ded8192a:   movslq %r13d,%r13
           │  0x00007fa0ded8192d:   add    %r13,%rbp
   1.23%   │  0x00007fa0ded81930:   add    %rbx,%rbp
   0.54%   │  0x00007fa0ded81933:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.19%   │  0x00007fa0ded81936:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.47%   │  0x00007fa0ded81939:   mov    %rbp,%r10
   0.01%   │  0x00007fa0ded8193c:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.71%   │  0x00007fa0ded81940:   lea    -0x7(%rdx),%r13d
           │  0x00007fa0ded81944:   movslq %r13d,%r13
           │  0x00007fa0ded81947:   add    %r13,%r10
   1.29%   │  0x00007fa0ded8194a:   add    %rbx,%r10
   0.51%   │  0x00007fa0ded8194d:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.30%   │  0x00007fa0ded81950:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.43%   │  0x00007fa0ded81953:   mov    %r10,%rbp
   0.01%   │  0x00007fa0ded81956:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.63%   │  0x00007fa0ded8195a:   lea    -0x8(%rdx),%r13d
           │  0x00007fa0ded8195e:   movslq %r13d,%r13
           │  0x00007fa0ded81961:   add    %r13,%rbp
   1.29%   │  0x00007fa0ded81964:   add    %rbx,%rbp
   0.51%   │  0x00007fa0ded81967:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%   │  0x00007fa0ded8196a:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007fa0ded8196d:   mov    %rbp,%r10
   0.01%   │  0x00007fa0ded81970:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.61%   │  0x00007fa0ded81974:   lea    -0x9(%rdx),%r13d
           │  0x00007fa0ded81978:   movslq %r13d,%r13
           │  0x00007fa0ded8197b:   add    %r13,%r10
   1.28%   │  0x00007fa0ded8197e:   add    %rbx,%r10
   0.52%   │  0x00007fa0ded81981:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.34%   │  0x00007fa0ded81984:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007fa0ded81987:   mov    %r10,%rbp
   0.01%   │  0x00007fa0ded8198a:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.64%   │  0x00007fa0ded8198e:   lea    -0xa(%rdx),%r13d
           │  0x00007fa0ded81992:   movslq %r13d,%r13
           │  0x00007fa0ded81995:   add    %r13,%rbp
   1.25%   │  0x00007fa0ded81998:   add    %rbx,%rbp
   0.53%   │  0x00007fa0ded8199b:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
           │                                                            ;   {no_reloc}
   1.35%   │  0x00007fa0ded8199e:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.40%   │  0x00007fa0ded819a1:   mov    %rbp,%r10
   0.01%   │  0x00007fa0ded819a4:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.63%   │  0x00007fa0ded819a8:   lea    -0xb(%rdx),%r13d
           │  0x00007fa0ded819ac:   movslq %r13d,%r13
           │  0x00007fa0ded819af:   add    %r13,%r10
   1.24%   │  0x00007fa0ded819b2:   add    %rbx,%r10
   0.54%   │  0x00007fa0ded819b5:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.40%   │  0x00007fa0ded819b8:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007fa0ded819bb:   mov    %r10,%rbp
   0.01%   │  0x00007fa0ded819be:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.63%   │  0x00007fa0ded819c2:   lea    -0xc(%rdx),%r13d
           │  0x00007fa0ded819c6:   movslq %r13d,%r13
           │  0x00007fa0ded819c9:   add    %r13,%rbp
   1.22%   │  0x00007fa0ded819cc:   add    %rbx,%rbp
   0.54%   │  0x00007fa0ded819cf:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.38%   │  0x00007fa0ded819d2:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007fa0ded819d5:   mov    %rbp,%r10
   0.00%   │  0x00007fa0ded819d8:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.61%   │  0x00007fa0ded819dc:   lea    -0xd(%rdx),%r13d
           │  0x00007fa0ded819e0:   movslq %r13d,%r13
           │  0x00007fa0ded819e3:   add    %r13,%r10
   1.24%   │  0x00007fa0ded819e6:   add    %rbx,%r10
   0.55%   │  0x00007fa0ded819e9:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.38%   │  0x00007fa0ded819ec:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.39%   │  0x00007fa0ded819ef:   mov    %r10,%rbp
   0.01%   │  0x00007fa0ded819f2:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.56%   │  0x00007fa0ded819f6:   lea    -0xe(%rdx),%r13d
           │  0x00007fa0ded819fa:   movslq %r13d,%r13
           │  0x00007fa0ded819fd:   add    %r9,%r13
           │  0x00007fa0ded81a00:   add    %r13,%rbp
   1.28%   │  0x00007fa0ded81a03:   lea    0xb(%rbp),%rbp
   0.55%   │  0x00007fa0ded81a07:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.35%   │  0x00007fa0ded81a0a:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007fa0ded81a0d:   mov    %rbp,%r10
   0.01%   │  0x00007fa0ded81a10:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.63%   │  0x00007fa0ded81a14:   lea    -0xf(%rdx),%edx
           │  0x00007fa0ded81a17:   movslq %edx,%rdx
           │  0x00007fa0ded81a1a:   add    %rdx,%r10
   1.25%   │  0x00007fa0ded81a1d:   add    %rbx,%r10
   0.54%   │  0x00007fa0ded81a20:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.82%   │  0x00007fa0ded81a23:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.87%   │  0x00007fa0ded81a26:   lea    0x10(%rsi),%esi
   0.01%   │  0x00007fa0ded81a29:   cmp    %esi,%edi
           ╰  0x00007fa0ded81a2b:   jg     0x00007fa0ded81880           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
              0x00007fa0ded81a31:   dec    %r13                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
              0x00007fa0ded81a34:   cmp    %esi,%ecx
              0x00007fa0ded81a36:   jg     0x00007fa0ded81a65           ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
              0x00007fa0ded81a3c:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {}
                                                                        ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
....................................................................................................
  98.98%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.98%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1003 
   0.36%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1003 
   0.08%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1003 
   0.01%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1003 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.36%  <...other 675 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.37%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1003 
   0.52%               kernel  [unknown] 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%                       <unknown> 
   0.01%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%         libc-2.31.so  _IO_fwrite 
   0.00%           ld-2.31.so  __tls_get_addr 
   0.00%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%         libc-2.31.so  __strchr_avx2 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%            libjvm.so  defaultStream::hold 
   0.00%            libjvm.so  RelocIterator::initialize 
   0.00%         libc-2.31.so  syscall 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.06%  <...other 140 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.37%       jvmci, level 4
   0.52%               kernel
   0.05%            libjvm.so
   0.04%         libc-2.31.so
   0.01%                     
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.00%       hsdis-amd64.so
   0.00%           ld-2.31.so
   0.00%          interpreter
   0.00%     Unknown, level 0
   0.00%          c1, level 3
   0.00%     perf-3347254.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = PARK, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = VIRTUAL)

# Run progress: 66.67% complete, ETA 00:04:58
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.788 s/op
# Warmup Iteration   2: 4.635 s/op
# Warmup Iteration   3: 5.136 s/op
# Warmup Iteration   4: 4.541 s/op
# Warmup Iteration   5: 6.014 s/op
Iteration   1: 5.249 s/op
Iteration   2: 4.634 s/op
Iteration   3: 4.483 s/op
Iteration   4: 4.577 s/op
Iteration   5: 5.277 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.844 ±(99.9%) 1.488 s/op [Average]
  (min, avg, max) = (4.483, 4.844, 5.277), stdev = 0.386
  CI (99.9%): [3.356, 6.332] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 443441 total address lines.
Perf output processed (skipped 74.368 seconds):
 Column 1: cycles (348503 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 4, compile id 1000 

   0.01%      0x00007f818ed837dc:   mov    %eax,%esi
              0x00007f818ed837de:   mov    %ebp,%edx
              0x00007f818ed837e0:   mov    %r13,%r10
          ╭   0x00007f818ed837e3:   jmp    0x00007f818ed83802
          │   0x00007f818ed837e8:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f818ed837f3:   data16 data16 xchg %ax,%ax
          │   0x00007f818ed837f7:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
          │↗  0x00007f818ed83800:   mov    %eax,%edx                    ;*lload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
   0.00%  ↘│  0x00007f818ed83802:   lea    -0x10(%rdx),%eax
   0.86%   │  0x00007f818ed83805:   mov    %r10,%rbp
   0.01%   │  0x00007f818ed83808:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   1.77%   │  0x00007f818ed8380c:   movslq %edx,%r13
   0.00%   │  0x00007f818ed8380f:   add    %r13,%rbp
   1.28%   │  0x00007f818ed83812:   add    %rbx,%rbp
   0.48%   │  0x00007f818ed83815:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.24%   │  0x00007f818ed83818:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.44%   │  0x00007f818ed8381b:   mov    %rbp,%r10
   0.01%   │  0x00007f818ed8381e:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
           │                                                            ;   {no_reloc}
   2.51%   │  0x00007f818ed83822:   mov    %edx,%r13d
           │  0x00007f818ed83825:   dec    %r13d
           │  0x00007f818ed83828:   movslq %r13d,%r13
           │  0x00007f818ed8382b:   add    %r13,%r10
   1.32%   │  0x00007f818ed8382e:   add    %rbx,%r10
   0.51%   │  0x00007f818ed83831:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.27%   │  0x00007f818ed83834:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007f818ed83837:   mov    %r10,%rbp
   0.01%   │  0x00007f818ed8383a:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.60%   │  0x00007f818ed8383e:   lea    -0x2(%rdx),%r13d
           │  0x00007f818ed83842:   movslq %r13d,%r13
           │  0x00007f818ed83845:   add    %r13,%rbp
   1.26%   │  0x00007f818ed83848:   add    %rbx,%rbp
   0.50%   │  0x00007f818ed8384b:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.33%   │  0x00007f818ed8384e:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f818ed83851:   mov    %rbp,%r10
   0.01%   │  0x00007f818ed83854:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.60%   │  0x00007f818ed83858:   lea    -0x3(%rdx),%r13d
           │  0x00007f818ed8385c:   movslq %r13d,%r13
           │  0x00007f818ed8385f:   add    %r13,%r10
   1.30%   │  0x00007f818ed83862:   add    %rbx,%r10
   0.50%   │  0x00007f818ed83865:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%   │  0x00007f818ed83868:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.39%   │  0x00007f818ed8386b:   mov    %r10,%rbp
   0.02%   │  0x00007f818ed8386e:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.57%   │  0x00007f818ed83872:   lea    -0x4(%rdx),%r13d
           │  0x00007f818ed83876:   movslq %r13d,%r13
           │  0x00007f818ed83879:   add    %r13,%rbp
   1.31%   │  0x00007f818ed8387c:   add    %rbx,%rbp
   0.51%   │  0x00007f818ed8387f:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.40%   │  0x00007f818ed83882:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.35%   │  0x00007f818ed83885:   mov    %rbp,%r10
   0.00%   │  0x00007f818ed83888:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.61%   │  0x00007f818ed8388c:   lea    -0x5(%rdx),%r13d
           │  0x00007f818ed83890:   movslq %r13d,%r13
           │  0x00007f818ed83893:   add    %r13,%r10
   1.36%   │  0x00007f818ed83896:   add    %rbx,%r10
   0.45%   │  0x00007f818ed83899:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.11%   │  0x00007f818ed8389c:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.46%   │  0x00007f818ed8389f:   mov    %r10,%rbp
   0.06%   │  0x00007f818ed838a2:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.61%   │  0x00007f818ed838a6:   lea    -0x6(%rdx),%r13d
           │  0x00007f818ed838aa:   movslq %r13d,%r13
           │  0x00007f818ed838ad:   add    %r13,%rbp
   1.24%   │  0x00007f818ed838b0:   add    %rbx,%rbp
   0.49%   │  0x00007f818ed838b3:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.15%   │  0x00007f818ed838b6:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.46%   │  0x00007f818ed838b9:   mov    %rbp,%r10
   0.01%   │  0x00007f818ed838bc:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.58%   │  0x00007f818ed838c0:   lea    -0x7(%rdx),%r13d
           │  0x00007f818ed838c4:   movslq %r13d,%r13
           │  0x00007f818ed838c7:   add    %r13,%r10
   1.24%   │  0x00007f818ed838ca:   add    %rbx,%r10
   0.51%   │  0x00007f818ed838cd:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%   │  0x00007f818ed838d0:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f818ed838d3:   mov    %r10,%rbp
   0.01%   │  0x00007f818ed838d6:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.62%   │  0x00007f818ed838da:   lea    -0x8(%rdx),%r13d
           │  0x00007f818ed838de:   movslq %r13d,%r13
           │  0x00007f818ed838e1:   add    %r13,%rbp
   1.27%   │  0x00007f818ed838e4:   add    %rbx,%rbp
   0.51%   │  0x00007f818ed838e7:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.27%   │  0x00007f818ed838ea:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f818ed838ed:   mov    %rbp,%r10
   0.01%   │  0x00007f818ed838f0:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.57%   │  0x00007f818ed838f4:   lea    -0x9(%rdx),%r13d
           │  0x00007f818ed838f8:   movslq %r13d,%r13
           │  0x00007f818ed838fb:   add    %r13,%r10
   1.24%   │  0x00007f818ed838fe:   add    %rbx,%r10
   0.48%   │  0x00007f818ed83901:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.33%   │  0x00007f818ed83904:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f818ed83907:   mov    %r10,%rbp
   0.01%   │  0x00007f818ed8390a:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.57%   │  0x00007f818ed8390e:   lea    -0xa(%rdx),%r13d
           │  0x00007f818ed83912:   movslq %r13d,%r13
           │  0x00007f818ed83915:   add    %r13,%rbp
   1.24%   │  0x00007f818ed83918:   add    %rbx,%rbp
   0.51%   │  0x00007f818ed8391b:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
           │                                                            ;   {no_reloc}
   1.29%   │  0x00007f818ed8391e:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007f818ed83921:   mov    %rbp,%r10
   0.00%   │  0x00007f818ed83924:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.53%   │  0x00007f818ed83928:   lea    -0xb(%rdx),%r13d
           │  0x00007f818ed8392c:   movslq %r13d,%r13
           │  0x00007f818ed8392f:   add    %r13,%r10
   1.20%   │  0x00007f818ed83932:   add    %rbx,%r10
   0.51%   │  0x00007f818ed83935:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%   │  0x00007f818ed83938:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007f818ed8393b:   mov    %r10,%rbp
   0.00%   │  0x00007f818ed8393e:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.56%   │  0x00007f818ed83942:   lea    -0xc(%rdx),%r13d
           │  0x00007f818ed83946:   movslq %r13d,%r13
           │  0x00007f818ed83949:   add    %r13,%rbp
   1.20%   │  0x00007f818ed8394c:   add    %rbx,%rbp
   0.54%   │  0x00007f818ed8394f:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.35%   │  0x00007f818ed83952:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.38%   │  0x00007f818ed83955:   mov    %rbp,%r10
   0.01%   │  0x00007f818ed83958:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.56%   │  0x00007f818ed8395c:   lea    -0xd(%rdx),%r13d
           │  0x00007f818ed83960:   movslq %r13d,%r13
           │  0x00007f818ed83963:   add    %r13,%r10
   1.21%   │  0x00007f818ed83966:   add    %rbx,%r10
   0.54%   │  0x00007f818ed83969:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.39%   │  0x00007f818ed8396c:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.39%   │  0x00007f818ed8396f:   mov    %r10,%rbp
   0.01%   │  0x00007f818ed83972:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.47%   │  0x00007f818ed83976:   lea    -0xe(%rdx),%r13d
           │  0x00007f818ed8397a:   movslq %r13d,%r13
           │  0x00007f818ed8397d:   add    %r9,%r13
           │  0x00007f818ed83980:   add    %r13,%rbp
   1.27%   │  0x00007f818ed83983:   lea    0xb(%rbp),%rbp
   0.52%   │  0x00007f818ed83987:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.30%   │  0x00007f818ed8398a:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f818ed8398d:   mov    %rbp,%r10
   0.01%   │  0x00007f818ed83990:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.55%   │  0x00007f818ed83994:   lea    -0xf(%rdx),%edx
           │  0x00007f818ed83997:   movslq %edx,%rdx
           │  0x00007f818ed8399a:   add    %rdx,%r10
   1.23%   │  0x00007f818ed8399d:   add    %rbx,%r10
   0.54%   │  0x00007f818ed839a0:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.77%   │  0x00007f818ed839a3:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.85%   │  0x00007f818ed839a6:   lea    0x10(%rsi),%esi
   0.01%   │  0x00007f818ed839a9:   cmp    %esi,%edi
           ╰  0x00007f818ed839ab:   jg     0x00007f818ed83800           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
              0x00007f818ed839b1:   dec    %r13                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
              0x00007f818ed839b4:   cmp    %esi,%ecx
              0x00007f818ed839b6:   jg     0x00007f818ed839e5           ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
              0x00007f818ed839bc:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {}
                                                                        ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
....................................................................................................
  96.74%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.74%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 4, compile id 1000 
   0.36%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 4, compile id 1000 
   0.27%              kernel  [unknown] 
   0.24%              kernel  [unknown] 
   0.23%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  defaultStream::write 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1383 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  syscall 
   0.01%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 4, compile id 1000 
   1.87%  <...other 2453 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.13%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 4, compile id 1000 
   1.77%              kernel  [unknown] 
   0.50%                      <unknown> 
   0.03%           libjvm.so  xmlStream::write_text 
   0.03%           libjvm.so  defaultStream::write 
   0.02%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1383 
   0.02%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 5, compile id 1390 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark::cpuBoundWork, version 7, compile id 1374 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1392 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.32%  <...other 260 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.22%      jvmci, level 4
   1.77%              kernel
   0.50%                    
   0.24%           libjvm.so
   0.15%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.03%         interpreter
   0.03%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.00%              [vdso]
   0.00%    Unknown, level 0
   0.00%    perf-3347499.map
   0.00%         c1, level 3
   0.00%        runtime stub
   0.00%          libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = PARK, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = PLATFORM)

# Run progress: 83.33% complete, ETA 00:02:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.708 s/op
# Warmup Iteration   2: 4.508 s/op
# Warmup Iteration   3: 4.468 s/op
# Warmup Iteration   4: 4.447 s/op
# Warmup Iteration   5: 4.457 s/op
Iteration   1: 4.458 s/op
Iteration   2: 4.459 s/op
Iteration   3: 4.478 s/op
Iteration   4: 4.497 s/op
Iteration   5: 4.509 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.480 ±(99.9%) 0.087 s/op [Average]
  (min, avg, max) = (4.458, 4.480, 4.509), stdev = 0.023
  CI (99.9%): [4.393, 4.567] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 252561 total address lines.
Perf output processed (skipped 78.748 seconds):
 Column 1: cycles (397297 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 1017 

   0.00%      0x00007f532ed8455c:   mov    %eax,%esi
              0x00007f532ed8455e:   mov    %ebp,%edx
              0x00007f532ed84560:   mov    %r13,%r10
          ╭   0x00007f532ed84563:   jmp    0x00007f532ed84582
          │   0x00007f532ed84568:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f532ed84573:   data16 data16 xchg %ax,%ax
          │   0x00007f532ed84577:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
          │↗  0x00007f532ed84580:   mov    %eax,%edx                    ;*lload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
   0.00%  ↘│  0x00007f532ed84582:   lea    -0x10(%rdx),%eax
   0.84%   │  0x00007f532ed84585:   mov    %r10,%rbp
   0.01%   │  0x00007f532ed84588:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   1.80%   │  0x00007f532ed8458c:   movslq %edx,%r13
           │  0x00007f532ed8458f:   add    %r13,%rbp
   1.34%   │  0x00007f532ed84592:   add    %rbx,%rbp
   0.49%   │  0x00007f532ed84595:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%   │  0x00007f532ed84598:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.43%   │  0x00007f532ed8459b:   mov    %rbp,%r10
   0.01%   │  0x00007f532ed8459e:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
           │                                                            ;   {no_reloc}
   2.56%   │  0x00007f532ed845a2:   mov    %edx,%r13d
           │  0x00007f532ed845a5:   dec    %r13d
   0.00%   │  0x00007f532ed845a8:   movslq %r13d,%r13
           │  0x00007f532ed845ab:   add    %r13,%r10
   1.36%   │  0x00007f532ed845ae:   add    %rbx,%r10
   0.52%   │  0x00007f532ed845b1:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%   │  0x00007f532ed845b4:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.45%   │  0x00007f532ed845b7:   mov    %r10,%rbp
   0.01%   │  0x00007f532ed845ba:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.66%   │  0x00007f532ed845be:   lea    -0x2(%rdx),%r13d
           │  0x00007f532ed845c2:   movslq %r13d,%r13
           │  0x00007f532ed845c5:   add    %r13,%rbp
   1.33%   │  0x00007f532ed845c8:   add    %rbx,%rbp
   0.53%   │  0x00007f532ed845cb:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.35%   │  0x00007f532ed845ce:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f532ed845d1:   mov    %rbp,%r10
   0.01%   │  0x00007f532ed845d4:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.64%   │  0x00007f532ed845d8:   lea    -0x3(%rdx),%r13d
           │  0x00007f532ed845dc:   movslq %r13d,%r13
           │  0x00007f532ed845df:   add    %r13,%r10
   1.32%   │  0x00007f532ed845e2:   add    %rbx,%r10
   0.53%   │  0x00007f532ed845e5:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.29%   │  0x00007f532ed845e8:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.39%   │  0x00007f532ed845eb:   mov    %r10,%rbp
   0.02%   │  0x00007f532ed845ee:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.64%   │  0x00007f532ed845f2:   lea    -0x4(%rdx),%r13d
           │  0x00007f532ed845f6:   movslq %r13d,%r13
           │  0x00007f532ed845f9:   add    %r13,%rbp
   1.30%   │  0x00007f532ed845fc:   add    %rbx,%rbp
   0.50%   │  0x00007f532ed845ff:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.44%   │  0x00007f532ed84602:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.37%   │  0x00007f532ed84605:   mov    %rbp,%r10
   0.00%   │  0x00007f532ed84608:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.68%   │  0x00007f532ed8460c:   lea    -0x5(%rdx),%r13d
           │  0x00007f532ed84610:   movslq %r13d,%r13
           │  0x00007f532ed84613:   add    %r13,%r10
   1.37%   │  0x00007f532ed84616:   add    %rbx,%r10
   0.47%   │  0x00007f532ed84619:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.14%   │  0x00007f532ed8461c:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.44%   │  0x00007f532ed8461f:   mov    %r10,%rbp
   0.07%   │  0x00007f532ed84622:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.62%   │  0x00007f532ed84626:   lea    -0x6(%rdx),%r13d
   0.00%   │  0x00007f532ed8462a:   movslq %r13d,%r13
           │  0x00007f532ed8462d:   add    %r13,%rbp
   1.29%   │  0x00007f532ed84630:   add    %rbx,%rbp
   0.53%   │  0x00007f532ed84633:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.21%   │  0x00007f532ed84636:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.46%   │  0x00007f532ed84639:   mov    %rbp,%r10
   0.02%   │  0x00007f532ed8463c:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.67%   │  0x00007f532ed84640:   lea    -0x7(%rdx),%r13d
           │  0x00007f532ed84644:   movslq %r13d,%r13
           │  0x00007f532ed84647:   add    %r13,%r10
   1.27%   │  0x00007f532ed8464a:   add    %rbx,%r10
   0.49%   │  0x00007f532ed8464d:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%   │  0x00007f532ed84650:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007f532ed84653:   mov    %r10,%rbp
   0.01%   │  0x00007f532ed84656:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.65%   │  0x00007f532ed8465a:   lea    -0x8(%rdx),%r13d
           │  0x00007f532ed8465e:   movslq %r13d,%r13
           │  0x00007f532ed84661:   add    %r13,%rbp
   1.27%   │  0x00007f532ed84664:   add    %rbx,%rbp
   0.52%   │  0x00007f532ed84667:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%   │  0x00007f532ed8466a:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.43%   │  0x00007f532ed8466d:   mov    %rbp,%r10
   0.01%   │  0x00007f532ed84670:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.63%   │  0x00007f532ed84674:   lea    -0x9(%rdx),%r13d
           │  0x00007f532ed84678:   movslq %r13d,%r13
           │  0x00007f532ed8467b:   add    %r13,%r10
   1.27%   │  0x00007f532ed8467e:   add    %rbx,%r10
   0.52%   │  0x00007f532ed84681:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.35%   │  0x00007f532ed84684:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.42%   │  0x00007f532ed84687:   mov    %r10,%rbp
   0.01%   │  0x00007f532ed8468a:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.67%   │  0x00007f532ed8468e:   lea    -0xa(%rdx),%r13d
   0.00%   │  0x00007f532ed84692:   movslq %r13d,%r13
           │  0x00007f532ed84695:   add    %r13,%rbp
   1.24%   │  0x00007f532ed84698:   add    %rbx,%rbp
   0.51%   │  0x00007f532ed8469b:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
           │                                                            ;   {no_reloc}
   1.38%   │  0x00007f532ed8469e:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f532ed846a1:   mov    %rbp,%r10
   0.01%   │  0x00007f532ed846a4:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.63%   │  0x00007f532ed846a8:   lea    -0xb(%rdx),%r13d
           │  0x00007f532ed846ac:   movslq %r13d,%r13
           │  0x00007f532ed846af:   add    %r13,%r10
   1.26%   │  0x00007f532ed846b2:   add    %rbx,%r10
   0.53%   │  0x00007f532ed846b5:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.36%   │  0x00007f532ed846b8:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.40%   │  0x00007f532ed846bb:   mov    %r10,%rbp
   0.01%   │  0x00007f532ed846be:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.63%   │  0x00007f532ed846c2:   lea    -0xc(%rdx),%r13d
           │  0x00007f532ed846c6:   movslq %r13d,%r13
           │  0x00007f532ed846c9:   add    %r13,%rbp
   1.23%   │  0x00007f532ed846cc:   add    %rbx,%rbp
   0.54%   │  0x00007f532ed846cf:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.43%   │  0x00007f532ed846d2:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.39%   │  0x00007f532ed846d5:   mov    %rbp,%r10
   0.01%   │  0x00007f532ed846d8:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.61%   │  0x00007f532ed846dc:   lea    -0xd(%rdx),%r13d
           │  0x00007f532ed846e0:   movslq %r13d,%r13
           │  0x00007f532ed846e3:   add    %r13,%r10
   1.20%   │  0x00007f532ed846e6:   add    %rbx,%r10
   0.55%   │  0x00007f532ed846e9:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.35%   │  0x00007f532ed846ec:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.40%   │  0x00007f532ed846ef:   mov    %r10,%rbp
   0.01%   │  0x00007f532ed846f2:   imul   %r11,%rbp                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.50%   │  0x00007f532ed846f6:   lea    -0xe(%rdx),%r13d
           │  0x00007f532ed846fa:   movslq %r13d,%r13
           │  0x00007f532ed846fd:   add    %r9,%r13
           │  0x00007f532ed84700:   add    %r13,%rbp
   1.29%   │  0x00007f532ed84703:   lea    0xb(%rbp),%rbp
   0.55%   │  0x00007f532ed84707:   and    %r8,%rbp                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.35%   │  0x00007f532ed8470a:   add    %r10,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.41%   │  0x00007f532ed8470d:   mov    %rbp,%r10
   0.01%   │  0x00007f532ed84710:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.61%   │  0x00007f532ed84714:   lea    -0xf(%rdx),%edx
           │  0x00007f532ed84717:   movslq %edx,%rdx
           │  0x00007f532ed8471a:   add    %rdx,%r10
   1.25%   │  0x00007f532ed8471d:   add    %rbx,%r10
   0.54%   │  0x00007f532ed84720:   and    %r8,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.80%   │  0x00007f532ed84723:   add    %rbp,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.86%   │  0x00007f532ed84726:   lea    0x10(%rsi),%esi
   0.01%   │  0x00007f532ed84729:   cmp    %esi,%edi
           ╰  0x00007f532ed8472b:   jg     0x00007f532ed84580           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
              0x00007f532ed84731:   dec    %r13                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
              0x00007f532ed84734:   cmp    %esi,%ecx
              0x00007f532ed84736:   jg     0x00007f532ed84765           ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
              0x00007f532ed8473c:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {}
                                                                        ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
....................................................................................................
  98.87%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.87%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 1017 
   0.38%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 1017 
   0.12%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 1017 
   0.01%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 1017 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.42%  <...other 708 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.27%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 1017 
   0.61%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __vfprintf_internal 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  fileStream::write 
   0.00%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%           libjvm.so  Unsafe_Park 
   0.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark::cpuBoundWork, version 3, compile id 1110 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%              [vdso]  __vdso_clock_gettime 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.00%           libjvm.so  Parker::park 
   0.00%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.05%  <...other 104 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.27%      jvmci, level 4
   0.61%              kernel
   0.04%           libjvm.so
   0.03%        libc-2.31.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%          ld-2.31.so
   0.00%         interpreter
   0.00%    Unknown, level 0
   0.00%         c1, level 3
   0.00%    perf-3347571.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:53

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

Benchmark                                      (backoffType)  (cpuLoadFactor)  (cpuTokens)  (threadType)  Mode  Cnt  Score   Error  Units
VPThreadCpuBoundBenchmark.cpu_bound_tasks               NONE               16         _1_M       VIRTUAL  avgt    5  4.433 ± 0.158   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm           NONE               16         _1_M       VIRTUAL  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks               NONE               16         _1_M      PLATFORM  avgt    5  4.415 ± 0.111   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm           NONE               16         _1_M      PLATFORM  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks              YIELD               16         _1_M       VIRTUAL  avgt    5  4.426 ± 0.248   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm          YIELD               16         _1_M       VIRTUAL  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks              YIELD               16         _1_M      PLATFORM  avgt    5  4.414 ± 0.145   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm          YIELD               16         _1_M      PLATFORM  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks               PARK               16         _1_M       VIRTUAL  avgt    5  4.844 ± 1.488   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm           PARK               16         _1_M       VIRTUAL  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks               PARK               16         _1_M      PLATFORM  avgt    5  4.480 ± 0.087   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm           PARK               16         _1_M      PLATFORM  avgt         NaN            ---
