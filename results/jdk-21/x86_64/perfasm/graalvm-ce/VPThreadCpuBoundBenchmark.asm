# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
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
# Warmup Iteration   1: 4.559 s/op
# Warmup Iteration   2: 4.413 s/op
# Warmup Iteration   3: 4.341 s/op
# Warmup Iteration   4: 4.324 s/op
# Warmup Iteration   5: 4.348 s/op
Iteration   1: 4.335 s/op
Iteration   2: 4.357 s/op
Iteration   3: 4.413 s/op
Iteration   4: 4.372 s/op
Iteration   5: 4.406 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.377 ±(99.9%) 0.126 s/op [Average]
  (min, avg, max) = (4.335, 4.377, 4.413), stdev = 0.033
  CI (99.9%): [4.250, 4.503] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 247325 total address lines.
Perf output processed (skipped 76.440 seconds):
 Column 1: cycles (387385 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 4, compile id 997 

              0x00007fc7a7247bc0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007fc7a7247bc7:   ja     0x00007fc7a7247d9f
              0x00007fc7a7247bcd:   ret                                 ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
              0x00007fc7a7247bce:   mov    %r8,(%rsp)
              0x00007fc7a7247bd2:   mov    %r10,%r8
              0x00007fc7a7247bd5:   mov    (%rsp),%r10
          ╭   0x00007fc7a7247bd9:   jmp    0x00007fc7a7247d2b
          │   0x00007fc7a7247bde:   xchg   %ax,%ax                      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
   0.00%  │↗  0x00007fc7a7247be0:   mov    %r10,%rcx
          ││  0x00007fc7a7247be3:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.48%  ││  0x00007fc7a7247be7:   add    %r8,%rcx
   1.05%  ││  0x00007fc7a7247bea:   lea    0xb(%rcx),%rcx
   0.78%  ││  0x00007fc7a7247bee:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.16%  ││  0x00007fc7a7247bf1:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.08%  ││  0x00007fc7a7247bf4:   mov    %rcx,%r10
   0.00%  ││  0x00007fc7a7247bf7:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.21%  ││  0x00007fc7a7247bfb:   add    %r8,%r10
   1.12%  ││  0x00007fc7a7247bfe:   lea    0xa(%r10),%r10
   0.68%  ││  0x00007fc7a7247c02:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.54%  ││  0x00007fc7a7247c05:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.43%  ││  0x00007fc7a7247c08:   mov    %r10,%rcx
   0.00%  ││  0x00007fc7a7247c0b:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.46%  ││  0x00007fc7a7247c0f:   add    %r8,%rcx
   1.41%  ││  0x00007fc7a7247c12:   lea    0x9(%rcx),%rcx
   0.35%  ││  0x00007fc7a7247c16:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.03%  ││  0x00007fc7a7247c19:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.97%  ││  0x00007fc7a7247c1c:   mov    %rcx,%r10
   0.00%  ││  0x00007fc7a7247c1f:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.54%  ││  0x00007fc7a7247c23:   add    %r8,%r10
   1.10%  ││  0x00007fc7a7247c26:   lea    0x8(%r10),%r10
   0.69%  ││  0x00007fc7a7247c2a:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.35%  ││  0x00007fc7a7247c2d:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.68%  ││  0x00007fc7a7247c30:   mov    %r10,%rcx
          ││  0x00007fc7a7247c33:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.59%  ││  0x00007fc7a7247c37:   add    %r8,%rcx
   1.12%  ││  0x00007fc7a7247c3a:   lea    0x7(%rcx),%rcx
   0.63%  ││  0x00007fc7a7247c3e:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.14%  ││  0x00007fc7a7247c41:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.13%  ││  0x00007fc7a7247c44:   mov    %rcx,%r10
   0.00%  ││  0x00007fc7a7247c47:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.10%  ││  0x00007fc7a7247c4b:   add    %r8,%r10
   1.03%  ││  0x00007fc7a7247c4e:   lea    0x6(%r10),%r10
   0.79%  ││  0x00007fc7a7247c52:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.33%  ││  0x00007fc7a7247c55:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.69%  ││  0x00007fc7a7247c58:   mov    %r10,%rcx
   0.00%  ││  0x00007fc7a7247c5b:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.38%  ││  0x00007fc7a7247c5f:   add    %r8,%rcx
   1.31%  ││  0x00007fc7a7247c62:   lea    0x5(%rcx),%rcx
   0.52%  ││  0x00007fc7a7247c66:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.34%  ││  0x00007fc7a7247c69:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.80%  ││  0x00007fc7a7247c6c:   mov    %rcx,%r10
   0.00%  ││  0x00007fc7a7247c6f:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.36%  ││  0x00007fc7a7247c73:   add    %r8,%r10
   0.98%  ││  0x00007fc7a7247c76:   lea    0x4(%r10),%r10
   0.86%  ││  0x00007fc7a7247c7a:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.40%  ││  0x00007fc7a7247c7d:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.63%  ││  0x00007fc7a7247c80:   mov    %r10,%rcx
          ││  0x00007fc7a7247c83:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.44%  ││  0x00007fc7a7247c87:   add    %r8,%rcx
   1.35%  ││  0x00007fc7a7247c8a:   lea    0x3(%rcx),%rcx
   0.46%  ││  0x00007fc7a7247c8e:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.34%  ││  0x00007fc7a7247c91:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.74%  ││  0x00007fc7a7247c94:   mov    %rcx,%r10
          ││  0x00007fc7a7247c97:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.36%  ││  0x00007fc7a7247c9b:   add    %r8,%r10
   0.95%  ││  0x00007fc7a7247c9e:   lea    0x2(%r10),%r10
   0.87%  ││  0x00007fc7a7247ca2:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.41%  ││  0x00007fc7a7247ca5:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.69%  ││  0x00007fc7a7247ca8:   mov    %r10,%rcx
          ││  0x00007fc7a7247cab:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.38%  ││  0x00007fc7a7247caf:   add    %r8,%rcx
   1.28%  ││  0x00007fc7a7247cb2:   inc    %rcx
   0.49%  ││  0x00007fc7a7247cb5:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%  ││  0x00007fc7a7247cb8:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.81%  ││  0x00007fc7a7247cbb:   mov    %rcx,%r10
          ││  0x00007fc7a7247cbe:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
          ││                                                            ;   {no_reloc}
   2.35%  ││  0x00007fc7a7247cc2:   add    %r8,%r10
   0.89%  ││  0x00007fc7a7247cc5:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.11%  ││  0x00007fc7a7247cc8:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.21%  ││  0x00007fc7a7247ccb:   mov    %r10,%rcx
          ││  0x00007fc7a7247cce:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.14%  ││  0x00007fc7a7247cd2:   add    %r8,%rcx
   1.12%  ││  0x00007fc7a7247cd5:   dec    %rcx
   0.71%  ││  0x00007fc7a7247cd8:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.25%  ││  0x00007fc7a7247cdb:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.80%  ││  0x00007fc7a7247cde:   mov    %rcx,%r10
          ││  0x00007fc7a7247ce1:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.35%  ││  0x00007fc7a7247ce5:   add    %r8,%r10
   1.13%  ││  0x00007fc7a7247ce8:   lea    -0x2(%r10),%r10
   0.68%  ││  0x00007fc7a7247cec:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%  ││  0x00007fc7a7247cef:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.90%  ││  0x00007fc7a7247cf2:   mov    %r10,%rcx
   0.00%  ││  0x00007fc7a7247cf5:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.27%  ││  0x00007fc7a7247cf9:   add    %r8,%rcx
   1.12%  ││  0x00007fc7a7247cfc:   lea    -0x3(%rcx),%rcx
   0.70%  ││  0x00007fc7a7247d00:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.86%  ││  0x00007fc7a7247d03:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.90%  ││  0x00007fc7a7247d06:   lea    -0xf(%r8),%r10               ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
          ││  0x00007fc7a7247d0a:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {}
          ││                                                            ;*lload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
          ││  0x00007fc7a7247d11:   test   %eax,(%rbx)                  ;   {poll}
          ││  0x00007fc7a7247d13:   lea    -0x10(%r8),%r8               ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
   0.89%  ││  0x00007fc7a7247d17:   mov    %rcx,%rbx
          ││  0x00007fc7a7247d1a:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   1.78%  ││  0x00007fc7a7247d1e:   add    %r10,%rbx
   1.20%  ││  0x00007fc7a7247d21:   lea    0xb(%rbx),%r10
   0.64%  ││  0x00007fc7a7247d25:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.87%  ││  0x00007fc7a7247d28:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.15%  ↘│  0x00007fc7a7247d2b:   cmp    $0x11,%r8
           ╰  0x00007fc7a7247d2f:   jge    0x00007fc7a7247be0
              0x00007fc7a7247d35:   jmp    0x00007fc7a7247d60
              0x00007fc7a7247d3a:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
              0x00007fc7a7247d40:   mov    %r8,%rcx
              0x00007fc7a7247d43:   dec    %rcx                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
              0x00007fc7a7247d46:   mov    %r10,%rbx
              0x00007fc7a7247d49:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  99.44%  <total for region 1>

....[Hottest Regions]...............................................................................
  99.44%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 4, compile id 997 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.36%  <...other 745 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.44%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 4, compile id 997 
   0.42%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  defaultStream::write 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  fileStream::write 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.05%  <...other 108 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.44%      jvmci, level 4
   0.42%              kernel
   0.05%           libjvm.so
   0.04%        libc-2.31.so
   0.03%                    
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%  libpthread-2.31.so
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%    perf-3350507.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = NONE, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = PLATFORM)

# Run progress: 16.67% complete, ETA 00:12:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.504 s/op
# Warmup Iteration   2: 4.435 s/op
# Warmup Iteration   3: 4.350 s/op
# Warmup Iteration   4: 4.325 s/op
# Warmup Iteration   5: 4.341 s/op
Iteration   1: 4.361 s/op
Iteration   2: 4.332 s/op
Iteration   3: 4.399 s/op
Iteration   4: 4.331 s/op
Iteration   5: 4.400 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.365 ±(99.9%) 0.131 s/op [Average]
  (min, avg, max) = (4.331, 4.365, 4.400), stdev = 0.034
  CI (99.9%): [4.234, 4.496] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 241173 total address lines.
Perf output processed (skipped 76.249 seconds):
 Column 1: cycles (387187 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 988 

                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
               0x00007f783b2435ce:   mov    %r8,(%rsp)
               0x00007f783b2435d2:   mov    %r10,%r8
               0x00007f783b2435d5:   mov    (%rsp),%r10
          ╭    0x00007f783b2435d9:   jmp    0x00007f783b24372b
          │    0x00007f783b2435de:   xchg   %ax,%ax                      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
          │↗   0x00007f783b2435e0:   mov    %r10,%rcx
          ││   0x00007f783b2435e3:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.48%  ││   0x00007f783b2435e7:   add    %r8,%rcx
   1.07%  ││   0x00007f783b2435ea:   lea    0xb(%rcx),%rcx
   0.72%  ││   0x00007f783b2435ee:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%  ││   0x00007f783b2435f1:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.81%  ││   0x00007f783b2435f4:   mov    %rcx,%r10
          ││   0x00007f783b2435f7:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.34%  ││   0x00007f783b2435fb:   add    %r8,%r10
   1.02%  ││   0x00007f783b2435fe:   lea    0xa(%r10),%r10
   0.78%  ││   0x00007f783b243602:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.38%  ││   0x00007f783b243605:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.74%  ││   0x00007f783b243608:   mov    %r10,%rcx
   0.00%  ││   0x00007f783b24360b:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.33%  ││   0x00007f783b24360f:   add    %r8,%rcx
   1.34%  ││   0x00007f783b243612:   lea    0x9(%rcx),%rcx
   0.50%  ││   0x00007f783b243616:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.15%  ││   0x00007f783b243619:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.76%  ││   0x00007f783b24361c:   mov    %rcx,%r10
   0.00%  ││   0x00007f783b24361f:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.54%  ││   0x00007f783b243623:   add    %r8,%r10
   1.19%  ││   0x00007f783b243626:   lea    0x8(%r10),%r10
   0.64%  ││   0x00007f783b24362a:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.25%  ││   0x00007f783b24362d:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.63%  ││   0x00007f783b243630:   mov    %r10,%rcx
          ││   0x00007f783b243633:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.60%  ││   0x00007f783b243637:   add    %r8,%rcx
   1.14%  ││   0x00007f783b24363a:   lea    0x7(%rcx),%rcx
   0.56%  ││   0x00007f783b24363e:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.22%  ││   0x00007f783b243641:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.96%  ││   0x00007f783b243644:   mov    %rcx,%r10
          ││   0x00007f783b243647:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.33%  ││   0x00007f783b24364b:   add    %r8,%r10
   1.13%  ││   0x00007f783b24364e:   lea    0x6(%r10),%r10
   0.63%  ││   0x00007f783b243652:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.31%  ││   0x00007f783b243655:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.72%  ││   0x00007f783b243658:   mov    %r10,%rcx
   0.00%  ││   0x00007f783b24365b:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.40%  ││   0x00007f783b24365f:   add    %r8,%rcx
   1.12%  ││   0x00007f783b243662:   lea    0x5(%rcx),%rcx
   0.65%  ││   0x00007f783b243666:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.41%  ││   0x00007f783b243669:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.66%  ││   0x00007f783b24366c:   mov    %rcx,%r10
          ││   0x00007f783b24366f:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.40%  ││   0x00007f783b243673:   add    %r8,%r10
   1.09%  ││   0x00007f783b243676:   lea    0x4(%r10),%r10
   0.72%  ││   0x00007f783b24367a:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.35%  ││   0x00007f783b24367d:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.78%  ││   0x00007f783b243680:   mov    %r10,%rcx
          ││   0x00007f783b243683:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.33%  ││   0x00007f783b243687:   add    %r8,%rcx
   1.22%  ││   0x00007f783b24368a:   lea    0x3(%rcx),%rcx
   0.61%  ││   0x00007f783b24368e:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.42%  ││   0x00007f783b243691:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.67%  ││   0x00007f783b243694:   mov    %rcx,%r10
          ││   0x00007f783b243697:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.40%  ││   0x00007f783b24369b:   add    %r8,%r10
   1.07%  ││   0x00007f783b24369e:   lea    0x2(%r10),%r10
   0.73%  ││   0x00007f783b2436a2:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.33%  ││   0x00007f783b2436a5:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.78%  ││   0x00007f783b2436a8:   mov    %r10,%rcx
          ││   0x00007f783b2436ab:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.36%  ││   0x00007f783b2436af:   add    %r8,%rcx
   1.16%  ││   0x00007f783b2436b2:   inc    %rcx
   0.64%  ││   0x00007f783b2436b5:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.43%  ││   0x00007f783b2436b8:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.68%  ││   0x00007f783b2436bb:   mov    %rcx,%r10
          ││   0x00007f783b2436be:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
          ││                                                             ;   {no_reloc}
   2.38%  ││   0x00007f783b2436c2:   add    %r8,%r10
   0.88%  ││   0x00007f783b2436c5:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.17%  ││   0x00007f783b2436c8:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.01%  ││   0x00007f783b2436cb:   mov    %r10,%rcx
          ││   0x00007f783b2436ce:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.27%  ││   0x00007f783b2436d2:   add    %r8,%rcx
   1.20%  ││   0x00007f783b2436d5:   dec    %rcx
   0.62%  ││   0x00007f783b2436d8:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.25%  ││   0x00007f783b2436db:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.87%  ││   0x00007f783b2436de:   mov    %rcx,%r10
   0.00%  ││   0x00007f783b2436e1:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.39%  ││   0x00007f783b2436e5:   add    %r8,%r10
   1.07%  ││   0x00007f783b2436e8:   lea    -0x2(%r10),%r10
   0.74%  ││   0x00007f783b2436ec:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.22%  ││   0x00007f783b2436ef:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.88%  ││   0x00007f783b2436f2:   mov    %r10,%rcx
   0.00%  ││   0x00007f783b2436f5:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.32%  ││   0x00007f783b2436f9:   add    %r8,%rcx
   1.19%  ││   0x00007f783b2436fc:   lea    -0x3(%rcx),%rcx
   0.64%  ││   0x00007f783b243700:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.88%  ││   0x00007f783b243703:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.89%  ││   0x00007f783b243706:   lea    -0xf(%r8),%r10               ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
          ││   0x00007f783b24370a:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {}
          ││                                                             ;*lload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                             ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
          ││   0x00007f783b243711:   test   %eax,(%rbx)                  ;   {poll}
          ││   0x00007f783b243713:   lea    -0x10(%r8),%r8               ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
   0.91%  ││   0x00007f783b243717:   mov    %rcx,%rbx
   0.00%  ││   0x00007f783b24371a:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   1.80%  ││   0x00007f783b24371e:   add    %r10,%rbx
   1.14%  ││   0x00007f783b243721:   lea    0xb(%rbx),%r10
   0.71%  ││   0x00007f783b243725:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.86%  ││   0x00007f783b243728:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.14%  ↘│   0x00007f783b24372b:   cmp    $0x11,%r8
           ╰   0x00007f783b24372f:   jge    0x00007f783b2435e0
            ╭  0x00007f783b243735:   jmp    0x00007f783b243760
            │  0x00007f783b24373a:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
   0.00%    │  0x00007f783b243740:   mov    %r8,%rcx
            │  0x00007f783b243743:   dec    %rcx                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
            │  0x00007f783b243746:   mov    %r10,%rbx
            │  0x00007f783b243749:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   0.00%    │  0x00007f783b24374d:   add    %r8,%rbx
   0.00%    │  0x00007f783b243750:   lea    0xb(%rbx),%r8
            │  0x00007f783b243754:   and    %r9,%r8                      ;*land {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
            │  0x00007f783b243757:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
            │  0x00007f783b24375a:   mov    %r8,%r10
            │  0x00007f783b24375d:   mov    %rcx,%r8                     ;*lload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
            ↘  0x00007f783b243760:   cmp    $0x1,%r8
               0x00007f783b243764:   jl     0x00007f783b2435ab
               0x00007f783b24376a:   jmp    0x00007f783b243740           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  99.41%  <total for region 1>

....[Hottest Regions]...............................................................................
  99.41%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 988 
   0.07%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
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
   0.00%         libc-2.31.so  syscall 
   0.00%               kernel  [unknown] 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.35%  <...other 682 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.41%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 988 
   0.46%               kernel  [unknown] 
   0.01%                       <unknown> 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  defaultStream::write 
   0.00%         libc-2.31.so  _IO_fwrite 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%         libc-2.31.so  syscall 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%            libjvm.so  defaultStream::hold 
   0.00%         libc-2.31.so  __strchr_avx2 
   0.00%            libjvm.so  fileStream::write 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           ld-2.31.so  __tls_get_addr 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%         libc-2.31.so  __stpcpy_avx2 
   0.00%            libjvm.so  outputStream::print 
   0.07%  <...other 164 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.41%       jvmci, level 4
   0.46%               kernel
   0.04%            libjvm.so
   0.04%         libc-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%                     
   0.01%       hsdis-amd64.so
   0.00%   libpthread-2.31.so
   0.00%           ld-2.31.so
   0.00%          interpreter
   0.00%          c1, level 3
   0.00%     perf-3350582.map
   0.00%           libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = YIELD, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = VIRTUAL)

# Run progress: 33.33% complete, ETA 00:09:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.817 s/op
# Warmup Iteration   2: 4.487 s/op
# Warmup Iteration   3: 4.345 s/op
# Warmup Iteration   4: 4.357 s/op
# Warmup Iteration   5: 4.345 s/op
Iteration   1: 4.314 s/op
Iteration   2: 4.364 s/op
Iteration   3: 4.384 s/op
Iteration   4: 4.322 s/op
Iteration   5: 4.400 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.357 ±(99.9%) 0.146 s/op [Average]
  (min, avg, max) = (4.314, 4.357, 4.400), stdev = 0.038
  CI (99.9%): [4.211, 4.502] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 273390 total address lines.
Perf output processed (skipped 77.614 seconds):
 Column 1: cycles (387013 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 987 

                                                                          ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
                0x00007f9a6f242fce:   mov    %r8,(%rsp)
                0x00007f9a6f242fd2:   mov    %r10,%r8
                0x00007f9a6f242fd5:   mov    (%rsp),%r10
          ╭     0x00007f9a6f242fd9:   jmp    0x00007f9a6f24312b
          │     0x00007f9a6f242fde:   xchg   %ax,%ax                      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
          │↗    0x00007f9a6f242fe0:   mov    %r10,%rcx
          ││    0x00007f9a6f242fe3:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.44%  ││    0x00007f9a6f242fe7:   add    %r8,%rcx
   0.99%  ││    0x00007f9a6f242fea:   lea    0xb(%rcx),%rcx
   0.83%  ││    0x00007f9a6f242fee:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.14%  ││    0x00007f9a6f242ff1:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.15%  ││    0x00007f9a6f242ff4:   mov    %rcx,%r10
          ││    0x00007f9a6f242ff7:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.23%  ││    0x00007f9a6f242ffb:   add    %r8,%r10
   1.11%  ││    0x00007f9a6f242ffe:   lea    0xa(%r10),%r10
   0.72%  ││    0x00007f9a6f243002:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.53%  ││    0x00007f9a6f243005:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.49%  ││    0x00007f9a6f243008:   mov    %r10,%rcx
   0.00%  ││    0x00007f9a6f24300b:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.50%  ││    0x00007f9a6f24300f:   add    %r8,%rcx
   1.46%  ││    0x00007f9a6f243012:   lea    0x9(%rcx),%rcx
   0.32%  ││    0x00007f9a6f243016:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.98%  ││    0x00007f9a6f243019:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.01%  ││    0x00007f9a6f24301c:   mov    %rcx,%r10
   0.00%  ││    0x00007f9a6f24301f:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.50%  ││    0x00007f9a6f243023:   add    %r8,%r10
   1.04%  ││    0x00007f9a6f243026:   lea    0x8(%r10),%r10
   0.78%  ││    0x00007f9a6f24302a:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%  ││    0x00007f9a6f24302d:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.77%  ││    0x00007f9a6f243030:   mov    %r10,%rcx
          ││    0x00007f9a6f243033:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.55%  ││    0x00007f9a6f243037:   add    %r8,%rcx
   1.10%  ││    0x00007f9a6f24303a:   lea    0x7(%rcx),%rcx
   0.60%  ││    0x00007f9a6f24303e:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.14%  ││    0x00007f9a6f243041:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.10%  ││    0x00007f9a6f243044:   mov    %rcx,%r10
          ││    0x00007f9a6f243047:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.10%  ││    0x00007f9a6f24304b:   add    %r8,%r10
   1.05%  ││    0x00007f9a6f24304e:   lea    0x6(%r10),%r10
   0.76%  ││    0x00007f9a6f243052:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.41%  ││    0x00007f9a6f243055:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.62%  ││    0x00007f9a6f243058:   mov    %r10,%rcx
   0.00%  ││    0x00007f9a6f24305b:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.40%  ││    0x00007f9a6f24305f:   add    %r8,%rcx
   1.28%  ││    0x00007f9a6f243062:   lea    0x5(%rcx),%rcx
   0.51%  ││    0x00007f9a6f243066:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%  ││    0x00007f9a6f243069:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.87%  ││    0x00007f9a6f24306c:   mov    %rcx,%r10
          ││    0x00007f9a6f24306f:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.33%  ││    0x00007f9a6f243073:   add    %r8,%r10
   0.98%  ││    0x00007f9a6f243076:   lea    0x4(%r10),%r10
   0.82%  ││    0x00007f9a6f24307a:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.46%  ││    0x00007f9a6f24307d:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.58%  ││    0x00007f9a6f243080:   mov    %r10,%rcx
          ││    0x00007f9a6f243083:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.46%  ││    0x00007f9a6f243087:   add    %r8,%rcx
   1.30%  ││    0x00007f9a6f24308a:   lea    0x3(%rcx),%rcx
   0.45%  ││    0x00007f9a6f24308e:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%  ││    0x00007f9a6f243091:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.83%  ││    0x00007f9a6f243094:   mov    %rcx,%r10
          ││    0x00007f9a6f243097:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.31%  ││    0x00007f9a6f24309b:   add    %r8,%r10
   0.97%  ││    0x00007f9a6f24309e:   lea    0x2(%r10),%r10
   0.86%  ││    0x00007f9a6f2430a2:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.47%  ││    0x00007f9a6f2430a5:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.58%  ││    0x00007f9a6f2430a8:   mov    %r10,%rcx
          ││    0x00007f9a6f2430ab:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.45%  ││    0x00007f9a6f2430af:   add    %r8,%rcx
   1.32%  ││    0x00007f9a6f2430b2:   inc    %rcx
   0.50%  ││    0x00007f9a6f2430b5:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.27%  ││    0x00007f9a6f2430b8:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.87%  ││    0x00007f9a6f2430bb:   mov    %rcx,%r10
          ││    0x00007f9a6f2430be:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
          ││                                                              ;   {no_reloc}
   2.26%  ││    0x00007f9a6f2430c2:   add    %r8,%r10
   0.91%  ││    0x00007f9a6f2430c5:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.99%  ││    0x00007f9a6f2430c8:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.36%  ││    0x00007f9a6f2430cb:   mov    %r10,%rcx
          ││    0x00007f9a6f2430ce:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.10%  ││    0x00007f9a6f2430d2:   add    %r8,%rcx
   1.07%  ││    0x00007f9a6f2430d5:   dec    %rcx
   0.78%  ││    0x00007f9a6f2430d8:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.22%  ││    0x00007f9a6f2430db:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.83%  ││    0x00007f9a6f2430de:   mov    %rcx,%r10
          ││    0x00007f9a6f2430e1:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.43%  ││    0x00007f9a6f2430e5:   add    %r8,%r10
   1.18%  ││    0x00007f9a6f2430e8:   lea    -0x2(%r10),%r10
   0.63%  ││    0x00007f9a6f2430ec:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.25%  ││    0x00007f9a6f2430ef:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.91%  ││    0x00007f9a6f2430f2:   mov    %r10,%rcx
   0.00%  ││    0x00007f9a6f2430f5:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.30%  ││    0x00007f9a6f2430f9:   add    %r8,%rcx
   1.02%  ││    0x00007f9a6f2430fc:   lea    -0x3(%rcx),%rcx
   0.78%  ││    0x00007f9a6f243100:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.87%  ││    0x00007f9a6f243103:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.90%  ││    0x00007f9a6f243106:   lea    -0xf(%r8),%r10               ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
          ││    0x00007f9a6f24310a:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {}
          ││                                                              ;*lload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
          ││    0x00007f9a6f243111:   test   %eax,(%rbx)                  ;   {poll}
          ││    0x00007f9a6f243113:   lea    -0x10(%r8),%r8               ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
   0.92%  ││    0x00007f9a6f243117:   mov    %rcx,%rbx
          ││    0x00007f9a6f24311a:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   1.83%  ││    0x00007f9a6f24311e:   add    %r10,%rbx
   1.18%  ││    0x00007f9a6f243121:   lea    0xb(%rbx),%r10
   0.61%  ││    0x00007f9a6f243125:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.89%  ││    0x00007f9a6f243128:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.13%  ↘│    0x00007f9a6f24312b:   cmp    $0x11,%r8
           ╰    0x00007f9a6f24312f:   jge    0x00007f9a6f242fe0
            ╭   0x00007f9a6f243135:   jmp    0x00007f9a6f243160
            │   0x00007f9a6f24313a:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
   0.00%    │↗  0x00007f9a6f243140:   mov    %r8,%rcx
   0.00%    ││  0x00007f9a6f243143:   dec    %rcx                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
            ││  0x00007f9a6f243146:   mov    %r10,%rbx
            ││  0x00007f9a6f243149:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   0.00%    ││  0x00007f9a6f24314d:   add    %r8,%rbx
   0.00%    ││  0x00007f9a6f243150:   lea    0xb(%rbx),%r8
            ││  0x00007f9a6f243154:   and    %r9,%r8                      ;*land {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.00%    ││  0x00007f9a6f243157:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
            ││  0x00007f9a6f24315a:   mov    %r8,%r10
            ││  0x00007f9a6f24315d:   mov    %rcx,%r8                     ;*lload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
            ↘│  0x00007f9a6f243160:   cmp    $0x1,%r8
             │  0x00007f9a6f243164:   jl     0x00007f9a6f242fab
             ╰  0x00007f9a6f24316a:   jmp    0x00007f9a6f243140           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
                0x00007f9a6f24316c:   movl   $0xffffffed,0x484(%r15)      ;*ifne {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  99.54%  <total for region 1>

....[Hottest Regions]...............................................................................
  99.54%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 987 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%              kernel  [unknown] 
   0.33%  <...other 667 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.54%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 987 
   0.32%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%      jvmci, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 1084 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%      jvmci, level 4  java.lang.VirtualThread::afterYield, version 2, compile id 1110 
   0.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark::cpuBoundWork, version 3, compile id 1198 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%      jvmci, level 4  java.lang.VirtualThread::runContinuation, version 4, compile id 1115 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  stringStream::write 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  fileStream::write 
   0.00%           libjvm.so  RelocIterator::initialize 
   0.06%  <...other 124 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.55%      jvmci, level 4
   0.32%              kernel
   0.04%           libjvm.so
   0.03%        libc-2.31.so
   0.03%                    
   0.01%      hsdis-amd64.so
   0.00%  libpthread-2.31.so
   0.00%          ld-2.31.so
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%    Unknown, level 0
   0.00%        runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = YIELD, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = PLATFORM)

# Run progress: 50.00% complete, ETA 00:07:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.532 s/op
# Warmup Iteration   2: 4.481 s/op
# Warmup Iteration   3: 4.346 s/op
# Warmup Iteration   4: 4.322 s/op
# Warmup Iteration   5: 4.343 s/op
Iteration   1: 4.327 s/op
Iteration   2: 4.338 s/op
Iteration   3: 4.394 s/op
Iteration   4: 4.330 s/op
Iteration   5: 4.392 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.356 ±(99.9%) 0.130 s/op [Average]
  (min, avg, max) = (4.327, 4.356, 4.394), stdev = 0.034
  CI (99.9%): [4.227, 4.486] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 237701 total address lines.
Perf output processed (skipped 76.426 seconds):
 Column 1: cycles (387036 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 975 

                                                                          ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
                0x00007fa2cf24064e:   mov    %r8,(%rsp)
                0x00007fa2cf240652:   mov    %r10,%r8
                0x00007fa2cf240655:   mov    (%rsp),%r10
          ╭     0x00007fa2cf240659:   jmp    0x00007fa2cf2407ab
          │     0x00007fa2cf24065e:   xchg   %ax,%ax                      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
          │↗    0x00007fa2cf240660:   mov    %r10,%rcx
          ││    0x00007fa2cf240663:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.42%  ││    0x00007fa2cf240667:   add    %r8,%rcx
   1.03%  ││    0x00007fa2cf24066a:   lea    0xb(%rcx),%rcx
   0.76%  ││    0x00007fa2cf24066e:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.30%  ││    0x00007fa2cf240671:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.95%  ││    0x00007fa2cf240674:   mov    %rcx,%r10
   0.00%  ││    0x00007fa2cf240677:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.31%  ││    0x00007fa2cf24067b:   add    %r8,%r10
   1.04%  ││    0x00007fa2cf24067e:   lea    0xa(%r10),%r10
   0.75%  ││    0x00007fa2cf240682:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.40%  ││    0x00007fa2cf240685:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.70%  ││    0x00007fa2cf240688:   mov    %r10,%rcx
   0.00%  ││    0x00007fa2cf24068b:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.34%  ││    0x00007fa2cf24068f:   add    %r8,%rcx
   1.39%  ││    0x00007fa2cf240692:   lea    0x9(%rcx),%rcx
   0.40%  ││    0x00007fa2cf240696:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.05%  ││    0x00007fa2cf240699:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.88%  ││    0x00007fa2cf24069c:   mov    %rcx,%r10
   0.00%  ││    0x00007fa2cf24069f:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.57%  ││    0x00007fa2cf2406a3:   add    %r8,%r10
   1.11%  ││    0x00007fa2cf2406a6:   lea    0x8(%r10),%r10
   0.73%  ││    0x00007fa2cf2406aa:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%  ││    0x00007fa2cf2406ad:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.68%  ││    0x00007fa2cf2406b0:   mov    %r10,%rcx
   0.00%  ││    0x00007fa2cf2406b3:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.65%  ││    0x00007fa2cf2406b7:   add    %r8,%rcx
   1.14%  ││    0x00007fa2cf2406ba:   lea    0x7(%rcx),%rcx
   0.55%  ││    0x00007fa2cf2406be:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.20%  ││    0x00007fa2cf2406c1:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.98%  ││    0x00007fa2cf2406c4:   mov    %rcx,%r10
          ││    0x00007fa2cf2406c7:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.24%  ││    0x00007fa2cf2406cb:   add    %r8,%r10
   1.10%  ││    0x00007fa2cf2406ce:   lea    0x6(%r10),%r10
   0.68%  ││    0x00007fa2cf2406d2:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.36%  ││    0x00007fa2cf2406d5:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.67%  ││    0x00007fa2cf2406d8:   mov    %r10,%rcx
          ││    0x00007fa2cf2406db:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.45%  ││    0x00007fa2cf2406df:   add    %r8,%rcx
   1.21%  ││    0x00007fa2cf2406e2:   lea    0x5(%rcx),%rcx
   0.62%  ││    0x00007fa2cf2406e6:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.36%  ││    0x00007fa2cf2406e9:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.72%  ││    0x00007fa2cf2406ec:   mov    %rcx,%r10
          ││    0x00007fa2cf2406ef:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.36%  ││    0x00007fa2cf2406f3:   add    %r8,%r10
   1.06%  ││    0x00007fa2cf2406f6:   lea    0x4(%r10),%r10
   0.74%  ││    0x00007fa2cf2406fa:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.39%  ││    0x00007fa2cf2406fd:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.71%  ││    0x00007fa2cf240700:   mov    %r10,%rcx
          ││    0x00007fa2cf240703:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.35%  ││    0x00007fa2cf240707:   add    %r8,%rcx
   1.20%  ││    0x00007fa2cf24070a:   lea    0x3(%rcx),%rcx
   0.55%  ││    0x00007fa2cf24070e:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.37%  ││    0x00007fa2cf240711:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.78%  ││    0x00007fa2cf240714:   mov    %rcx,%r10
          ││    0x00007fa2cf240717:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.41%  ││    0x00007fa2cf24071b:   add    %r8,%r10
   1.07%  ││    0x00007fa2cf24071e:   lea    0x2(%r10),%r10
   0.75%  ││    0x00007fa2cf240722:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.36%  ││    0x00007fa2cf240725:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.69%  ││    0x00007fa2cf240728:   mov    %r10,%rcx
          ││    0x00007fa2cf24072b:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.40%  ││    0x00007fa2cf24072f:   add    %r8,%rcx
   1.22%  ││    0x00007fa2cf240732:   inc    %rcx
   0.60%  ││    0x00007fa2cf240735:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.35%  ││    0x00007fa2cf240738:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.77%  ││    0x00007fa2cf24073b:   mov    %rcx,%r10
          ││    0x00007fa2cf24073e:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
          ││                                                              ;   {no_reloc}
   2.36%  ││    0x00007fa2cf240742:   add    %r8,%r10
   0.91%  ││    0x00007fa2cf240745:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.11%  ││    0x00007fa2cf240748:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.18%  ││    0x00007fa2cf24074b:   mov    %r10,%rcx
          ││    0x00007fa2cf24074e:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.20%  ││    0x00007fa2cf240752:   add    %r8,%rcx
   1.13%  ││    0x00007fa2cf240755:   dec    %rcx
   0.70%  ││    0x00007fa2cf240758:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.23%  ││    0x00007fa2cf24075b:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.85%  ││    0x00007fa2cf24075e:   mov    %rcx,%r10
   0.00%  ││    0x00007fa2cf240761:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.35%  ││    0x00007fa2cf240765:   add    %r8,%r10
   1.12%  ││    0x00007fa2cf240768:   lea    -0x2(%r10),%r10
   0.68%  ││    0x00007fa2cf24076c:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.21%  ││    0x00007fa2cf24076f:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.91%  ││    0x00007fa2cf240772:   mov    %r10,%rcx
   0.00%  ││    0x00007fa2cf240775:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.34%  ││    0x00007fa2cf240779:   add    %r8,%rcx
   1.08%  ││    0x00007fa2cf24077c:   lea    -0x3(%rcx),%rcx
   0.73%  ││    0x00007fa2cf240780:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.88%  ││    0x00007fa2cf240783:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.89%  ││    0x00007fa2cf240786:   lea    -0xf(%r8),%r10               ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
   0.00%  ││    0x00007fa2cf24078a:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {}
          ││                                                              ;*lload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
   0.00%  ││    0x00007fa2cf240791:   test   %eax,(%rbx)                  ;   {poll}
          ││    0x00007fa2cf240793:   lea    -0x10(%r8),%r8               ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
   0.92%  ││    0x00007fa2cf240797:   mov    %rcx,%rbx
          ││    0x00007fa2cf24079a:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   1.82%  ││    0x00007fa2cf24079e:   add    %r10,%rbx
   1.14%  ││    0x00007fa2cf2407a1:   lea    0xb(%rbx),%r10
   0.64%  ││    0x00007fa2cf2407a5:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.87%  ││    0x00007fa2cf2407a8:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.13%  ↘│    0x00007fa2cf2407ab:   cmp    $0x11,%r8
           ╰    0x00007fa2cf2407af:   jge    0x00007fa2cf240660
            ╭   0x00007fa2cf2407b5:   jmp    0x00007fa2cf2407e0
            │   0x00007fa2cf2407ba:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
   0.00%    │↗  0x00007fa2cf2407c0:   mov    %r8,%rcx
            ││  0x00007fa2cf2407c3:   dec    %rcx                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
            ││  0x00007fa2cf2407c6:   mov    %r10,%rbx
            ││  0x00007fa2cf2407c9:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   0.00%    ││  0x00007fa2cf2407cd:   add    %r8,%rbx
            ││  0x00007fa2cf2407d0:   lea    0xb(%rbx),%r8
   0.00%    ││  0x00007fa2cf2407d4:   and    %r9,%r8                      ;*land {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.00%    ││  0x00007fa2cf2407d7:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
            ││  0x00007fa2cf2407da:   mov    %r8,%r10
            ││  0x00007fa2cf2407dd:   mov    %rcx,%r8                     ;*lload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
            ↘│  0x00007fa2cf2407e0:   cmp    $0x1,%r8
             │  0x00007fa2cf2407e4:   jl     0x00007fa2cf24062b
             ╰  0x00007fa2cf2407ea:   jmp    0x00007fa2cf2407c0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
                0x00007fa2cf2407ec:   movl   $0xffffffed,0x484(%r15)      ;*ifne {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  99.48%  <total for region 1>

....[Hottest Regions]...............................................................................
  99.48%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 975 
   0.07%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.00%               kernel  [unknown] 
   0.29%  <...other 608 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.48%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 3, compile id 975 
   0.42%               kernel  [unknown] 
   0.01%                       <unknown> 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%           ld-2.31.so  __tls_get_addr 
   0.00%            libjvm.so  defaultStream::write 
   0.00%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  _IO_fwrite 
   0.00%         libc-2.31.so  __strlen_avx2 
   0.00%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%         libc-2.31.so  __strchr_avx2 
   0.00%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%         libc-2.31.so  __strchrnul_avx2 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%         libc-2.31.so  __sched_yield 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.05%  <...other 151 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.49%       jvmci, level 4
   0.42%               kernel
   0.03%            libjvm.so
   0.03%         libc-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%                     
   0.00%       hsdis-amd64.so
   0.00%           ld-2.31.so
   0.00%   libpthread-2.31.so
   0.00%          interpreter
   0.00%     Unknown, level 0
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = PARK, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = VIRTUAL)

# Run progress: 66.67% complete, ETA 00:04:57
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.056 s/op
# Warmup Iteration   2: 4.689 s/op
# Warmup Iteration   3: 4.533 s/op
# Warmup Iteration   4: 4.447 s/op
# Warmup Iteration   5: 4.417 s/op
Iteration   1: 4.850 s/op
Iteration   2: 4.450 s/op
Iteration   3: 4.427 s/op
Iteration   4: 4.408 s/op
Iteration   5: 4.413 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.510 ±(99.9%) 0.736 s/op [Average]
  (min, avg, max) = (4.408, 4.510, 4.850), stdev = 0.191
  CI (99.9%): [3.774, 5.246] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 340829 total address lines.
Perf output processed (skipped 76.998 seconds):
 Column 1: cycles (390397 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1009 

               0x00007fce17248640:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007fce17248647:   ja     0x00007fce1724881f
               0x00007fce1724864d:   ret                                 ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
               0x00007fce1724864e:   mov    %r8,(%rsp)
               0x00007fce17248652:   mov    %r10,%r8
               0x00007fce17248655:   mov    (%rsp),%r10
          ╭    0x00007fce17248659:   jmp    0x00007fce172487ab
          │    0x00007fce1724865e:   xchg   %ax,%ax                      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
   0.00%  │↗   0x00007fce17248660:   mov    %r10,%rcx
          ││   0x00007fce17248663:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.45%  ││   0x00007fce17248667:   add    %r8,%rcx
   0.94%  ││   0x00007fce1724866a:   lea    0xb(%rcx),%rcx
   0.80%  ││   0x00007fce1724866e:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.19%  ││   0x00007fce17248671:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.07%  ││   0x00007fce17248674:   mov    %rcx,%r10
          ││   0x00007fce17248677:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.22%  ││   0x00007fce1724867b:   add    %r8,%r10
   1.07%  ││   0x00007fce1724867e:   lea    0xa(%r10),%r10
   0.67%  ││   0x00007fce17248682:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.47%  ││   0x00007fce17248685:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.56%  ││   0x00007fce17248688:   mov    %r10,%rcx
          ││   0x00007fce1724868b:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.36%  ││   0x00007fce1724868f:   add    %r8,%rcx
   1.49%  ││   0x00007fce17248692:   lea    0x9(%rcx),%rcx
   0.33%  ││   0x00007fce17248696:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.00%  ││   0x00007fce17248699:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.95%  ││   0x00007fce1724869c:   mov    %rcx,%r10
   0.00%  ││   0x00007fce1724869f:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.53%  ││   0x00007fce172486a3:   add    %r8,%r10
   1.01%  ││   0x00007fce172486a6:   lea    0x8(%r10),%r10
   0.76%  ││   0x00007fce172486aa:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.30%  ││   0x00007fce172486ad:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.74%  ││   0x00007fce172486b0:   mov    %r10,%rcx
          ││   0x00007fce172486b3:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.56%  ││   0x00007fce172486b7:   add    %r8,%rcx
   1.13%  ││   0x00007fce172486ba:   lea    0x7(%rcx),%rcx
   0.58%  ││   0x00007fce172486be:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.22%  ││   0x00007fce172486c1:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.07%  ││   0x00007fce172486c4:   mov    %rcx,%r10
   0.00%  ││   0x00007fce172486c7:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.19%  ││   0x00007fce172486cb:   add    %r8,%r10
   1.03%  ││   0x00007fce172486ce:   lea    0x6(%r10),%r10
   0.71%  ││   0x00007fce172486d2:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.41%  ││   0x00007fce172486d5:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.64%  ││   0x00007fce172486d8:   mov    %r10,%rcx
   0.00%  ││   0x00007fce172486db:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.37%  ││   0x00007fce172486df:   add    %r8,%rcx
   1.25%  ││   0x00007fce172486e2:   lea    0x5(%rcx),%rcx
   0.54%  ││   0x00007fce172486e6:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.30%  ││   0x00007fce172486e9:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.85%  ││   0x00007fce172486ec:   mov    %rcx,%r10
   0.00%  ││   0x00007fce172486ef:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.29%  ││   0x00007fce172486f3:   add    %r8,%r10
   1.00%  ││   0x00007fce172486f6:   lea    0x4(%r10),%r10
   0.78%  ││   0x00007fce172486fa:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.44%  ││   0x00007fce172486fd:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.60%  ││   0x00007fce17248700:   mov    %r10,%rcx
          ││   0x00007fce17248703:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.39%  ││   0x00007fce17248707:   add    %r8,%rcx
   1.30%  ││   0x00007fce1724870a:   lea    0x3(%rcx),%rcx
   0.48%  ││   0x00007fce1724870e:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.32%  ││   0x00007fce17248711:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.82%  ││   0x00007fce17248714:   mov    %rcx,%r10
          ││   0x00007fce17248717:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.32%  ││   0x00007fce1724871b:   add    %r8,%r10
   0.97%  ││   0x00007fce1724871e:   lea    0x2(%r10),%r10
   0.82%  ││   0x00007fce17248722:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.43%  ││   0x00007fce17248725:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.63%  ││   0x00007fce17248728:   mov    %r10,%rcx
          ││   0x00007fce1724872b:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.42%  ││   0x00007fce1724872f:   add    %r8,%rcx
   1.28%  ││   0x00007fce17248732:   inc    %rcx
   0.53%  ││   0x00007fce17248735:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.29%  ││   0x00007fce17248738:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.87%  ││   0x00007fce1724873b:   mov    %rcx,%r10
          ││   0x00007fce1724873e:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
          ││                                                             ;   {no_reloc}
   2.28%  ││   0x00007fce17248742:   add    %r8,%r10
   0.87%  ││   0x00007fce17248745:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.06%  ││   0x00007fce17248748:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.30%  ││   0x00007fce1724874b:   mov    %r10,%rcx
          ││   0x00007fce1724874e:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.09%  ││   0x00007fce17248752:   add    %r8,%rcx
   1.07%  ││   0x00007fce17248755:   dec    %rcx
   0.73%  ││   0x00007fce17248758:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.20%  ││   0x00007fce1724875b:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.83%  ││   0x00007fce1724875e:   mov    %rcx,%r10
          ││   0x00007fce17248761:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.36%  ││   0x00007fce17248765:   add    %r8,%r10
   1.13%  ││   0x00007fce17248768:   lea    -0x2(%r10),%r10
   0.63%  ││   0x00007fce1724876c:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.17%  ││   0x00007fce1724876f:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.98%  ││   0x00007fce17248772:   mov    %r10,%rcx
          ││   0x00007fce17248775:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.25%  ││   0x00007fce17248779:   add    %r8,%rcx
   1.03%  ││   0x00007fce1724877c:   lea    -0x3(%rcx),%rcx
   0.77%  ││   0x00007fce17248780:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.87%  ││   0x00007fce17248783:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.89%  ││   0x00007fce17248786:   lea    -0xf(%r8),%r10               ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
          ││   0x00007fce1724878a:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {}
          ││                                                             ;*lload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                             ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
          ││   0x00007fce17248791:   test   %eax,(%rbx)                  ;   {poll}
          ││   0x00007fce17248793:   lea    -0x10(%r8),%r8               ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
   0.92%  ││   0x00007fce17248797:   mov    %rcx,%rbx
          ││   0x00007fce1724879a:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   1.80%  ││   0x00007fce1724879e:   add    %r10,%rbx
   1.17%  ││   0x00007fce172487a1:   lea    0xb(%rbx),%r10
   0.61%  ││   0x00007fce172487a5:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.89%  ││   0x00007fce172487a8:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.15%  ↘│   0x00007fce172487ab:   cmp    $0x11,%r8
           ╰   0x00007fce172487af:   jge    0x00007fce17248660
            ╭  0x00007fce172487b5:   jmp    0x00007fce172487e0
            │  0x00007fce172487ba:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
   0.00%    │  0x00007fce172487c0:   mov    %r8,%rcx
            │  0x00007fce172487c3:   dec    %rcx                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
            │  0x00007fce172487c6:   mov    %r10,%rbx
            │  0x00007fce172487c9:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   0.00%    │  0x00007fce172487cd:   add    %r8,%rbx
   0.00%    │  0x00007fce172487d0:   lea    0xb(%rbx),%r8
            │  0x00007fce172487d4:   and    %r9,%r8                      ;*land {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
            │  0x00007fce172487d7:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
            │  0x00007fce172487da:   mov    %r8,%r10
            │  0x00007fce172487dd:   mov    %rcx,%r8                     ;*lload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
            ↘  0x00007fce172487e0:   cmp    $0x1,%r8
               0x00007fce172487e4:   jl     0x00007fce1724862b
               0x00007fce172487ea:   jmp    0x00007fce172487c0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.78%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.78%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1009 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.04%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1404 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.79%  <...other 1293 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.78%       jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 5, compile id 1009 
   0.83%               kernel  [unknown] 
   0.04%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1404 
   0.02%                       <unknown> 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%       jvmci, level 4  java.lang.VirtualThread::scheduleUnpark, version 2, compile id 1280 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 2, compile id 1196 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  Unsafe_Park 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  Parker::park 
   0.01%   libpthread-2.31.so  __pthread_mutex_lock 
   0.01%   libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 3, compile id 1390 
   0.00%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.00%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1397 
   0.00%       jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 6, compile id 1381 
   0.24%  <...other 398 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.88%       jvmci, level 4
   0.83%               kernel
   0.09%            libjvm.so
   0.06%  libjvmcicompiler.so
   0.06%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.02%                     
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%     Unknown, level 0
   0.00%     perf-3351149.map
   0.00%          c1, level 3
   0.00%          c1, level 2
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks
# Parameters: (backoffType = PARK, cpuLoadFactor = 16, cpuTokens = _1_M, threadType = PLATFORM)

# Run progress: 83.33% complete, ETA 00:02:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.589 s/op
# Warmup Iteration   2: 4.475 s/op
# Warmup Iteration   3: 4.419 s/op
# Warmup Iteration   4: 4.406 s/op
# Warmup Iteration   5: 4.430 s/op
Iteration   1: 4.417 s/op
Iteration   2: 4.428 s/op
Iteration   3: 4.439 s/op
Iteration   4: 4.412 s/op
Iteration   5: 4.463 s/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks":
  4.432 ±(99.9%) 0.078 s/op [Average]
  (min, avg, max) = (4.412, 4.432, 4.463), stdev = 0.020
  CI (99.9%): [4.354, 4.510] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm":
PrintAssembly processed: 245353 total address lines.
Perf output processed (skipped 77.483 seconds):
 Column 1: cycles (392668 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, org.openjdk.jmh.infra.Blackhole::consumeCPU, version 6, compile id 989 

                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
               0x00007fae5324034e:   mov    %r8,(%rsp)
               0x00007fae53240352:   mov    %r10,%r8
               0x00007fae53240355:   mov    (%rsp),%r10
          ╭    0x00007fae53240359:   jmp    0x00007fae532404ab
          │    0x00007fae5324035e:   xchg   %ax,%ax                      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
          │↗   0x00007fae53240360:   mov    %r10,%rcx
          ││   0x00007fae53240363:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.44%  ││   0x00007fae53240367:   add    %r8,%rcx
   0.98%  ││   0x00007fae5324036a:   lea    0xb(%rcx),%rcx
   0.80%  ││   0x00007fae5324036e:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.14%  ││   0x00007fae53240371:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.10%  ││   0x00007fae53240374:   mov    %rcx,%r10
          ││   0x00007fae53240377:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.26%  ││   0x00007fae5324037b:   add    %r8,%r10
   1.09%  ││   0x00007fae5324037e:   lea    0xa(%r10),%r10
   0.71%  ││   0x00007fae53240382:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.50%  ││   0x00007fae53240385:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.53%  ││   0x00007fae53240388:   mov    %r10,%rcx
   0.00%  ││   0x00007fae5324038b:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.43%  ││   0x00007fae5324038f:   add    %r8,%rcx
   1.50%  ││   0x00007fae53240392:   lea    0x9(%rcx),%rcx
   0.29%  ││   0x00007fae53240396:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.98%  ││   0x00007fae53240399:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.00%  ││   0x00007fae5324039c:   mov    %rcx,%r10
   0.00%  ││   0x00007fae5324039f:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.51%  ││   0x00007fae532403a3:   add    %r8,%r10
   1.03%  ││   0x00007fae532403a6:   lea    0x8(%r10),%r10
   0.75%  ││   0x00007fae532403aa:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.28%  ││   0x00007fae532403ad:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.75%  ││   0x00007fae532403b0:   mov    %r10,%rcx
          ││   0x00007fae532403b3:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.62%  ││   0x00007fae532403b7:   add    %r8,%rcx
   1.12%  ││   0x00007fae532403ba:   lea    0x7(%rcx),%rcx
   0.59%  ││   0x00007fae532403be:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.14%  ││   0x00007fae532403c1:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.09%  ││   0x00007fae532403c4:   mov    %rcx,%r10
          ││   0x00007fae532403c7:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.12%  ││   0x00007fae532403cb:   add    %r8,%r10
   0.99%  ││   0x00007fae532403ce:   lea    0x6(%r10),%r10
   0.78%  ││   0x00007fae532403d2:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.43%  ││   0x00007fae532403d5:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.62%  ││   0x00007fae532403d8:   mov    %r10,%rcx
   0.00%  ││   0x00007fae532403db:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.40%  ││   0x00007fae532403df:   add    %r8,%rcx
   1.29%  ││   0x00007fae532403e2:   lea    0x5(%rcx),%rcx
   0.51%  ││   0x00007fae532403e6:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.30%  ││   0x00007fae532403e9:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.89%  ││   0x00007fae532403ec:   mov    %rcx,%r10
          ││   0x00007fae532403ef:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.29%  ││   0x00007fae532403f3:   add    %r8,%r10
   0.97%  ││   0x00007fae532403f6:   lea    0x4(%r10),%r10
   0.83%  ││   0x00007fae532403fa:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.45%  ││   0x00007fae532403fd:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.58%  ││   0x00007fae53240400:   mov    %r10,%rcx
          ││   0x00007fae53240403:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.44%  ││   0x00007fae53240407:   add    %r8,%rcx
   1.31%  ││   0x00007fae5324040a:   lea    0x3(%rcx),%rcx
   0.47%  ││   0x00007fae5324040e:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.34%  ││   0x00007fae53240411:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.84%  ││   0x00007fae53240414:   mov    %rcx,%r10
          ││   0x00007fae53240417:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.36%  ││   0x00007fae5324041b:   add    %r8,%r10
   1.00%  ││   0x00007fae5324041e:   lea    0x2(%r10),%r10
   0.80%  ││   0x00007fae53240422:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.47%  ││   0x00007fae53240425:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.59%  ││   0x00007fae53240428:   mov    %r10,%rcx
          ││   0x00007fae5324042b:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.43%  ││   0x00007fae5324042f:   add    %r8,%rcx
   1.27%  ││   0x00007fae53240432:   inc    %rcx
   0.49%  ││   0x00007fae53240435:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.26%  ││   0x00007fae53240438:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.87%  ││   0x00007fae5324043b:   mov    %rcx,%r10
          ││   0x00007fae5324043e:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
          ││                                                             ;   {no_reloc}
   2.33%  ││   0x00007fae53240442:   add    %r8,%r10
   0.87%  ││   0x00007fae53240445:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.97%  ││   0x00007fae53240448:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.37%  ││   0x00007fae5324044b:   mov    %r10,%rcx
          ││   0x00007fae5324044e:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.12%  ││   0x00007fae53240452:   add    %r8,%rcx
   1.05%  ││   0x00007fae53240455:   dec    %rcx
   0.76%  ││   0x00007fae53240458:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.22%  ││   0x00007fae5324045b:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.84%  ││   0x00007fae5324045e:   mov    %rcx,%r10
   0.00%  ││   0x00007fae53240461:   imul   %r11,%r10                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.38%  ││   0x00007fae53240465:   add    %r8,%r10
   1.17%  ││   0x00007fae53240468:   lea    -0x2(%r10),%r10
   0.61%  ││   0x00007fae5324046c:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   1.20%  ││   0x00007fae5324046f:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.98%  ││   0x00007fae53240472:   mov    %r10,%rcx
   0.00%  ││   0x00007fae53240475:   imul   %r11,%rcx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   2.29%  ││   0x00007fae53240479:   add    %r8,%rcx
   1.03%  ││   0x00007fae5324047c:   lea    -0x3(%rcx),%rcx
   0.81%  ││   0x00007fae53240480:   and    %r9,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.86%  ││   0x00007fae53240483:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   0.91%  ││   0x00007fae53240486:   lea    -0xf(%r8),%r10               ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
          ││   0x00007fae5324048a:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {}
          ││                                                             ;*lload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                             ; - (reexecute) org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
          ││   0x00007fae53240491:   test   %eax,(%rbx)                  ;   {poll}
          ││   0x00007fae53240493:   lea    -0x10(%r8),%r8               ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
   0.89%  ││   0x00007fae53240497:   mov    %rcx,%rbx
          ││   0x00007fae5324049a:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   1.81%  ││   0x00007fae5324049e:   add    %r10,%rbx
   1.18%  ││   0x00007fae532404a1:   lea    0xb(%rbx),%r10
   0.60%  ││   0x00007fae532404a5:   and    %r9,%r10                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
   0.89%  ││   0x00007fae532404a8:   add    %rcx,%r10                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
   1.13%  ↘│   0x00007fae532404ab:   cmp    $0x11,%r8
           ╰   0x00007fae532404af:   jge    0x00007fae53240360
            ╭  0x00007fae532404b5:   jmp    0x00007fae532404e0
            │  0x00007fae532404ba:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
   0.00%    │  0x00007fae532404c0:   mov    %r8,%rcx
            │  0x00007fae532404c3:   dec    %rcx                         ;*lsub {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@36 (line 568)
            │  0x00007fae532404c6:   mov    %r10,%rbx
            │  0x00007fae532404c9:   imul   %r11,%rbx                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@19 (line 569)
   0.00%    │  0x00007fae532404cd:   add    %r8,%rbx
   0.00%    │  0x00007fae532404d0:   lea    0xb(%rbx),%r8
   0.00%    │  0x00007fae532404d4:   and    %r9,%r8                      ;*land {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@30 (line 569)
            │  0x00007fae532404d7:   add    %r10,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@31 (line 569)
            │  0x00007fae532404da:   mov    %r8,%r10
            │  0x00007fae532404dd:   mov    %rcx,%r8                     ;*lload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@7 (line 568)
            ↘  0x00007fae532404e0:   cmp    $0x1,%r8
               0x00007fae532404e4:   jl     0x00007fae5324032b
               0x00007fae532404ea:   jmp    0x00007fae532404c0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - org.openjdk.jmh.infra.Blackhole::consumeCPU@11 (line 568)
....................................................................................................
  99.31%  <total for region 1>

....[Hottest Regions]...............................................................................
  99.31%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 6, compile id 989 
   0.12%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%              kernel  [unknown] 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.37%  <...other 691 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.32%      jvmci, level 4  org.openjdk.jmh.infra.Blackhole::consumeCPU, version 6, compile id 989 
   0.57%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%           libjvm.so  Parker::park 
   0.00%           libjvm.so  Unsafe_Park 
   0.00%        libc-2.31.so  __vfprintf_internal 
   0.00%    Unknown, level 0  jdk.internal.misc.Unsafe::park, version 1, compile id 993 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  defaultStream::write 
   0.00%              [vdso]  __vdso_clock_gettime 
   0.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadCpuBoundBenchmark::cpuBoundWork, version 3, compile id 1087 
   0.00%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.00%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.05%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.32%      jvmci, level 4
   0.57%              kernel
   0.04%           libjvm.so
   0.02%        libc-2.31.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.00%         interpreter
   0.00%      hsdis-amd64.so
   0.00%    Unknown, level 0
   0.00%              [vdso]
   0.00%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:58

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
VPThreadCpuBoundBenchmark.cpu_bound_tasks               NONE               16         _1_M       VIRTUAL  avgt    5  4.377 ± 0.126   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm           NONE               16         _1_M       VIRTUAL  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks               NONE               16         _1_M      PLATFORM  avgt    5  4.365 ± 0.131   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm           NONE               16         _1_M      PLATFORM  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks              YIELD               16         _1_M       VIRTUAL  avgt    5  4.357 ± 0.146   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm          YIELD               16         _1_M       VIRTUAL  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks              YIELD               16         _1_M      PLATFORM  avgt    5  4.356 ± 0.130   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm          YIELD               16         _1_M      PLATFORM  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks               PARK               16         _1_M       VIRTUAL  avgt    5  4.510 ± 0.736   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm           PARK               16         _1_M       VIRTUAL  avgt         NaN            ---
VPThreadCpuBoundBenchmark.cpu_bound_tasks               PARK               16         _1_M      PLATFORM  avgt    5  4.432 ± 0.078   s/op
VPThreadCpuBoundBenchmark.cpu_bound_tasks:asm           PARK               16         _1_M      PLATFORM  avgt         NaN            ---
