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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacMD5, length = 16384)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 34.501 us/op
# Warmup Iteration   2: 30.834 us/op
# Warmup Iteration   3: 30.827 us/op
# Warmup Iteration   4: 30.841 us/op
# Warmup Iteration   5: 30.841 us/op
Iteration   1: 30.832 us/op
Iteration   2: 30.844 us/op
Iteration   3: 30.830 us/op
Iteration   4: 30.827 us/op
Iteration   5: 30.830 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  30.833 ±(99.9%) 0.025 us/op [Average]
  (min, avg, max) = (30.827, 30.833, 30.844), stdev = 0.006
  CI (99.9%): [30.808, 30.857] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 280940 total address lines.
Perf output processed (skipped 61.925 seconds):
 Column 1: cycles (50799 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::md5_implCompressMB 

                                                                                                                                                    --------------------------------------------------------------------------------
                                                                                                                                                    - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                                    - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                                    StubRoutines::md5_implCompressMB [0x00007f585a78d0c0, 0x00007f585a78d776] (1718 bytes)
                                                                                                                                                    --------------------------------------------------------------------------------
                                                                                                                                                      0x00007f585a78d0c0:   push   %rbp
   0.00%                                                                                                                                              0x00007f585a78d0c1:   mov    %rsp,%rbp
                                                                                                                                                      0x00007f585a78d0c4:   push   %rbx
   0.00%                                                                                                                                              0x00007f585a78d0c5:   push   %rdi
   0.00%                                                                                                                                              0x00007f585a78d0c6:   push   %rsi
                                                                                                                                                      0x00007f585a78d0c7:   push   %r15
                                                                                                                                                      0x00007f585a78d0c9:   sub    $0x10,%rsp
   0.00%                                                                                                                                              0x00007f585a78d0cd:   mov    %rdi,%r15
   0.00%                                                                                                                                              0x00007f585a78d0d0:   mov    %rsi,(%rsp)
                                                                                                                                                      0x00007f585a78d0d4:   mov    %edx,0x8(%rsp)
                                                                                                                                                      0x00007f585a78d0d8:   mov    %ecx,0xc(%rsp)
   0.00%                                                                                                                                              0x00007f585a78d0dc:   mov    (%rsp),%rdi
                                                                                                                                                      0x00007f585a78d0e0:   mov    (%rdi),%eax
                                                                                                                                                      0x00007f585a78d0e2:   mov    0x4(%rdi),%ebx
                                                                                                                                                      0x00007f585a78d0e5:   mov    0x8(%rdi),%ecx
   0.01%                                                                                                                                              0x00007f585a78d0e8:   mov    0xc(%rdi),%edx
          ↗                                                                                                                                           0x00007f585a78d0eb:   add    $0xd76aa478,%eax
          │                                                                                                                                           0x00007f585a78d0f0:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d0f2:   add    (%r15),%eax
   0.32%  │                                                                                                                                           0x00007f585a78d0f5:   xor    %edx,%esi
          │                                                                                                                                           0x00007f585a78d0f7:   and    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d0f9:   xor    %edx,%esi
   0.00%  │                                                                                                                                           0x00007f585a78d0fb:   add    %esi,%eax
   0.28%  │                                                                                                                                           0x00007f585a78d0fd:   rol    $0x7,%eax
          │                                                                                                                                           0x00007f585a78d100:   add    %ebx,%eax
          │                                                                                                                                           0x00007f585a78d102:   add    $0xe8c7b756,%edx
          │                                                                                                                                           0x00007f585a78d108:   mov    %ebx,%esi
   0.30%  │                                                                                                                                           0x00007f585a78d10a:   add    0x4(%r15),%edx
   0.00%  │                                                                                                                                           0x00007f585a78d10e:   xor    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d110:   and    %eax,%esi
   0.00%  │                                                                                                                                           0x00007f585a78d112:   xor    %ecx,%esi
   0.33%  │                                                                                                                                           0x00007f585a78d114:   add    %esi,%edx
          │                                                                                                                                           0x00007f585a78d116:   rol    $0xc,%edx
   0.34%  │                                                                                                                                           0x00007f585a78d119:   add    %eax,%edx
   0.29%  │                                                                                                                                           0x00007f585a78d11b:   add    $0x242070db,%ecx
   0.01%  │                                                                                                                                           0x00007f585a78d121:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d123:   add    0x8(%r15),%ecx
   0.00%  │                                                                                                                                           0x00007f585a78d127:   xor    %ebx,%esi
   0.35%  │                                                                                                                                           0x00007f585a78d129:   and    %edx,%esi
   0.01%  │                                                                                                                                           0x00007f585a78d12b:   xor    %ebx,%esi
   0.50%  │                                                                                                                                           0x00007f585a78d12d:   add    %esi,%ecx
   0.12%  │                                                                                                                                           0x00007f585a78d12f:   rol    $0x11,%ecx
   0.30%  │                                                                                                                                           0x00007f585a78d132:   add    %edx,%ecx
   0.37%  │                                                                                                                                           0x00007f585a78d134:   add    $0xc1bdceee,%ebx
   0.00%  │                                                                                                                                           0x00007f585a78d13a:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d13c:   add    0xc(%r15),%ebx
          │                                                                                                                                           0x00007f585a78d140:   xor    %eax,%esi
   0.31%  │                                                                                                                                           0x00007f585a78d142:   and    %ecx,%esi
   0.01%  │                                                                                                                                           0x00007f585a78d144:   xor    %eax,%esi
   0.56%  │                                                                                                                                           0x00007f585a78d146:   add    %esi,%ebx
   0.16%  │                                                                                                                                           0x00007f585a78d148:   rol    $0x16,%ebx
   0.26%  │                                                                                                                                           0x00007f585a78d14b:   add    %ecx,%ebx
   0.31%  │                                                                                                                                           0x00007f585a78d14d:   add    $0xf57c0faf,%eax
          │                                                                                                                                           0x00007f585a78d152:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d154:   add    0x10(%r15),%eax
          │                                                                                                                                           0x00007f585a78d158:   xor    %edx,%esi
   0.33%  │                                                                                                                                           0x00007f585a78d15a:   and    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d15c:   xor    %edx,%esi
   0.55%  │                                                                                                                                           0x00007f585a78d15e:   add    %esi,%eax
   0.19%  │                                                                                                                                           0x00007f585a78d160:   rol    $0x7,%eax
   0.26%  │                                                                                                                                           0x00007f585a78d163:   add    %ebx,%eax
   0.32%  │                                                                                                                                           0x00007f585a78d165:   add    $0x4787c62a,%edx
          │                                                                                                                                           0x00007f585a78d16b:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d16d:   add    0x14(%r15),%edx
          │                                                                                                                                           0x00007f585a78d171:   xor    %ecx,%esi
   0.33%  │                                                                                                                                           0x00007f585a78d173:   and    %eax,%esi
   0.00%  │                                                                                                                                           0x00007f585a78d175:   xor    %ecx,%esi
   0.52%  │                                                                                                                                           0x00007f585a78d177:   add    %esi,%edx
   0.16%  │                                                                                                                                           0x00007f585a78d179:   rol    $0xc,%edx
   0.29%  │                                                                                                                                           0x00007f585a78d17c:   add    %eax,%edx
   0.34%  │                                                                                                                                           0x00007f585a78d17e:   add    $0xa8304613,%ecx
   0.00%  │                                                                                                                                           0x00007f585a78d184:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d186:   add    0x18(%r15),%ecx
          │                                                                                                                                           0x00007f585a78d18a:   xor    %ebx,%esi
   0.38%  │                                                                                                                                           0x00007f585a78d18c:   and    %edx,%esi
          │                                                                                                                                           0x00007f585a78d18e:   xor    %ebx,%esi
   0.50%  │                                                                                                                                           0x00007f585a78d190:   add    %esi,%ecx
   0.17%  │                                                                                                                                           0x00007f585a78d192:   rol    $0x11,%ecx
   0.28%  │                                                                                                                                           0x00007f585a78d195:   add    %edx,%ecx
   0.25%  │                                                                                                                                           0x00007f585a78d197:   add    $0xfd469501,%ebx
   0.00%  │                                                                                                                                           0x00007f585a78d19d:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d19f:   add    0x1c(%r15),%ebx
          │                                                                                                                                           0x00007f585a78d1a3:   xor    %eax,%esi
   0.32%  │                                                                                                                                           0x00007f585a78d1a5:   and    %ecx,%esi
   0.00%  │                                                                                                                                           0x00007f585a78d1a7:   xor    %eax,%esi
   0.49%  │                                                                                                                                           0x00007f585a78d1a9:   add    %esi,%ebx
   0.18%  │                                                                                                                                           0x00007f585a78d1ab:   rol    $0x16,%ebx
   0.29%  │                                                                                                                                           0x00007f585a78d1ae:   add    %ecx,%ebx
   0.30%  │                                                                                                                                           0x00007f585a78d1b0:   add    $0x698098d8,%eax
   0.00%  │                                                                                                                                           0x00007f585a78d1b5:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d1b7:   add    0x20(%r15),%eax
   0.01%  │                                                                                                                                           0x00007f585a78d1bb:   xor    %edx,%esi
   0.34%  │                                                                                                                                           0x00007f585a78d1bd:   and    %ebx,%esi
   0.00%  │                                                                                                                                           0x00007f585a78d1bf:   xor    %edx,%esi
   0.53%  │                                                                                                                                           0x00007f585a78d1c1:   add    %esi,%eax
   0.19%  │                                                                                                                                           0x00007f585a78d1c3:   rol    $0x7,%eax
   0.32%  │                                                                                                                                           0x00007f585a78d1c6:   add    %ebx,%eax
   0.35%  │                                                                                                                                           0x00007f585a78d1c8:   add    $0x8b44f7af,%edx
          │                                                                                                                                           0x00007f585a78d1ce:   mov    %ebx,%esi
   0.00%  │                                                                                                                                           0x00007f585a78d1d0:   add    0x24(%r15),%edx
          │                                                                                                                                           0x00007f585a78d1d4:   xor    %ecx,%esi
   0.34%  │                                                                                                                                           0x00007f585a78d1d6:   and    %eax,%esi
   0.01%  │                                                                                                                                           0x00007f585a78d1d8:   xor    %ecx,%esi
   0.55%  │                                                                                                                                           0x00007f585a78d1da:   add    %esi,%edx
   0.16%  │                                                                                                                                           0x00007f585a78d1dc:   rol    $0xc,%edx
   0.30%  │                                                                                                                                           0x00007f585a78d1df:   add    %eax,%edx
   0.30%  │                                                                                                                                           0x00007f585a78d1e1:   add    $0xffff5bb1,%ecx
   0.01%  │                                                                                                                                           0x00007f585a78d1e7:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d1e9:   add    0x28(%r15),%ecx
          │                                                                                                                                           0x00007f585a78d1ed:   xor    %ebx,%esi
   0.31%  │                                                                                                                                           0x00007f585a78d1ef:   and    %edx,%esi
   0.01%  │                                                                                                                                           0x00007f585a78d1f1:   xor    %ebx,%esi
   0.60%  │                                                                                                                                           0x00007f585a78d1f3:   add    %esi,%ecx
   0.12%  │                                                                                                                                           0x00007f585a78d1f5:   rol    $0x11,%ecx
   0.20%  │                                                                                                                                           0x00007f585a78d1f8:   add    %edx,%ecx
   0.27%  │                                                                                                                                           0x00007f585a78d1fa:   add    $0x895cd7be,%ebx
   0.01%  │                                                                                                                                           0x00007f585a78d200:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d202:   add    0x2c(%r15),%ebx
          │                                                                                                                                           0x00007f585a78d206:   xor    %eax,%esi
   0.30%  │                                                                                                                                           0x00007f585a78d208:   and    %ecx,%esi
   0.01%  │                                                                                                                                           0x00007f585a78d20a:   xor    %eax,%esi
   0.64%  │                                                                                                                                           0x00007f585a78d20c:   add    %esi,%ebx
   0.11%  │                                                                                                                                           0x00007f585a78d20e:   rol    $0x16,%ebx
   0.19%  │                                                                                                                                           0x00007f585a78d211:   add    %ecx,%ebx
   0.30%  │                                                                                                                                           0x00007f585a78d213:   add    $0x6b901122,%eax
   0.01%  │                                                                                                                                           0x00007f585a78d218:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d21a:   add    0x30(%r15),%eax
          │                                                                                                                                           0x00007f585a78d21e:   xor    %edx,%esi
   0.27%  │                                                                                                                                           0x00007f585a78d220:   and    %ebx,%esi
   0.01%  │                                                                                                                                           0x00007f585a78d222:   xor    %edx,%esi
   0.66%  │                                                                                                                                           0x00007f585a78d224:   add    %esi,%eax
   0.13%  │                                                                                                                                           0x00007f585a78d226:   rol    $0x7,%eax
   0.27%  │                                                                                                                                           0x00007f585a78d229:   add    %ebx,%eax
   0.28%  │                                                                                                                                           0x00007f585a78d22b:   add    $0xfd987193,%edx
   0.01%  │                                                                                                                                           0x00007f585a78d231:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d233:   add    0x34(%r15),%edx
          │                                                                                                                                           0x00007f585a78d237:   xor    %ecx,%esi
   0.31%  │                                                                                                                                           0x00007f585a78d239:   and    %eax,%esi
   0.01%  │                                                                                                                                           0x00007f585a78d23b:   xor    %ecx,%esi
   0.53%  │                                                                                                                                           0x00007f585a78d23d:   add    %esi,%edx
   0.16%  │                                                                                                                                           0x00007f585a78d23f:   rol    $0xc,%edx
   0.24%  │                                                                                                                                           0x00007f585a78d242:   add    %eax,%edx
   0.30%  │                                                                                                                                           0x00007f585a78d244:   add    $0xa679438e,%ecx
   0.02%  │                                                                                                                                           0x00007f585a78d24a:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d24c:   add    0x38(%r15),%ecx
          │                                                                                                                                           0x00007f585a78d250:   xor    %ebx,%esi
   0.25%  │                                                                                                                                           0x00007f585a78d252:   and    %edx,%esi
   0.01%  │                                                                                                                                           0x00007f585a78d254:   xor    %ebx,%esi
   0.50%  │                                                                                                                                           0x00007f585a78d256:   add    %esi,%ecx
   0.15%  │                                                                                                                                           0x00007f585a78d258:   rol    $0x11,%ecx
   0.27%  │                                                                                                                                           0x00007f585a78d25b:   add    %edx,%ecx
   0.27%  │                                                                                                                                           0x00007f585a78d25d:   add    $0x49b40821,%ebx
   0.02%  │                                                                                                                                           0x00007f585a78d263:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d265:   add    0x3c(%r15),%ebx
          │                                                                                                                                           0x00007f585a78d269:   xor    %eax,%esi
   0.32%  │                                                                                                                                           0x00007f585a78d26b:   and    %ecx,%esi
   0.02%  │                                                                                                                                           0x00007f585a78d26d:   xor    %eax,%esi
   0.63%  │                                                                                                                                           0x00007f585a78d26f:   add    %esi,%ebx
   0.11%  │                                                                                                                                           0x00007f585a78d271:   rol    $0x16,%ebx
   0.27%  │                                                                                                                                           0x00007f585a78d274:   add    %ecx,%ebx
   0.29%  │                                                                                                                                           0x00007f585a78d276:   add    $0xf61e2562,%eax
   0.03%  │                                                                                                                                           0x00007f585a78d27b:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d27d:   mov    %edx,%edi
          │                                                                                                                                           0x00007f585a78d27f:   add    0x4(%r15),%eax
   0.30%  │                                                                                                                                           0x00007f585a78d283:   not    %esi
   0.02%  │                                                                                                                                           0x00007f585a78d285:   and    %ebx,%edi
          │                                                                                                                                           0x00007f585a78d287:   and    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d289:   or     %edi,%esi
   0.27%  │                                                                                                                                           0x00007f585a78d28b:   add    %esi,%eax
   0.31%  │                                                                                                                                           0x00007f585a78d28d:   rol    $0x5,%eax
   0.34%  │                                                                                                                                           0x00007f585a78d290:   add    %ebx,%eax
   0.29%  │                                                                                                                                           0x00007f585a78d292:   add    $0xc040b340,%edx
          │                                                                                                                                           0x00007f585a78d298:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d29a:   mov    %ecx,%edi
          │                                                                                                                                           0x00007f585a78d29c:   add    0x18(%r15),%edx
   0.34%  │                                                                                                                                           0x00007f585a78d2a0:   not    %esi
          │                                                                                                                                           0x00007f585a78d2a2:   and    %eax,%edi
          │                                                                                                                                           0x00007f585a78d2a4:   and    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d2a6:   or     %edi,%esi
   0.32%  │                                                                                                                                           0x00007f585a78d2a8:   add    %esi,%edx
   0.37%  │                                                                                                                                           0x00007f585a78d2aa:   rol    $0x9,%edx
   0.35%  │                                                                                                                                           0x00007f585a78d2ad:   add    %eax,%edx
   0.33%  │                                                                                                                                           0x00007f585a78d2af:   add    $0x265e5a51,%ecx
          │                                                                                                                                           0x00007f585a78d2b5:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d2b7:   mov    %ebx,%edi
          │                                                                                                                                           0x00007f585a78d2b9:   add    0x2c(%r15),%ecx
   0.30%  │                                                                                                                                           0x00007f585a78d2bd:   not    %esi
          │                                                                                                                                           0x00007f585a78d2bf:   and    %edx,%edi
          │                                                                                                                                           0x00007f585a78d2c1:   and    %eax,%esi
          │                                                                                                                                           0x00007f585a78d2c3:   or     %edi,%esi
   0.26%  │                                                                                                                                           0x00007f585a78d2c5:   add    %esi,%ecx
   0.34%  │                                                                                                                                           0x00007f585a78d2c7:   rol    $0xe,%ecx
   0.31%  │                                                                                                                                           0x00007f585a78d2ca:   add    %edx,%ecx
   0.32%  │                                                                                                                                           0x00007f585a78d2cc:   add    $0xe9b6c7aa,%ebx
          │                                                                                                                                           0x00007f585a78d2d2:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d2d4:   mov    %eax,%edi
          │                                                                                                                                           0x00007f585a78d2d6:   add    (%r15),%ebx
   0.29%  │                                                                                                                                           0x00007f585a78d2d9:   not    %esi
          │                                                                                                                                           0x00007f585a78d2db:   and    %ecx,%edi
          │                                                                                                                                           0x00007f585a78d2dd:   and    %edx,%esi
          │                                                                                                                                           0x00007f585a78d2df:   or     %edi,%esi
   0.25%  │                                                                                                                                           0x00007f585a78d2e1:   add    %esi,%ebx
   0.30%  │                                                                                                                                           0x00007f585a78d2e3:   rol    $0x14,%ebx
   0.34%  │                                                                                                                                           0x00007f585a78d2e6:   add    %ecx,%ebx
   0.29%  │                                                                                                                                           0x00007f585a78d2e8:   add    $0xd62f105d,%eax
          │                                                                                                                                           0x00007f585a78d2ed:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d2ef:   mov    %edx,%edi
          │                                                                                                                                           0x00007f585a78d2f1:   add    0x14(%r15),%eax
   0.32%  │                                                                                                                                           0x00007f585a78d2f5:   not    %esi
          │                                                                                                                                           0x00007f585a78d2f7:   and    %ebx,%edi
          │                                                                                                                                           0x00007f585a78d2f9:   and    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d2fb:   or     %edi,%esi
   0.32%  │                                                                                                                                           0x00007f585a78d2fd:   add    %esi,%eax
   0.27%  │                                                                                                                                           0x00007f585a78d2ff:   rol    $0x5,%eax
   0.34%  │                                                                                                                                           0x00007f585a78d302:   add    %ebx,%eax
   0.26%  │                                                                                                                                           0x00007f585a78d304:   add    $0x2441453,%edx
          │                                                                                                                                           0x00007f585a78d30a:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d30c:   mov    %ecx,%edi
          │                                                                                                                                           0x00007f585a78d30e:   add    0x28(%r15),%edx
   0.30%  │                                                                                                                                           0x00007f585a78d312:   not    %esi
          │                                                                                                                                           0x00007f585a78d314:   and    %eax,%edi
          │                                                                                                                                           0x00007f585a78d316:   and    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d318:   or     %edi,%esi
   0.31%  │                                                                                                                                           0x00007f585a78d31a:   add    %esi,%edx
   0.28%  │                                                                                                                                           0x00007f585a78d31c:   rol    $0x9,%edx
   0.34%  │                                                                                                                                           0x00007f585a78d31f:   add    %eax,%edx
   0.27%  │                                                                                                                                           0x00007f585a78d321:   add    $0xd8a1e681,%ecx
          │                                                                                                                                           0x00007f585a78d327:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d329:   mov    %ebx,%edi
          │                                                                                                                                           0x00007f585a78d32b:   add    0x3c(%r15),%ecx
   0.35%  │                                                                                                                                           0x00007f585a78d32f:   not    %esi
          │                                                                                                                                           0x00007f585a78d331:   and    %edx,%edi
          │                                                                                                                                           0x00007f585a78d333:   and    %eax,%esi
          │                                                                                                                                           0x00007f585a78d335:   or     %edi,%esi
   0.29%  │                                                                                                                                           0x00007f585a78d337:   add    %esi,%ecx
   0.33%  │                                                                                                                                           0x00007f585a78d339:   rol    $0xe,%ecx
   0.31%  │                                                                                                                                           0x00007f585a78d33c:   add    %edx,%ecx
   0.33%  │                                                                                                                                           0x00007f585a78d33e:   add    $0xe7d3fbc8,%ebx
          │                                                                                                                                           0x00007f585a78d344:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d346:   mov    %eax,%edi
          │                                                                                                                                           0x00007f585a78d348:   add    0x10(%r15),%ebx
   0.31%  │                                                                                                                                           0x00007f585a78d34c:   not    %esi
          │                                                                                                                                           0x00007f585a78d34e:   and    %ecx,%edi
          │                                                                                                                                           0x00007f585a78d350:   and    %edx,%esi
          │                                                                                                                                           0x00007f585a78d352:   or     %edi,%esi
   0.36%  │                                                                                                                                           0x00007f585a78d354:   add    %esi,%ebx
   0.33%  │                                                                                                                                           0x00007f585a78d356:   rol    $0x14,%ebx
   0.35%  │                                                                                                                                           0x00007f585a78d359:   add    %ecx,%ebx
   0.31%  │                                                                                                                                           0x00007f585a78d35b:   add    $0x21e1cde6,%eax
          │                                                                                                                                           0x00007f585a78d360:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d362:   mov    %edx,%edi
          │                                                                                                                                           0x00007f585a78d364:   add    0x24(%r15),%eax
   0.37%  │                                                                                                                                           0x00007f585a78d368:   not    %esi
          │                                                                                                                                           0x00007f585a78d36a:   and    %ebx,%edi
          │                                                                                                                                           0x00007f585a78d36c:   and    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d36e:   or     %edi,%esi
   0.31%  │                                                                                                                                           0x00007f585a78d370:   add    %esi,%eax
   0.32%  │                                                                                                                                           0x00007f585a78d372:   rol    $0x5,%eax
   0.31%  │                                                                                                                                           0x00007f585a78d375:   add    %ebx,%eax
   0.32%  │                                                                                                                                           0x00007f585a78d377:   add    $0xc33707d6,%edx
          │                                                                                                                                           0x00007f585a78d37d:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d37f:   mov    %ecx,%edi
          │                                                                                                                                           0x00007f585a78d381:   add    0x38(%r15),%edx
   0.31%  │                                                                                                                                           0x00007f585a78d385:   not    %esi
          │                                                                                                                                           0x00007f585a78d387:   and    %eax,%edi
          │                                                                                                                                           0x00007f585a78d389:   and    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d38b:   or     %edi,%esi
   0.32%  │                                                                                                                                           0x00007f585a78d38d:   add    %esi,%edx
   0.32%  │                                                                                                                                           0x00007f585a78d38f:   rol    $0x9,%edx
   0.28%  │                                                                                                                                           0x00007f585a78d392:   add    %eax,%edx
   0.30%  │                                                                                                                                           0x00007f585a78d394:   add    $0xf4d50d87,%ecx
          │                                                                                                                                           0x00007f585a78d39a:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d39c:   mov    %ebx,%edi
          │                                                                                                                                           0x00007f585a78d39e:   add    0xc(%r15),%ecx
   0.31%  │                                                                                                                                           0x00007f585a78d3a2:   not    %esi
          │                                                                                                                                           0x00007f585a78d3a4:   and    %edx,%edi
          │                                                                                                                                           0x00007f585a78d3a6:   and    %eax,%esi
          │                                                                                                                                           0x00007f585a78d3a8:   or     %edi,%esi
   0.30%  │                                                                                                                                           0x00007f585a78d3aa:   add    %esi,%ecx
   0.31%  │                                                                                                                                           0x00007f585a78d3ac:   rol    $0xe,%ecx
   0.28%  │                                                                                                                                           0x00007f585a78d3af:   add    %edx,%ecx
   0.33%  │                                                                                                                                           0x00007f585a78d3b1:   add    $0x455a14ed,%ebx
          │                                                                                                                                           0x00007f585a78d3b7:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d3b9:   mov    %eax,%edi
          │                                                                                                                                           0x00007f585a78d3bb:   add    0x20(%r15),%ebx
   0.31%  │                                                                                                                                           0x00007f585a78d3bf:   not    %esi
          │                                                                                                                                           0x00007f585a78d3c1:   and    %ecx,%edi
          │                                                                                                                                           0x00007f585a78d3c3:   and    %edx,%esi
          │                                                                                                                                           0x00007f585a78d3c5:   or     %edi,%esi
   0.31%  │                                                                                                                                           0x00007f585a78d3c7:   add    %esi,%ebx
   0.29%  │                                                                                                                                           0x00007f585a78d3c9:   rol    $0x14,%ebx
   0.36%  │                                                                                                                                           0x00007f585a78d3cc:   add    %ecx,%ebx
   0.31%  │                                                                                                                                           0x00007f585a78d3ce:   add    $0xa9e3e905,%eax
          │                                                                                                                                           0x00007f585a78d3d3:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d3d5:   mov    %edx,%edi
          │                                                                                                                                           0x00007f585a78d3d7:   add    0x34(%r15),%eax
   0.30%  │                                                                                                                                           0x00007f585a78d3db:   not    %esi
          │                                                                                                                                           0x00007f585a78d3dd:   and    %ebx,%edi
          │                                                                                                                                           0x00007f585a78d3df:   and    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d3e1:   or     %edi,%esi
   0.30%  │                                                                                                                                           0x00007f585a78d3e3:   add    %esi,%eax
   0.36%  │                                                                                                                                           0x00007f585a78d3e5:   rol    $0x5,%eax
   0.38%  │                                                                                                                                           0x00007f585a78d3e8:   add    %ebx,%eax
   0.30%  │                                                                                                                                           0x00007f585a78d3ea:   add    $0xfcefa3f8,%edx
          │                                                                                                                                           0x00007f585a78d3f0:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d3f2:   mov    %ecx,%edi
          │                                                                                                                                           0x00007f585a78d3f4:   add    0x8(%r15),%edx
   0.36%  │                                                                                                                                           0x00007f585a78d3f8:   not    %esi
          │                                                                                                                                           0x00007f585a78d3fa:   and    %eax,%edi
          │                                                                                                                                           0x00007f585a78d3fc:   and    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d3fe:   or     %edi,%esi
   0.33%  │                                                                                                                                           0x00007f585a78d400:   add    %esi,%edx
   0.32%  │                                                                                                                                           0x00007f585a78d402:   rol    $0x9,%edx
   0.33%  │                                                                                                                                           0x00007f585a78d405:   add    %eax,%edx
   0.30%  │                                                                                                                                           0x00007f585a78d407:   add    $0x676f02d9,%ecx
          │                                                                                                                                           0x00007f585a78d40d:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d40f:   mov    %ebx,%edi
          │                                                                                                                                           0x00007f585a78d411:   add    0x1c(%r15),%ecx
   0.31%  │                                                                                                                                           0x00007f585a78d415:   not    %esi
          │                                                                                                                                           0x00007f585a78d417:   and    %edx,%edi
          │                                                                                                                                           0x00007f585a78d419:   and    %eax,%esi
          │                                                                                                                                           0x00007f585a78d41b:   or     %edi,%esi
   0.29%  │                                                                                                                                           0x00007f585a78d41d:   add    %esi,%ecx
   0.34%  │                                                                                                                                           0x00007f585a78d41f:   rol    $0xe,%ecx
   0.32%  │                                                                                                                                           0x00007f585a78d422:   add    %edx,%ecx
   0.32%  │                                                                                                                                           0x00007f585a78d424:   add    $0x8d2a4c8a,%ebx
          │                                                                                                                                           0x00007f585a78d42a:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d42c:   mov    %eax,%edi
          │                                                                                                                                           0x00007f585a78d42e:   add    0x30(%r15),%ebx
   0.28%  │                                                                                                                                           0x00007f585a78d432:   not    %esi
          │                                                                                                                                           0x00007f585a78d434:   and    %ecx,%edi
          │                                                                                                                                           0x00007f585a78d436:   and    %edx,%esi
          │                                                                                                                                           0x00007f585a78d438:   or     %edi,%esi
   0.38%  │                                                                                                                                           0x00007f585a78d43a:   add    %esi,%ebx
   0.32%  │                                                                                                                                           0x00007f585a78d43c:   rol    $0x14,%ebx
   0.29%  │                                                                                                                                           0x00007f585a78d43f:   add    %ecx,%ebx
   0.34%  │                                                                                                                                           0x00007f585a78d441:   add    $0xfffa3942,%eax
          │                                                                                                                                           0x00007f585a78d446:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d448:   add    0x14(%r15),%eax
          │                                                                                                                                           0x00007f585a78d44c:   xor    %edx,%esi
   0.34%  │                                                                                                                                           0x00007f585a78d44e:   xor    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d450:   add    %esi,%eax
   0.30%  │                                                                                                                                           0x00007f585a78d452:   rol    $0x4,%eax
   0.31%  │                                                                                                                                           0x00007f585a78d455:   add    %ebx,%eax
   0.26%  │                                                                                                                                           0x00007f585a78d457:   add    $0x8771f681,%edx
          │                                                                                                                                           0x00007f585a78d45d:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d45f:   add    0x20(%r15),%edx
          │                                                                                                                                           0x00007f585a78d463:   xor    %ecx,%esi
   0.28%  │                                                                                                                                           0x00007f585a78d465:   xor    %eax,%esi
          │                                                                                                                                           0x00007f585a78d467:   add    %esi,%edx
   0.27%  │                                                                                                                                           0x00007f585a78d469:   rol    $0xb,%edx
   0.31%  │                                                                                                                                           0x00007f585a78d46c:   add    %eax,%edx
   0.31%  │                                                                                                                                           0x00007f585a78d46e:   add    $0x6d9d6122,%ecx
          │                                                                                                                                           0x00007f585a78d474:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d476:   add    0x2c(%r15),%ecx
          │                                                                                                                                           0x00007f585a78d47a:   xor    %ebx,%esi
   0.26%  │                                                                                                                                           0x00007f585a78d47c:   xor    %edx,%esi
          │                                                                                                                                           0x00007f585a78d47e:   add    %esi,%ecx
   0.31%  │                                                                                                                                           0x00007f585a78d480:   rol    $0x10,%ecx
   0.31%  │                                                                                                                                           0x00007f585a78d483:   add    %edx,%ecx
   0.34%  │                                                                                                                                           0x00007f585a78d485:   add    $0xfde5380c,%ebx
          │                                                                                                                                           0x00007f585a78d48b:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d48d:   add    0x38(%r15),%ebx
          │                                                                                                                                           0x00007f585a78d491:   xor    %eax,%esi
   0.32%  │                                                                                                                                           0x00007f585a78d493:   xor    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d495:   add    %esi,%ebx
   0.27%  │                                                                                                                                           0x00007f585a78d497:   rol    $0x17,%ebx
   0.30%  │                                                                                                                                           0x00007f585a78d49a:   add    %ecx,%ebx
   0.30%  │                                                                                                                                           0x00007f585a78d49c:   add    $0xa4beea44,%eax
          │                                                                                                                                           0x00007f585a78d4a1:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d4a3:   add    0x4(%r15),%eax
          │                                                                                                                                           0x00007f585a78d4a7:   xor    %edx,%esi
   0.32%  │                                                                                                                                           0x00007f585a78d4a9:   xor    %ebx,%esi
   0.00%  │                                                                                                                                           0x00007f585a78d4ab:   add    %esi,%eax
   0.31%  │                                                                                                                                           0x00007f585a78d4ad:   rol    $0x4,%eax
   0.34%  │                                                                                                                                           0x00007f585a78d4b0:   add    %ebx,%eax
   0.31%  │                                                                                                                                           0x00007f585a78d4b2:   add    $0x4bdecfa9,%edx
          │                                                                                                                                           0x00007f585a78d4b8:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d4ba:   add    0x10(%r15),%edx
          │                                                                                                                                           0x00007f585a78d4be:   xor    %ecx,%esi
   0.35%  │                                                                                                                                           0x00007f585a78d4c0:   xor    %eax,%esi
          │                                                                                                                                           0x00007f585a78d4c2:   add    %esi,%edx
   0.30%  │                                                                                                                                           0x00007f585a78d4c4:   rol    $0xb,%edx
   0.31%  │                                                                                                                                           0x00007f585a78d4c7:   add    %eax,%edx
   0.32%  │                                                                                                                                           0x00007f585a78d4c9:   add    $0xf6bb4b60,%ecx
          │                                                                                                                                           0x00007f585a78d4cf:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d4d1:   add    0x1c(%r15),%ecx
          │                                                                                                                                           0x00007f585a78d4d5:   xor    %ebx,%esi
   0.36%  │                                                                                                                                           0x00007f585a78d4d7:   xor    %edx,%esi
          │                                                                                                                                           0x00007f585a78d4d9:   add    %esi,%ecx
   0.30%  │                                                                                                                                           0x00007f585a78d4db:   rol    $0x10,%ecx
   0.31%  │                                                                                                                                           0x00007f585a78d4de:   add    %edx,%ecx
   0.31%  │                                                                                                                                           0x00007f585a78d4e0:   add    $0xbebfbc70,%ebx
          │                                                                                                                                           0x00007f585a78d4e6:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d4e8:   add    0x28(%r15),%ebx
          │                                                                                                                                           0x00007f585a78d4ec:   xor    %eax,%esi
   0.32%  │                                                                                                                                           0x00007f585a78d4ee:   xor    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d4f0:   add    %esi,%ebx
   0.30%  │                                                                                                                                           0x00007f585a78d4f2:   rol    $0x17,%ebx
   0.29%  │                                                                                                                                           0x00007f585a78d4f5:   add    %ecx,%ebx
   0.28%  │                                                                                                                                           0x00007f585a78d4f7:   add    $0x289b7ec6,%eax
          │                                                                                                                                           0x00007f585a78d4fc:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d4fe:   add    0x34(%r15),%eax
          │                                                                                                                                           0x00007f585a78d502:   xor    %edx,%esi
   0.34%  │                                                                                                                                           0x00007f585a78d504:   xor    %ebx,%esi
   0.00%  │                                                                                                                                           0x00007f585a78d506:   add    %esi,%eax
   0.33%  │                                                                                                                                           0x00007f585a78d508:   rol    $0x4,%eax
   0.35%  │                                                                                                                                           0x00007f585a78d50b:   add    %ebx,%eax
   0.28%  │                                                                                                                                           0x00007f585a78d50d:   add    $0xeaa127fa,%edx
          │                                                                                                                                           0x00007f585a78d513:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d515:   add    (%r15),%edx
          │                                                                                                                                           0x00007f585a78d518:   xor    %ecx,%esi
   0.35%  │                                                                                                                                           0x00007f585a78d51a:   xor    %eax,%esi
          │                                                                                                                                           0x00007f585a78d51c:   add    %esi,%edx
   0.31%  │                                                                                                                                           0x00007f585a78d51e:   rol    $0xb,%edx
   0.27%  │                                                                                                                                           0x00007f585a78d521:   add    %eax,%edx
   0.33%  │                                                                                                                                           0x00007f585a78d523:   add    $0xd4ef3085,%ecx
          │                                                                                                                                           0x00007f585a78d529:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d52b:   add    0xc(%r15),%ecx
          │                                                                                                                                           0x00007f585a78d52f:   xor    %ebx,%esi
   0.32%  │                                                                                                                                           0x00007f585a78d531:   xor    %edx,%esi
          │                                                                                                                                           0x00007f585a78d533:   add    %esi,%ecx
   0.34%  │                                                                                                                                           0x00007f585a78d535:   rol    $0x10,%ecx
   0.28%  │                                                                                                                                           0x00007f585a78d538:   add    %edx,%ecx
   0.32%  │                                                                                                                                           0x00007f585a78d53a:   add    $0x4881d05,%ebx
          │                                                                                                                                           0x00007f585a78d540:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d542:   add    0x18(%r15),%ebx
          │                                                                                                                                           0x00007f585a78d546:   xor    %eax,%esi
   0.28%  │                                                                                                                                           0x00007f585a78d548:   xor    %ecx,%esi
   0.00%  │                                                                                                                                           0x00007f585a78d54a:   add    %esi,%ebx
   0.30%  │                                                                                                                                           0x00007f585a78d54c:   rol    $0x17,%ebx
   0.29%  │                                                                                                                                           0x00007f585a78d54f:   add    %ecx,%ebx
   0.31%  │                                                                                                                                           0x00007f585a78d551:   add    $0xd9d4d039,%eax
          │                                                                                                                                           0x00007f585a78d556:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d558:   add    0x24(%r15),%eax
          │                                                                                                                                           0x00007f585a78d55c:   xor    %edx,%esi
   0.33%  │                                                                                                                                           0x00007f585a78d55e:   xor    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d560:   add    %esi,%eax
   0.27%  │                                                                                                                                           0x00007f585a78d562:   rol    $0x4,%eax
   0.31%  │                                                                                                                                           0x00007f585a78d565:   add    %ebx,%eax
   0.30%  │                                                                                                                                           0x00007f585a78d567:   add    $0xe6db99e5,%edx
          │                                                                                                                                           0x00007f585a78d56d:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d56f:   add    0x30(%r15),%edx
          │                                                                                                                                           0x00007f585a78d573:   xor    %ecx,%esi
   0.36%  │                                                                                                                                           0x00007f585a78d575:   xor    %eax,%esi
   0.00%  │                                                                                                                                           0x00007f585a78d577:   add    %esi,%edx
   0.30%  │                                                                                                                                           0x00007f585a78d579:   rol    $0xb,%edx
   0.38%  │                                                                                                                                           0x00007f585a78d57c:   add    %eax,%edx
   0.31%  │                                                                                                                                           0x00007f585a78d57e:   add    $0x1fa27cf8,%ecx
          │                                                                                                                                           0x00007f585a78d584:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d586:   add    0x3c(%r15),%ecx
          │                                                                                                                                           0x00007f585a78d58a:   xor    %ebx,%esi
   0.31%  │                                                                                                                                           0x00007f585a78d58c:   xor    %edx,%esi
   0.00%  │                                                                                                                                           0x00007f585a78d58e:   add    %esi,%ecx
   0.31%  │                                                                                                                                           0x00007f585a78d590:   rol    $0x10,%ecx
   0.34%  │                                                                                                                                           0x00007f585a78d593:   add    %edx,%ecx
   0.31%  │                                                                                                                                           0x00007f585a78d595:   add    $0xc4ac5665,%ebx
          │                                                                                                                                           0x00007f585a78d59b:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d59d:   add    0x8(%r15),%ebx
          │                                                                                                                                           0x00007f585a78d5a1:   xor    %eax,%esi
   0.32%  │                                                                                                                                           0x00007f585a78d5a3:   xor    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d5a5:   add    %esi,%ebx
   0.29%  │                                                                                                                                           0x00007f585a78d5a7:   rol    $0x17,%ebx
   0.33%  │                                                                                                                                           0x00007f585a78d5aa:   add    %ecx,%ebx
   0.35%  │                                                                                                                                           0x00007f585a78d5ac:   add    $0xf4292244,%eax
          │                                                                                                                                           0x00007f585a78d5b1:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d5b3:   not    %esi
          │                                                                                                                                           0x00007f585a78d5b5:   add    (%r15),%eax
   0.40%  │                                                                                                                                           0x00007f585a78d5b8:   or     %ebx,%esi
          │                                                                                                                                           0x00007f585a78d5ba:   xor    %ecx,%esi
   0.15%  │                                                                                                                                           0x00007f585a78d5bc:   add    %esi,%eax
   0.31%  │                                                                                                                                           0x00007f585a78d5be:   rol    $0x6,%eax
   0.34%  │                                                                                                                                           0x00007f585a78d5c1:   add    %ebx,%eax
   0.31%  │                                                                                                                                           0x00007f585a78d5c3:   add    $0x432aff97,%edx
          │                                                                                                                                           0x00007f585a78d5c9:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d5cb:   not    %esi
          │                                                                                                                                           0x00007f585a78d5cd:   add    0x1c(%r15),%edx
   0.54%  │                                                                                                                                           0x00007f585a78d5d1:   or     %eax,%esi
          │                                                                                                                                           0x00007f585a78d5d3:   xor    %ebx,%esi
   0.13%  │                                                                                                                                           0x00007f585a78d5d5:   add    %esi,%edx
   0.29%  │                                                                                                                                           0x00007f585a78d5d7:   rol    $0xa,%edx
   0.32%  │                                                                                                                                           0x00007f585a78d5da:   add    %eax,%edx
   0.27%  │                                                                                                                                           0x00007f585a78d5dc:   add    $0xab9423a7,%ecx
          │                                                                                                                                           0x00007f585a78d5e2:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d5e4:   not    %esi
          │                                                                                                                                           0x00007f585a78d5e6:   add    0x38(%r15),%ecx
   0.49%  │                                                                                                                                           0x00007f585a78d5ea:   or     %edx,%esi
          │                                                                                                                                           0x00007f585a78d5ec:   xor    %eax,%esi
   0.20%  │                                                                                                                                           0x00007f585a78d5ee:   add    %esi,%ecx
   0.32%  │                                                                                                                                           0x00007f585a78d5f0:   rol    $0xf,%ecx
   0.30%  │                                                                                                                                           0x00007f585a78d5f3:   add    %edx,%ecx
   0.35%  │                                                                                                                                           0x00007f585a78d5f5:   add    $0xfc93a039,%ebx
          │                                                                                                                                           0x00007f585a78d5fb:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d5fd:   not    %esi
          │                                                                                                                                           0x00007f585a78d5ff:   add    0x14(%r15),%ebx
   0.51%  │                                                                                                                                           0x00007f585a78d603:   or     %ecx,%esi
          │                                                                                                                                           0x00007f585a78d605:   xor    %edx,%esi
   0.11%  │                                                                                                                                           0x00007f585a78d607:   add    %esi,%ebx
   0.33%  │                                                                                                                                           0x00007f585a78d609:   rol    $0x15,%ebx
   0.29%  │                                                                                                                                           0x00007f585a78d60c:   add    %ecx,%ebx
   0.34%  │                                                                                                                                           0x00007f585a78d60e:   add    $0x655b59c3,%eax
          │                                                                                                                                           0x00007f585a78d613:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d615:   not    %esi
          │                                                                                                                                           0x00007f585a78d617:   add    0x30(%r15),%eax
   0.47%  │                                                                                                                                           0x00007f585a78d61b:   or     %ebx,%esi
          │                                                                                                                                           0x00007f585a78d61d:   xor    %ecx,%esi
   0.18%  │                                                                                                                                           0x00007f585a78d61f:   add    %esi,%eax
   0.33%  │                                                                                                                                           0x00007f585a78d621:   rol    $0x6,%eax
   0.31%  │                                                                                                                                           0x00007f585a78d624:   add    %ebx,%eax
   0.32%  │                                                                                                                                           0x00007f585a78d626:   add    $0x8f0ccc92,%edx
          │                                                                                                                                           0x00007f585a78d62c:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d62e:   not    %esi
          │                                                                                                                                           0x00007f585a78d630:   add    0xc(%r15),%edx
   0.51%  │                                                                                                                                           0x00007f585a78d634:   or     %eax,%esi
          │                                                                                                                                           0x00007f585a78d636:   xor    %ebx,%esi
   0.13%  │                                                                                                                                           0x00007f585a78d638:   add    %esi,%edx
   0.28%  │                                                                                                                                           0x00007f585a78d63a:   rol    $0xa,%edx
   0.34%  │                                                                                                                                           0x00007f585a78d63d:   add    %eax,%edx
   0.33%  │                                                                                                                                           0x00007f585a78d63f:   add    $0xffeff47d,%ecx
          │                                                                                                                                           0x00007f585a78d645:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d647:   not    %esi
          │                                                                                                                                           0x00007f585a78d649:   add    0x28(%r15),%ecx
   0.44%  │                                                                                                                                           0x00007f585a78d64d:   or     %edx,%esi
          │                                                                                                                                           0x00007f585a78d64f:   xor    %eax,%esi
   0.19%  │                                                                                                                                           0x00007f585a78d651:   add    %esi,%ecx
   0.31%  │                                                                                                                                           0x00007f585a78d653:   rol    $0xf,%ecx
   0.28%  │                                                                                                                                           0x00007f585a78d656:   add    %edx,%ecx
   0.32%  │                                                                                                                                           0x00007f585a78d658:   add    $0x85845dd1,%ebx
          │                                                                                                                                           0x00007f585a78d65e:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d660:   not    %esi
          │                                                                                                                                           0x00007f585a78d662:   add    0x4(%r15),%ebx
   0.52%  │                                                                                                                                           0x00007f585a78d666:   or     %ecx,%esi
          │                                                                                                                                           0x00007f585a78d668:   xor    %edx,%esi
   0.17%  │                                                                                                                                           0x00007f585a78d66a:   add    %esi,%ebx
   0.30%  │                                                                                                                                           0x00007f585a78d66c:   rol    $0x15,%ebx
   0.32%  │                                                                                                                                           0x00007f585a78d66f:   add    %ecx,%ebx
   0.35%  │                                                                                                                                           0x00007f585a78d671:   add    $0x6fa87e4f,%eax
          │                                                                                                                                           0x00007f585a78d676:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d678:   not    %esi
          │                                                                                                                                           0x00007f585a78d67a:   add    0x20(%r15),%eax
   0.50%  │                                                                                                                                           0x00007f585a78d67e:   or     %ebx,%esi
          │                                                                                                                                           0x00007f585a78d680:   xor    %ecx,%esi
   0.11%  │                                                                                                                                           0x00007f585a78d682:   add    %esi,%eax
   0.33%  │                                                                                                                                           0x00007f585a78d684:   rol    $0x6,%eax
   0.35%  │                                                                                                                                           0x00007f585a78d687:   add    %ebx,%eax
   0.33%  │                                                                                                                                           0x00007f585a78d689:   add    $0xfe2ce6e0,%edx
          │                                                                                                                                           0x00007f585a78d68f:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d691:   not    %esi
          │                                                                                                                                           0x00007f585a78d693:   add    0x3c(%r15),%edx
   0.49%  │                                                                                                                                           0x00007f585a78d697:   or     %eax,%esi
          │                                                                                                                                           0x00007f585a78d699:   xor    %ebx,%esi
   0.13%  │                                                                                                                                           0x00007f585a78d69b:   add    %esi,%edx
   0.29%  │                                                                                                                                           0x00007f585a78d69d:   rol    $0xa,%edx
   0.30%  │                                                                                                                                           0x00007f585a78d6a0:   add    %eax,%edx
   0.32%  │                                                                                                                                           0x00007f585a78d6a2:   add    $0xa3014314,%ecx
          │                                                                                                                                           0x00007f585a78d6a8:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d6aa:   not    %esi
          │                                                                                                                                           0x00007f585a78d6ac:   add    0x18(%r15),%ecx
   0.53%  │                                                                                                                                           0x00007f585a78d6b0:   or     %edx,%esi
          │                                                                                                                                           0x00007f585a78d6b2:   xor    %eax,%esi
   0.14%  │                                                                                                                                           0x00007f585a78d6b4:   add    %esi,%ecx
   0.28%  │                                                                                                                                           0x00007f585a78d6b6:   rol    $0xf,%ecx
   0.34%  │                                                                                                                                           0x00007f585a78d6b9:   add    %edx,%ecx
   0.32%  │                                                                                                                                           0x00007f585a78d6bb:   add    $0x4e0811a1,%ebx
          │                                                                                                                                           0x00007f585a78d6c1:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d6c3:   not    %esi
          │                                                                                                                                           0x00007f585a78d6c5:   add    0x34(%r15),%ebx
   0.48%  │                                                                                                                                           0x00007f585a78d6c9:   or     %ecx,%esi
          │                                                                                                                                           0x00007f585a78d6cb:   xor    %edx,%esi
   0.06%  │                                                                                                                                           0x00007f585a78d6cd:   add    %esi,%ebx
   0.32%  │                                                                                                                                           0x00007f585a78d6cf:   rol    $0x15,%ebx
   0.33%  │                                                                                                                                           0x00007f585a78d6d2:   add    %ecx,%ebx
   0.30%  │                                                                                                                                           0x00007f585a78d6d4:   add    $0xf7537e82,%eax
          │                                                                                                                                           0x00007f585a78d6d9:   mov    %edx,%esi
          │                                                                                                                                           0x00007f585a78d6db:   not    %esi
          │                                                                                                                                           0x00007f585a78d6dd:   add    0x10(%r15),%eax
   0.44%  │                                                                                                                                           0x00007f585a78d6e1:   or     %ebx,%esi
          │                                                                                                                                           0x00007f585a78d6e3:   xor    %ecx,%esi
   0.17%  │                                                                                                                                           0x00007f585a78d6e5:   add    %esi,%eax
   0.36%  │                                                                                                                                           0x00007f585a78d6e7:   rol    $0x6,%eax
   0.34%  │                                                                                                                                           0x00007f585a78d6ea:   add    %ebx,%eax
   0.36%  │                                                                                                                                           0x00007f585a78d6ec:   add    $0xbd3af235,%edx
          │                                                                                                                                           0x00007f585a78d6f2:   mov    %ecx,%esi
          │                                                                                                                                           0x00007f585a78d6f4:   not    %esi
          │                                                                                                                                           0x00007f585a78d6f6:   add    0x2c(%r15),%edx
   0.55%  │                                                                                                                                           0x00007f585a78d6fa:   or     %eax,%esi
          │                                                                                                                                           0x00007f585a78d6fc:   xor    %ebx,%esi
   0.16%  │                                                                                                                                           0x00007f585a78d6fe:   add    %esi,%edx
   0.33%  │                                                                                                                                           0x00007f585a78d700:   rol    $0xa,%edx
   0.31%  │                                                                                                                                           0x00007f585a78d703:   add    %eax,%edx
   0.34%  │                                                                                                                                           0x00007f585a78d705:   add    $0x2ad7d2bb,%ecx
          │                                                                                                                                           0x00007f585a78d70b:   mov    %ebx,%esi
          │                                                                                                                                           0x00007f585a78d70d:   not    %esi
          │                                                                                                                                           0x00007f585a78d70f:   add    0x8(%r15),%ecx
   0.46%  │                                                                                                                                           0x00007f585a78d713:   or     %edx,%esi
          │                                                                                                                                           0x00007f585a78d715:   xor    %eax,%esi
   0.17%  │                                                                                                                                           0x00007f585a78d717:   add    %esi,%ecx
   0.34%  │                                                                                                                                           0x00007f585a78d719:   rol    $0xf,%ecx
   0.29%  │                                                                                                                                           0x00007f585a78d71c:   add    %edx,%ecx
   0.33%  │                                                                                                                                           0x00007f585a78d71e:   add    $0xeb86d391,%ebx
          │                                                                                                                                           0x00007f585a78d724:   mov    %eax,%esi
          │                                                                                                                                           0x00007f585a78d726:   not    %esi
          │                                                                                                                                           0x00007f585a78d728:   add    0x24(%r15),%ebx
   0.44%  │                                                                                                                                           0x00007f585a78d72c:   or     %ecx,%esi
          │                                                                                                                                           0x00007f585a78d72e:   xor    %edx,%esi
   0.17%  │                                                                                                                                           0x00007f585a78d730:   add    %esi,%ebx
   0.29%  │                                                                                                                                           0x00007f585a78d732:   rol    $0x15,%ebx
   0.30%  │                                                                                                                                           0x00007f585a78d735:   add    %ecx,%ebx
   0.33%  │                                                                                                                                           0x00007f585a78d737:   mov    (%rsp),%rdi
          │                                                                                                                                           0x00007f585a78d73b:   add    (%rdi),%eax
          │                                                                                                                                           0x00007f585a78d73d:   mov    %eax,(%rdi)
          │                                                                                                                                           0x00007f585a78d73f:   add    0x4(%rdi),%ebx
   0.31%  │                                                                                                                                           0x00007f585a78d742:   mov    %ebx,0x4(%rdi)
   0.64%  │                                                                                                                                           0x00007f585a78d745:   add    0x8(%rdi),%ecx
          │                                                                                                                                           0x00007f585a78d748:   mov    %ecx,0x8(%rdi)
          │                                                                                                                                           0x00007f585a78d74b:   add    0xc(%rdi),%edx
          │                                                                                                                                           0x00007f585a78d74e:   mov    %edx,0xc(%rdi)
   0.33%  │                                                                                                                                           0x00007f585a78d751:   add    $0x40,%r15
          │                                                                                                                                           0x00007f585a78d755:   addl   $0x40,0x8(%rsp)
          │                                                                                                                                           0x00007f585a78d75a:   mov    0x8(%rsp),%esi
   0.33%  │                                                                                                                                           0x00007f585a78d75e:   cmp    0xc(%rsp),%esi
          ╰                                                                                                                                           0x00007f585a78d762:   jbe    0x00007f585a78d0eb
                                                                                                                                                      0x00007f585a78d768:   mov    %rsi,%rax
                                                                                                                                                      0x00007f585a78d76b:   add    $0x10,%rsp
                                                                                                                                                      0x00007f585a78d76f:   pop    %r15
   0.00%                                                                                                                                              0x00007f585a78d771:   pop    %rsi
                                                                                                                                                      0x00007f585a78d772:   pop    %rdi
                                                                                                                                                      0x00007f585a78d773:   pop    %rbx
                                                                                                                                                      0x00007f585a78d774:   leave  
   0.00%                                                                                                                                              0x00007f585a78d775:   ret    
                                                                                                                                                    --------------------------------------------------------------------------------
                                                                                                                                                    - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                                    <task_queued compile_id='6' method='java.lang.String equals (Ljava/lang/Object;)Z' bytes='56' count='384' iicount='384' level='3' stamp='1.493' comment='tiered' hot_count='384'/>
                                                                                                                                                    - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                                    Decoding RuntimeStub - new_instance Runtime1 stub 0x00007f585a82a210
                                                                                                                                                    --------------------------------------------------------------------------------
                                                                                                                                                      0x00007f585a82a280:   push   %rbp
                                                                                                                                                      0x00007f585a82a281:   mov    %rsp,%rbp
                                                                                                                                                      0x00007f585a82a284:   sub    $0x80,%rsp
                                                                                                                                                      0x00007f585a82a28b:   mov    %rax,0x78(%rsp)
....................................................................................................
  96.63%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.63%         runtime stub  StubRoutines::md5_implCompressMB 
   0.78%               kernel  [unknown] 
   0.70%                       <unknown> 
   0.17%       jvmci, level 4  com.sun.crypto.provider.HmacCore::engineDoFinal, version 2, compile id 1122 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.sun.crypto.provider.HmacCore::engineDoFinal, version 2, compile id 1122 
   0.03%       jvmci, level 4  com.sun.crypto.provider.HmacCore::engineDoFinal, version 2, compile id 1122 
   0.03%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.sun.crypto.provider.HmacCore::engineDoFinal, version 2, compile id 1122 
   0.02%       jvmci, level 4  com.sun.crypto.provider.HmacCore::engineDoFinal, version 2, compile id 1122 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.09%  <...other 319 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.63%         runtime stub  StubRoutines::md5_implCompressMB 
   1.84%               kernel  [unknown] 
   0.73%                       <unknown> 
   0.44%       jvmci, level 4  com.sun.crypto.provider.HmacCore::engineDoFinal, version 2, compile id 1122 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1121 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%            libjvm.so  os::vsnprintf 
   0.00%         libc-2.31.so  __strcmp_avx2 
   0.13%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.63%         runtime stub
   1.84%               kernel
   0.73%                     
   0.53%       jvmci, level 4
   0.10%            libjvm.so
   0.09%         libc-2.31.so
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.00%  libjvmcicompiler.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA1, length = 16384)

# Run progress: 8.33% complete, ETA 00:21:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 101.121 us/op
# Warmup Iteration   2: 67.292 us/op
# Warmup Iteration   3: 67.256 us/op
# Warmup Iteration   4: 67.247 us/op
# Warmup Iteration   5: 67.268 us/op
Iteration   1: 67.250 us/op
Iteration   2: 67.268 us/op
Iteration   3: 67.254 us/op
Iteration   4: 67.249 us/op
Iteration   5: 67.252 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  67.255 ±(99.9%) 0.031 us/op [Average]
  (min, avg, max) = (67.249, 67.255, 67.268), stdev = 0.008
  CI (99.9%): [67.224, 67.285] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 300378 total address lines.
Perf output processed (skipped 61.994 seconds):
 Column 1: cycles (50698 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.DigestBase::implCompressMultiBlock0, version 5, compile id 1133 

 <region is too big to display, has 3681 lines, but threshold is 1000>
....................................................................................................
  96.90%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.90%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 5, compile id 1133 
   0.21%               kernel  [unknown] 
   0.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1140 
   0.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1140 
   0.12%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1140 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1140 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1140 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.95%  <...other 513 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.93%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 5, compile id 1133 
   1.55%               kernel  [unknown] 
   1.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1140 
   0.05%                       <unknown> 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  defaultStream::write 
   0.18%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%       jvmci, level 4
   1.55%               kernel
   0.16%            libjvm.so
   0.09%         libc-2.31.so
   0.05%                     
   0.03%   libpthread-2.31.so
   0.02%               [vdso]
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%           libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA224, length = 16384)

# Run progress: 16.67% complete, ETA 00:19:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 62.908 us/op
# Warmup Iteration   2: 55.628 us/op
# Warmup Iteration   3: 55.229 us/op
# Warmup Iteration   4: 55.227 us/op
# Warmup Iteration   5: 55.210 us/op
Iteration   1: 55.201 us/op
Iteration   2: 55.190 us/op
Iteration   3: 55.216 us/op
Iteration   4: 55.211 us/op
Iteration   5: 55.211 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  55.206 ±(99.9%) 0.039 us/op [Average]
  (min, avg, max) = (55.190, 55.206, 55.216), stdev = 0.010
  CI (99.9%): [55.167, 55.245] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 274783 total address lines.
Perf output processed (skipped 61.520 seconds):
 Column 1: cycles (50819 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1096 lines, but threshold is 1000>
....................................................................................................
  94.38%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.38%        runtime stub  StubRoutines::sha256_implCompressMB 
   1.64%                      <unknown> 
   0.88%              kernel  [unknown] 
   0.41%                      <unknown> 
   0.39%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.26%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.05%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1097 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1100 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1100 
   1.43%  <...other 374 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.03%        runtime stub  StubRoutines::sha256_implCompressMB 
   2.21%                      <unknown> 
   1.88%              kernel  [unknown] 
   0.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1100 
   0.09%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1097 
   0.04%      jvmci, level 4  sun.security.provider.SHA2::implCompress, version 2, compile id 1051 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1128 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.14%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.03%        runtime stub
   2.21%                    
   1.88%              kernel
   0.62%      jvmci, level 4
   0.13%           libjvm.so
   0.09%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA256, length = 16384)

# Run progress: 25.00% complete, ETA 00:17:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 63.449 us/op
# Warmup Iteration   2: 55.235 us/op
# Warmup Iteration   3: 55.232 us/op
# Warmup Iteration   4: 55.244 us/op
# Warmup Iteration   5: 55.236 us/op
Iteration   1: 55.234 us/op
Iteration   2: 55.245 us/op
Iteration   3: 55.198 us/op
Iteration   4: 55.220 us/op
Iteration   5: 55.178 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  55.215 ±(99.9%) 0.105 us/op [Average]
  (min, avg, max) = (55.178, 55.215, 55.245), stdev = 0.027
  CI (99.9%): [55.110, 55.320] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 279631 total address lines.
Perf output processed (skipped 61.843 seconds):
 Column 1: cycles (50465 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1092 lines, but threshold is 1000>
....................................................................................................
  95.07%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.07%        runtime stub  StubRoutines::sha256_implCompressMB 
   2.04%                      <unknown> 
   0.40%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.23%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.05%              kernel  [unknown] 
   0.04%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1121 
   0.04%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1124 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1124 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1124 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1124 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1124 
   1.47%  <...other 357 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.70%        runtime stub  StubRoutines::sha256_implCompressMB 
   2.21%                      <unknown> 
   1.17%              kernel  [unknown] 
   0.55%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1124 
   0.09%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1121 
   0.02%      jvmci, level 4  sun.security.provider.SHA2::implCompress, version 2, compile id 1075 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  os::write 
   0.00%        libc-2.31.so  syscall 
   0.13%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.70%        runtime stub
   2.21%                    
   1.17%              kernel
   0.67%      jvmci, level 4
   0.12%           libjvm.so
   0.10%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.00%          ld-2.31.so
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA384, length = 16384)

# Run progress: 33.33% complete, ETA 00:15:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 46.567 us/op
# Warmup Iteration   2: 39.021 us/op
# Warmup Iteration   3: 39.029 us/op
# Warmup Iteration   4: 39.014 us/op
# Warmup Iteration   5: 39.021 us/op
Iteration   1: 39.013 us/op
Iteration   2: 39.023 us/op
Iteration   3: 39.025 us/op
Iteration   4: 39.019 us/op
Iteration   5: 39.006 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  39.017 ±(99.9%) 0.030 us/op [Average]
  (min, avg, max) = (39.006, 39.017, 39.025), stdev = 0.008
  CI (99.9%): [38.987, 39.047] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 285224 total address lines.
Perf output processed (skipped 61.860 seconds):
 Column 1: cycles (50619 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::sha512_implCompressMB [0x00007f6ea27912c0, 0x00007f6ea2792105] (3653 bytes)
                  --------------------------------------------------------------------------------
                    0x00007f6ea27912c0:   push   %rbp
   0.00%            0x00007f6ea27912c1:   mov    %rsp,%rbp
   0.00%            0x00007f6ea27912c4:   push   %rdx
                    0x00007f6ea27912c5:   push   %rcx
   0.00%            0x00007f6ea27912c6:   mov    %rsp,%rax
                    0x00007f6ea27912c9:   sub    $0x70,%rsp
   0.01%            0x00007f6ea27912cd:   and    $0xffffffffffffffe0,%rsp
                    0x00007f6ea27912d1:   mov    %rax,0x38(%rsp)
                    0x00007f6ea27912d6:   mov    %rbp,0x40(%rsp)
                    0x00007f6ea27912db:   mov    %rbx,0x48(%rsp)
   0.00%            0x00007f6ea27912e0:   mov    %r12,0x50(%rsp)
   0.00%            0x00007f6ea27912e5:   mov    %r13,0x58(%rsp)
                    0x00007f6ea27912ea:   mov    %r14,0x60(%rsp)
                    0x00007f6ea27912ef:   mov    %r15,0x68(%rsp)
                    0x00007f6ea27912f4:   vpblendd $0xf0,%xmm1,%xmm0,%xmm0
   0.00%            0x00007f6ea27912fa:   vpblendd $0xf0,%ymm1,%ymm0,%ymm0
                    0x00007f6ea2791300:   xor    %rax,%rax
   0.03%   ↗        0x00007f6ea2791303:   cmp    %rcx,%rdx
          ╭│        0x00007f6ea2791306:   jae    0x00007f6ea2791317
   0.08%  ││        0x00007f6ea2791308:   add    $0x80,%rdx
   0.07%  ││        0x00007f6ea279130f:   add    $0x80,%rax
   0.00%  │╰        0x00007f6ea2791315:   jmp    0x00007f6ea2791303
   0.01%  ↘         0x00007f6ea2791317:   mov    %rax,%rdx
                    0x00007f6ea279131a:   cmp    $0x0,%rdx
            ╭       0x00007f6ea279131e:   je     0x00007f6ea27920cb
   0.01%    │       0x00007f6ea2791324:   add    %rdi,%rdx
   0.00%    │       0x00007f6ea2791327:   mov    %rdx,0x30(%rsp)
   0.01%    │       0x00007f6ea279132c:   mov    (%rsi),%rax
            │       0x00007f6ea279132f:   mov    0x8(%rsi),%rbx
            │       0x00007f6ea2791333:   mov    0x10(%rsi),%rcx
            │       0x00007f6ea2791337:   mov    0x18(%rsi),%r8
            │       0x00007f6ea279133b:   mov    0x20(%rsi),%rdx
            │       0x00007f6ea279133f:   mov    0x28(%rsi),%r9
            │       0x00007f6ea2791343:   mov    0x38(%rsi),%r11
   0.01%    │       0x00007f6ea2791347:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007f6ea2790460
            │       0x00007f6ea279134f:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007f6ea2790480
            │       0x00007f6ea2791357:   mov    0x30(%rsi),%r10
            │  ↗    0x00007f6ea279135b:   movabs $0x7f6ebc061180,%rbp
   0.02%    │  │    0x00007f6ea2791365:   vmovdqu (%rdi),%ymm4
   0.17%    │  │    0x00007f6ea2791369:   vpshufb %ymm9,%ymm4,%ymm4
   0.18%    │  │    0x00007f6ea279136e:   vmovdqu 0x20(%rdi),%ymm5
   0.02%    │  │    0x00007f6ea2791373:   vpshufb %ymm9,%ymm5,%ymm5
   0.08%    │  │    0x00007f6ea2791378:   vmovdqu 0x40(%rdi),%ymm6
   0.04%    │  │    0x00007f6ea279137d:   vpshufb %ymm9,%ymm6,%ymm6
   0.08%    │  │    0x00007f6ea2791382:   vmovdqu 0x60(%rdi),%ymm7
   0.05%    │  │    0x00007f6ea2791387:   vpshufb %ymm9,%ymm7,%ymm7
   0.08%    │  │    0x00007f6ea279138c:   mov    %rdi,0x28(%rsp)
            │  │    0x00007f6ea2791391:   movq   $0x4,0x20(%rsp)
   0.05%    │  │    0x00007f6ea279139a:   nopw   0x0(%rax,%rax,1)
   0.04%    │↗ │    0x00007f6ea27913a0:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.16%    ││ │    0x00007f6ea27913a5:   vmovdqu %ymm0,(%rsp)
   0.13%    ││ │    0x00007f6ea27913aa:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.24%    ││ │    0x00007f6ea27913b0:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.33%    ││ │    0x00007f6ea27913b6:   vpaddq %ymm4,%ymm0,%ymm0
   0.63%    ││ │    0x00007f6ea27913ba:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.12%    ││ │    0x00007f6ea27913c0:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.12%    ││ │    0x00007f6ea27913c6:   vpsrlq $0x1,%ymm1,%ymm2
   0.12%    ││ │    0x00007f6ea27913cb:   vpsllq $0x3f,%ymm1,%ymm3
   0.26%    ││ │    0x00007f6ea27913d0:   vpor   %ymm2,%ymm3,%ymm3
   0.20%    ││ │    0x00007f6ea27913d4:   vpsrlq $0x7,%ymm1,%ymm8
   0.08%    ││ │    0x00007f6ea27913d9:   mov    %rax,%rdi
   0.04%    ││ │    0x00007f6ea27913dc:   rorx   $0x29,%rdx,%r13
   0.17%    ││ │    0x00007f6ea27913e2:   rorx   $0x12,%rdx,%r14
   0.18%    ││ │    0x00007f6ea27913e8:   add    (%rsp),%r11
   0.08%    ││ │    0x00007f6ea27913ec:   or     %rcx,%rdi
   0.07%    ││ │    0x00007f6ea27913ef:   mov    %r9,%r15
   0.19%    ││ │    0x00007f6ea27913f2:   xor    %r10,%r15
   0.19%    ││ │    0x00007f6ea27913f5:   rorx   $0x22,%rax,%r12
   0.08%    ││ │    0x00007f6ea27913fb:   xor    %r14,%r13
   0.05%    ││ │    0x00007f6ea27913fe:   rorx   $0xe,%rdx,%r14
   0.17%    ││ │    0x00007f6ea2791404:   and    %rdx,%r15
   0.19%    ││ │    0x00007f6ea2791407:   add    %r11,%r8
   0.09%    ││ │    0x00007f6ea279140a:   and    %rbx,%rdi
   0.04%    ││ │    0x00007f6ea279140d:   xor    %r14,%r13
   0.18%    ││ │    0x00007f6ea2791410:   rorx   $0x27,%rax,%r14
   0.19%    ││ │    0x00007f6ea2791416:   xor    %r12,%r14
   0.07%    ││ │    0x00007f6ea2791419:   rorx   $0x1c,%rax,%r12
   0.05%    ││ │    0x00007f6ea279141f:   xor    %r10,%r15
   0.17%    ││ │    0x00007f6ea2791422:   xor    %r12,%r14
   0.19%    ││ │    0x00007f6ea2791425:   mov    %rax,%r12
   0.08%    ││ │    0x00007f6ea2791428:   and    %rcx,%r12
   0.06%    ││ │    0x00007f6ea279142b:   add    %r13,%r15
   0.19%    ││ │    0x00007f6ea279142e:   or     %r12,%rdi
   0.19%    ││ │    0x00007f6ea2791431:   add    %r14,%r11
   0.07%    ││ │    0x00007f6ea2791434:   add    %r15,%r8
   0.04%    ││ │    0x00007f6ea2791437:   add    %r15,%r11
   0.16%    ││ │    0x00007f6ea279143a:   add    %rdi,%r11
   0.19%    ││ │    0x00007f6ea279143d:   vpsrlq $0x8,%ymm1,%ymm2
   0.07%    ││ │    0x00007f6ea2791442:   vpsllq $0x38,%ymm1,%ymm1
   0.08%    ││ │    0x00007f6ea2791447:   vpor   %ymm2,%ymm1,%ymm1
   0.20%    ││ │    0x00007f6ea279144b:   vpxor  %ymm8,%ymm3,%ymm3
   0.21%    ││ │    0x00007f6ea2791450:   vpxor  %ymm1,%ymm3,%ymm1
   0.06%    ││ │    0x00007f6ea2791454:   vpaddq %ymm1,%ymm0,%ymm0
   0.06%    ││ │    0x00007f6ea2791458:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.16%    ││ │    0x00007f6ea279145e:   vpand  %ymm10,%ymm0,%ymm0
   0.21%    ││ │    0x00007f6ea2791463:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.09%    ││ │    0x00007f6ea2791469:   vpsrlq $0x6,%ymm2,%ymm8
   0.06%    ││ │    0x00007f6ea279146e:   mov    %r11,%rdi
   0.16%    ││ │    0x00007f6ea2791471:   rorx   $0x29,%r8,%r13
   0.21%    ││ │    0x00007f6ea2791477:   rorx   $0x12,%r8,%r14
   0.08%    ││ │    0x00007f6ea279147d:   add    0x8(%rsp),%r10
   0.05%    ││ │    0x00007f6ea2791482:   or     %rbx,%rdi
   0.13%    ││ │    0x00007f6ea2791485:   mov    %rdx,%r15
   0.17%    ││ │    0x00007f6ea2791488:   xor    %r9,%r15
   0.08%    ││ │    0x00007f6ea279148b:   rorx   $0x22,%r11,%r12
   0.06%    ││ │    0x00007f6ea2791491:   xor    %r14,%r13
   0.18%    ││ │    0x00007f6ea2791494:   rorx   $0xe,%r8,%r14
   0.15%    ││ │    0x00007f6ea279149a:   and    %r8,%r15
   0.08%    ││ │    0x00007f6ea279149d:   add    %r10,%rcx
   0.03%    ││ │    0x00007f6ea27914a0:   and    %rax,%rdi
   0.19%    ││ │    0x00007f6ea27914a3:   xor    %r14,%r13
   0.16%    ││ │    0x00007f6ea27914a6:   rorx   $0x27,%r11,%r14
   0.07%    ││ │    0x00007f6ea27914ac:   xor    %r12,%r14
   0.06%    ││ │    0x00007f6ea27914af:   rorx   $0x1c,%r11,%r12
   0.19%    ││ │    0x00007f6ea27914b5:   xor    %r9,%r15
   0.19%    ││ │    0x00007f6ea27914b8:   xor    %r12,%r14
   0.07%    ││ │    0x00007f6ea27914bb:   mov    %r11,%r12
   0.04%    ││ │    0x00007f6ea27914be:   and    %rbx,%r12
   0.17%    ││ │    0x00007f6ea27914c1:   add    %r13,%r15
   0.20%    ││ │    0x00007f6ea27914c4:   or     %r12,%rdi
   0.05%    ││ │    0x00007f6ea27914c7:   add    %r14,%r10
   0.06%    ││ │    0x00007f6ea27914ca:   add    %r15,%rcx
   0.20%    ││ │    0x00007f6ea27914cd:   add    %r15,%r10
   0.18%    ││ │    0x00007f6ea27914d0:   add    %rdi,%r10
   0.07%    ││ │    0x00007f6ea27914d3:   vpsrlq $0x13,%ymm2,%ymm3
   0.03%    ││ │    0x00007f6ea27914d8:   vpsllq $0x2d,%ymm2,%ymm1
   0.18%    ││ │    0x00007f6ea27914dd:   vpor   %ymm1,%ymm3,%ymm3
   0.17%    ││ │    0x00007f6ea27914e1:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%    ││ │    0x00007f6ea27914e5:   vpsrlq $0x3d,%ymm2,%ymm3
   0.06%    ││ │    0x00007f6ea27914ea:   vpsllq $0x3,%ymm2,%ymm1
   0.17%    ││ │    0x00007f6ea27914ef:   vpor   %ymm1,%ymm3,%ymm3
   0.16%    ││ │    0x00007f6ea27914f3:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%    ││ │    0x00007f6ea27914f7:   vpaddq %ymm8,%ymm4,%ymm4
   0.04%    ││ │    0x00007f6ea27914fc:   vpsrlq $0x6,%ymm4,%ymm8
   0.19%    ││ │    0x00007f6ea2791501:   mov    %r10,%rdi
   0.18%    ││ │    0x00007f6ea2791504:   rorx   $0x29,%rcx,%r13
   0.07%    ││ │    0x00007f6ea279150a:   rorx   $0x12,%rcx,%r14
   0.04%    ││ │    0x00007f6ea2791510:   add    0x10(%rsp),%r9
   0.18%    ││ │    0x00007f6ea2791515:   or     %rax,%rdi
   0.19%    ││ │    0x00007f6ea2791518:   mov    %r8,%r15
   0.07%    ││ │    0x00007f6ea279151b:   xor    %rdx,%r15
   0.04%    ││ │    0x00007f6ea279151e:   rorx   $0x22,%r10,%r12
   0.17%    ││ │    0x00007f6ea2791524:   xor    %r14,%r13
   0.16%    ││ │    0x00007f6ea2791527:   rorx   $0xe,%rcx,%r14
   0.07%    ││ │    0x00007f6ea279152d:   and    %rcx,%r15
   0.06%    ││ │    0x00007f6ea2791530:   add    %r9,%rbx
   0.15%    ││ │    0x00007f6ea2791533:   and    %r11,%rdi
   0.20%    ││ │    0x00007f6ea2791536:   xor    %r14,%r13
   0.08%    ││ │    0x00007f6ea2791539:   rorx   $0x27,%r10,%r14
   0.05%    ││ │    0x00007f6ea279153f:   xor    %r12,%r14
   0.20%    ││ │    0x00007f6ea2791542:   rorx   $0x1c,%r10,%r12
   0.23%    ││ │    0x00007f6ea2791548:   xor    %rdx,%r15
   0.05%    ││ │    0x00007f6ea279154b:   xor    %r12,%r14
   0.04%    ││ │    0x00007f6ea279154e:   mov    %r10,%r12
   0.17%    ││ │    0x00007f6ea2791551:   and    %rax,%r12
   0.20%    ││ │    0x00007f6ea2791554:   add    %r13,%r15
   0.07%    ││ │    0x00007f6ea2791557:   or     %r12,%rdi
   0.06%    ││ │    0x00007f6ea279155a:   add    %r14,%r9
   0.21%    ││ │    0x00007f6ea279155d:   add    %r15,%rbx
   0.13%    ││ │    0x00007f6ea2791560:   add    %r15,%r9
   0.07%    ││ │    0x00007f6ea2791563:   add    %rdi,%r9
   0.06%    ││ │    0x00007f6ea2791566:   vpsrlq $0x13,%ymm4,%ymm3
   0.19%    ││ │    0x00007f6ea279156b:   vpsllq $0x2d,%ymm4,%ymm1
   0.19%    ││ │    0x00007f6ea2791570:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007f6ea2791574:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%    ││ │    0x00007f6ea2791578:   vpsrlq $0x3d,%ymm4,%ymm3
   0.21%    ││ │    0x00007f6ea279157d:   vpsllq $0x3,%ymm4,%ymm1
   0.20%    ││ │    0x00007f6ea2791582:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007f6ea2791586:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f6ea279158a:   vpaddq %ymm8,%ymm0,%ymm2
   0.22%    ││ │    0x00007f6ea279158f:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.21%    ││ │    0x00007f6ea2791595:   mov    %r9,%rdi
   0.07%    ││ │    0x00007f6ea2791598:   rorx   $0x29,%rbx,%r13
   0.04%    ││ │    0x00007f6ea279159e:   rorx   $0x12,%rbx,%r14
   0.19%    ││ │    0x00007f6ea27915a4:   add    0x18(%rsp),%rdx
   0.24%    ││ │    0x00007f6ea27915a9:   or     %r11,%rdi
   0.07%    ││ │    0x00007f6ea27915ac:   mov    %rcx,%r15
   0.04%    ││ │    0x00007f6ea27915af:   xor    %r8,%r15
   0.17%    ││ │    0x00007f6ea27915b2:   rorx   $0x22,%r9,%r12
   0.23%    ││ │    0x00007f6ea27915b8:   xor    %r14,%r13
   0.08%    ││ │    0x00007f6ea27915bb:   rorx   $0xe,%rbx,%r14
   0.04%    ││ │    0x00007f6ea27915c1:   and    %rbx,%r15
   0.15%    ││ │    0x00007f6ea27915c4:   add    %rdx,%rax
   0.22%    ││ │    0x00007f6ea27915c7:   and    %r10,%rdi
   0.07%    ││ │    0x00007f6ea27915ca:   xor    %r14,%r13
   0.03%    ││ │    0x00007f6ea27915cd:   rorx   $0x27,%r9,%r14
   0.18%    ││ │    0x00007f6ea27915d3:   xor    %r12,%r14
   0.21%    ││ │    0x00007f6ea27915d6:   rorx   $0x1c,%r9,%r12
   0.08%    ││ │    0x00007f6ea27915dc:   xor    %r8,%r15
   0.06%    ││ │    0x00007f6ea27915df:   xor    %r12,%r14
   0.13%    ││ │    0x00007f6ea27915e2:   mov    %r9,%r12
   0.20%    ││ │    0x00007f6ea27915e5:   and    %r11,%r12
   0.06%    ││ │    0x00007f6ea27915e8:   add    %r13,%r15
   0.05%    ││ │    0x00007f6ea27915eb:   or     %r12,%rdi
   0.15%    ││ │    0x00007f6ea27915ee:   add    %r14,%rdx
   0.22%    ││ │    0x00007f6ea27915f1:   add    %r15,%rax
   0.08%    ││ │    0x00007f6ea27915f4:   add    %r15,%rdx
   0.03%    ││ │    0x00007f6ea27915f7:   add    %rdi,%rdx
   0.18%    ││ │    0x00007f6ea27915fa:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.24%    ││ │    0x00007f6ea27915ff:   vmovdqu %ymm0,(%rsp)
   0.05%    ││ │    0x00007f6ea2791604:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.05%    ││ │    0x00007f6ea279160a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.19%    ││ │    0x00007f6ea2791610:   vpaddq %ymm5,%ymm0,%ymm0
   0.29%    ││ │    0x00007f6ea2791614:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.06%    ││ │    0x00007f6ea279161a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.05%    ││ │    0x00007f6ea2791620:   vpsrlq $0x1,%ymm1,%ymm2
   0.18%    ││ │    0x00007f6ea2791625:   vpsllq $0x3f,%ymm1,%ymm3
   0.22%    ││ │    0x00007f6ea279162a:   vpor   %ymm2,%ymm3,%ymm3
   0.09%    ││ │    0x00007f6ea279162e:   vpsrlq $0x7,%ymm1,%ymm8
   0.03%    ││ │    0x00007f6ea2791633:   mov    %rdx,%rdi
   0.16%    ││ │    0x00007f6ea2791636:   rorx   $0x29,%rax,%r13
   0.23%    ││ │    0x00007f6ea279163c:   rorx   $0x12,%rax,%r14
   0.07%    ││ │    0x00007f6ea2791642:   add    (%rsp),%r8
   0.06%    ││ │    0x00007f6ea2791646:   or     %r10,%rdi
   0.20%    ││ │    0x00007f6ea2791649:   mov    %rbx,%r15
   0.20%    ││ │    0x00007f6ea279164c:   xor    %rcx,%r15
   0.08%    ││ │    0x00007f6ea279164f:   rorx   $0x22,%rdx,%r12
   0.04%    ││ │    0x00007f6ea2791655:   xor    %r14,%r13
   0.15%    ││ │    0x00007f6ea2791658:   rorx   $0xe,%rax,%r14
   0.27%    ││ │    0x00007f6ea279165e:   and    %rax,%r15
   0.09%    ││ │    0x00007f6ea2791661:   add    %r8,%r11
   0.05%    ││ │    0x00007f6ea2791664:   and    %r9,%rdi
   0.14%    ││ │    0x00007f6ea2791667:   xor    %r14,%r13
   0.23%    ││ │    0x00007f6ea279166a:   rorx   $0x27,%rdx,%r14
   0.07%    ││ │    0x00007f6ea2791670:   xor    %r12,%r14
   0.05%    ││ │    0x00007f6ea2791673:   rorx   $0x1c,%rdx,%r12
   0.17%    ││ │    0x00007f6ea2791679:   xor    %rcx,%r15
   0.24%    ││ │    0x00007f6ea279167c:   xor    %r12,%r14
   0.06%    ││ │    0x00007f6ea279167f:   mov    %rdx,%r12
   0.04%    ││ │    0x00007f6ea2791682:   and    %r10,%r12
   0.16%    ││ │    0x00007f6ea2791685:   add    %r13,%r15
   0.22%    ││ │    0x00007f6ea2791688:   or     %r12,%rdi
   0.10%    ││ │    0x00007f6ea279168b:   add    %r14,%r8
   0.03%    ││ │    0x00007f6ea279168e:   add    %r15,%r11
   0.13%    ││ │    0x00007f6ea2791691:   add    %r15,%r8
   0.23%    ││ │    0x00007f6ea2791694:   add    %rdi,%r8
   0.07%    ││ │    0x00007f6ea2791697:   vpsrlq $0x8,%ymm1,%ymm2
   0.03%    ││ │    0x00007f6ea279169c:   vpsllq $0x38,%ymm1,%ymm1
   0.17%    ││ │    0x00007f6ea27916a1:   vpor   %ymm2,%ymm1,%ymm1
   0.26%    ││ │    0x00007f6ea27916a5:   vpxor  %ymm8,%ymm3,%ymm3
   0.09%    ││ │    0x00007f6ea27916aa:   vpxor  %ymm1,%ymm3,%ymm1
   0.05%    ││ │    0x00007f6ea27916ae:   vpaddq %ymm1,%ymm0,%ymm0
   0.15%    ││ │    0x00007f6ea27916b2:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.23%    ││ │    0x00007f6ea27916b8:   vpand  %ymm10,%ymm0,%ymm0
   0.08%    ││ │    0x00007f6ea27916bd:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.06%    ││ │    0x00007f6ea27916c3:   vpsrlq $0x6,%ymm2,%ymm8
   0.11%    ││ │    0x00007f6ea27916c8:   mov    %r8,%rdi
   0.27%    ││ │    0x00007f6ea27916cb:   rorx   $0x29,%r11,%r13
   0.08%    ││ │    0x00007f6ea27916d1:   rorx   $0x12,%r11,%r14
   0.05%    ││ │    0x00007f6ea27916d7:   add    0x8(%rsp),%rcx
   0.16%    ││ │    0x00007f6ea27916dc:   or     %r9,%rdi
   0.19%    ││ │    0x00007f6ea27916df:   mov    %rax,%r15
   0.08%    ││ │    0x00007f6ea27916e2:   xor    %rbx,%r15
   0.04%    ││ │    0x00007f6ea27916e5:   rorx   $0x22,%r8,%r12
   0.16%    ││ │    0x00007f6ea27916eb:   xor    %r14,%r13
   0.26%    ││ │    0x00007f6ea27916ee:   rorx   $0xe,%r11,%r14
   0.08%    ││ │    0x00007f6ea27916f4:   and    %r11,%r15
   0.04%    ││ │    0x00007f6ea27916f7:   add    %rcx,%r10
   0.15%    ││ │    0x00007f6ea27916fa:   and    %rdx,%rdi
   0.20%    ││ │    0x00007f6ea27916fd:   xor    %r14,%r13
   0.07%    ││ │    0x00007f6ea2791700:   rorx   $0x27,%r8,%r14
   0.06%    ││ │    0x00007f6ea2791706:   xor    %r12,%r14
   0.18%    ││ │    0x00007f6ea2791709:   rorx   $0x1c,%r8,%r12
   0.20%    ││ │    0x00007f6ea279170f:   xor    %rbx,%r15
   0.08%    ││ │    0x00007f6ea2791712:   xor    %r12,%r14
   0.05%    ││ │    0x00007f6ea2791715:   mov    %r8,%r12
   0.15%    ││ │    0x00007f6ea2791718:   and    %r9,%r12
   0.20%    ││ │    0x00007f6ea279171b:   add    %r13,%r15
   0.07%    ││ │    0x00007f6ea279171e:   or     %r12,%rdi
   0.04%    ││ │    0x00007f6ea2791721:   add    %r14,%rcx
   0.14%    ││ │    0x00007f6ea2791724:   add    %r15,%r10
   0.22%    ││ │    0x00007f6ea2791727:   add    %r15,%rcx
   0.09%    ││ │    0x00007f6ea279172a:   add    %rdi,%rcx
   0.05%    ││ │    0x00007f6ea279172d:   vpsrlq $0x13,%ymm2,%ymm3
   0.16%    ││ │    0x00007f6ea2791732:   vpsllq $0x2d,%ymm2,%ymm1
   0.21%    ││ │    0x00007f6ea2791737:   vpor   %ymm1,%ymm3,%ymm3
   0.10%    ││ │    0x00007f6ea279173b:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007f6ea279173f:   vpsrlq $0x3d,%ymm2,%ymm3
   0.16%    ││ │    0x00007f6ea2791744:   vpsllq $0x3,%ymm2,%ymm1
   0.22%    ││ │    0x00007f6ea2791749:   vpor   %ymm1,%ymm3,%ymm3
   0.10%    ││ │    0x00007f6ea279174d:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f6ea2791751:   vpaddq %ymm8,%ymm5,%ymm5
   0.16%    ││ │    0x00007f6ea2791756:   vpsrlq $0x6,%ymm5,%ymm8
   0.25%    ││ │    0x00007f6ea279175b:   mov    %rcx,%rdi
   0.10%    ││ │    0x00007f6ea279175e:   rorx   $0x29,%r10,%r13
   0.02%    ││ │    0x00007f6ea2791764:   rorx   $0x12,%r10,%r14
   0.15%    ││ │    0x00007f6ea279176a:   add    0x10(%rsp),%rbx
   0.22%    ││ │    0x00007f6ea279176f:   or     %rdx,%rdi
   0.07%    ││ │    0x00007f6ea2791772:   mov    %r11,%r15
   0.04%    ││ │    0x00007f6ea2791775:   xor    %rax,%r15
   0.12%    ││ │    0x00007f6ea2791778:   rorx   $0x22,%rcx,%r12
   0.23%    ││ │    0x00007f6ea279177e:   xor    %r14,%r13
   0.08%    ││ │    0x00007f6ea2791781:   rorx   $0xe,%r10,%r14
   0.03%    ││ │    0x00007f6ea2791787:   and    %r10,%r15
   0.13%    ││ │    0x00007f6ea279178a:   add    %rbx,%r9
   0.24%    ││ │    0x00007f6ea279178d:   and    %r8,%rdi
   0.09%    ││ │    0x00007f6ea2791790:   xor    %r14,%r13
   0.02%    ││ │    0x00007f6ea2791793:   rorx   $0x27,%rcx,%r14
   0.12%    ││ │    0x00007f6ea2791799:   xor    %r12,%r14
   0.23%    ││ │    0x00007f6ea279179c:   rorx   $0x1c,%rcx,%r12
   0.09%    ││ │    0x00007f6ea27917a2:   xor    %rax,%r15
   0.05%    ││ │    0x00007f6ea27917a5:   xor    %r12,%r14
   0.15%    ││ │    0x00007f6ea27917a8:   mov    %rcx,%r12
   0.20%    ││ │    0x00007f6ea27917ab:   and    %rdx,%r12
   0.07%    ││ │    0x00007f6ea27917ae:   add    %r13,%r15
   0.04%    ││ │    0x00007f6ea27917b1:   or     %r12,%rdi
   0.14%    ││ │    0x00007f6ea27917b4:   add    %r14,%rbx
   0.20%    ││ │    0x00007f6ea27917b7:   add    %r15,%r9
   0.08%    ││ │    0x00007f6ea27917ba:   add    %r15,%rbx
   0.05%    ││ │    0x00007f6ea27917bd:   add    %rdi,%rbx
   0.12%    ││ │    0x00007f6ea27917c0:   vpsrlq $0x13,%ymm5,%ymm3
   0.22%    ││ │    0x00007f6ea27917c5:   vpsllq $0x2d,%ymm5,%ymm1
   0.11%    ││ │    0x00007f6ea27917ca:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │    0x00007f6ea27917ce:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%    ││ │    0x00007f6ea27917d2:   vpsrlq $0x3d,%ymm5,%ymm3
   0.21%    ││ │    0x00007f6ea27917d7:   vpsllq $0x3,%ymm5,%ymm1
   0.09%    ││ │    0x00007f6ea27917dc:   vpor   %ymm1,%ymm3,%ymm3
   0.06%    ││ │    0x00007f6ea27917e0:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%    ││ │    0x00007f6ea27917e4:   vpaddq %ymm8,%ymm0,%ymm2
   0.25%    ││ │    0x00007f6ea27917e9:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.13%    ││ │    0x00007f6ea27917ef:   mov    %rbx,%rdi
   0.03%    ││ │    0x00007f6ea27917f2:   rorx   $0x29,%r9,%r13
   0.12%    ││ │    0x00007f6ea27917f8:   rorx   $0x12,%r9,%r14
   0.23%    ││ │    0x00007f6ea27917fe:   add    0x18(%rsp),%rax
   0.12%    ││ │    0x00007f6ea2791803:   or     %r8,%rdi
   0.06%    ││ │    0x00007f6ea2791806:   mov    %r10,%r15
   0.13%    ││ │    0x00007f6ea2791809:   xor    %r11,%r15
   0.22%    ││ │    0x00007f6ea279180c:   rorx   $0x22,%rbx,%r12
   0.13%    ││ │    0x00007f6ea2791812:   xor    %r14,%r13
   0.02%    ││ │    0x00007f6ea2791815:   rorx   $0xe,%r9,%r14
   0.15%    ││ │    0x00007f6ea279181b:   and    %r9,%r15
   0.22%    ││ │    0x00007f6ea279181e:   add    %rax,%rdx
   0.11%    ││ │    0x00007f6ea2791821:   and    %rcx,%rdi
   0.03%    ││ │    0x00007f6ea2791824:   xor    %r14,%r13
   0.14%    ││ │    0x00007f6ea2791827:   rorx   $0x27,%rbx,%r14
   0.21%    ││ │    0x00007f6ea279182d:   xor    %r12,%r14
   0.12%    ││ │    0x00007f6ea2791830:   rorx   $0x1c,%rbx,%r12
   0.04%    ││ │    0x00007f6ea2791836:   xor    %r11,%r15
   0.12%    ││ │    0x00007f6ea2791839:   xor    %r12,%r14
   0.25%    ││ │    0x00007f6ea279183c:   mov    %rbx,%r12
   0.10%    ││ │    0x00007f6ea279183f:   and    %r8,%r12
   0.03%    ││ │    0x00007f6ea2791842:   add    %r13,%r15
   0.15%    ││ │    0x00007f6ea2791845:   or     %r12,%rdi
   0.23%    ││ │    0x00007f6ea2791848:   add    %r14,%rax
   0.12%    ││ │    0x00007f6ea279184b:   add    %r15,%rdx
   0.03%    ││ │    0x00007f6ea279184e:   add    %r15,%rax
   0.13%    ││ │    0x00007f6ea2791851:   add    %rdi,%rax
   0.25%    ││ │    0x00007f6ea2791854:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.13%    ││ │    0x00007f6ea2791859:   vmovdqu %ymm0,(%rsp)
   0.05%    ││ │    0x00007f6ea279185e:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.12%    ││ │    0x00007f6ea2791864:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.24%    ││ │    0x00007f6ea279186a:   vpaddq %ymm6,%ymm0,%ymm0
   0.21%    ││ │    0x00007f6ea279186e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.03%    ││ │    0x00007f6ea2791874:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.17%    ││ │    0x00007f6ea279187a:   vpsrlq $0x1,%ymm1,%ymm2
   0.20%    ││ │    0x00007f6ea279187f:   vpsllq $0x3f,%ymm1,%ymm3
   0.16%    ││ │    0x00007f6ea2791884:   vpor   %ymm2,%ymm3,%ymm3
   0.03%    ││ │    0x00007f6ea2791888:   vpsrlq $0x7,%ymm1,%ymm8
   0.13%    ││ │    0x00007f6ea279188d:   mov    %rax,%rdi
   0.14%    ││ │    0x00007f6ea2791890:   rorx   $0x29,%rdx,%r13
   0.15%    ││ │    0x00007f6ea2791896:   rorx   $0x12,%rdx,%r14
   0.04%    ││ │    0x00007f6ea279189c:   add    (%rsp),%r11
   0.12%    ││ │    0x00007f6ea27918a0:   or     %rcx,%rdi
   0.19%    ││ │    0x00007f6ea27918a3:   mov    %r9,%r15
   0.13%    ││ │    0x00007f6ea27918a6:   xor    %r10,%r15
   0.04%    ││ │    0x00007f6ea27918a9:   rorx   $0x22,%rax,%r12
   0.12%    ││ │    0x00007f6ea27918af:   xor    %r14,%r13
   0.21%    ││ │    0x00007f6ea27918b2:   rorx   $0xe,%rdx,%r14
   0.15%    ││ │    0x00007f6ea27918b8:   and    %rdx,%r15
   0.05%    ││ │    0x00007f6ea27918bb:   add    %r11,%r8
   0.12%    ││ │    0x00007f6ea27918be:   and    %rbx,%rdi
   0.14%    ││ │    0x00007f6ea27918c1:   xor    %r14,%r13
   0.14%    ││ │    0x00007f6ea27918c4:   rorx   $0x27,%rax,%r14
   0.04%    ││ │    0x00007f6ea27918ca:   xor    %r12,%r14
   0.11%    ││ │    0x00007f6ea27918cd:   rorx   $0x1c,%rax,%r12
   0.20%    ││ │    0x00007f6ea27918d3:   xor    %r10,%r15
   0.14%    ││ │    0x00007f6ea27918d6:   xor    %r12,%r14
   0.03%    ││ │    0x00007f6ea27918d9:   mov    %rax,%r12
   0.10%    ││ │    0x00007f6ea27918dc:   and    %rcx,%r12
   0.19%    ││ │    0x00007f6ea27918df:   add    %r13,%r15
   0.14%    ││ │    0x00007f6ea27918e2:   or     %r12,%rdi
   0.03%    ││ │    0x00007f6ea27918e5:   add    %r14,%r11
   0.12%    ││ │    0x00007f6ea27918e8:   add    %r15,%r8
   0.17%    ││ │    0x00007f6ea27918eb:   add    %r15,%r11
   0.17%    ││ │    0x00007f6ea27918ee:   add    %rdi,%r11
   0.04%    ││ │    0x00007f6ea27918f1:   vpsrlq $0x8,%ymm1,%ymm2
   0.15%    ││ │    0x00007f6ea27918f6:   vpsllq $0x38,%ymm1,%ymm1
   0.18%    ││ │    0x00007f6ea27918fb:   vpor   %ymm2,%ymm1,%ymm1
   0.15%    ││ │    0x00007f6ea27918ff:   vpxor  %ymm8,%ymm3,%ymm3
   0.04%    ││ │    0x00007f6ea2791904:   vpxor  %ymm1,%ymm3,%ymm1
   0.15%    ││ │    0x00007f6ea2791908:   vpaddq %ymm1,%ymm0,%ymm0
   0.18%    ││ │    0x00007f6ea279190c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.14%    ││ │    0x00007f6ea2791912:   vpand  %ymm10,%ymm0,%ymm0
   0.05%    ││ │    0x00007f6ea2791917:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.11%    ││ │    0x00007f6ea279191d:   vpsrlq $0x6,%ymm2,%ymm8
   0.17%    ││ │    0x00007f6ea2791922:   mov    %r11,%rdi
   0.16%    ││ │    0x00007f6ea2791925:   rorx   $0x29,%r8,%r13
   0.07%    ││ │    0x00007f6ea279192b:   rorx   $0x12,%r8,%r14
   0.12%    ││ │    0x00007f6ea2791931:   add    0x8(%rsp),%r10
   0.20%    ││ │    0x00007f6ea2791936:   or     %rbx,%rdi
   0.15%    ││ │    0x00007f6ea2791939:   mov    %rdx,%r15
   0.04%    ││ │    0x00007f6ea279193c:   xor    %r9,%r15
   0.09%    ││ │    0x00007f6ea279193f:   rorx   $0x22,%r11,%r12
   0.18%    ││ │    0x00007f6ea2791945:   xor    %r14,%r13
   0.14%    ││ │    0x00007f6ea2791948:   rorx   $0xe,%r8,%r14
   0.05%    ││ │    0x00007f6ea279194e:   and    %r8,%r15
   0.12%    ││ │    0x00007f6ea2791951:   add    %r10,%rcx
   0.18%    ││ │    0x00007f6ea2791954:   and    %rax,%rdi
   0.14%    ││ │    0x00007f6ea2791957:   xor    %r14,%r13
   0.05%    ││ │    0x00007f6ea279195a:   rorx   $0x27,%r11,%r14
   0.12%    ││ │    0x00007f6ea2791960:   xor    %r12,%r14
   0.17%    ││ │    0x00007f6ea2791963:   rorx   $0x1c,%r11,%r12
   0.14%    ││ │    0x00007f6ea2791969:   xor    %r9,%r15
   0.07%    ││ │    0x00007f6ea279196c:   xor    %r12,%r14
   0.12%    ││ │    0x00007f6ea279196f:   mov    %r11,%r12
   0.18%    ││ │    0x00007f6ea2791972:   and    %rbx,%r12
   0.17%    ││ │    0x00007f6ea2791975:   add    %r13,%r15
   0.06%    ││ │    0x00007f6ea2791978:   or     %r12,%rdi
   0.11%    ││ │    0x00007f6ea279197b:   add    %r14,%r10
   0.14%    ││ │    0x00007f6ea279197e:   add    %r15,%rcx
   0.16%    ││ │    0x00007f6ea2791981:   add    %r15,%r10
   0.04%    ││ │    0x00007f6ea2791984:   add    %rdi,%r10
   0.09%    ││ │    0x00007f6ea2791987:   vpsrlq $0x13,%ymm2,%ymm3
   0.17%    ││ │    0x00007f6ea279198c:   vpsllq $0x2d,%ymm2,%ymm1
   0.15%    ││ │    0x00007f6ea2791991:   vpor   %ymm1,%ymm3,%ymm3
   0.06%    ││ │    0x00007f6ea2791995:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%    ││ │    0x00007f6ea2791999:   vpsrlq $0x3d,%ymm2,%ymm3
   0.20%    ││ │    0x00007f6ea279199e:   vpsllq $0x3,%ymm2,%ymm1
   0.15%    ││ │    0x00007f6ea27919a3:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │    0x00007f6ea27919a7:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%    ││ │    0x00007f6ea27919ab:   vpaddq %ymm8,%ymm6,%ymm6
   0.20%    ││ │    0x00007f6ea27919b0:   vpsrlq $0x6,%ymm6,%ymm8
   0.15%    ││ │    0x00007f6ea27919b5:   mov    %r10,%rdi
   0.05%    ││ │    0x00007f6ea27919b8:   rorx   $0x29,%rcx,%r13
   0.11%    ││ │    0x00007f6ea27919be:   rorx   $0x12,%rcx,%r14
   0.15%    ││ │    0x00007f6ea27919c4:   add    0x10(%rsp),%r9
   0.16%    ││ │    0x00007f6ea27919c9:   or     %rax,%rdi
   0.05%    ││ │    0x00007f6ea27919cc:   mov    %r8,%r15
   0.11%    ││ │    0x00007f6ea27919cf:   xor    %rdx,%r15
   0.15%    ││ │    0x00007f6ea27919d2:   rorx   $0x22,%r10,%r12
   0.16%    ││ │    0x00007f6ea27919d8:   xor    %r14,%r13
   0.05%    ││ │    0x00007f6ea27919db:   rorx   $0xe,%rcx,%r14
   0.08%    ││ │    0x00007f6ea27919e1:   and    %rcx,%r15
   0.18%    ││ │    0x00007f6ea27919e4:   add    %r9,%rbx
   0.17%    ││ │    0x00007f6ea27919e7:   and    %r11,%rdi
   0.07%    ││ │    0x00007f6ea27919ea:   xor    %r14,%r13
   0.12%    ││ │    0x00007f6ea27919ed:   rorx   $0x27,%r10,%r14
   0.18%    ││ │    0x00007f6ea27919f3:   xor    %r12,%r14
   0.15%    ││ │    0x00007f6ea27919f6:   rorx   $0x1c,%r10,%r12
   0.05%    ││ │    0x00007f6ea27919fc:   xor    %rdx,%r15
   0.10%    ││ │    0x00007f6ea27919ff:   xor    %r12,%r14
   0.16%    ││ │    0x00007f6ea2791a02:   mov    %r10,%r12
   0.18%    ││ │    0x00007f6ea2791a05:   and    %rax,%r12
   0.03%    ││ │    0x00007f6ea2791a08:   add    %r13,%r15
   0.12%    ││ │    0x00007f6ea2791a0b:   or     %r12,%rdi
   0.19%    ││ │    0x00007f6ea2791a0e:   add    %r14,%r9
   0.16%    ││ │    0x00007f6ea2791a11:   add    %r15,%rbx
   0.06%    ││ │    0x00007f6ea2791a14:   add    %r15,%r9
   0.11%    ││ │    0x00007f6ea2791a17:   add    %rdi,%r9
   0.15%    ││ │    0x00007f6ea2791a1a:   vpsrlq $0x13,%ymm6,%ymm3
   0.18%    ││ │    0x00007f6ea2791a1f:   vpsllq $0x2d,%ymm6,%ymm1
   0.05%    ││ │    0x00007f6ea2791a24:   vpor   %ymm1,%ymm3,%ymm3
   0.12%    ││ │    0x00007f6ea2791a28:   vpxor  %ymm3,%ymm8,%ymm8
   0.17%    ││ │    0x00007f6ea2791a2c:   vpsrlq $0x3d,%ymm6,%ymm3
   0.16%    ││ │    0x00007f6ea2791a31:   vpsllq $0x3,%ymm6,%ymm1
   0.05%    ││ │    0x00007f6ea2791a36:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007f6ea2791a3a:   vpxor  %ymm3,%ymm8,%ymm8
   0.17%    ││ │    0x00007f6ea2791a3e:   vpaddq %ymm8,%ymm0,%ymm2
   0.18%    ││ │    0x00007f6ea2791a43:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.15%    ││ │    0x00007f6ea2791a49:   mov    %r9,%rdi
   0.10%    ││ │    0x00007f6ea2791a4c:   rorx   $0x29,%rbx,%r13
   0.16%    ││ │    0x00007f6ea2791a52:   rorx   $0x12,%rbx,%r14
   0.17%    ││ │    0x00007f6ea2791a58:   add    0x18(%rsp),%rdx
   0.10%    ││ │    0x00007f6ea2791a5d:   or     %r11,%rdi
   0.11%    ││ │    0x00007f6ea2791a60:   mov    %rcx,%r15
   0.15%    ││ │    0x00007f6ea2791a63:   xor    %r8,%r15
   0.14%    ││ │    0x00007f6ea2791a66:   rorx   $0x22,%r9,%r12
   0.12%    ││ │    0x00007f6ea2791a6c:   xor    %r14,%r13
   0.12%    ││ │    0x00007f6ea2791a6f:   rorx   $0xe,%rbx,%r14
   0.17%    ││ │    0x00007f6ea2791a75:   and    %rbx,%r15
   0.14%    ││ │    0x00007f6ea2791a78:   add    %rdx,%rax
   0.11%    ││ │    0x00007f6ea2791a7b:   and    %r10,%rdi
   0.10%    ││ │    0x00007f6ea2791a7e:   xor    %r14,%r13
   0.13%    ││ │    0x00007f6ea2791a81:   rorx   $0x27,%r9,%r14
   0.13%    ││ │    0x00007f6ea2791a87:   xor    %r12,%r14
   0.11%    ││ │    0x00007f6ea2791a8a:   rorx   $0x1c,%r9,%r12
   0.12%    ││ │    0x00007f6ea2791a90:   xor    %r8,%r15
   0.14%    ││ │    0x00007f6ea2791a93:   xor    %r12,%r14
   0.15%    ││ │    0x00007f6ea2791a96:   mov    %r9,%r12
   0.10%    ││ │    0x00007f6ea2791a99:   and    %r11,%r12
   0.11%    ││ │    0x00007f6ea2791a9c:   add    %r13,%r15
   0.14%    ││ │    0x00007f6ea2791a9f:   or     %r12,%rdi
   0.14%    ││ │    0x00007f6ea2791aa2:   add    %r14,%rdx
   0.11%    ││ │    0x00007f6ea2791aa5:   add    %r15,%rax
   0.14%    ││ │    0x00007f6ea2791aa8:   add    %r15,%rdx
   0.12%    ││ │    0x00007f6ea2791aab:   add    %rdi,%rdx
   0.12%    ││ │    0x00007f6ea2791aae:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.12%    ││ │    0x00007f6ea2791ab3:   vmovdqu %ymm0,(%rsp)
   0.10%    ││ │    0x00007f6ea2791ab8:   add    $0x80,%rbp
   0.14%    ││ │    0x00007f6ea2791abf:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.14%    ││ │    0x00007f6ea2791ac5:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.11%    ││ │    0x00007f6ea2791acb:   vpaddq %ymm7,%ymm0,%ymm0
   0.26%    ││ │    0x00007f6ea2791acf:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.12%    ││ │    0x00007f6ea2791ad5:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.14%    ││ │    0x00007f6ea2791adb:   vpsrlq $0x1,%ymm1,%ymm2
   0.15%    ││ │    0x00007f6ea2791ae0:   vpsllq $0x3f,%ymm1,%ymm3
   0.18%    ││ │    0x00007f6ea2791ae5:   vpor   %ymm2,%ymm3,%ymm3
   0.11%    ││ │    0x00007f6ea2791ae9:   vpsrlq $0x7,%ymm1,%ymm8
   0.12%    ││ │    0x00007f6ea2791aee:   mov    %rdx,%rdi
   0.09%    ││ │    0x00007f6ea2791af1:   rorx   $0x29,%rax,%r13
   0.14%    ││ │    0x00007f6ea2791af7:   rorx   $0x12,%rax,%r14
   0.13%    ││ │    0x00007f6ea2791afd:   add    (%rsp),%r8
   0.12%    ││ │    0x00007f6ea2791b01:   or     %r10,%rdi
   0.10%    ││ │    0x00007f6ea2791b04:   mov    %rbx,%r15
   0.14%    ││ │    0x00007f6ea2791b07:   xor    %rcx,%r15
   0.15%    ││ │    0x00007f6ea2791b0a:   rorx   $0x22,%rdx,%r12
   0.10%    ││ │    0x00007f6ea2791b10:   xor    %r14,%r13
   0.07%    ││ │    0x00007f6ea2791b13:   rorx   $0xe,%rax,%r14
   0.13%    ││ │    0x00007f6ea2791b19:   and    %rax,%r15
   0.15%    ││ │    0x00007f6ea2791b1c:   add    %r8,%r11
   0.12%    ││ │    0x00007f6ea2791b1f:   and    %r9,%rdi
   0.10%    ││ │    0x00007f6ea2791b22:   xor    %r14,%r13
   0.15%    ││ │    0x00007f6ea2791b25:   rorx   $0x27,%rdx,%r14
   0.16%    ││ │    0x00007f6ea2791b2b:   xor    %r12,%r14
   0.12%    ││ │    0x00007f6ea2791b2e:   rorx   $0x1c,%rdx,%r12
   0.08%    ││ │    0x00007f6ea2791b34:   xor    %rcx,%r15
   0.18%    ││ │    0x00007f6ea2791b37:   xor    %r12,%r14
   0.14%    ││ │    0x00007f6ea2791b3a:   mov    %rdx,%r12
   0.09%    ││ │    0x00007f6ea2791b3d:   and    %r10,%r12
   0.09%    ││ │    0x00007f6ea2791b40:   add    %r13,%r15
   0.15%    ││ │    0x00007f6ea2791b43:   or     %r12,%rdi
   0.13%    ││ │    0x00007f6ea2791b46:   add    %r14,%r8
   0.11%    ││ │    0x00007f6ea2791b49:   add    %r15,%r11
   0.11%    ││ │    0x00007f6ea2791b4c:   add    %r15,%r8
   0.14%    ││ │    0x00007f6ea2791b4f:   add    %rdi,%r8
   0.15%    ││ │    0x00007f6ea2791b52:   vpsrlq $0x8,%ymm1,%ymm2
   0.10%    ││ │    0x00007f6ea2791b57:   vpsllq $0x38,%ymm1,%ymm1
   0.13%    ││ │    0x00007f6ea2791b5c:   vpor   %ymm2,%ymm1,%ymm1
   0.16%    ││ │    0x00007f6ea2791b60:   vpxor  %ymm8,%ymm3,%ymm3
   0.14%    ││ │    0x00007f6ea2791b65:   vpxor  %ymm1,%ymm3,%ymm1
   0.14%    ││ │    0x00007f6ea2791b69:   vpaddq %ymm1,%ymm0,%ymm0
   0.10%    ││ │    0x00007f6ea2791b6d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.15%    ││ │    0x00007f6ea2791b73:   vpand  %ymm10,%ymm0,%ymm0
   0.12%    ││ │    0x00007f6ea2791b78:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.11%    ││ │    0x00007f6ea2791b7e:   vpsrlq $0x6,%ymm2,%ymm8
   0.10%    ││ │    0x00007f6ea2791b83:   mov    %r8,%rdi
   0.14%    ││ │    0x00007f6ea2791b86:   rorx   $0x29,%r11,%r13
   0.13%    ││ │    0x00007f6ea2791b8c:   rorx   $0x12,%r11,%r14
   0.11%    ││ │    0x00007f6ea2791b92:   add    0x8(%rsp),%rcx
   0.11%    ││ │    0x00007f6ea2791b97:   or     %r9,%rdi
   0.14%    ││ │    0x00007f6ea2791b9a:   mov    %rax,%r15
   0.10%    ││ │    0x00007f6ea2791b9d:   xor    %rbx,%r15
   0.09%    ││ │    0x00007f6ea2791ba0:   rorx   $0x22,%r8,%r12
   0.10%    ││ │    0x00007f6ea2791ba6:   xor    %r14,%r13
   0.14%    ││ │    0x00007f6ea2791ba9:   rorx   $0xe,%r11,%r14
   0.16%    ││ │    0x00007f6ea2791baf:   and    %r11,%r15
   0.11%    ││ │    0x00007f6ea2791bb2:   add    %rcx,%r10
   0.10%    ││ │    0x00007f6ea2791bb5:   and    %rdx,%rdi
   0.16%    ││ │    0x00007f6ea2791bb8:   xor    %r14,%r13
   0.15%    ││ │    0x00007f6ea2791bbb:   rorx   $0x27,%r8,%r14
   0.14%    ││ │    0x00007f6ea2791bc1:   xor    %r12,%r14
   0.10%    ││ │    0x00007f6ea2791bc4:   rorx   $0x1c,%r8,%r12
   0.11%    ││ │    0x00007f6ea2791bca:   xor    %rbx,%r15
   0.13%    ││ │    0x00007f6ea2791bcd:   xor    %r12,%r14
   0.10%    ││ │    0x00007f6ea2791bd0:   mov    %r8,%r12
   0.13%    ││ │    0x00007f6ea2791bd3:   and    %r9,%r12
   0.18%    ││ │    0x00007f6ea2791bd6:   add    %r13,%r15
   0.15%    ││ │    0x00007f6ea2791bd9:   or     %r12,%rdi
   0.13%    ││ │    0x00007f6ea2791bdc:   add    %r14,%rcx
   0.10%    ││ │    0x00007f6ea2791bdf:   add    %r15,%r10
   0.14%    ││ │    0x00007f6ea2791be2:   add    %r15,%rcx
   0.15%    ││ │    0x00007f6ea2791be5:   add    %rdi,%rcx
   0.12%    ││ │    0x00007f6ea2791be8:   vpsrlq $0x13,%ymm2,%ymm3
   0.09%    ││ │    0x00007f6ea2791bed:   vpsllq $0x2d,%ymm2,%ymm1
   0.12%    ││ │    0x00007f6ea2791bf2:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007f6ea2791bf6:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%    ││ │    0x00007f6ea2791bfa:   vpsrlq $0x3d,%ymm2,%ymm3
   0.09%    ││ │    0x00007f6ea2791bff:   vpsllq $0x3,%ymm2,%ymm1
   0.20%    ││ │    0x00007f6ea2791c04:   vpor   %ymm1,%ymm3,%ymm3
   0.15%    ││ │    0x00007f6ea2791c08:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%    ││ │    0x00007f6ea2791c0c:   vpaddq %ymm8,%ymm7,%ymm7
   0.10%    ││ │    0x00007f6ea2791c11:   vpsrlq $0x6,%ymm7,%ymm8
   0.22%    ││ │    0x00007f6ea2791c16:   mov    %rcx,%rdi
   0.14%    ││ │    0x00007f6ea2791c19:   rorx   $0x29,%r10,%r13
   0.11%    ││ │    0x00007f6ea2791c1f:   rorx   $0x12,%r10,%r14
   0.08%    ││ │    0x00007f6ea2791c25:   add    0x10(%rsp),%rbx
   0.14%    ││ │    0x00007f6ea2791c2a:   or     %rdx,%rdi
   0.15%    ││ │    0x00007f6ea2791c2d:   mov    %r11,%r15
   0.12%    ││ │    0x00007f6ea2791c30:   xor    %rax,%r15
   0.08%    ││ │    0x00007f6ea2791c33:   rorx   $0x22,%rcx,%r12
   0.17%    ││ │    0x00007f6ea2791c39:   xor    %r14,%r13
   0.14%    ││ │    0x00007f6ea2791c3c:   rorx   $0xe,%r10,%r14
   0.13%    ││ │    0x00007f6ea2791c42:   and    %r10,%r15
   0.07%    ││ │    0x00007f6ea2791c45:   add    %rbx,%r9
   0.14%    ││ │    0x00007f6ea2791c48:   and    %r8,%rdi
   0.15%    ││ │    0x00007f6ea2791c4b:   xor    %r14,%r13
   0.09%    ││ │    0x00007f6ea2791c4e:   rorx   $0x27,%rcx,%r14
   0.07%    ││ │    0x00007f6ea2791c54:   xor    %r12,%r14
   0.18%    ││ │    0x00007f6ea2791c57:   rorx   $0x1c,%rcx,%r12
   0.16%    ││ │    0x00007f6ea2791c5d:   xor    %rax,%r15
   0.11%    ││ │    0x00007f6ea2791c60:   xor    %r12,%r14
   0.09%    ││ │    0x00007f6ea2791c63:   mov    %rcx,%r12
   0.16%    ││ │    0x00007f6ea2791c66:   and    %rdx,%r12
   0.15%    ││ │    0x00007f6ea2791c69:   add    %r13,%r15
   0.12%    ││ │    0x00007f6ea2791c6c:   or     %r12,%rdi
   0.06%    ││ │    0x00007f6ea2791c6f:   add    %r14,%rbx
   0.15%    ││ │    0x00007f6ea2791c72:   add    %r15,%r9
   0.16%    ││ │    0x00007f6ea2791c75:   add    %r15,%rbx
   0.10%    ││ │    0x00007f6ea2791c78:   add    %rdi,%rbx
   0.10%    ││ │    0x00007f6ea2791c7b:   vpsrlq $0x13,%ymm7,%ymm3
   0.15%    ││ │    0x00007f6ea2791c80:   vpsllq $0x2d,%ymm7,%ymm1
   0.11%    ││ │    0x00007f6ea2791c85:   vpor   %ymm1,%ymm3,%ymm3
   0.11%    ││ │    0x00007f6ea2791c89:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007f6ea2791c8d:   vpsrlq $0x3d,%ymm7,%ymm3
   0.16%    ││ │    0x00007f6ea2791c92:   vpsllq $0x3,%ymm7,%ymm1
   0.14%    ││ │    0x00007f6ea2791c97:   vpor   %ymm1,%ymm3,%ymm3
   0.14%    ││ │    0x00007f6ea2791c9b:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%    ││ │    0x00007f6ea2791c9f:   vpaddq %ymm8,%ymm0,%ymm2
   0.17%    ││ │    0x00007f6ea2791ca4:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.26%    ││ │    0x00007f6ea2791caa:   mov    %rbx,%rdi
   0.08%    ││ │    0x00007f6ea2791cad:   rorx   $0x29,%r9,%r13
   0.08%    ││ │    0x00007f6ea2791cb3:   rorx   $0x12,%r9,%r14
   0.14%    ││ │    0x00007f6ea2791cb9:   add    0x18(%rsp),%rax
   0.17%    ││ │    0x00007f6ea2791cbe:   or     %r8,%rdi
   0.08%    ││ │    0x00007f6ea2791cc1:   mov    %r10,%r15
   0.06%    ││ │    0x00007f6ea2791cc4:   xor    %r11,%r15
   0.11%    ││ │    0x00007f6ea2791cc7:   rorx   $0x22,%rbx,%r12
   0.18%    ││ │    0x00007f6ea2791ccd:   xor    %r14,%r13
   0.09%    ││ │    0x00007f6ea2791cd0:   rorx   $0xe,%r9,%r14
   0.08%    ││ │    0x00007f6ea2791cd6:   and    %r9,%r15
   0.13%    ││ │    0x00007f6ea2791cd9:   add    %rax,%rdx
   0.20%    ││ │    0x00007f6ea2791cdc:   and    %rcx,%rdi
   0.08%    ││ │    0x00007f6ea2791cdf:   xor    %r14,%r13
   0.08%    ││ │    0x00007f6ea2791ce2:   rorx   $0x27,%rbx,%r14
   0.13%    ││ │    0x00007f6ea2791ce8:   xor    %r12,%r14
   0.22%    ││ │    0x00007f6ea2791ceb:   rorx   $0x1c,%rbx,%r12
   0.06%    ││ │    0x00007f6ea2791cf1:   xor    %r11,%r15
   0.06%    ││ │    0x00007f6ea2791cf4:   xor    %r12,%r14
   0.12%    ││ │    0x00007f6ea2791cf7:   mov    %rbx,%r12
   0.22%    ││ │    0x00007f6ea2791cfa:   and    %r8,%r12
   0.09%    ││ │    0x00007f6ea2791cfd:   add    %r13,%r15
   0.07%    ││ │    0x00007f6ea2791d00:   or     %r12,%rdi
   0.13%    ││ │    0x00007f6ea2791d03:   add    %r14,%rax
   0.18%    ││ │    0x00007f6ea2791d06:   add    %r15,%rdx
   0.10%    ││ │    0x00007f6ea2791d09:   add    %r15,%rax
   0.08%    ││ │    0x00007f6ea2791d0c:   add    %rdi,%rax
   0.16%    ││ │    0x00007f6ea2791d0f:   subq   $0x1,0x20(%rsp)
   0.27%    │╰ │    0x00007f6ea2791d15:   jne    0x00007f6ea27913a0
   0.03%    │  │    0x00007f6ea2791d1b:   movq   $0x2,0x20(%rsp)
   0.07%    │ ↗│    0x00007f6ea2791d24:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.07%    │ ││    0x00007f6ea2791d29:   vmovdqu %ymm0,(%rsp)
   0.05%    │ ││    0x00007f6ea2791d2e:   mov    %r9,%r15
   0.06%    │ ││    0x00007f6ea2791d31:   rorx   $0x29,%rdx,%r13
   0.05%    │ ││    0x00007f6ea2791d37:   rorx   $0x12,%rdx,%r14
   0.07%    │ ││    0x00007f6ea2791d3d:   xor    %r10,%r15
   0.06%    │ ││    0x00007f6ea2791d40:   xor    %r14,%r13
   0.06%    │ ││    0x00007f6ea2791d43:   rorx   $0xe,%rdx,%r14
   0.04%    │ ││    0x00007f6ea2791d49:   and    %rdx,%r15
   0.06%    │ ││    0x00007f6ea2791d4c:   xor    %r14,%r13
   0.05%    │ ││    0x00007f6ea2791d4f:   rorx   $0x22,%rax,%r12
   0.08%    │ ││    0x00007f6ea2791d55:   xor    %r10,%r15
   0.04%    │ ││    0x00007f6ea2791d58:   rorx   $0x27,%rax,%r14
   0.07%    │ ││    0x00007f6ea2791d5e:   mov    %rax,%rdi
   0.07%    │ ││    0x00007f6ea2791d61:   xor    %r12,%r14
   0.10%    │ ││    0x00007f6ea2791d64:   rorx   $0x1c,%rax,%r12
   0.07%    │ ││    0x00007f6ea2791d6a:   add    (%rsp),%r11
   0.07%    │ ││    0x00007f6ea2791d6e:   or     %rcx,%rdi
   0.05%    │ ││    0x00007f6ea2791d71:   xor    %r12,%r14
   0.09%    │ ││    0x00007f6ea2791d74:   mov    %rax,%r12
   0.05%    │ ││    0x00007f6ea2791d77:   and    %rbx,%rdi
   0.05%    │ ││    0x00007f6ea2791d7a:   and    %rcx,%r12
   0.06%    │ ││    0x00007f6ea2791d7d:   add    %r13,%r15
   0.06%    │ ││    0x00007f6ea2791d80:   add    %r11,%r8
   0.08%    │ ││    0x00007f6ea2791d83:   or     %r12,%rdi
   0.06%    │ ││    0x00007f6ea2791d86:   add    %r14,%r11
   0.06%    │ ││    0x00007f6ea2791d89:   add    %r15,%r8
   0.07%    │ ││    0x00007f6ea2791d8c:   add    %r15,%r11
   0.07%    │ ││    0x00007f6ea2791d8f:   mov    %rdx,%r15
   0.07%    │ ││    0x00007f6ea2791d92:   rorx   $0x29,%r8,%r13
   0.06%    │ ││    0x00007f6ea2791d98:   rorx   $0x12,%r8,%r14
   0.08%    │ ││    0x00007f6ea2791d9e:   xor    %r9,%r15
   0.08%    │ ││    0x00007f6ea2791da1:   xor    %r14,%r13
   0.05%    │ ││    0x00007f6ea2791da4:   rorx   $0xe,%r8,%r14
   0.06%    │ ││    0x00007f6ea2791daa:   and    %r8,%r15
   0.08%    │ ││    0x00007f6ea2791dad:   add    %rdi,%r11
   0.06%    │ ││    0x00007f6ea2791db0:   xor    %r14,%r13
   0.08%    │ ││    0x00007f6ea2791db3:   rorx   $0x22,%r11,%r12
   0.04%    │ ││    0x00007f6ea2791db9:   xor    %r9,%r15
   0.07%    │ ││    0x00007f6ea2791dbc:   rorx   $0x27,%r11,%r14
   0.06%    │ ││    0x00007f6ea2791dc2:   mov    %r11,%rdi
   0.06%    │ ││    0x00007f6ea2791dc5:   xor    %r12,%r14
   0.07%    │ ││    0x00007f6ea2791dc8:   rorx   $0x1c,%r11,%r12
   0.09%    │ ││    0x00007f6ea2791dce:   add    0x8(%rsp),%r10
   0.06%    │ ││    0x00007f6ea2791dd3:   or     %rbx,%rdi
   0.08%    │ ││    0x00007f6ea2791dd6:   xor    %r12,%r14
   0.07%    │ ││    0x00007f6ea2791dd9:   mov    %r11,%r12
   0.09%    │ ││    0x00007f6ea2791ddc:   and    %rax,%rdi
   0.06%    │ ││    0x00007f6ea2791ddf:   and    %rbx,%r12
   0.06%    │ ││    0x00007f6ea2791de2:   add    %r13,%r15
   0.08%    │ ││    0x00007f6ea2791de5:   add    %r10,%rcx
   0.05%    │ ││    0x00007f6ea2791de8:   or     %r12,%rdi
   0.05%    │ ││    0x00007f6ea2791deb:   add    %r14,%r10
   0.07%    │ ││    0x00007f6ea2791dee:   add    %r15,%rcx
   0.06%    │ ││    0x00007f6ea2791df1:   add    %r15,%r10
   0.08%    │ ││    0x00007f6ea2791df4:   mov    %r8,%r15
   0.08%    │ ││    0x00007f6ea2791df7:   rorx   $0x29,%rcx,%r13
   0.08%    │ ││    0x00007f6ea2791dfd:   rorx   $0x12,%rcx,%r14
   0.05%    │ ││    0x00007f6ea2791e03:   xor    %rdx,%r15
   0.07%    │ ││    0x00007f6ea2791e06:   xor    %r14,%r13
   0.05%    │ ││    0x00007f6ea2791e09:   rorx   $0xe,%rcx,%r14
   0.07%    │ ││    0x00007f6ea2791e0f:   and    %rcx,%r15
   0.07%    │ ││    0x00007f6ea2791e12:   add    %rdi,%r10
   0.06%    │ ││    0x00007f6ea2791e15:   xor    %r14,%r13
   0.05%    │ ││    0x00007f6ea2791e18:   rorx   $0x22,%r10,%r12
   0.07%    │ ││    0x00007f6ea2791e1e:   xor    %rdx,%r15
   0.07%    │ ││    0x00007f6ea2791e21:   rorx   $0x27,%r10,%r14
   0.06%    │ ││    0x00007f6ea2791e27:   mov    %r10,%rdi
   0.06%    │ ││    0x00007f6ea2791e2a:   xor    %r12,%r14
   0.11%    │ ││    0x00007f6ea2791e2d:   rorx   $0x1c,%r10,%r12
   0.06%    │ ││    0x00007f6ea2791e33:   add    0x10(%rsp),%r9
   0.04%    │ ││    0x00007f6ea2791e38:   or     %rax,%rdi
   0.07%    │ ││    0x00007f6ea2791e3b:   xor    %r12,%r14
   0.07%    │ ││    0x00007f6ea2791e3e:   mov    %r10,%r12
   0.04%    │ ││    0x00007f6ea2791e41:   and    %r11,%rdi
   0.05%    │ ││    0x00007f6ea2791e44:   and    %rax,%r12
   0.06%    │ ││    0x00007f6ea2791e47:   add    %r13,%r15
   0.08%    │ ││    0x00007f6ea2791e4a:   add    %r9,%rbx
   0.06%    │ ││    0x00007f6ea2791e4d:   or     %r12,%rdi
   0.07%    │ ││    0x00007f6ea2791e50:   add    %r14,%r9
   0.04%    │ ││    0x00007f6ea2791e53:   add    %r15,%rbx
   0.07%    │ ││    0x00007f6ea2791e56:   add    %r15,%r9
   0.07%    │ ││    0x00007f6ea2791e59:   mov    %rcx,%r15
   0.08%    │ ││    0x00007f6ea2791e5c:   rorx   $0x29,%rbx,%r13
   0.05%    │ ││    0x00007f6ea2791e62:   rorx   $0x12,%rbx,%r14
   0.09%    │ ││    0x00007f6ea2791e68:   xor    %r8,%r15
   0.07%    │ ││    0x00007f6ea2791e6b:   xor    %r14,%r13
   0.07%    │ ││    0x00007f6ea2791e6e:   rorx   $0xe,%rbx,%r14
   0.06%    │ ││    0x00007f6ea2791e74:   and    %rbx,%r15
   0.06%    │ ││    0x00007f6ea2791e77:   add    %rdi,%r9
   0.05%    │ ││    0x00007f6ea2791e7a:   xor    %r14,%r13
   0.06%    │ ││    0x00007f6ea2791e7d:   rorx   $0x22,%r9,%r12
   0.05%    │ ││    0x00007f6ea2791e83:   xor    %r8,%r15
   0.09%    │ ││    0x00007f6ea2791e86:   rorx   $0x27,%r9,%r14
   0.04%    │ ││    0x00007f6ea2791e8c:   mov    %r9,%rdi
   0.07%    │ ││    0x00007f6ea2791e8f:   xor    %r12,%r14
   0.07%    │ ││    0x00007f6ea2791e92:   rorx   $0x1c,%r9,%r12
   0.06%    │ ││    0x00007f6ea2791e98:   add    0x18(%rsp),%rdx
   0.06%    │ ││    0x00007f6ea2791e9d:   or     %r11,%rdi
   0.07%    │ ││    0x00007f6ea2791ea0:   xor    %r12,%r14
   0.08%    │ ││    0x00007f6ea2791ea3:   mov    %r9,%r12
   0.10%    │ ││    0x00007f6ea2791ea6:   and    %r10,%rdi
   0.05%    │ ││    0x00007f6ea2791ea9:   and    %r11,%r12
   0.04%    │ ││    0x00007f6ea2791eac:   add    %r13,%r15
   0.07%    │ ││    0x00007f6ea2791eaf:   add    %rdx,%rax
   0.07%    │ ││    0x00007f6ea2791eb2:   or     %r12,%rdi
   0.07%    │ ││    0x00007f6ea2791eb5:   add    %r14,%rdx
   0.07%    │ ││    0x00007f6ea2791eb8:   add    %r15,%rax
   0.08%    │ ││    0x00007f6ea2791ebb:   add    %r15,%rdx
   0.08%    │ ││    0x00007f6ea2791ebe:   add    %rdi,%rdx
   0.10%    │ ││    0x00007f6ea2791ec1:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.06%    │ ││    0x00007f6ea2791ec6:   vmovdqu %ymm0,(%rsp)
   0.04%    │ ││    0x00007f6ea2791ecb:   add    $0x40,%rbp
   0.08%    │ ││    0x00007f6ea2791ecf:   mov    %rbx,%r15
   0.08%    │ ││    0x00007f6ea2791ed2:   rorx   $0x29,%rax,%r13
   0.07%    │ ││    0x00007f6ea2791ed8:   rorx   $0x12,%rax,%r14
   0.03%    │ ││    0x00007f6ea2791ede:   xor    %rcx,%r15
   0.07%    │ ││    0x00007f6ea2791ee1:   xor    %r14,%r13
   0.06%    │ ││    0x00007f6ea2791ee4:   rorx   $0xe,%rax,%r14
   0.07%    │ ││    0x00007f6ea2791eea:   and    %rax,%r15
   0.06%    │ ││    0x00007f6ea2791eed:   xor    %r14,%r13
   0.08%    │ ││    0x00007f6ea2791ef0:   rorx   $0x22,%rdx,%r12
   0.07%    │ ││    0x00007f6ea2791ef6:   xor    %rcx,%r15
   0.05%    │ ││    0x00007f6ea2791ef9:   rorx   $0x27,%rdx,%r14
   0.06%    │ ││    0x00007f6ea2791eff:   mov    %rdx,%rdi
   0.06%    │ ││    0x00007f6ea2791f02:   xor    %r12,%r14
   0.11%    │ ││    0x00007f6ea2791f05:   rorx   $0x1c,%rdx,%r12
   0.08%    │ ││    0x00007f6ea2791f0b:   add    (%rsp),%r8
   0.05%    │ ││    0x00007f6ea2791f0f:   or     %r10,%rdi
   0.07%    │ ││    0x00007f6ea2791f12:   xor    %r12,%r14
   0.09%    │ ││    0x00007f6ea2791f15:   mov    %rdx,%r12
   0.07%    │ ││    0x00007f6ea2791f18:   and    %r9,%rdi
   0.04%    │ ││    0x00007f6ea2791f1b:   and    %r10,%r12
   0.06%    │ ││    0x00007f6ea2791f1e:   add    %r13,%r15
   0.06%    │ ││    0x00007f6ea2791f21:   add    %r8,%r11
   0.06%    │ ││    0x00007f6ea2791f24:   or     %r12,%rdi
   0.04%    │ ││    0x00007f6ea2791f27:   add    %r14,%r8
   0.06%    │ ││    0x00007f6ea2791f2a:   add    %r15,%r11
   0.08%    │ ││    0x00007f6ea2791f2d:   add    %r15,%r8
   0.07%    │ ││    0x00007f6ea2791f30:   mov    %rax,%r15
   0.06%    │ ││    0x00007f6ea2791f33:   rorx   $0x29,%r11,%r13
   0.07%    │ ││    0x00007f6ea2791f39:   rorx   $0x12,%r11,%r14
   0.07%    │ ││    0x00007f6ea2791f3f:   xor    %rbx,%r15
   0.07%    │ ││    0x00007f6ea2791f42:   xor    %r14,%r13
   0.05%    │ ││    0x00007f6ea2791f45:   rorx   $0xe,%r11,%r14
   0.06%    │ ││    0x00007f6ea2791f4b:   and    %r11,%r15
   0.08%    │ ││    0x00007f6ea2791f4e:   add    %rdi,%r8
   0.06%    │ ││    0x00007f6ea2791f51:   xor    %r14,%r13
   0.07%    │ ││    0x00007f6ea2791f54:   rorx   $0x22,%r8,%r12
   0.08%    │ ││    0x00007f6ea2791f5a:   xor    %rbx,%r15
   0.11%    │ ││    0x00007f6ea2791f5d:   rorx   $0x27,%r8,%r14
   0.06%    │ ││    0x00007f6ea2791f63:   mov    %r8,%rdi
   0.06%    │ ││    0x00007f6ea2791f66:   xor    %r12,%r14
   0.08%    │ ││    0x00007f6ea2791f69:   rorx   $0x1c,%r8,%r12
   0.06%    │ ││    0x00007f6ea2791f6f:   add    0x8(%rsp),%rcx
   0.05%    │ ││    0x00007f6ea2791f74:   or     %r9,%rdi
   0.05%    │ ││    0x00007f6ea2791f77:   xor    %r12,%r14
   0.11%    │ ││    0x00007f6ea2791f7a:   mov    %r8,%r12
   0.07%    │ ││    0x00007f6ea2791f7d:   and    %rdx,%rdi
   0.07%    │ ││    0x00007f6ea2791f80:   and    %r9,%r12
   0.04%    │ ││    0x00007f6ea2791f83:   add    %r13,%r15
   0.05%    │ ││    0x00007f6ea2791f86:   add    %rcx,%r10
   0.08%    │ ││    0x00007f6ea2791f89:   or     %r12,%rdi
   0.05%    │ ││    0x00007f6ea2791f8c:   add    %r14,%rcx
   0.06%    │ ││    0x00007f6ea2791f8f:   add    %r15,%r10
   0.08%    │ ││    0x00007f6ea2791f92:   add    %r15,%rcx
   0.08%    │ ││    0x00007f6ea2791f95:   mov    %r11,%r15
   0.05%    │ ││    0x00007f6ea2791f98:   rorx   $0x29,%r10,%r13
   0.07%    │ ││    0x00007f6ea2791f9e:   rorx   $0x12,%r10,%r14
   0.07%    │ ││    0x00007f6ea2791fa4:   xor    %rax,%r15
   0.08%    │ ││    0x00007f6ea2791fa7:   xor    %r14,%r13
   0.07%    │ ││    0x00007f6ea2791faa:   rorx   $0xe,%r10,%r14
   0.07%    │ ││    0x00007f6ea2791fb0:   and    %r10,%r15
   0.08%    │ ││    0x00007f6ea2791fb3:   add    %rdi,%rcx
   0.06%    │ ││    0x00007f6ea2791fb6:   xor    %r14,%r13
   0.07%    │ ││    0x00007f6ea2791fb9:   rorx   $0x22,%rcx,%r12
   0.05%    │ ││    0x00007f6ea2791fbf:   xor    %rax,%r15
   0.11%    │ ││    0x00007f6ea2791fc2:   rorx   $0x27,%rcx,%r14
   0.07%    │ ││    0x00007f6ea2791fc8:   mov    %rcx,%rdi
   0.04%    │ ││    0x00007f6ea2791fcb:   xor    %r12,%r14
   0.05%    │ ││    0x00007f6ea2791fce:   rorx   $0x1c,%rcx,%r12
   0.08%    │ ││    0x00007f6ea2791fd4:   add    0x10(%rsp),%rbx
   0.05%    │ ││    0x00007f6ea2791fd9:   or     %rdx,%rdi
   0.05%    │ ││    0x00007f6ea2791fdc:   xor    %r12,%r14
   0.05%    │ ││    0x00007f6ea2791fdf:   mov    %rcx,%r12
   0.09%    │ ││    0x00007f6ea2791fe2:   and    %r8,%rdi
   0.05%    │ ││    0x00007f6ea2791fe5:   and    %rdx,%r12
   0.07%    │ ││    0x00007f6ea2791fe8:   add    %r13,%r15
   0.06%    │ ││    0x00007f6ea2791feb:   add    %rbx,%r9
   0.06%    │ ││    0x00007f6ea2791fee:   or     %r12,%rdi
   0.07%    │ ││    0x00007f6ea2791ff1:   add    %r14,%rbx
   0.04%    │ ││    0x00007f6ea2791ff4:   add    %r15,%r9
   0.08%    │ ││    0x00007f6ea2791ff7:   add    %r15,%rbx
   0.09%    │ ││    0x00007f6ea2791ffa:   mov    %r10,%r15
   0.07%    │ ││    0x00007f6ea2791ffd:   rorx   $0x29,%r9,%r13
   0.06%    │ ││    0x00007f6ea2792003:   rorx   $0x12,%r9,%r14
   0.08%    │ ││    0x00007f6ea2792009:   xor    %r11,%r15
   0.06%    │ ││    0x00007f6ea279200c:   xor    %r14,%r13
   0.08%    │ ││    0x00007f6ea279200f:   rorx   $0xe,%r9,%r14
   0.08%    │ ││    0x00007f6ea2792015:   and    %r9,%r15
   0.09%    │ ││    0x00007f6ea2792018:   add    %rdi,%rbx
   0.07%    │ ││    0x00007f6ea279201b:   xor    %r14,%r13
   0.09%    │ ││    0x00007f6ea279201e:   rorx   $0x22,%rbx,%r12
   0.06%    │ ││    0x00007f6ea2792024:   xor    %r11,%r15
   0.09%    │ ││    0x00007f6ea2792027:   rorx   $0x27,%rbx,%r14
   0.06%    │ ││    0x00007f6ea279202d:   mov    %rbx,%rdi
   0.07%    │ ││    0x00007f6ea2792030:   xor    %r12,%r14
   0.07%    │ ││    0x00007f6ea2792033:   rorx   $0x1c,%rbx,%r12
   0.05%    │ ││    0x00007f6ea2792039:   add    0x18(%rsp),%rax
   0.06%    │ ││    0x00007f6ea279203e:   or     %r8,%rdi
   0.05%    │ ││    0x00007f6ea2792041:   xor    %r12,%r14
   0.08%    │ ││    0x00007f6ea2792044:   mov    %rbx,%r12
   0.07%    │ ││    0x00007f6ea2792047:   and    %rcx,%rdi
   0.07%    │ ││    0x00007f6ea279204a:   and    %r8,%r12
   0.05%    │ ││    0x00007f6ea279204d:   add    %r13,%r15
   0.07%    │ ││    0x00007f6ea2792050:   add    %rax,%rdx
   0.08%    │ ││    0x00007f6ea2792053:   or     %r12,%rdi
   0.05%    │ ││    0x00007f6ea2792056:   add    %r14,%rax
   0.08%    │ ││    0x00007f6ea2792059:   add    %r15,%rdx
   0.06%    │ ││    0x00007f6ea279205c:   add    %r15,%rax
   0.04%    │ ││    0x00007f6ea279205f:   add    %rdi,%rax
   0.12%    │ ││    0x00007f6ea2792062:   vmovdqu %ymm6,%ymm4
   0.06%    │ ││    0x00007f6ea2792066:   vmovdqu %ymm7,%ymm5
   0.03%    │ ││    0x00007f6ea279206a:   subq   $0x1,0x20(%rsp)
   0.18%    │ ╰│    0x00007f6ea2792070:   jne    0x00007f6ea2791d24
   0.04%    │  │    0x00007f6ea2792076:   add    (%rsi),%rax
   0.01%    │  │    0x00007f6ea2792079:   mov    %rax,(%rsi)
   0.21%    │  │    0x00007f6ea279207c:   add    0x8(%rsi),%rbx
            │  │    0x00007f6ea2792080:   mov    %rbx,0x8(%rsi)
            │  │    0x00007f6ea2792084:   add    0x10(%rsi),%rcx
   0.00%    │  │    0x00007f6ea2792088:   mov    %rcx,0x10(%rsi)
   0.11%    │  │    0x00007f6ea279208c:   add    0x18(%rsi),%r8
            │  │    0x00007f6ea2792090:   mov    %r8,0x18(%rsi)
   0.01%    │  │    0x00007f6ea2792094:   add    0x20(%rsi),%rdx
            │  │    0x00007f6ea2792098:   mov    %rdx,0x20(%rsi)
   0.15%    │  │    0x00007f6ea279209c:   add    0x28(%rsi),%r9
            │  │    0x00007f6ea27920a0:   mov    %r9,0x28(%rsi)
   0.02%    │  │    0x00007f6ea27920a4:   add    0x30(%rsi),%r10
            │  │    0x00007f6ea27920a8:   mov    %r10,0x30(%rsi)
   0.10%    │  │    0x00007f6ea27920ac:   add    0x38(%rsi),%r11
            │  │    0x00007f6ea27920b0:   mov    %r11,0x38(%rsi)
   0.04%    │  │    0x00007f6ea27920b4:   mov    0x28(%rsp),%rdi
   0.00%    │  │    0x00007f6ea27920b9:   add    $0x80,%rdi
   0.08%    │  │    0x00007f6ea27920c0:   cmp    0x30(%rsp),%rdi
            │  ╰    0x00007f6ea27920c5:   jne    0x00007f6ea279135b
   0.01%    ↘       0x00007f6ea27920cb:   mov    0x40(%rsp),%rbp
   0.01%            0x00007f6ea27920d0:   mov    0x48(%rsp),%rbx
                    0x00007f6ea27920d5:   mov    0x50(%rsp),%r12
                    0x00007f6ea27920da:   mov    0x58(%rsp),%r13
                    0x00007f6ea27920df:   mov    0x60(%rsp),%r14
                    0x00007f6ea27920e4:   mov    0x68(%rsp),%r15
                    0x00007f6ea27920e9:   mov    0x38(%rsp),%rsp
   0.00%            0x00007f6ea27920ee:   pop    %rcx
   0.00%            0x00007f6ea27920ef:   pop    %rdx
                    0x00007f6ea27920f0:   mov    %rdx,%rax
   0.25%         ↗  0x00007f6ea27920f3:   cmp    %rcx,%rax
                ╭│  0x00007f6ea27920f6:   jae    0x00007f6ea2792100
                ││  0x00007f6ea27920f8:   add    $0x80,%rax
                │╰  0x00007f6ea27920fe:   jmp    0x00007f6ea27920f3
   0.02%        ↘   0x00007f6ea2792100:   vzeroupper 
                    0x00007f6ea2792103:   leave  
   0.01%            0x00007f6ea2792104:   ret    
                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::avx2_shuffle_base64 [0x00007f6ea2792140, 0x00007f6ea2792160] (32 bytes)
                  --------------------------------------------------------------------------------
....................................................................................................
  93.28%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.28%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.11%                      <unknown> 
   0.49%              kernel  [unknown] 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1142 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1142 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1142 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1142 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1142 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1142 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1142 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1142 
   1.46%  <...other 376 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.28%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.20%                      <unknown> 
   1.43%              kernel  [unknown] 
   0.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1142 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1168 
   0.02%           libjvm.so  fileStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.12%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.28%        runtime stub
   4.20%                    
   1.43%              kernel
   0.81%      jvmci, level 4
   0.13%           libjvm.so
   0.10%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA512, length = 16384)

# Run progress: 41.67% complete, ETA 00:13:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 46.196 us/op
# Warmup Iteration   2: 39.147 us/op
# Warmup Iteration   3: 38.985 us/op
# Warmup Iteration   4: 38.994 us/op
# Warmup Iteration   5: 38.993 us/op
Iteration   1: 38.994 us/op
Iteration   2: 38.988 us/op
Iteration   3: 38.985 us/op
Iteration   4: 38.980 us/op
Iteration   5: 39.020 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  38.994 ±(99.9%) 0.060 us/op [Average]
  (min, avg, max) = (38.980, 38.994, 39.020), stdev = 0.016
  CI (99.9%): [38.933, 39.054] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 292460 total address lines.
Perf output processed (skipped 62.023 seconds):
 Column 1: cycles (50709 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                 0x00007f1a2a79094f:   mov    0x8(%rsi),%rbx
                 0x00007f1a2a790953:   mov    0x10(%rsi),%rcx
   0.00%         0x00007f1a2a790957:   mov    0x18(%rsi),%r8
   0.00%         0x00007f1a2a79095b:   mov    0x20(%rsi),%rdx
                 0x00007f1a2a79095f:   mov    0x28(%rsi),%r9
                 0x00007f1a2a790963:   mov    0x38(%rsi),%r11
                 0x00007f1a2a790967:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007f1a2a78fa80
                 0x00007f1a2a79096f:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007f1a2a78faa0
                 0x00007f1a2a790977:   mov    0x30(%rsi),%r10
            ↗    0x00007f1a2a79097b:   movabs $0x7f1a45199180,%rbp
   0.03%    │    0x00007f1a2a790985:   vmovdqu (%rdi),%ymm4
   0.07%    │    0x00007f1a2a790989:   vpshufb %ymm9,%ymm4,%ymm4
   0.15%    │    0x00007f1a2a79098e:   vmovdqu 0x20(%rdi),%ymm5
   0.03%    │    0x00007f1a2a790993:   vpshufb %ymm9,%ymm5,%ymm5
   0.10%    │    0x00007f1a2a790998:   vmovdqu 0x40(%rdi),%ymm6
   0.04%    │    0x00007f1a2a79099d:   vpshufb %ymm9,%ymm6,%ymm6
   0.09%    │    0x00007f1a2a7909a2:   vmovdqu 0x60(%rdi),%ymm7
   0.06%    │    0x00007f1a2a7909a7:   vpshufb %ymm9,%ymm7,%ymm7
   0.11%    │    0x00007f1a2a7909ac:   mov    %rdi,0x28(%rsp)
            │    0x00007f1a2a7909b1:   movq   $0x4,0x20(%rsp)
   0.06%    │    0x00007f1a2a7909ba:   nopw   0x0(%rax,%rax,1)
   0.05%  ↗ │    0x00007f1a2a7909c0:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.21%  │ │    0x00007f1a2a7909c5:   vmovdqu %ymm0,(%rsp)
   0.20%  │ │    0x00007f1a2a7909ca:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.29%  │ │    0x00007f1a2a7909d0:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.29%  │ │    0x00007f1a2a7909d6:   vpaddq %ymm4,%ymm0,%ymm0
   0.68%  │ │    0x00007f1a2a7909da:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.13%  │ │    0x00007f1a2a7909e0:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.10%  │ │    0x00007f1a2a7909e6:   vpsrlq $0x1,%ymm1,%ymm2
   0.09%  │ │    0x00007f1a2a7909eb:   vpsllq $0x3f,%ymm1,%ymm3
   0.25%  │ │    0x00007f1a2a7909f0:   vpor   %ymm2,%ymm3,%ymm3
   0.17%  │ │    0x00007f1a2a7909f4:   vpsrlq $0x7,%ymm1,%ymm8
   0.06%  │ │    0x00007f1a2a7909f9:   mov    %rax,%rdi
   0.05%  │ │    0x00007f1a2a7909fc:   rorx   $0x29,%rdx,%r13
   0.22%  │ │    0x00007f1a2a790a02:   rorx   $0x12,%rdx,%r14
   0.18%  │ │    0x00007f1a2a790a08:   add    (%rsp),%r11
   0.08%  │ │    0x00007f1a2a790a0c:   or     %rcx,%rdi
   0.06%  │ │    0x00007f1a2a790a0f:   mov    %r9,%r15
   0.22%  │ │    0x00007f1a2a790a12:   xor    %r10,%r15
   0.17%  │ │    0x00007f1a2a790a15:   rorx   $0x22,%rax,%r12
   0.07%  │ │    0x00007f1a2a790a1b:   xor    %r14,%r13
   0.06%  │ │    0x00007f1a2a790a1e:   rorx   $0xe,%rdx,%r14
   0.20%  │ │    0x00007f1a2a790a24:   and    %rdx,%r15
   0.20%  │ │    0x00007f1a2a790a27:   add    %r11,%r8
   0.06%  │ │    0x00007f1a2a790a2a:   and    %rbx,%rdi
   0.06%  │ │    0x00007f1a2a790a2d:   xor    %r14,%r13
   0.21%  │ │    0x00007f1a2a790a30:   rorx   $0x27,%rax,%r14
   0.16%  │ │    0x00007f1a2a790a36:   xor    %r12,%r14
   0.08%  │ │    0x00007f1a2a790a39:   rorx   $0x1c,%rax,%r12
   0.08%  │ │    0x00007f1a2a790a3f:   xor    %r10,%r15
   0.20%  │ │    0x00007f1a2a790a42:   xor    %r12,%r14
   0.17%  │ │    0x00007f1a2a790a45:   mov    %rax,%r12
   0.07%  │ │    0x00007f1a2a790a48:   and    %rcx,%r12
   0.04%  │ │    0x00007f1a2a790a4b:   add    %r13,%r15
   0.22%  │ │    0x00007f1a2a790a4e:   or     %r12,%rdi
   0.16%  │ │    0x00007f1a2a790a51:   add    %r14,%r11
   0.07%  │ │    0x00007f1a2a790a54:   add    %r15,%r8
   0.06%  │ │    0x00007f1a2a790a57:   add    %r15,%r11
   0.22%  │ │    0x00007f1a2a790a5a:   add    %rdi,%r11
   0.17%  │ │    0x00007f1a2a790a5d:   vpsrlq $0x8,%ymm1,%ymm2
   0.09%  │ │    0x00007f1a2a790a62:   vpsllq $0x38,%ymm1,%ymm1
   0.06%  │ │    0x00007f1a2a790a67:   vpor   %ymm2,%ymm1,%ymm1
   0.18%  │ │    0x00007f1a2a790a6b:   vpxor  %ymm8,%ymm3,%ymm3
   0.20%  │ │    0x00007f1a2a790a70:   vpxor  %ymm1,%ymm3,%ymm1
   0.09%  │ │    0x00007f1a2a790a74:   vpaddq %ymm1,%ymm0,%ymm0
   0.06%  │ │    0x00007f1a2a790a78:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.20%  │ │    0x00007f1a2a790a7e:   vpand  %ymm10,%ymm0,%ymm0
   0.14%  │ │    0x00007f1a2a790a83:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.07%  │ │    0x00007f1a2a790a89:   vpsrlq $0x6,%ymm2,%ymm8
   0.05%  │ │    0x00007f1a2a790a8e:   mov    %r11,%rdi
   0.20%  │ │    0x00007f1a2a790a91:   rorx   $0x29,%r8,%r13
   0.18%  │ │    0x00007f1a2a790a97:   rorx   $0x12,%r8,%r14
   0.06%  │ │    0x00007f1a2a790a9d:   add    0x8(%rsp),%r10
   0.04%  │ │    0x00007f1a2a790aa2:   or     %rbx,%rdi
   0.20%  │ │    0x00007f1a2a790aa5:   mov    %rdx,%r15
   0.21%  │ │    0x00007f1a2a790aa8:   xor    %r9,%r15
   0.07%  │ │    0x00007f1a2a790aab:   rorx   $0x22,%r11,%r12
   0.07%  │ │    0x00007f1a2a790ab1:   xor    %r14,%r13
   0.22%  │ │    0x00007f1a2a790ab4:   rorx   $0xe,%r8,%r14
   0.17%  │ │    0x00007f1a2a790aba:   and    %r8,%r15
   0.07%  │ │    0x00007f1a2a790abd:   add    %r10,%rcx
   0.04%  │ │    0x00007f1a2a790ac0:   and    %rax,%rdi
   0.17%  │ │    0x00007f1a2a790ac3:   xor    %r14,%r13
   0.16%  │ │    0x00007f1a2a790ac6:   rorx   $0x27,%r11,%r14
   0.05%  │ │    0x00007f1a2a790acc:   xor    %r12,%r14
   0.05%  │ │    0x00007f1a2a790acf:   rorx   $0x1c,%r11,%r12
   0.15%  │ │    0x00007f1a2a790ad5:   xor    %r9,%r15
   0.18%  │ │    0x00007f1a2a790ad8:   xor    %r12,%r14
   0.07%  │ │    0x00007f1a2a790adb:   mov    %r11,%r12
   0.06%  │ │    0x00007f1a2a790ade:   and    %rbx,%r12
   0.22%  │ │    0x00007f1a2a790ae1:   add    %r13,%r15
   0.17%  │ │    0x00007f1a2a790ae4:   or     %r12,%rdi
   0.07%  │ │    0x00007f1a2a790ae7:   add    %r14,%r10
   0.05%  │ │    0x00007f1a2a790aea:   add    %r15,%rcx
   0.20%  │ │    0x00007f1a2a790aed:   add    %r15,%r10
   0.17%  │ │    0x00007f1a2a790af0:   add    %rdi,%r10
   0.09%  │ │    0x00007f1a2a790af3:   vpsrlq $0x13,%ymm2,%ymm3
   0.06%  │ │    0x00007f1a2a790af8:   vpsllq $0x2d,%ymm2,%ymm1
   0.16%  │ │    0x00007f1a2a790afd:   vpor   %ymm1,%ymm3,%ymm3
   0.16%  │ │    0x00007f1a2a790b01:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%  │ │    0x00007f1a2a790b05:   vpsrlq $0x3d,%ymm2,%ymm3
   0.06%  │ │    0x00007f1a2a790b0a:   vpsllq $0x3,%ymm2,%ymm1
   0.20%  │ │    0x00007f1a2a790b0f:   vpor   %ymm1,%ymm3,%ymm3
   0.21%  │ │    0x00007f1a2a790b13:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%  │ │    0x00007f1a2a790b17:   vpaddq %ymm8,%ymm4,%ymm4
   0.07%  │ │    0x00007f1a2a790b1c:   vpsrlq $0x6,%ymm4,%ymm8
   0.20%  │ │    0x00007f1a2a790b21:   mov    %r10,%rdi
   0.19%  │ │    0x00007f1a2a790b24:   rorx   $0x29,%rcx,%r13
   0.08%  │ │    0x00007f1a2a790b2a:   rorx   $0x12,%rcx,%r14
   0.05%  │ │    0x00007f1a2a790b30:   add    0x10(%rsp),%r9
   0.21%  │ │    0x00007f1a2a790b35:   or     %rax,%rdi
   0.21%  │ │    0x00007f1a2a790b38:   mov    %r8,%r15
   0.08%  │ │    0x00007f1a2a790b3b:   xor    %rdx,%r15
   0.05%  │ │    0x00007f1a2a790b3e:   rorx   $0x22,%r10,%r12
   0.21%  │ │    0x00007f1a2a790b44:   xor    %r14,%r13
   0.16%  │ │    0x00007f1a2a790b47:   rorx   $0xe,%rcx,%r14
   0.07%  │ │    0x00007f1a2a790b4d:   and    %rcx,%r15
   0.05%  │ │    0x00007f1a2a790b50:   add    %r9,%rbx
   0.20%  │ │    0x00007f1a2a790b53:   and    %r11,%rdi
   0.20%  │ │    0x00007f1a2a790b56:   xor    %r14,%r13
   0.08%  │ │    0x00007f1a2a790b59:   rorx   $0x27,%r10,%r14
   0.05%  │ │    0x00007f1a2a790b5f:   xor    %r12,%r14
   0.20%  │ │    0x00007f1a2a790b62:   rorx   $0x1c,%r10,%r12
   0.20%  │ │    0x00007f1a2a790b68:   xor    %rdx,%r15
   0.06%  │ │    0x00007f1a2a790b6b:   xor    %r12,%r14
   0.05%  │ │    0x00007f1a2a790b6e:   mov    %r10,%r12
   0.17%  │ │    0x00007f1a2a790b71:   and    %rax,%r12
   0.20%  │ │    0x00007f1a2a790b74:   add    %r13,%r15
   0.05%  │ │    0x00007f1a2a790b77:   or     %r12,%rdi
   0.03%  │ │    0x00007f1a2a790b7a:   add    %r14,%r9
   0.22%  │ │    0x00007f1a2a790b7d:   add    %r15,%rbx
   0.17%  │ │    0x00007f1a2a790b80:   add    %r15,%r9
   0.09%  │ │    0x00007f1a2a790b83:   add    %rdi,%r9
   0.07%  │ │    0x00007f1a2a790b86:   vpsrlq $0x13,%ymm4,%ymm3
   0.21%  │ │    0x00007f1a2a790b8b:   vpsllq $0x2d,%ymm4,%ymm1
   0.18%  │ │    0x00007f1a2a790b90:   vpor   %ymm1,%ymm3,%ymm3
   0.08%  │ │    0x00007f1a2a790b94:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%  │ │    0x00007f1a2a790b98:   vpsrlq $0x3d,%ymm4,%ymm3
   0.25%  │ │    0x00007f1a2a790b9d:   vpsllq $0x3,%ymm4,%ymm1
   0.20%  │ │    0x00007f1a2a790ba2:   vpor   %ymm1,%ymm3,%ymm3
   0.06%  │ │    0x00007f1a2a790ba6:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │    0x00007f1a2a790baa:   vpaddq %ymm8,%ymm0,%ymm2
   0.19%  │ │    0x00007f1a2a790baf:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.25%  │ │    0x00007f1a2a790bb5:   mov    %r9,%rdi
   0.07%  │ │    0x00007f1a2a790bb8:   rorx   $0x29,%rbx,%r13
   0.04%  │ │    0x00007f1a2a790bbe:   rorx   $0x12,%rbx,%r14
   0.14%  │ │    0x00007f1a2a790bc4:   add    0x18(%rsp),%rdx
   0.19%  │ │    0x00007f1a2a790bc9:   or     %r11,%rdi
   0.05%  │ │    0x00007f1a2a790bcc:   mov    %rcx,%r15
   0.04%  │ │    0x00007f1a2a790bcf:   xor    %r8,%r15
   0.15%  │ │    0x00007f1a2a790bd2:   rorx   $0x22,%r9,%r12
   0.21%  │ │    0x00007f1a2a790bd8:   xor    %r14,%r13
   0.08%  │ │    0x00007f1a2a790bdb:   rorx   $0xe,%rbx,%r14
   0.05%  │ │    0x00007f1a2a790be1:   and    %rbx,%r15
   0.18%  │ │    0x00007f1a2a790be4:   add    %rdx,%rax
   0.23%  │ │    0x00007f1a2a790be7:   and    %r10,%rdi
   0.07%  │ │    0x00007f1a2a790bea:   xor    %r14,%r13
   0.03%  │ │    0x00007f1a2a790bed:   rorx   $0x27,%r9,%r14
   0.16%  │ │    0x00007f1a2a790bf3:   xor    %r12,%r14
   0.19%  │ │    0x00007f1a2a790bf6:   rorx   $0x1c,%r9,%r12
   0.06%  │ │    0x00007f1a2a790bfc:   xor    %r8,%r15
   0.04%  │ │    0x00007f1a2a790bff:   xor    %r12,%r14
   0.16%  │ │    0x00007f1a2a790c02:   mov    %r9,%r12
   0.22%  │ │    0x00007f1a2a790c05:   and    %r11,%r12
   0.07%  │ │    0x00007f1a2a790c08:   add    %r13,%r15
   0.05%  │ │    0x00007f1a2a790c0b:   or     %r12,%rdi
   0.18%  │ │    0x00007f1a2a790c0e:   add    %r14,%rdx
   0.23%  │ │    0x00007f1a2a790c11:   add    %r15,%rax
   0.07%  │ │    0x00007f1a2a790c14:   add    %r15,%rdx
   0.04%  │ │    0x00007f1a2a790c17:   add    %rdi,%rdx
   0.18%  │ │    0x00007f1a2a790c1a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.21%  │ │    0x00007f1a2a790c1f:   vmovdqu %ymm0,(%rsp)
   0.06%  │ │    0x00007f1a2a790c24:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.04%  │ │    0x00007f1a2a790c2a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.15%  │ │    0x00007f1a2a790c30:   vpaddq %ymm5,%ymm0,%ymm0
   0.28%  │ │    0x00007f1a2a790c34:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.05%  │ │    0x00007f1a2a790c3a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.03%  │ │    0x00007f1a2a790c40:   vpsrlq $0x1,%ymm1,%ymm2
   0.26%  │ │    0x00007f1a2a790c45:   vpsllq $0x3f,%ymm1,%ymm3
   0.24%  │ │    0x00007f1a2a790c4a:   vpor   %ymm2,%ymm3,%ymm3
   0.09%  │ │    0x00007f1a2a790c4e:   vpsrlq $0x7,%ymm1,%ymm8
   0.02%  │ │    0x00007f1a2a790c53:   mov    %rdx,%rdi
   0.17%  │ │    0x00007f1a2a790c56:   rorx   $0x29,%rax,%r13
   0.23%  │ │    0x00007f1a2a790c5c:   rorx   $0x12,%rax,%r14
   0.07%  │ │    0x00007f1a2a790c62:   add    (%rsp),%r8
   0.04%  │ │    0x00007f1a2a790c66:   or     %r10,%rdi
   0.16%  │ │    0x00007f1a2a790c69:   mov    %rbx,%r15
   0.20%  │ │    0x00007f1a2a790c6c:   xor    %rcx,%r15
   0.09%  │ │    0x00007f1a2a790c6f:   rorx   $0x22,%rdx,%r12
   0.04%  │ │    0x00007f1a2a790c75:   xor    %r14,%r13
   0.19%  │ │    0x00007f1a2a790c78:   rorx   $0xe,%rax,%r14
   0.17%  │ │    0x00007f1a2a790c7e:   and    %rax,%r15
   0.06%  │ │    0x00007f1a2a790c81:   add    %r8,%r11
   0.02%  │ │    0x00007f1a2a790c84:   and    %r9,%rdi
   0.17%  │ │    0x00007f1a2a790c87:   xor    %r14,%r13
   0.18%  │ │    0x00007f1a2a790c8a:   rorx   $0x27,%rdx,%r14
   0.11%  │ │    0x00007f1a2a790c90:   xor    %r12,%r14
   0.02%  │ │    0x00007f1a2a790c93:   rorx   $0x1c,%rdx,%r12
   0.19%  │ │    0x00007f1a2a790c99:   xor    %rcx,%r15
   0.19%  │ │    0x00007f1a2a790c9c:   xor    %r12,%r14
   0.07%  │ │    0x00007f1a2a790c9f:   mov    %rdx,%r12
   0.03%  │ │    0x00007f1a2a790ca2:   and    %r10,%r12
   0.17%  │ │    0x00007f1a2a790ca5:   add    %r13,%r15
   0.22%  │ │    0x00007f1a2a790ca8:   or     %r12,%rdi
   0.08%  │ │    0x00007f1a2a790cab:   add    %r14,%r8
   0.05%  │ │    0x00007f1a2a790cae:   add    %r15,%r11
   0.16%  │ │    0x00007f1a2a790cb1:   add    %r15,%r8
   0.20%  │ │    0x00007f1a2a790cb4:   add    %rdi,%r8
   0.08%  │ │    0x00007f1a2a790cb7:   vpsrlq $0x8,%ymm1,%ymm2
   0.03%  │ │    0x00007f1a2a790cbc:   vpsllq $0x38,%ymm1,%ymm1
   0.18%  │ │    0x00007f1a2a790cc1:   vpor   %ymm2,%ymm1,%ymm1
   0.27%  │ │    0x00007f1a2a790cc5:   vpxor  %ymm8,%ymm3,%ymm3
   0.07%  │ │    0x00007f1a2a790cca:   vpxor  %ymm1,%ymm3,%ymm1
   0.04%  │ │    0x00007f1a2a790cce:   vpaddq %ymm1,%ymm0,%ymm0
   0.16%  │ │    0x00007f1a2a790cd2:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.22%  │ │    0x00007f1a2a790cd8:   vpand  %ymm10,%ymm0,%ymm0
   0.08%  │ │    0x00007f1a2a790cdd:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.02%  │ │    0x00007f1a2a790ce3:   vpsrlq $0x6,%ymm2,%ymm8
   0.14%  │ │    0x00007f1a2a790ce8:   mov    %r8,%rdi
   0.19%  │ │    0x00007f1a2a790ceb:   rorx   $0x29,%r11,%r13
   0.08%  │ │    0x00007f1a2a790cf1:   rorx   $0x12,%r11,%r14
   0.05%  │ │    0x00007f1a2a790cf7:   add    0x8(%rsp),%rcx
   0.16%  │ │    0x00007f1a2a790cfc:   or     %r9,%rdi
   0.20%  │ │    0x00007f1a2a790cff:   mov    %rax,%r15
   0.09%  │ │    0x00007f1a2a790d02:   xor    %rbx,%r15
   0.03%  │ │    0x00007f1a2a790d05:   rorx   $0x22,%r8,%r12
   0.17%  │ │    0x00007f1a2a790d0b:   xor    %r14,%r13
   0.20%  │ │    0x00007f1a2a790d0e:   rorx   $0xe,%r11,%r14
   0.08%  │ │    0x00007f1a2a790d14:   and    %r11,%r15
   0.05%  │ │    0x00007f1a2a790d17:   add    %rcx,%r10
   0.15%  │ │    0x00007f1a2a790d1a:   and    %rdx,%rdi
   0.23%  │ │    0x00007f1a2a790d1d:   xor    %r14,%r13
   0.08%  │ │    0x00007f1a2a790d20:   rorx   $0x27,%r8,%r14
   0.04%  │ │    0x00007f1a2a790d26:   xor    %r12,%r14
   0.19%  │ │    0x00007f1a2a790d29:   rorx   $0x1c,%r8,%r12
   0.20%  │ │    0x00007f1a2a790d2f:   xor    %rbx,%r15
   0.05%  │ │    0x00007f1a2a790d32:   xor    %r12,%r14
   0.05%  │ │    0x00007f1a2a790d35:   mov    %r8,%r12
   0.17%  │ │    0x00007f1a2a790d38:   and    %r9,%r12
   0.22%  │ │    0x00007f1a2a790d3b:   add    %r13,%r15
   0.07%  │ │    0x00007f1a2a790d3e:   or     %r12,%rdi
   0.03%  │ │    0x00007f1a2a790d41:   add    %r14,%rcx
   0.14%  │ │    0x00007f1a2a790d44:   add    %r15,%r10
   0.19%  │ │    0x00007f1a2a790d47:   add    %r15,%rcx
   0.07%  │ │    0x00007f1a2a790d4a:   add    %rdi,%rcx
   0.04%  │ │    0x00007f1a2a790d4d:   vpsrlq $0x13,%ymm2,%ymm3
   0.17%  │ │    0x00007f1a2a790d52:   vpsllq $0x2d,%ymm2,%ymm1
   0.20%  │ │    0x00007f1a2a790d57:   vpor   %ymm1,%ymm3,%ymm3
   0.07%  │ │    0x00007f1a2a790d5b:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │    0x00007f1a2a790d5f:   vpsrlq $0x3d,%ymm2,%ymm3
   0.14%  │ │    0x00007f1a2a790d64:   vpsllq $0x3,%ymm2,%ymm1
   0.19%  │ │    0x00007f1a2a790d69:   vpor   %ymm1,%ymm3,%ymm3
   0.08%  │ │    0x00007f1a2a790d6d:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │    0x00007f1a2a790d71:   vpaddq %ymm8,%ymm5,%ymm5
   0.13%  │ │    0x00007f1a2a790d76:   vpsrlq $0x6,%ymm5,%ymm8
   0.21%  │ │    0x00007f1a2a790d7b:   mov    %rcx,%rdi
   0.08%  │ │    0x00007f1a2a790d7e:   rorx   $0x29,%r10,%r13
   0.03%  │ │    0x00007f1a2a790d84:   rorx   $0x12,%r10,%r14
   0.15%  │ │    0x00007f1a2a790d8a:   add    0x10(%rsp),%rbx
   0.21%  │ │    0x00007f1a2a790d8f:   or     %rdx,%rdi
   0.06%  │ │    0x00007f1a2a790d92:   mov    %r11,%r15
   0.04%  │ │    0x00007f1a2a790d95:   xor    %rax,%r15
   0.13%  │ │    0x00007f1a2a790d98:   rorx   $0x22,%rcx,%r12
   0.23%  │ │    0x00007f1a2a790d9e:   xor    %r14,%r13
   0.08%  │ │    0x00007f1a2a790da1:   rorx   $0xe,%r10,%r14
   0.03%  │ │    0x00007f1a2a790da7:   and    %r10,%r15
   0.14%  │ │    0x00007f1a2a790daa:   add    %rbx,%r9
   0.18%  │ │    0x00007f1a2a790dad:   and    %r8,%rdi
   0.10%  │ │    0x00007f1a2a790db0:   xor    %r14,%r13
   0.05%  │ │    0x00007f1a2a790db3:   rorx   $0x27,%rcx,%r14
   0.16%  │ │    0x00007f1a2a790db9:   xor    %r12,%r14
   0.22%  │ │    0x00007f1a2a790dbc:   rorx   $0x1c,%rcx,%r12
   0.07%  │ │    0x00007f1a2a790dc2:   xor    %rax,%r15
   0.05%  │ │    0x00007f1a2a790dc5:   xor    %r12,%r14
   0.18%  │ │    0x00007f1a2a790dc8:   mov    %rcx,%r12
   0.23%  │ │    0x00007f1a2a790dcb:   and    %rdx,%r12
   0.08%  │ │    0x00007f1a2a790dce:   add    %r13,%r15
   0.05%  │ │    0x00007f1a2a790dd1:   or     %r12,%rdi
   0.17%  │ │    0x00007f1a2a790dd4:   add    %r14,%rbx
   0.22%  │ │    0x00007f1a2a790dd7:   add    %r15,%r9
   0.09%  │ │    0x00007f1a2a790dda:   add    %r15,%rbx
   0.03%  │ │    0x00007f1a2a790ddd:   add    %rdi,%rbx
   0.13%  │ │    0x00007f1a2a790de0:   vpsrlq $0x13,%ymm5,%ymm3
   0.23%  │ │    0x00007f1a2a790de5:   vpsllq $0x2d,%ymm5,%ymm1
   0.10%  │ │    0x00007f1a2a790dea:   vpor   %ymm1,%ymm3,%ymm3
   0.02%  │ │    0x00007f1a2a790dee:   vpxor  %ymm3,%ymm8,%ymm8
   0.15%  │ │    0x00007f1a2a790df2:   vpsrlq $0x3d,%ymm5,%ymm3
   0.22%  │ │    0x00007f1a2a790df7:   vpsllq $0x3,%ymm5,%ymm1
   0.09%  │ │    0x00007f1a2a790dfc:   vpor   %ymm1,%ymm3,%ymm3
   0.04%  │ │    0x00007f1a2a790e00:   vpxor  %ymm3,%ymm8,%ymm8
   0.19%  │ │    0x00007f1a2a790e04:   vpaddq %ymm8,%ymm0,%ymm2
   0.23%  │ │    0x00007f1a2a790e09:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.13%  │ │    0x00007f1a2a790e0f:   mov    %rbx,%rdi
   0.03%  │ │    0x00007f1a2a790e12:   rorx   $0x29,%r9,%r13
   0.16%  │ │    0x00007f1a2a790e18:   rorx   $0x12,%r9,%r14
   0.21%  │ │    0x00007f1a2a790e1e:   add    0x18(%rsp),%rax
   0.10%  │ │    0x00007f1a2a790e23:   or     %r8,%rdi
   0.04%  │ │    0x00007f1a2a790e26:   mov    %r10,%r15
   0.14%  │ │    0x00007f1a2a790e29:   xor    %r11,%r15
   0.22%  │ │    0x00007f1a2a790e2c:   rorx   $0x22,%rbx,%r12
   0.09%  │ │    0x00007f1a2a790e32:   xor    %r14,%r13
   0.04%  │ │    0x00007f1a2a790e35:   rorx   $0xe,%r9,%r14
   0.11%  │ │    0x00007f1a2a790e3b:   and    %r9,%r15
   0.21%  │ │    0x00007f1a2a790e3e:   add    %rax,%rdx
   0.10%  │ │    0x00007f1a2a790e41:   and    %rcx,%rdi
   0.04%  │ │    0x00007f1a2a790e44:   xor    %r14,%r13
   0.15%  │ │    0x00007f1a2a790e47:   rorx   $0x27,%rbx,%r14
   0.21%  │ │    0x00007f1a2a790e4d:   xor    %r12,%r14
   0.12%  │ │    0x00007f1a2a790e50:   rorx   $0x1c,%rbx,%r12
   0.02%  │ │    0x00007f1a2a790e56:   xor    %r11,%r15
   0.15%  │ │    0x00007f1a2a790e59:   xor    %r12,%r14
   0.18%  │ │    0x00007f1a2a790e5c:   mov    %rbx,%r12
   0.12%  │ │    0x00007f1a2a790e5f:   and    %r8,%r12
   0.04%  │ │    0x00007f1a2a790e62:   add    %r13,%r15
   0.14%  │ │    0x00007f1a2a790e65:   or     %r12,%rdi
   0.20%  │ │    0x00007f1a2a790e68:   add    %r14,%rax
   0.14%  │ │    0x00007f1a2a790e6b:   add    %r15,%rdx
   0.02%  │ │    0x00007f1a2a790e6e:   add    %r15,%rax
   0.15%  │ │    0x00007f1a2a790e71:   add    %rdi,%rax
   0.23%  │ │    0x00007f1a2a790e74:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.12%  │ │    0x00007f1a2a790e79:   vmovdqu %ymm0,(%rsp)
   0.03%  │ │    0x00007f1a2a790e7e:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.13%  │ │    0x00007f1a2a790e84:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.18%  │ │    0x00007f1a2a790e8a:   vpaddq %ymm6,%ymm0,%ymm0
   0.21%  │ │    0x00007f1a2a790e8e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.03%  │ │    0x00007f1a2a790e94:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.13%  │ │    0x00007f1a2a790e9a:   vpsrlq $0x1,%ymm1,%ymm2
   0.19%  │ │    0x00007f1a2a790e9f:   vpsllq $0x3f,%ymm1,%ymm3
   0.17%  │ │    0x00007f1a2a790ea4:   vpor   %ymm2,%ymm3,%ymm3
   0.04%  │ │    0x00007f1a2a790ea8:   vpsrlq $0x7,%ymm1,%ymm8
   0.13%  │ │    0x00007f1a2a790ead:   mov    %rax,%rdi
   0.17%  │ │    0x00007f1a2a790eb0:   rorx   $0x29,%rdx,%r13
   0.14%  │ │    0x00007f1a2a790eb6:   rorx   $0x12,%rdx,%r14
   0.06%  │ │    0x00007f1a2a790ebc:   add    (%rsp),%r11
   0.13%  │ │    0x00007f1a2a790ec0:   or     %rcx,%rdi
   0.21%  │ │    0x00007f1a2a790ec3:   mov    %r9,%r15
   0.15%  │ │    0x00007f1a2a790ec6:   xor    %r10,%r15
   0.05%  │ │    0x00007f1a2a790ec9:   rorx   $0x22,%rax,%r12
   0.12%  │ │    0x00007f1a2a790ecf:   xor    %r14,%r13
   0.18%  │ │    0x00007f1a2a790ed2:   rorx   $0xe,%rdx,%r14
   0.12%  │ │    0x00007f1a2a790ed8:   and    %rdx,%r15
   0.04%  │ │    0x00007f1a2a790edb:   add    %r11,%r8
   0.14%  │ │    0x00007f1a2a790ede:   and    %rbx,%rdi
   0.21%  │ │    0x00007f1a2a790ee1:   xor    %r14,%r13
   0.11%  │ │    0x00007f1a2a790ee4:   rorx   $0x27,%rax,%r14
   0.05%  │ │    0x00007f1a2a790eea:   xor    %r12,%r14
   0.14%  │ │    0x00007f1a2a790eed:   rorx   $0x1c,%rax,%r12
   0.19%  │ │    0x00007f1a2a790ef3:   xor    %r10,%r15
   0.19%  │ │    0x00007f1a2a790ef6:   xor    %r12,%r14
   0.06%  │ │    0x00007f1a2a790ef9:   mov    %rax,%r12
   0.14%  │ │    0x00007f1a2a790efc:   and    %rcx,%r12
   0.15%  │ │    0x00007f1a2a790eff:   add    %r13,%r15
   0.14%  │ │    0x00007f1a2a790f02:   or     %r12,%rdi
   0.04%  │ │    0x00007f1a2a790f05:   add    %r14,%r11
   0.10%  │ │    0x00007f1a2a790f08:   add    %r15,%r8
   0.19%  │ │    0x00007f1a2a790f0b:   add    %r15,%r11
   0.16%  │ │    0x00007f1a2a790f0e:   add    %rdi,%r11
   0.03%  │ │    0x00007f1a2a790f11:   vpsrlq $0x8,%ymm1,%ymm2
   0.13%  │ │    0x00007f1a2a790f16:   vpsllq $0x38,%ymm1,%ymm1
   0.18%  │ │    0x00007f1a2a790f1b:   vpor   %ymm2,%ymm1,%ymm1
   0.17%  │ │    0x00007f1a2a790f1f:   vpxor  %ymm8,%ymm3,%ymm3
   0.04%  │ │    0x00007f1a2a790f24:   vpxor  %ymm1,%ymm3,%ymm1
   0.10%  │ │    0x00007f1a2a790f28:   vpaddq %ymm1,%ymm0,%ymm0
   0.19%  │ │    0x00007f1a2a790f2c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.17%  │ │    0x00007f1a2a790f32:   vpand  %ymm10,%ymm0,%ymm0
   0.05%  │ │    0x00007f1a2a790f37:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.14%  │ │    0x00007f1a2a790f3d:   vpsrlq $0x6,%ymm2,%ymm8
   0.20%  │ │    0x00007f1a2a790f42:   mov    %r11,%rdi
   0.14%  │ │    0x00007f1a2a790f45:   rorx   $0x29,%r8,%r13
   0.07%  │ │    0x00007f1a2a790f4b:   rorx   $0x12,%r8,%r14
   0.12%  │ │    0x00007f1a2a790f51:   add    0x8(%rsp),%r10
   0.16%  │ │    0x00007f1a2a790f56:   or     %rbx,%rdi
   0.13%  │ │    0x00007f1a2a790f59:   mov    %rdx,%r15
   0.04%  │ │    0x00007f1a2a790f5c:   xor    %r9,%r15
   0.11%  │ │    0x00007f1a2a790f5f:   rorx   $0x22,%r11,%r12
   0.14%  │ │    0x00007f1a2a790f65:   xor    %r14,%r13
   0.13%  │ │    0x00007f1a2a790f68:   rorx   $0xe,%r8,%r14
   0.06%  │ │    0x00007f1a2a790f6e:   and    %r8,%r15
   0.10%  │ │    0x00007f1a2a790f71:   add    %r10,%rcx
   0.22%  │ │    0x00007f1a2a790f74:   and    %rax,%rdi
   0.16%  │ │    0x00007f1a2a790f77:   xor    %r14,%r13
   0.07%  │ │    0x00007f1a2a790f7a:   rorx   $0x27,%r11,%r14
   0.14%  │ │    0x00007f1a2a790f80:   xor    %r12,%r14
   0.16%  │ │    0x00007f1a2a790f83:   rorx   $0x1c,%r11,%r12
   0.15%  │ │    0x00007f1a2a790f89:   xor    %r9,%r15
   0.07%  │ │    0x00007f1a2a790f8c:   xor    %r12,%r14
   0.10%  │ │    0x00007f1a2a790f8f:   mov    %r11,%r12
   0.15%  │ │    0x00007f1a2a790f92:   and    %rbx,%r12
   0.15%  │ │    0x00007f1a2a790f95:   add    %r13,%r15
   0.06%  │ │    0x00007f1a2a790f98:   or     %r12,%rdi
   0.14%  │ │    0x00007f1a2a790f9b:   add    %r14,%r10
   0.15%  │ │    0x00007f1a2a790f9e:   add    %r15,%rcx
   0.11%  │ │    0x00007f1a2a790fa1:   add    %r15,%r10
   0.04%  │ │    0x00007f1a2a790fa4:   add    %rdi,%r10
   0.11%  │ │    0x00007f1a2a790fa7:   vpsrlq $0x13,%ymm2,%ymm3
   0.21%  │ │    0x00007f1a2a790fac:   vpsllq $0x2d,%ymm2,%ymm1
   0.18%  │ │    0x00007f1a2a790fb1:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │    0x00007f1a2a790fb5:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%  │ │    0x00007f1a2a790fb9:   vpsrlq $0x3d,%ymm2,%ymm3
   0.21%  │ │    0x00007f1a2a790fbe:   vpsllq $0x3,%ymm2,%ymm1
   0.15%  │ │    0x00007f1a2a790fc3:   vpor   %ymm1,%ymm3,%ymm3
   0.07%  │ │    0x00007f1a2a790fc7:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%  │ │    0x00007f1a2a790fcb:   vpaddq %ymm8,%ymm6,%ymm6
   0.16%  │ │    0x00007f1a2a790fd0:   vpsrlq $0x6,%ymm6,%ymm8
   0.16%  │ │    0x00007f1a2a790fd5:   mov    %r10,%rdi
   0.07%  │ │    0x00007f1a2a790fd8:   rorx   $0x29,%rcx,%r13
   0.13%  │ │    0x00007f1a2a790fde:   rorx   $0x12,%rcx,%r14
   0.16%  │ │    0x00007f1a2a790fe4:   add    0x10(%rsp),%r9
   0.17%  │ │    0x00007f1a2a790fe9:   or     %rax,%rdi
   0.05%  │ │    0x00007f1a2a790fec:   mov    %r8,%r15
   0.12%  │ │    0x00007f1a2a790fef:   xor    %rdx,%r15
   0.15%  │ │    0x00007f1a2a790ff2:   rorx   $0x22,%r10,%r12
   0.15%  │ │    0x00007f1a2a790ff8:   xor    %r14,%r13
   0.03%  │ │    0x00007f1a2a790ffb:   rorx   $0xe,%rcx,%r14
   0.13%  │ │    0x00007f1a2a791001:   and    %rcx,%r15
   0.18%  │ │    0x00007f1a2a791004:   add    %r9,%rbx
   0.15%  │ │    0x00007f1a2a791007:   and    %r11,%rdi
   0.05%  │ │    0x00007f1a2a79100a:   xor    %r14,%r13
   0.12%  │ │    0x00007f1a2a79100d:   rorx   $0x27,%r10,%r14
   0.18%  │ │    0x00007f1a2a791013:   xor    %r12,%r14
   0.17%  │ │    0x00007f1a2a791016:   rorx   $0x1c,%r10,%r12
   0.05%  │ │    0x00007f1a2a79101c:   xor    %rdx,%r15
   0.16%  │ │    0x00007f1a2a79101f:   xor    %r12,%r14
   0.19%  │ │    0x00007f1a2a791022:   mov    %r10,%r12
   0.18%  │ │    0x00007f1a2a791025:   and    %rax,%r12
   0.05%  │ │    0x00007f1a2a791028:   add    %r13,%r15
   0.13%  │ │    0x00007f1a2a79102b:   or     %r12,%rdi
   0.16%  │ │    0x00007f1a2a79102e:   add    %r14,%r9
   0.19%  │ │    0x00007f1a2a791031:   add    %r15,%rbx
   0.04%  │ │    0x00007f1a2a791034:   add    %r15,%r9
   0.12%  │ │    0x00007f1a2a791037:   add    %rdi,%r9
   0.16%  │ │    0x00007f1a2a79103a:   vpsrlq $0x13,%ymm6,%ymm3
   0.16%  │ │    0x00007f1a2a79103f:   vpsllq $0x2d,%ymm6,%ymm1
   0.04%  │ │    0x00007f1a2a791044:   vpor   %ymm1,%ymm3,%ymm3
   0.12%  │ │    0x00007f1a2a791048:   vpxor  %ymm3,%ymm8,%ymm8
   0.17%  │ │    0x00007f1a2a79104c:   vpsrlq $0x3d,%ymm6,%ymm3
   0.18%  │ │    0x00007f1a2a791051:   vpsllq $0x3,%ymm6,%ymm1
   0.05%  │ │    0x00007f1a2a791056:   vpor   %ymm1,%ymm3,%ymm3
   0.15%  │ │    0x00007f1a2a79105a:   vpxor  %ymm3,%ymm8,%ymm8
   0.17%  │ │    0x00007f1a2a79105e:   vpaddq %ymm8,%ymm0,%ymm2
   0.16%  │ │    0x00007f1a2a791063:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.13%  │ │    0x00007f1a2a791069:   mov    %r9,%rdi
   0.08%  │ │    0x00007f1a2a79106c:   rorx   $0x29,%rbx,%r13
   0.13%  │ │    0x00007f1a2a791072:   rorx   $0x12,%rbx,%r14
   0.14%  │ │    0x00007f1a2a791078:   add    0x18(%rsp),%rdx
   0.12%  │ │    0x00007f1a2a79107d:   or     %r11,%rdi
   0.14%  │ │    0x00007f1a2a791080:   mov    %rcx,%r15
   0.13%  │ │    0x00007f1a2a791083:   xor    %r8,%r15
   0.13%  │ │    0x00007f1a2a791086:   rorx   $0x22,%r9,%r12
   0.13%  │ │    0x00007f1a2a79108c:   xor    %r14,%r13
   0.10%  │ │    0x00007f1a2a79108f:   rorx   $0xe,%rbx,%r14
   0.12%  │ │    0x00007f1a2a791095:   and    %rbx,%r15
   0.13%  │ │    0x00007f1a2a791098:   add    %rdx,%rax
   0.13%  │ │    0x00007f1a2a79109b:   and    %r10,%rdi
   0.09%  │ │    0x00007f1a2a79109e:   xor    %r14,%r13
   0.12%  │ │    0x00007f1a2a7910a1:   rorx   $0x27,%r9,%r14
   0.15%  │ │    0x00007f1a2a7910a7:   xor    %r12,%r14
   0.11%  │ │    0x00007f1a2a7910aa:   rorx   $0x1c,%r9,%r12
   0.12%  │ │    0x00007f1a2a7910b0:   xor    %r8,%r15
   0.13%  │ │    0x00007f1a2a7910b3:   xor    %r12,%r14
   0.15%  │ │    0x00007f1a2a7910b6:   mov    %r9,%r12
   0.15%  │ │    0x00007f1a2a7910b9:   and    %r11,%r12
   0.13%  │ │    0x00007f1a2a7910bc:   add    %r13,%r15
   0.11%  │ │    0x00007f1a2a7910bf:   or     %r12,%rdi
   0.14%  │ │    0x00007f1a2a7910c2:   add    %r14,%rdx
   0.10%  │ │    0x00007f1a2a7910c5:   add    %r15,%rax
   0.12%  │ │    0x00007f1a2a7910c8:   add    %r15,%rdx
   0.12%  │ │    0x00007f1a2a7910cb:   add    %rdi,%rdx
   0.12%  │ │    0x00007f1a2a7910ce:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.13%  │ │    0x00007f1a2a7910d3:   vmovdqu %ymm0,(%rsp)
   0.10%  │ │    0x00007f1a2a7910d8:   add    $0x80,%rbp
   0.13%  │ │    0x00007f1a2a7910df:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.14%  │ │    0x00007f1a2a7910e5:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.09%  │ │    0x00007f1a2a7910eb:   vpaddq %ymm7,%ymm0,%ymm0
   0.27%  │ │    0x00007f1a2a7910ef:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.12%  │ │    0x00007f1a2a7910f5:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.10%  │ │    0x00007f1a2a7910fb:   vpsrlq $0x1,%ymm1,%ymm2
   0.11%  │ │    0x00007f1a2a791100:   vpsllq $0x3f,%ymm1,%ymm3
   0.19%  │ │    0x00007f1a2a791105:   vpor   %ymm2,%ymm3,%ymm3
   0.14%  │ │    0x00007f1a2a791109:   vpsrlq $0x7,%ymm1,%ymm8
   0.13%  │ │    0x00007f1a2a79110e:   mov    %rdx,%rdi
   0.10%  │ │    0x00007f1a2a791111:   rorx   $0x29,%rax,%r13
   0.15%  │ │    0x00007f1a2a791117:   rorx   $0x12,%rax,%r14
   0.16%  │ │    0x00007f1a2a79111d:   add    (%rsp),%r8
   0.11%  │ │    0x00007f1a2a791121:   or     %r10,%rdi
   0.09%  │ │    0x00007f1a2a791124:   mov    %rbx,%r15
   0.15%  │ │    0x00007f1a2a791127:   xor    %rcx,%r15
   0.15%  │ │    0x00007f1a2a79112a:   rorx   $0x22,%rdx,%r12
   0.10%  │ │    0x00007f1a2a791130:   xor    %r14,%r13
   0.12%  │ │    0x00007f1a2a791133:   rorx   $0xe,%rax,%r14
   0.17%  │ │    0x00007f1a2a791139:   and    %rax,%r15
   0.14%  │ │    0x00007f1a2a79113c:   add    %r8,%r11
   0.12%  │ │    0x00007f1a2a79113f:   and    %r9,%rdi
   0.10%  │ │    0x00007f1a2a791142:   xor    %r14,%r13
   0.16%  │ │    0x00007f1a2a791145:   rorx   $0x27,%rdx,%r14
   0.13%  │ │    0x00007f1a2a79114b:   xor    %r12,%r14
   0.11%  │ │    0x00007f1a2a79114e:   rorx   $0x1c,%rdx,%r12
   0.10%  │ │    0x00007f1a2a791154:   xor    %rcx,%r15
   0.13%  │ │    0x00007f1a2a791157:   xor    %r12,%r14
   0.19%  │ │    0x00007f1a2a79115a:   mov    %rdx,%r12
   0.10%  │ │    0x00007f1a2a79115d:   and    %r10,%r12
   0.07%  │ │    0x00007f1a2a791160:   add    %r13,%r15
   0.15%  │ │    0x00007f1a2a791163:   or     %r12,%rdi
   0.16%  │ │    0x00007f1a2a791166:   add    %r14,%r8
   0.10%  │ │    0x00007f1a2a791169:   add    %r15,%r11
   0.11%  │ │    0x00007f1a2a79116c:   add    %r15,%r8
   0.15%  │ │    0x00007f1a2a79116f:   add    %rdi,%r8
   0.11%  │ │    0x00007f1a2a791172:   vpsrlq $0x8,%ymm1,%ymm2
   0.13%  │ │    0x00007f1a2a791177:   vpsllq $0x38,%ymm1,%ymm1
   0.09%  │ │    0x00007f1a2a79117c:   vpor   %ymm2,%ymm1,%ymm1
   0.15%  │ │    0x00007f1a2a791180:   vpxor  %ymm8,%ymm3,%ymm3
   0.14%  │ │    0x00007f1a2a791185:   vpxor  %ymm1,%ymm3,%ymm1
   0.13%  │ │    0x00007f1a2a791189:   vpaddq %ymm1,%ymm0,%ymm0
   0.09%  │ │    0x00007f1a2a79118d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.13%  │ │    0x00007f1a2a791193:   vpand  %ymm10,%ymm0,%ymm0
   0.15%  │ │    0x00007f1a2a791198:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.10%  │ │    0x00007f1a2a79119e:   vpsrlq $0x6,%ymm2,%ymm8
   0.11%  │ │    0x00007f1a2a7911a3:   mov    %r8,%rdi
   0.17%  │ │    0x00007f1a2a7911a6:   rorx   $0x29,%r11,%r13
   0.15%  │ │    0x00007f1a2a7911ac:   rorx   $0x12,%r11,%r14
   0.10%  │ │    0x00007f1a2a7911b2:   add    0x8(%rsp),%rcx
   0.07%  │ │    0x00007f1a2a7911b7:   or     %r9,%rdi
   0.14%  │ │    0x00007f1a2a7911ba:   mov    %rax,%r15
   0.14%  │ │    0x00007f1a2a7911bd:   xor    %rbx,%r15
   0.11%  │ │    0x00007f1a2a7911c0:   rorx   $0x22,%r8,%r12
   0.09%  │ │    0x00007f1a2a7911c6:   xor    %r14,%r13
   0.14%  │ │    0x00007f1a2a7911c9:   rorx   $0xe,%r11,%r14
   0.15%  │ │    0x00007f1a2a7911cf:   and    %r11,%r15
   0.10%  │ │    0x00007f1a2a7911d2:   add    %rcx,%r10
   0.07%  │ │    0x00007f1a2a7911d5:   and    %rdx,%rdi
   0.14%  │ │    0x00007f1a2a7911d8:   xor    %r14,%r13
   0.13%  │ │    0x00007f1a2a7911db:   rorx   $0x27,%r8,%r14
   0.12%  │ │    0x00007f1a2a7911e1:   xor    %r12,%r14
   0.09%  │ │    0x00007f1a2a7911e4:   rorx   $0x1c,%r8,%r12
   0.17%  │ │    0x00007f1a2a7911ea:   xor    %rbx,%r15
   0.15%  │ │    0x00007f1a2a7911ed:   xor    %r12,%r14
   0.10%  │ │    0x00007f1a2a7911f0:   mov    %r8,%r12
   0.07%  │ │    0x00007f1a2a7911f3:   and    %r9,%r12
   0.17%  │ │    0x00007f1a2a7911f6:   add    %r13,%r15
   0.16%  │ │    0x00007f1a2a7911f9:   or     %r12,%rdi
   0.10%  │ │    0x00007f1a2a7911fc:   add    %r14,%rcx
   0.10%  │ │    0x00007f1a2a7911ff:   add    %r15,%r10
   0.15%  │ │    0x00007f1a2a791202:   add    %r15,%rcx
   0.13%  │ │    0x00007f1a2a791205:   add    %rdi,%rcx
   0.10%  │ │    0x00007f1a2a791208:   vpsrlq $0x13,%ymm2,%ymm3
   0.12%  │ │    0x00007f1a2a79120d:   vpsllq $0x2d,%ymm2,%ymm1
   0.16%  │ │    0x00007f1a2a791212:   vpor   %ymm1,%ymm3,%ymm3
   0.14%  │ │    0x00007f1a2a791216:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%  │ │    0x00007f1a2a79121a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.12%  │ │    0x00007f1a2a79121f:   vpsllq $0x3,%ymm2,%ymm1
   0.16%  │ │    0x00007f1a2a791224:   vpor   %ymm1,%ymm3,%ymm3
   0.18%  │ │    0x00007f1a2a791228:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%  │ │    0x00007f1a2a79122c:   vpaddq %ymm8,%ymm7,%ymm7
   0.07%  │ │    0x00007f1a2a791231:   vpsrlq $0x6,%ymm7,%ymm8
   0.14%  │ │    0x00007f1a2a791236:   mov    %rcx,%rdi
   0.13%  │ │    0x00007f1a2a791239:   rorx   $0x29,%r10,%r13
   0.09%  │ │    0x00007f1a2a79123f:   rorx   $0x12,%r10,%r14
   0.09%  │ │    0x00007f1a2a791245:   add    0x10(%rsp),%rbx
   0.15%  │ │    0x00007f1a2a79124a:   or     %rdx,%rdi
   0.13%  │ │    0x00007f1a2a79124d:   mov    %r11,%r15
   0.11%  │ │    0x00007f1a2a791250:   xor    %rax,%r15
   0.07%  │ │    0x00007f1a2a791253:   rorx   $0x22,%rcx,%r12
   0.14%  │ │    0x00007f1a2a791259:   xor    %r14,%r13
   0.12%  │ │    0x00007f1a2a79125c:   rorx   $0xe,%r10,%r14
   0.08%  │ │    0x00007f1a2a791262:   and    %r10,%r15
   0.09%  │ │    0x00007f1a2a791265:   add    %rbx,%r9
   0.15%  │ │    0x00007f1a2a791268:   and    %r8,%rdi
   0.15%  │ │    0x00007f1a2a79126b:   xor    %r14,%r13
   0.11%  │ │    0x00007f1a2a79126e:   rorx   $0x27,%rcx,%r14
   0.09%  │ │    0x00007f1a2a791274:   xor    %r12,%r14
   0.15%  │ │    0x00007f1a2a791277:   rorx   $0x1c,%rcx,%r12
   0.13%  │ │    0x00007f1a2a79127d:   xor    %rax,%r15
   0.10%  │ │    0x00007f1a2a791280:   xor    %r12,%r14
   0.11%  │ │    0x00007f1a2a791283:   mov    %rcx,%r12
   0.16%  │ │    0x00007f1a2a791286:   and    %rdx,%r12
   0.12%  │ │    0x00007f1a2a791289:   add    %r13,%r15
   0.09%  │ │    0x00007f1a2a79128c:   or     %r12,%rdi
   0.10%  │ │    0x00007f1a2a79128f:   add    %r14,%rbx
   0.19%  │ │    0x00007f1a2a791292:   add    %r15,%r9
   0.15%  │ │    0x00007f1a2a791295:   add    %r15,%rbx
   0.09%  │ │    0x00007f1a2a791298:   add    %rdi,%rbx
   0.09%  │ │    0x00007f1a2a79129b:   vpsrlq $0x13,%ymm7,%ymm3
   0.18%  │ │    0x00007f1a2a7912a0:   vpsllq $0x2d,%ymm7,%ymm1
   0.14%  │ │    0x00007f1a2a7912a5:   vpor   %ymm1,%ymm3,%ymm3
   0.08%  │ │    0x00007f1a2a7912a9:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%  │ │    0x00007f1a2a7912ad:   vpsrlq $0x3d,%ymm7,%ymm3
   0.18%  │ │    0x00007f1a2a7912b2:   vpsllq $0x3,%ymm7,%ymm1
   0.15%  │ │    0x00007f1a2a7912b7:   vpor   %ymm1,%ymm3,%ymm3
   0.12%  │ │    0x00007f1a2a7912bb:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%  │ │    0x00007f1a2a7912bf:   vpaddq %ymm8,%ymm0,%ymm2
   0.16%  │ │    0x00007f1a2a7912c4:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.25%  │ │    0x00007f1a2a7912ca:   mov    %rbx,%rdi
   0.09%  │ │    0x00007f1a2a7912cd:   rorx   $0x29,%r9,%r13
   0.07%  │ │    0x00007f1a2a7912d3:   rorx   $0x12,%r9,%r14
   0.11%  │ │    0x00007f1a2a7912d9:   add    0x18(%rsp),%rax
   0.18%  │ │    0x00007f1a2a7912de:   or     %r8,%rdi
   0.09%  │ │    0x00007f1a2a7912e1:   mov    %r10,%r15
   0.07%  │ │    0x00007f1a2a7912e4:   xor    %r11,%r15
   0.12%  │ │    0x00007f1a2a7912e7:   rorx   $0x22,%rbx,%r12
   0.18%  │ │    0x00007f1a2a7912ed:   xor    %r14,%r13
   0.10%  │ │    0x00007f1a2a7912f0:   rorx   $0xe,%r9,%r14
   0.06%  │ │    0x00007f1a2a7912f6:   and    %r9,%r15
   0.14%  │ │    0x00007f1a2a7912f9:   add    %rax,%rdx
   0.21%  │ │    0x00007f1a2a7912fc:   and    %rcx,%rdi
   0.08%  │ │    0x00007f1a2a7912ff:   xor    %r14,%r13
   0.07%  │ │    0x00007f1a2a791302:   rorx   $0x27,%rbx,%r14
   0.16%  │ │    0x00007f1a2a791308:   xor    %r12,%r14
   0.17%  │ │    0x00007f1a2a79130b:   rorx   $0x1c,%rbx,%r12
   0.11%  │ │    0x00007f1a2a791311:   xor    %r11,%r15
   0.07%  │ │    0x00007f1a2a791314:   xor    %r12,%r14
   0.14%  │ │    0x00007f1a2a791317:   mov    %rbx,%r12
   0.22%  │ │    0x00007f1a2a79131a:   and    %r8,%r12
   0.11%  │ │    0x00007f1a2a79131d:   add    %r13,%r15
   0.07%  │ │    0x00007f1a2a791320:   or     %r12,%rdi
   0.15%  │ │    0x00007f1a2a791323:   add    %r14,%rax
   0.20%  │ │    0x00007f1a2a791326:   add    %r15,%rdx
   0.10%  │ │    0x00007f1a2a791329:   add    %r15,%rax
   0.05%  │ │    0x00007f1a2a79132c:   add    %rdi,%rax
   0.16%  │ │    0x00007f1a2a79132f:   subq   $0x1,0x20(%rsp)
   0.26%  ╰ │    0x00007f1a2a791335:   jne    0x00007f1a2a7909c0
   0.03%    │    0x00007f1a2a79133b:   movq   $0x2,0x20(%rsp)
   0.05%   ↗│    0x00007f1a2a791344:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.09%   ││    0x00007f1a2a791349:   vmovdqu %ymm0,(%rsp)
   0.06%   ││    0x00007f1a2a79134e:   mov    %r9,%r15
   0.08%   ││    0x00007f1a2a791351:   rorx   $0x29,%rdx,%r13
   0.04%   ││    0x00007f1a2a791357:   rorx   $0x12,%rdx,%r14
   0.06%   ││    0x00007f1a2a79135d:   xor    %r10,%r15
   0.05%   ││    0x00007f1a2a791360:   xor    %r14,%r13
   0.07%   ││    0x00007f1a2a791363:   rorx   $0xe,%rdx,%r14
   0.05%   ││    0x00007f1a2a791369:   and    %rdx,%r15
   0.06%   ││    0x00007f1a2a79136c:   xor    %r14,%r13
   0.07%   ││    0x00007f1a2a79136f:   rorx   $0x22,%rax,%r12
   0.08%   ││    0x00007f1a2a791375:   xor    %r10,%r15
   0.07%   ││    0x00007f1a2a791378:   rorx   $0x27,%rax,%r14
   0.08%   ││    0x00007f1a2a79137e:   mov    %rax,%rdi
   0.05%   ││    0x00007f1a2a791381:   xor    %r12,%r14
   0.06%   ││    0x00007f1a2a791384:   rorx   $0x1c,%rax,%r12
   0.07%   ││    0x00007f1a2a79138a:   add    (%rsp),%r11
   0.07%   ││    0x00007f1a2a79138e:   or     %rcx,%rdi
   0.06%   ││    0x00007f1a2a791391:   xor    %r12,%r14
   0.08%   ││    0x00007f1a2a791394:   mov    %rax,%r12
   0.06%   ││    0x00007f1a2a791397:   and    %rbx,%rdi
   0.08%   ││    0x00007f1a2a79139a:   and    %rcx,%r12
   0.07%   ││    0x00007f1a2a79139d:   add    %r13,%r15
   0.07%   ││    0x00007f1a2a7913a0:   add    %r11,%r8
   0.05%   ││    0x00007f1a2a7913a3:   or     %r12,%rdi
   0.04%   ││    0x00007f1a2a7913a6:   add    %r14,%r11
   0.04%   ││    0x00007f1a2a7913a9:   add    %r15,%r8
   0.08%   ││    0x00007f1a2a7913ac:   add    %r15,%r11
   0.06%   ││    0x00007f1a2a7913af:   mov    %rdx,%r15
   0.08%   ││    0x00007f1a2a7913b2:   rorx   $0x29,%r8,%r13
   0.07%   ││    0x00007f1a2a7913b8:   rorx   $0x12,%r8,%r14
   0.06%   ││    0x00007f1a2a7913be:   xor    %r9,%r15
   0.05%   ││    0x00007f1a2a7913c1:   xor    %r14,%r13
   0.07%   ││    0x00007f1a2a7913c4:   rorx   $0xe,%r8,%r14
   0.07%   ││    0x00007f1a2a7913ca:   and    %r8,%r15
   0.07%   ││    0x00007f1a2a7913cd:   add    %rdi,%r11
   0.05%   ││    0x00007f1a2a7913d0:   xor    %r14,%r13
   0.04%   ││    0x00007f1a2a7913d3:   rorx   $0x22,%r11,%r12
   0.05%   ││    0x00007f1a2a7913d9:   xor    %r9,%r15
   0.08%   ││    0x00007f1a2a7913dc:   rorx   $0x27,%r11,%r14
   0.08%   ││    0x00007f1a2a7913e2:   mov    %r11,%rdi
   0.06%   ││    0x00007f1a2a7913e5:   xor    %r12,%r14
   0.04%   ││    0x00007f1a2a7913e8:   rorx   $0x1c,%r11,%r12
   0.08%   ││    0x00007f1a2a7913ee:   add    0x8(%rsp),%r10
   0.05%   ││    0x00007f1a2a7913f3:   or     %rbx,%rdi
   0.07%   ││    0x00007f1a2a7913f6:   xor    %r12,%r14
   0.05%   ││    0x00007f1a2a7913f9:   mov    %r11,%r12
   0.05%   ││    0x00007f1a2a7913fc:   and    %rax,%rdi
   0.05%   ││    0x00007f1a2a7913ff:   and    %rbx,%r12
   0.06%   ││    0x00007f1a2a791402:   add    %r13,%r15
   0.06%   ││    0x00007f1a2a791405:   add    %r10,%rcx
   0.05%   ││    0x00007f1a2a791408:   or     %r12,%rdi
   0.07%   ││    0x00007f1a2a79140b:   add    %r14,%r10
   0.07%   ││    0x00007f1a2a79140e:   add    %r15,%rcx
   0.06%   ││    0x00007f1a2a791411:   add    %r15,%r10
   0.07%   ││    0x00007f1a2a791414:   mov    %r8,%r15
   0.04%   ││    0x00007f1a2a791417:   rorx   $0x29,%rcx,%r13
   0.05%   ││    0x00007f1a2a79141d:   rorx   $0x12,%rcx,%r14
   0.05%   ││    0x00007f1a2a791423:   xor    %rdx,%r15
   0.06%   ││    0x00007f1a2a791426:   xor    %r14,%r13
   0.08%   ││    0x00007f1a2a791429:   rorx   $0xe,%rcx,%r14
   0.08%   ││    0x00007f1a2a79142f:   and    %rcx,%r15
   0.07%   ││    0x00007f1a2a791432:   add    %rdi,%r10
   0.07%   ││    0x00007f1a2a791435:   xor    %r14,%r13
   0.06%   ││    0x00007f1a2a791438:   rorx   $0x22,%r10,%r12
   0.08%   ││    0x00007f1a2a79143e:   xor    %rdx,%r15
   0.07%   ││    0x00007f1a2a791441:   rorx   $0x27,%r10,%r14
   0.10%   ││    0x00007f1a2a791447:   mov    %r10,%rdi
   0.06%   ││    0x00007f1a2a79144a:   xor    %r12,%r14
   0.07%   ││    0x00007f1a2a79144d:   rorx   $0x1c,%r10,%r12
   0.07%   ││    0x00007f1a2a791453:   add    0x10(%rsp),%r9
   0.06%   ││    0x00007f1a2a791458:   or     %rax,%rdi
   0.04%   ││    0x00007f1a2a79145b:   xor    %r12,%r14
   0.08%   ││    0x00007f1a2a79145e:   mov    %r10,%r12
   0.07%   ││    0x00007f1a2a791461:   and    %r11,%rdi
   0.07%   ││    0x00007f1a2a791464:   and    %rax,%r12
   0.05%   ││    0x00007f1a2a791467:   add    %r13,%r15
   0.08%   ││    0x00007f1a2a79146a:   add    %r9,%rbx
   0.06%   ││    0x00007f1a2a79146d:   or     %r12,%rdi
   0.07%   ││    0x00007f1a2a791470:   add    %r14,%r9
   0.05%   ││    0x00007f1a2a791473:   add    %r15,%rbx
   0.08%   ││    0x00007f1a2a791476:   add    %r15,%r9
   0.07%   ││    0x00007f1a2a791479:   mov    %rcx,%r15
   0.07%   ││    0x00007f1a2a79147c:   rorx   $0x29,%rbx,%r13
   0.06%   ││    0x00007f1a2a791482:   rorx   $0x12,%rbx,%r14
   0.08%   ││    0x00007f1a2a791488:   xor    %r8,%r15
   0.06%   ││    0x00007f1a2a79148b:   xor    %r14,%r13
   0.07%   ││    0x00007f1a2a79148e:   rorx   $0xe,%rbx,%r14
   0.06%   ││    0x00007f1a2a791494:   and    %rbx,%r15
   0.08%   ││    0x00007f1a2a791497:   add    %rdi,%r9
   0.07%   ││    0x00007f1a2a79149a:   xor    %r14,%r13
   0.07%   ││    0x00007f1a2a79149d:   rorx   $0x22,%r9,%r12
   0.05%   ││    0x00007f1a2a7914a3:   xor    %r8,%r15
   0.10%   ││    0x00007f1a2a7914a6:   rorx   $0x27,%r9,%r14
   0.06%   ││    0x00007f1a2a7914ac:   mov    %r9,%rdi
   0.06%   ││    0x00007f1a2a7914af:   xor    %r12,%r14
   0.06%   ││    0x00007f1a2a7914b2:   rorx   $0x1c,%r9,%r12
   0.07%   ││    0x00007f1a2a7914b8:   add    0x18(%rsp),%rdx
   0.06%   ││    0x00007f1a2a7914bd:   or     %r11,%rdi
   0.05%   ││    0x00007f1a2a7914c0:   xor    %r12,%r14
   0.07%   ││    0x00007f1a2a7914c3:   mov    %r9,%r12
   0.09%   ││    0x00007f1a2a7914c6:   and    %r10,%rdi
   0.05%   ││    0x00007f1a2a7914c9:   and    %r11,%r12
   0.06%   ││    0x00007f1a2a7914cc:   add    %r13,%r15
   0.08%   ││    0x00007f1a2a7914cf:   add    %rdx,%rax
   0.09%   ││    0x00007f1a2a7914d2:   or     %r12,%rdi
   0.06%   ││    0x00007f1a2a7914d5:   add    %r14,%rdx
   0.07%   ││    0x00007f1a2a7914d8:   add    %r15,%rax
   0.05%   ││    0x00007f1a2a7914db:   add    %r15,%rdx
   0.08%   ││    0x00007f1a2a7914de:   add    %rdi,%rdx
   0.09%   ││    0x00007f1a2a7914e1:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.07%   ││    0x00007f1a2a7914e6:   vmovdqu %ymm0,(%rsp)
   0.03%   ││    0x00007f1a2a7914eb:   add    $0x40,%rbp
   0.04%   ││    0x00007f1a2a7914ef:   mov    %rbx,%r15
   0.08%   ││    0x00007f1a2a7914f2:   rorx   $0x29,%rax,%r13
   0.06%   ││    0x00007f1a2a7914f8:   rorx   $0x12,%rax,%r14
   0.04%   ││    0x00007f1a2a7914fe:   xor    %rcx,%r15
   0.08%   ││    0x00007f1a2a791501:   xor    %r14,%r13
   0.10%   ││    0x00007f1a2a791504:   rorx   $0xe,%rax,%r14
   0.06%   ││    0x00007f1a2a79150a:   and    %rax,%r15
   0.04%   ││    0x00007f1a2a79150d:   xor    %r14,%r13
   0.06%   ││    0x00007f1a2a791510:   rorx   $0x22,%rdx,%r12
   0.08%   ││    0x00007f1a2a791516:   xor    %rcx,%r15
   0.06%   ││    0x00007f1a2a791519:   rorx   $0x27,%rdx,%r14
   0.05%   ││    0x00007f1a2a79151f:   mov    %rdx,%rdi
   0.05%   ││    0x00007f1a2a791522:   xor    %r12,%r14
   0.10%   ││    0x00007f1a2a791525:   rorx   $0x1c,%rdx,%r12
   0.05%   ││    0x00007f1a2a79152b:   add    (%rsp),%r8
   0.05%   ││    0x00007f1a2a79152f:   or     %r10,%rdi
   0.08%   ││    0x00007f1a2a791532:   xor    %r12,%r14
   0.09%   ││    0x00007f1a2a791535:   mov    %rdx,%r12
   0.04%   ││    0x00007f1a2a791538:   and    %r9,%rdi
   0.06%   ││    0x00007f1a2a79153b:   and    %r10,%r12
   0.08%   ││    0x00007f1a2a79153e:   add    %r13,%r15
   0.09%   ││    0x00007f1a2a791541:   add    %r8,%r11
   0.06%   ││    0x00007f1a2a791544:   or     %r12,%rdi
   0.03%   ││    0x00007f1a2a791547:   add    %r14,%r8
   0.07%   ││    0x00007f1a2a79154a:   add    %r15,%r11
   0.08%   ││    0x00007f1a2a79154d:   add    %r15,%r8
   0.07%   ││    0x00007f1a2a791550:   mov    %rax,%r15
   0.04%   ││    0x00007f1a2a791553:   rorx   $0x29,%r11,%r13
   0.09%   ││    0x00007f1a2a791559:   rorx   $0x12,%r11,%r14
   0.10%   ││    0x00007f1a2a79155f:   xor    %rbx,%r15
   0.05%   ││    0x00007f1a2a791562:   xor    %r14,%r13
   0.06%   ││    0x00007f1a2a791565:   rorx   $0xe,%r11,%r14
   0.06%   ││    0x00007f1a2a79156b:   and    %r11,%r15
   0.08%   ││    0x00007f1a2a79156e:   add    %rdi,%r8
   0.06%   ││    0x00007f1a2a791571:   xor    %r14,%r13
   0.06%   ││    0x00007f1a2a791574:   rorx   $0x22,%r8,%r12
   0.08%   ││    0x00007f1a2a79157a:   xor    %rbx,%r15
   0.07%   ││    0x00007f1a2a79157d:   rorx   $0x27,%r8,%r14
   0.07%   ││    0x00007f1a2a791583:   mov    %r8,%rdi
   0.07%   ││    0x00007f1a2a791586:   xor    %r12,%r14
   0.08%   ││    0x00007f1a2a791589:   rorx   $0x1c,%r8,%r12
   0.05%   ││    0x00007f1a2a79158f:   add    0x8(%rsp),%rcx
   0.05%   ││    0x00007f1a2a791594:   or     %r9,%rdi
   0.06%   ││    0x00007f1a2a791597:   xor    %r12,%r14
   0.07%   ││    0x00007f1a2a79159a:   mov    %r8,%r12
   0.10%   ││    0x00007f1a2a79159d:   and    %rdx,%rdi
   0.04%   ││    0x00007f1a2a7915a0:   and    %r9,%r12
   0.05%   ││    0x00007f1a2a7915a3:   add    %r13,%r15
   0.09%   ││    0x00007f1a2a7915a6:   add    %rcx,%r10
   0.08%   ││    0x00007f1a2a7915a9:   or     %r12,%rdi
   0.06%   ││    0x00007f1a2a7915ac:   add    %r14,%rcx
   0.05%   ││    0x00007f1a2a7915af:   add    %r15,%r10
   0.11%   ││    0x00007f1a2a7915b2:   add    %r15,%rcx
   0.07%   ││    0x00007f1a2a7915b5:   mov    %r11,%r15
   0.06%   ││    0x00007f1a2a7915b8:   rorx   $0x29,%r10,%r13
   0.06%   ││    0x00007f1a2a7915be:   rorx   $0x12,%r10,%r14
   0.09%   ││    0x00007f1a2a7915c4:   xor    %rax,%r15
   0.10%   ││    0x00007f1a2a7915c7:   xor    %r14,%r13
   0.07%   ││    0x00007f1a2a7915ca:   rorx   $0xe,%r10,%r14
   0.07%   ││    0x00007f1a2a7915d0:   and    %r10,%r15
   0.09%   ││    0x00007f1a2a7915d3:   add    %rdi,%rcx
   0.07%   ││    0x00007f1a2a7915d6:   xor    %r14,%r13
   0.07%   ││    0x00007f1a2a7915d9:   rorx   $0x22,%rcx,%r12
   0.07%   ││    0x00007f1a2a7915df:   xor    %rax,%r15
   0.07%   ││    0x00007f1a2a7915e2:   rorx   $0x27,%rcx,%r14
   0.09%   ││    0x00007f1a2a7915e8:   mov    %rcx,%rdi
   0.04%   ││    0x00007f1a2a7915eb:   xor    %r12,%r14
   0.06%   ││    0x00007f1a2a7915ee:   rorx   $0x1c,%rcx,%r12
   0.09%   ││    0x00007f1a2a7915f4:   add    0x10(%rsp),%rbx
   0.05%   ││    0x00007f1a2a7915f9:   or     %rdx,%rdi
   0.04%   ││    0x00007f1a2a7915fc:   xor    %r12,%r14
   0.07%   ││    0x00007f1a2a7915ff:   mov    %rcx,%r12
   0.08%   ││    0x00007f1a2a791602:   and    %r8,%rdi
   0.04%   ││    0x00007f1a2a791605:   and    %rdx,%r12
   0.04%   ││    0x00007f1a2a791608:   add    %r13,%r15
   0.06%   ││    0x00007f1a2a79160b:   add    %rbx,%r9
   0.06%   ││    0x00007f1a2a79160e:   or     %r12,%rdi
   0.06%   ││    0x00007f1a2a791611:   add    %r14,%rbx
   0.05%   ││    0x00007f1a2a791614:   add    %r15,%r9
   0.06%   ││    0x00007f1a2a791617:   add    %r15,%rbx
   0.10%   ││    0x00007f1a2a79161a:   mov    %r10,%r15
   0.07%   ││    0x00007f1a2a79161d:   rorx   $0x29,%r9,%r13
   0.05%   ││    0x00007f1a2a791623:   rorx   $0x12,%r9,%r14
   0.06%   ││    0x00007f1a2a791629:   xor    %r11,%r15
   0.06%   ││    0x00007f1a2a79162c:   xor    %r14,%r13
   0.07%   ││    0x00007f1a2a79162f:   rorx   $0xe,%r9,%r14
   0.05%   ││    0x00007f1a2a791635:   and    %r9,%r15
   0.07%   ││    0x00007f1a2a791638:   add    %rdi,%rbx
   0.08%   ││    0x00007f1a2a79163b:   xor    %r14,%r13
   0.11%   ││    0x00007f1a2a79163e:   rorx   $0x22,%rbx,%r12
   0.07%   ││    0x00007f1a2a791644:   xor    %r11,%r15
   0.10%   ││    0x00007f1a2a791647:   rorx   $0x27,%rbx,%r14
   0.08%   ││    0x00007f1a2a79164d:   mov    %rbx,%rdi
   0.07%   ││    0x00007f1a2a791650:   xor    %r12,%r14
   0.04%   ││    0x00007f1a2a791653:   rorx   $0x1c,%rbx,%r12
   0.07%   ││    0x00007f1a2a791659:   add    0x18(%rsp),%rax
   0.04%   ││    0x00007f1a2a79165e:   or     %r8,%rdi
   0.05%   ││    0x00007f1a2a791661:   xor    %r12,%r14
   0.07%   ││    0x00007f1a2a791664:   mov    %rbx,%r12
   0.06%   ││    0x00007f1a2a791667:   and    %rcx,%rdi
   0.06%   ││    0x00007f1a2a79166a:   and    %r8,%r12
   0.08%   ││    0x00007f1a2a79166d:   add    %r13,%r15
   0.07%   ││    0x00007f1a2a791670:   add    %rax,%rdx
   0.07%   ││    0x00007f1a2a791673:   or     %r12,%rdi
   0.07%   ││    0x00007f1a2a791676:   add    %r14,%rax
   0.08%   ││    0x00007f1a2a791679:   add    %r15,%rdx
   0.08%   ││    0x00007f1a2a79167c:   add    %r15,%rax
   0.06%   ││    0x00007f1a2a79167f:   add    %rdi,%rax
   0.09%   ││    0x00007f1a2a791682:   vmovdqu %ymm6,%ymm4
   0.08%   ││    0x00007f1a2a791686:   vmovdqu %ymm7,%ymm5
   0.02%   ││    0x00007f1a2a79168a:   subq   $0x1,0x20(%rsp)
   0.18%   ╰│    0x00007f1a2a791690:   jne    0x00007f1a2a791344
   0.03%    │    0x00007f1a2a791696:   add    (%rsi),%rax
   0.01%    │    0x00007f1a2a791699:   mov    %rax,(%rsi)
   0.23%    │    0x00007f1a2a79169c:   add    0x8(%rsi),%rbx
            │    0x00007f1a2a7916a0:   mov    %rbx,0x8(%rsi)
   0.01%    │    0x00007f1a2a7916a4:   add    0x10(%rsi),%rcx
            │    0x00007f1a2a7916a8:   mov    %rcx,0x10(%rsi)
   0.10%    │    0x00007f1a2a7916ac:   add    0x18(%rsi),%r8
            │    0x00007f1a2a7916b0:   mov    %r8,0x18(%rsi)
   0.01%    │    0x00007f1a2a7916b4:   add    0x20(%rsi),%rdx
   0.00%    │    0x00007f1a2a7916b8:   mov    %rdx,0x20(%rsi)
   0.11%    │    0x00007f1a2a7916bc:   add    0x28(%rsi),%r9
            │    0x00007f1a2a7916c0:   mov    %r9,0x28(%rsi)
   0.02%    │    0x00007f1a2a7916c4:   add    0x30(%rsi),%r10
            │    0x00007f1a2a7916c8:   mov    %r10,0x30(%rsi)
   0.13%    │    0x00007f1a2a7916cc:   add    0x38(%rsi),%r11
            │    0x00007f1a2a7916d0:   mov    %r11,0x38(%rsi)
   0.02%    │    0x00007f1a2a7916d4:   mov    0x28(%rsp),%rdi
            │    0x00007f1a2a7916d9:   add    $0x80,%rdi
   0.11%    │    0x00007f1a2a7916e0:   cmp    0x30(%rsp),%rdi
            ╰    0x00007f1a2a7916e5:   jne    0x00007f1a2a79097b
   0.01%         0x00007f1a2a7916eb:   mov    0x40(%rsp),%rbp
   0.01%         0x00007f1a2a7916f0:   mov    0x48(%rsp),%rbx
   0.00%         0x00007f1a2a7916f5:   mov    0x50(%rsp),%r12
                 0x00007f1a2a7916fa:   mov    0x58(%rsp),%r13
   0.00%         0x00007f1a2a7916ff:   mov    0x60(%rsp),%r14
                 0x00007f1a2a791704:   mov    0x68(%rsp),%r15
   0.00%         0x00007f1a2a791709:   mov    0x38(%rsp),%rsp
                 0x00007f1a2a79170e:   pop    %rcx
   0.01%         0x00007f1a2a79170f:   pop    %rdx
                 0x00007f1a2a791710:   mov    %rdx,%rax
   0.26%      ↗  0x00007f1a2a791713:   cmp    %rcx,%rax
             ╭│  0x00007f1a2a791716:   jae    0x00007f1a2a791720
   0.01%     ││  0x00007f1a2a791718:   add    $0x80,%rax
   0.01%     │╰  0x00007f1a2a79171e:   jmp    0x00007f1a2a791713
   0.01%     ↘   0x00007f1a2a791720:   vzeroupper 
                 0x00007f1a2a791723:   leave  
   0.01%         0x00007f1a2a791724:   ret    
               --------------------------------------------------------------------------------
               - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               <task_queued compile_id='9' method='java.util.Objects requireNonNull (Ljava/lang/Object;)Ljava/lang/Object;' bytes='14' count='384' iicount='384' level='3' stamp='1.742' comment='tiered' hot_count='384'/>
               - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               StubRoutines::avx2_shuffle_base64 [0x00007f1a2a791740, 0x00007f1a2a791760] (32 bytes)
               --------------------------------------------------------------------------------
....................................................................................................
  92.98%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.98%        runtime stub  StubRoutines::sha512_implCompressMB 
   3.97%                      <unknown> 
   0.60%              kernel  [unknown] 
   0.23%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.10%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1151 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1155 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1155 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlockCheck, version 2, compile id 1147 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1155 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1155 
   1.57%  <...other 383 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.20%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.03%                      <unknown> 
   1.62%              kernel  [unknown] 
   0.68%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1155 
   0.11%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1151 
   0.03%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlockCheck, version 2, compile id 1147 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      jvmci, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 1105 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1180 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%    perf-2130548.map  [unknown] 
   0.16%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.20%        runtime stub
   4.03%                    
   1.62%              kernel
   0.84%      jvmci, level 4
   0.15%           libjvm.so
   0.08%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%    perf-2130548.map
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA512/224, length = 16384)

# Run progress: 50.00% complete, ETA 00:11:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 46.299 us/op
# Warmup Iteration   2: 38.971 us/op
# Warmup Iteration   3: 38.964 us/op
# Warmup Iteration   4: 38.961 us/op
# Warmup Iteration   5: 38.967 us/op
Iteration   1: 38.965 us/op
Iteration   2: 38.959 us/op
Iteration   3: 38.968 us/op
Iteration   4: 38.954 us/op
Iteration   5: 38.974 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  38.964 ±(99.9%) 0.029 us/op [Average]
  (min, avg, max) = (38.954, 38.964, 38.974), stdev = 0.008
  CI (99.9%): [38.934, 38.993] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 282836 total address lines.
Perf output processed (skipped 61.758 seconds):
 Column 1: cycles (50614 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                    0x00007ff60a7908e5:   push   %rcx
                    0x00007ff60a7908e6:   mov    %rsp,%rax
   0.00%            0x00007ff60a7908e9:   sub    $0x70,%rsp
   0.01%            0x00007ff60a7908ed:   and    $0xffffffffffffffe0,%rsp
                    0x00007ff60a7908f1:   mov    %rax,0x38(%rsp)
                    0x00007ff60a7908f6:   mov    %rbp,0x40(%rsp)
                    0x00007ff60a7908fb:   mov    %rbx,0x48(%rsp)
                    0x00007ff60a790900:   mov    %r12,0x50(%rsp)
                    0x00007ff60a790905:   mov    %r13,0x58(%rsp)
                    0x00007ff60a79090a:   mov    %r14,0x60(%rsp)
   0.00%            0x00007ff60a79090f:   mov    %r15,0x68(%rsp)
   0.00%            0x00007ff60a790914:   vpblendd $0xf0,%xmm1,%xmm0,%xmm0
                    0x00007ff60a79091a:   vpblendd $0xf0,%ymm1,%ymm0,%ymm0
                    0x00007ff60a790920:   xor    %rax,%rax
   0.03%   ↗        0x00007ff60a790923:   cmp    %rcx,%rdx
          ╭│        0x00007ff60a790926:   jae    0x00007ff60a790937
   0.06%  ││        0x00007ff60a790928:   add    $0x80,%rdx
   0.07%  ││        0x00007ff60a79092f:   add    $0x80,%rax
          │╰        0x00007ff60a790935:   jmp    0x00007ff60a790923
   0.01%  ↘         0x00007ff60a790937:   mov    %rax,%rdx
   0.00%            0x00007ff60a79093a:   cmp    $0x0,%rdx
            ╭       0x00007ff60a79093e:   je     0x00007ff60a7916eb
   0.00%    │       0x00007ff60a790944:   add    %rdi,%rdx
            │       0x00007ff60a790947:   mov    %rdx,0x30(%rsp)
   0.00%    │       0x00007ff60a79094c:   mov    (%rsi),%rax
            │       0x00007ff60a79094f:   mov    0x8(%rsi),%rbx
            │       0x00007ff60a790953:   mov    0x10(%rsi),%rcx
            │       0x00007ff60a790957:   mov    0x18(%rsi),%r8
   0.00%    │       0x00007ff60a79095b:   mov    0x20(%rsi),%rdx
            │       0x00007ff60a79095f:   mov    0x28(%rsi),%r9
            │       0x00007ff60a790963:   mov    0x38(%rsi),%r11
            │       0x00007ff60a790967:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007ff60a78fa80
   0.00%    │       0x00007ff60a79096f:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007ff60a78faa0
            │       0x00007ff60a790977:   mov    0x30(%rsi),%r10
   0.00%    │  ↗    0x00007ff60a79097b:   movabs $0x7ff622ff2180,%rbp
   0.03%    │  │    0x00007ff60a790985:   vmovdqu (%rdi),%ymm4
   0.11%    │  │    0x00007ff60a790989:   vpshufb %ymm9,%ymm4,%ymm4
   0.14%    │  │    0x00007ff60a79098e:   vmovdqu 0x20(%rdi),%ymm5
   0.02%    │  │    0x00007ff60a790993:   vpshufb %ymm9,%ymm5,%ymm5
   0.07%    │  │    0x00007ff60a790998:   vmovdqu 0x40(%rdi),%ymm6
   0.04%    │  │    0x00007ff60a79099d:   vpshufb %ymm9,%ymm6,%ymm6
   0.09%    │  │    0x00007ff60a7909a2:   vmovdqu 0x60(%rdi),%ymm7
   0.03%    │  │    0x00007ff60a7909a7:   vpshufb %ymm9,%ymm7,%ymm7
   0.07%    │  │    0x00007ff60a7909ac:   mov    %rdi,0x28(%rsp)
   0.00%    │  │    0x00007ff60a7909b1:   movq   $0x4,0x20(%rsp)
   0.07%    │  │    0x00007ff60a7909ba:   nopw   0x0(%rax,%rax,1)
   0.04%    │↗ │    0x00007ff60a7909c0:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.20%    ││ │    0x00007ff60a7909c5:   vmovdqu %ymm0,(%rsp)
   0.15%    ││ │    0x00007ff60a7909ca:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.28%    ││ │    0x00007ff60a7909d0:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.34%    ││ │    0x00007ff60a7909d6:   vpaddq %ymm4,%ymm0,%ymm0
   0.69%    ││ │    0x00007ff60a7909da:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.11%    ││ │    0x00007ff60a7909e0:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.10%    ││ │    0x00007ff60a7909e6:   vpsrlq $0x1,%ymm1,%ymm2
   0.12%    ││ │    0x00007ff60a7909eb:   vpsllq $0x3f,%ymm1,%ymm3
   0.27%    ││ │    0x00007ff60a7909f0:   vpor   %ymm2,%ymm3,%ymm3
   0.18%    ││ │    0x00007ff60a7909f4:   vpsrlq $0x7,%ymm1,%ymm8
   0.08%    ││ │    0x00007ff60a7909f9:   mov    %rax,%rdi
   0.06%    ││ │    0x00007ff60a7909fc:   rorx   $0x29,%rdx,%r13
   0.16%    ││ │    0x00007ff60a790a02:   rorx   $0x12,%rdx,%r14
   0.18%    ││ │    0x00007ff60a790a08:   add    (%rsp),%r11
   0.07%    ││ │    0x00007ff60a790a0c:   or     %rcx,%rdi
   0.06%    ││ │    0x00007ff60a790a0f:   mov    %r9,%r15
   0.17%    ││ │    0x00007ff60a790a12:   xor    %r10,%r15
   0.16%    ││ │    0x00007ff60a790a15:   rorx   $0x22,%rax,%r12
   0.05%    ││ │    0x00007ff60a790a1b:   xor    %r14,%r13
   0.03%    ││ │    0x00007ff60a790a1e:   rorx   $0xe,%rdx,%r14
   0.19%    ││ │    0x00007ff60a790a24:   and    %rdx,%r15
   0.20%    ││ │    0x00007ff60a790a27:   add    %r11,%r8
   0.08%    ││ │    0x00007ff60a790a2a:   and    %rbx,%rdi
   0.08%    ││ │    0x00007ff60a790a2d:   xor    %r14,%r13
   0.20%    ││ │    0x00007ff60a790a30:   rorx   $0x27,%rax,%r14
   0.19%    ││ │    0x00007ff60a790a36:   xor    %r12,%r14
   0.05%    ││ │    0x00007ff60a790a39:   rorx   $0x1c,%rax,%r12
   0.06%    ││ │    0x00007ff60a790a3f:   xor    %r10,%r15
   0.19%    ││ │    0x00007ff60a790a42:   xor    %r12,%r14
   0.23%    ││ │    0x00007ff60a790a45:   mov    %rax,%r12
   0.06%    ││ │    0x00007ff60a790a48:   and    %rcx,%r12
   0.04%    ││ │    0x00007ff60a790a4b:   add    %r13,%r15
   0.17%    ││ │    0x00007ff60a790a4e:   or     %r12,%rdi
   0.20%    ││ │    0x00007ff60a790a51:   add    %r14,%r11
   0.07%    ││ │    0x00007ff60a790a54:   add    %r15,%r8
   0.04%    ││ │    0x00007ff60a790a57:   add    %r15,%r11
   0.18%    ││ │    0x00007ff60a790a5a:   add    %rdi,%r11
   0.22%    ││ │    0x00007ff60a790a5d:   vpsrlq $0x8,%ymm1,%ymm2
   0.08%    ││ │    0x00007ff60a790a62:   vpsllq $0x38,%ymm1,%ymm1
   0.03%    ││ │    0x00007ff60a790a67:   vpor   %ymm2,%ymm1,%ymm1
   0.24%    ││ │    0x00007ff60a790a6b:   vpxor  %ymm8,%ymm3,%ymm3
   0.21%    ││ │    0x00007ff60a790a70:   vpxor  %ymm1,%ymm3,%ymm1
   0.09%    ││ │    0x00007ff60a790a74:   vpaddq %ymm1,%ymm0,%ymm0
   0.06%    ││ │    0x00007ff60a790a78:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.18%    ││ │    0x00007ff60a790a7e:   vpand  %ymm10,%ymm0,%ymm0
   0.18%    ││ │    0x00007ff60a790a83:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.09%    ││ │    0x00007ff60a790a89:   vpsrlq $0x6,%ymm2,%ymm8
   0.04%    ││ │    0x00007ff60a790a8e:   mov    %r11,%rdi
   0.18%    ││ │    0x00007ff60a790a91:   rorx   $0x29,%r8,%r13
   0.25%    ││ │    0x00007ff60a790a97:   rorx   $0x12,%r8,%r14
   0.06%    ││ │    0x00007ff60a790a9d:   add    0x8(%rsp),%r10
   0.07%    ││ │    0x00007ff60a790aa2:   or     %rbx,%rdi
   0.17%    ││ │    0x00007ff60a790aa5:   mov    %rdx,%r15
   0.22%    ││ │    0x00007ff60a790aa8:   xor    %r9,%r15
   0.09%    ││ │    0x00007ff60a790aab:   rorx   $0x22,%r11,%r12
   0.04%    ││ │    0x00007ff60a790ab1:   xor    %r14,%r13
   0.17%    ││ │    0x00007ff60a790ab4:   rorx   $0xe,%r8,%r14
   0.17%    ││ │    0x00007ff60a790aba:   and    %r8,%r15
   0.08%    ││ │    0x00007ff60a790abd:   add    %r10,%rcx
   0.05%    ││ │    0x00007ff60a790ac0:   and    %rax,%rdi
   0.21%    ││ │    0x00007ff60a790ac3:   xor    %r14,%r13
   0.19%    ││ │    0x00007ff60a790ac6:   rorx   $0x27,%r11,%r14
   0.07%    ││ │    0x00007ff60a790acc:   xor    %r12,%r14
   0.05%    ││ │    0x00007ff60a790acf:   rorx   $0x1c,%r11,%r12
   0.18%    ││ │    0x00007ff60a790ad5:   xor    %r9,%r15
   0.17%    ││ │    0x00007ff60a790ad8:   xor    %r12,%r14
   0.06%    ││ │    0x00007ff60a790adb:   mov    %r11,%r12
   0.07%    ││ │    0x00007ff60a790ade:   and    %rbx,%r12
   0.16%    ││ │    0x00007ff60a790ae1:   add    %r13,%r15
   0.20%    ││ │    0x00007ff60a790ae4:   or     %r12,%rdi
   0.07%    ││ │    0x00007ff60a790ae7:   add    %r14,%r10
   0.05%    ││ │    0x00007ff60a790aea:   add    %r15,%rcx
   0.19%    ││ │    0x00007ff60a790aed:   add    %r15,%r10
   0.20%    ││ │    0x00007ff60a790af0:   add    %rdi,%r10
   0.08%    ││ │    0x00007ff60a790af3:   vpsrlq $0x13,%ymm2,%ymm3
   0.05%    ││ │    0x00007ff60a790af8:   vpsllq $0x2d,%ymm2,%ymm1
   0.18%    ││ │    0x00007ff60a790afd:   vpor   %ymm1,%ymm3,%ymm3
   0.20%    ││ │    0x00007ff60a790b01:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007ff60a790b05:   vpsrlq $0x3d,%ymm2,%ymm3
   0.06%    ││ │    0x00007ff60a790b0a:   vpsllq $0x3,%ymm2,%ymm1
   0.21%    ││ │    0x00007ff60a790b0f:   vpor   %ymm1,%ymm3,%ymm3
   0.18%    ││ │    0x00007ff60a790b13:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007ff60a790b17:   vpaddq %ymm8,%ymm4,%ymm4
   0.07%    ││ │    0x00007ff60a790b1c:   vpsrlq $0x6,%ymm4,%ymm8
   0.18%    ││ │    0x00007ff60a790b21:   mov    %r10,%rdi
   0.29%    ││ │    0x00007ff60a790b24:   rorx   $0x29,%rcx,%r13
   0.08%    ││ │    0x00007ff60a790b2a:   rorx   $0x12,%rcx,%r14
   0.06%    ││ │    0x00007ff60a790b30:   add    0x10(%rsp),%r9
   0.20%    ││ │    0x00007ff60a790b35:   or     %rax,%rdi
   0.20%    ││ │    0x00007ff60a790b38:   mov    %r8,%r15
   0.09%    ││ │    0x00007ff60a790b3b:   xor    %rdx,%r15
   0.05%    ││ │    0x00007ff60a790b3e:   rorx   $0x22,%r10,%r12
   0.19%    ││ │    0x00007ff60a790b44:   xor    %r14,%r13
   0.16%    ││ │    0x00007ff60a790b47:   rorx   $0xe,%rcx,%r14
   0.05%    ││ │    0x00007ff60a790b4d:   and    %rcx,%r15
   0.06%    ││ │    0x00007ff60a790b50:   add    %r9,%rbx
   0.22%    ││ │    0x00007ff60a790b53:   and    %r11,%rdi
   0.19%    ││ │    0x00007ff60a790b56:   xor    %r14,%r13
   0.05%    ││ │    0x00007ff60a790b59:   rorx   $0x27,%r10,%r14
   0.05%    ││ │    0x00007ff60a790b5f:   xor    %r12,%r14
   0.18%    ││ │    0x00007ff60a790b62:   rorx   $0x1c,%r10,%r12
   0.16%    ││ │    0x00007ff60a790b68:   xor    %rdx,%r15
   0.07%    ││ │    0x00007ff60a790b6b:   xor    %r12,%r14
   0.05%    ││ │    0x00007ff60a790b6e:   mov    %r10,%r12
   0.18%    ││ │    0x00007ff60a790b71:   and    %rax,%r12
   0.22%    ││ │    0x00007ff60a790b74:   add    %r13,%r15
   0.06%    ││ │    0x00007ff60a790b77:   or     %r12,%rdi
   0.06%    ││ │    0x00007ff60a790b7a:   add    %r14,%r9
   0.18%    ││ │    0x00007ff60a790b7d:   add    %r15,%rbx
   0.24%    ││ │    0x00007ff60a790b80:   add    %r15,%r9
   0.08%    ││ │    0x00007ff60a790b83:   add    %rdi,%r9
   0.07%    ││ │    0x00007ff60a790b86:   vpsrlq $0x13,%ymm4,%ymm3
   0.15%    ││ │    0x00007ff60a790b8b:   vpsllq $0x2d,%ymm4,%ymm1
   0.16%    ││ │    0x00007ff60a790b90:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007ff60a790b94:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007ff60a790b98:   vpsrlq $0x3d,%ymm4,%ymm3
   0.20%    ││ │    0x00007ff60a790b9d:   vpsllq $0x3,%ymm4,%ymm1
   0.17%    ││ │    0x00007ff60a790ba2:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │    0x00007ff60a790ba6:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007ff60a790baa:   vpaddq %ymm8,%ymm0,%ymm2
   0.19%    ││ │    0x00007ff60a790baf:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.24%    ││ │    0x00007ff60a790bb5:   mov    %r9,%rdi
   0.10%    ││ │    0x00007ff60a790bb8:   rorx   $0x29,%rbx,%r13
   0.03%    ││ │    0x00007ff60a790bbe:   rorx   $0x12,%rbx,%r14
   0.17%    ││ │    0x00007ff60a790bc4:   add    0x18(%rsp),%rdx
   0.21%    ││ │    0x00007ff60a790bc9:   or     %r11,%rdi
   0.05%    ││ │    0x00007ff60a790bcc:   mov    %rcx,%r15
   0.03%    ││ │    0x00007ff60a790bcf:   xor    %r8,%r15
   0.14%    ││ │    0x00007ff60a790bd2:   rorx   $0x22,%r9,%r12
   0.23%    ││ │    0x00007ff60a790bd8:   xor    %r14,%r13
   0.05%    ││ │    0x00007ff60a790bdb:   rorx   $0xe,%rbx,%r14
   0.03%    ││ │    0x00007ff60a790be1:   and    %rbx,%r15
   0.15%    ││ │    0x00007ff60a790be4:   add    %rdx,%rax
   0.21%    ││ │    0x00007ff60a790be7:   and    %r10,%rdi
   0.06%    ││ │    0x00007ff60a790bea:   xor    %r14,%r13
   0.04%    ││ │    0x00007ff60a790bed:   rorx   $0x27,%r9,%r14
   0.13%    ││ │    0x00007ff60a790bf3:   xor    %r12,%r14
   0.23%    ││ │    0x00007ff60a790bf6:   rorx   $0x1c,%r9,%r12
   0.06%    ││ │    0x00007ff60a790bfc:   xor    %r8,%r15
   0.02%    ││ │    0x00007ff60a790bff:   xor    %r12,%r14
   0.16%    ││ │    0x00007ff60a790c02:   mov    %r9,%r12
   0.27%    ││ │    0x00007ff60a790c05:   and    %r11,%r12
   0.07%    ││ │    0x00007ff60a790c08:   add    %r13,%r15
   0.04%    ││ │    0x00007ff60a790c0b:   or     %r12,%rdi
   0.14%    ││ │    0x00007ff60a790c0e:   add    %r14,%rdx
   0.20%    ││ │    0x00007ff60a790c11:   add    %r15,%rax
   0.06%    ││ │    0x00007ff60a790c14:   add    %r15,%rdx
   0.03%    ││ │    0x00007ff60a790c17:   add    %rdi,%rdx
   0.15%    ││ │    0x00007ff60a790c1a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.22%    ││ │    0x00007ff60a790c1f:   vmovdqu %ymm0,(%rsp)
   0.08%    ││ │    0x00007ff60a790c24:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.03%    ││ │    0x00007ff60a790c2a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.12%    ││ │    0x00007ff60a790c30:   vpaddq %ymm5,%ymm0,%ymm0
   0.35%    ││ │    0x00007ff60a790c34:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.06%    ││ │    0x00007ff60a790c3a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.06%    ││ │    0x00007ff60a790c40:   vpsrlq $0x1,%ymm1,%ymm2
   0.22%    ││ │    0x00007ff60a790c45:   vpsllq $0x3f,%ymm1,%ymm3
   0.24%    ││ │    0x00007ff60a790c4a:   vpor   %ymm2,%ymm3,%ymm3
   0.09%    ││ │    0x00007ff60a790c4e:   vpsrlq $0x7,%ymm1,%ymm8
   0.04%    ││ │    0x00007ff60a790c53:   mov    %rdx,%rdi
   0.15%    ││ │    0x00007ff60a790c56:   rorx   $0x29,%rax,%r13
   0.24%    ││ │    0x00007ff60a790c5c:   rorx   $0x12,%rax,%r14
   0.06%    ││ │    0x00007ff60a790c62:   add    (%rsp),%r8
   0.03%    ││ │    0x00007ff60a790c66:   or     %r10,%rdi
   0.17%    ││ │    0x00007ff60a790c69:   mov    %rbx,%r15
   0.24%    ││ │    0x00007ff60a790c6c:   xor    %rcx,%r15
   0.08%    ││ │    0x00007ff60a790c6f:   rorx   $0x22,%rdx,%r12
   0.04%    ││ │    0x00007ff60a790c75:   xor    %r14,%r13
   0.16%    ││ │    0x00007ff60a790c78:   rorx   $0xe,%rax,%r14
   0.21%    ││ │    0x00007ff60a790c7e:   and    %rax,%r15
   0.05%    ││ │    0x00007ff60a790c81:   add    %r8,%r11
   0.05%    ││ │    0x00007ff60a790c84:   and    %r9,%rdi
   0.14%    ││ │    0x00007ff60a790c87:   xor    %r14,%r13
   0.23%    ││ │    0x00007ff60a790c8a:   rorx   $0x27,%rdx,%r14
   0.09%    ││ │    0x00007ff60a790c90:   xor    %r12,%r14
   0.04%    ││ │    0x00007ff60a790c93:   rorx   $0x1c,%rdx,%r12
   0.18%    ││ │    0x00007ff60a790c99:   xor    %rcx,%r15
   0.19%    ││ │    0x00007ff60a790c9c:   xor    %r12,%r14
   0.09%    ││ │    0x00007ff60a790c9f:   mov    %rdx,%r12
   0.05%    ││ │    0x00007ff60a790ca2:   and    %r10,%r12
   0.16%    ││ │    0x00007ff60a790ca5:   add    %r13,%r15
   0.24%    ││ │    0x00007ff60a790ca8:   or     %r12,%rdi
   0.07%    ││ │    0x00007ff60a790cab:   add    %r14,%r8
   0.04%    ││ │    0x00007ff60a790cae:   add    %r15,%r11
   0.15%    ││ │    0x00007ff60a790cb1:   add    %r15,%r8
   0.22%    ││ │    0x00007ff60a790cb4:   add    %rdi,%r8
   0.08%    ││ │    0x00007ff60a790cb7:   vpsrlq $0x8,%ymm1,%ymm2
   0.05%    ││ │    0x00007ff60a790cbc:   vpsllq $0x38,%ymm1,%ymm1
   0.14%    ││ │    0x00007ff60a790cc1:   vpor   %ymm2,%ymm1,%ymm1
   0.23%    ││ │    0x00007ff60a790cc5:   vpxor  %ymm8,%ymm3,%ymm3
   0.09%    ││ │    0x00007ff60a790cca:   vpxor  %ymm1,%ymm3,%ymm1
   0.03%    ││ │    0x00007ff60a790cce:   vpaddq %ymm1,%ymm0,%ymm0
   0.13%    ││ │    0x00007ff60a790cd2:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.23%    ││ │    0x00007ff60a790cd8:   vpand  %ymm10,%ymm0,%ymm0
   0.11%    ││ │    0x00007ff60a790cdd:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.05%    ││ │    0x00007ff60a790ce3:   vpsrlq $0x6,%ymm2,%ymm8
   0.14%    ││ │    0x00007ff60a790ce8:   mov    %r8,%rdi
   0.23%    ││ │    0x00007ff60a790ceb:   rorx   $0x29,%r11,%r13
   0.09%    ││ │    0x00007ff60a790cf1:   rorx   $0x12,%r11,%r14
   0.04%    ││ │    0x00007ff60a790cf7:   add    0x8(%rsp),%rcx
   0.10%    ││ │    0x00007ff60a790cfc:   or     %r9,%rdi
   0.25%    ││ │    0x00007ff60a790cff:   mov    %rax,%r15
   0.11%    ││ │    0x00007ff60a790d02:   xor    %rbx,%r15
   0.04%    ││ │    0x00007ff60a790d05:   rorx   $0x22,%r8,%r12
   0.15%    ││ │    0x00007ff60a790d0b:   xor    %r14,%r13
   0.22%    ││ │    0x00007ff60a790d0e:   rorx   $0xe,%r11,%r14
   0.07%    ││ │    0x00007ff60a790d14:   and    %r11,%r15
   0.03%    ││ │    0x00007ff60a790d17:   add    %rcx,%r10
   0.14%    ││ │    0x00007ff60a790d1a:   and    %rdx,%rdi
   0.18%    ││ │    0x00007ff60a790d1d:   xor    %r14,%r13
   0.07%    ││ │    0x00007ff60a790d20:   rorx   $0x27,%r8,%r14
   0.04%    ││ │    0x00007ff60a790d26:   xor    %r12,%r14
   0.15%    ││ │    0x00007ff60a790d29:   rorx   $0x1c,%r8,%r12
   0.15%    ││ │    0x00007ff60a790d2f:   xor    %rbx,%r15
   0.09%    ││ │    0x00007ff60a790d32:   xor    %r12,%r14
   0.04%    ││ │    0x00007ff60a790d35:   mov    %r8,%r12
   0.14%    ││ │    0x00007ff60a790d38:   and    %r9,%r12
   0.23%    ││ │    0x00007ff60a790d3b:   add    %r13,%r15
   0.09%    ││ │    0x00007ff60a790d3e:   or     %r12,%rdi
   0.05%    ││ │    0x00007ff60a790d41:   add    %r14,%rcx
   0.13%    ││ │    0x00007ff60a790d44:   add    %r15,%r10
   0.22%    ││ │    0x00007ff60a790d47:   add    %r15,%rcx
   0.09%    ││ │    0x00007ff60a790d4a:   add    %rdi,%rcx
   0.04%    ││ │    0x00007ff60a790d4d:   vpsrlq $0x13,%ymm2,%ymm3
   0.13%    ││ │    0x00007ff60a790d52:   vpsllq $0x2d,%ymm2,%ymm1
   0.24%    ││ │    0x00007ff60a790d57:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007ff60a790d5b:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007ff60a790d5f:   vpsrlq $0x3d,%ymm2,%ymm3
   0.15%    ││ │    0x00007ff60a790d64:   vpsllq $0x3,%ymm2,%ymm1
   0.26%    ││ │    0x00007ff60a790d69:   vpor   %ymm1,%ymm3,%ymm3
   0.12%    ││ │    0x00007ff60a790d6d:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007ff60a790d71:   vpaddq %ymm8,%ymm5,%ymm5
   0.17%    ││ │    0x00007ff60a790d76:   vpsrlq $0x6,%ymm5,%ymm8
   0.24%    ││ │    0x00007ff60a790d7b:   mov    %rcx,%rdi
   0.08%    ││ │    0x00007ff60a790d7e:   rorx   $0x29,%r10,%r13
   0.05%    ││ │    0x00007ff60a790d84:   rorx   $0x12,%r10,%r14
   0.15%    ││ │    0x00007ff60a790d8a:   add    0x10(%rsp),%rbx
   0.19%    ││ │    0x00007ff60a790d8f:   or     %rdx,%rdi
   0.09%    ││ │    0x00007ff60a790d92:   mov    %r11,%r15
   0.04%    ││ │    0x00007ff60a790d95:   xor    %rax,%r15
   0.13%    ││ │    0x00007ff60a790d98:   rorx   $0x22,%rcx,%r12
   0.22%    ││ │    0x00007ff60a790d9e:   xor    %r14,%r13
   0.07%    ││ │    0x00007ff60a790da1:   rorx   $0xe,%r10,%r14
   0.05%    ││ │    0x00007ff60a790da7:   and    %r10,%r15
   0.14%    ││ │    0x00007ff60a790daa:   add    %rbx,%r9
   0.24%    ││ │    0x00007ff60a790dad:   and    %r8,%rdi
   0.09%    ││ │    0x00007ff60a790db0:   xor    %r14,%r13
   0.05%    ││ │    0x00007ff60a790db3:   rorx   $0x27,%rcx,%r14
   0.13%    ││ │    0x00007ff60a790db9:   xor    %r12,%r14
   0.21%    ││ │    0x00007ff60a790dbc:   rorx   $0x1c,%rcx,%r12
   0.07%    ││ │    0x00007ff60a790dc2:   xor    %rax,%r15
   0.06%    ││ │    0x00007ff60a790dc5:   xor    %r12,%r14
   0.14%    ││ │    0x00007ff60a790dc8:   mov    %rcx,%r12
   0.23%    ││ │    0x00007ff60a790dcb:   and    %rdx,%r12
   0.09%    ││ │    0x00007ff60a790dce:   add    %r13,%r15
   0.03%    ││ │    0x00007ff60a790dd1:   or     %r12,%rdi
   0.14%    ││ │    0x00007ff60a790dd4:   add    %r14,%rbx
   0.24%    ││ │    0x00007ff60a790dd7:   add    %r15,%r9
   0.08%    ││ │    0x00007ff60a790dda:   add    %r15,%rbx
   0.04%    ││ │    0x00007ff60a790ddd:   add    %rdi,%rbx
   0.15%    ││ │    0x00007ff60a790de0:   vpsrlq $0x13,%ymm5,%ymm3
   0.23%    ││ │    0x00007ff60a790de5:   vpsllq $0x2d,%ymm5,%ymm1
   0.08%    ││ │    0x00007ff60a790dea:   vpor   %ymm1,%ymm3,%ymm3
   0.03%    ││ │    0x00007ff60a790dee:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%    ││ │    0x00007ff60a790df2:   vpsrlq $0x3d,%ymm5,%ymm3
   0.28%    ││ │    0x00007ff60a790df7:   vpsllq $0x3,%ymm5,%ymm1
   0.10%    ││ │    0x00007ff60a790dfc:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │    0x00007ff60a790e00:   vpxor  %ymm3,%ymm8,%ymm8
   0.17%    ││ │    0x00007ff60a790e04:   vpaddq %ymm8,%ymm0,%ymm2
   0.25%    ││ │    0x00007ff60a790e09:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.12%    ││ │    0x00007ff60a790e0f:   mov    %rbx,%rdi
   0.03%    ││ │    0x00007ff60a790e12:   rorx   $0x29,%r9,%r13
   0.13%    ││ │    0x00007ff60a790e18:   rorx   $0x12,%r9,%r14
   0.22%    ││ │    0x00007ff60a790e1e:   add    0x18(%rsp),%rax
   0.11%    ││ │    0x00007ff60a790e23:   or     %r8,%rdi
   0.06%    ││ │    0x00007ff60a790e26:   mov    %r10,%r15
   0.13%    ││ │    0x00007ff60a790e29:   xor    %r11,%r15
   0.22%    ││ │    0x00007ff60a790e2c:   rorx   $0x22,%rbx,%r12
   0.11%    ││ │    0x00007ff60a790e32:   xor    %r14,%r13
   0.05%    ││ │    0x00007ff60a790e35:   rorx   $0xe,%r9,%r14
   0.14%    ││ │    0x00007ff60a790e3b:   and    %r9,%r15
   0.21%    ││ │    0x00007ff60a790e3e:   add    %rax,%rdx
   0.10%    ││ │    0x00007ff60a790e41:   and    %rcx,%rdi
   0.02%    ││ │    0x00007ff60a790e44:   xor    %r14,%r13
   0.14%    ││ │    0x00007ff60a790e47:   rorx   $0x27,%rbx,%r14
   0.21%    ││ │    0x00007ff60a790e4d:   xor    %r12,%r14
   0.12%    ││ │    0x00007ff60a790e50:   rorx   $0x1c,%rbx,%r12
   0.04%    ││ │    0x00007ff60a790e56:   xor    %r11,%r15
   0.11%    ││ │    0x00007ff60a790e59:   xor    %r12,%r14
   0.22%    ││ │    0x00007ff60a790e5c:   mov    %rbx,%r12
   0.12%    ││ │    0x00007ff60a790e5f:   and    %r8,%r12
   0.03%    ││ │    0x00007ff60a790e62:   add    %r13,%r15
   0.10%    ││ │    0x00007ff60a790e65:   or     %r12,%rdi
   0.19%    ││ │    0x00007ff60a790e68:   add    %r14,%rax
   0.12%    ││ │    0x00007ff60a790e6b:   add    %r15,%rdx
   0.04%    ││ │    0x00007ff60a790e6e:   add    %r15,%rax
   0.12%    ││ │    0x00007ff60a790e71:   add    %rdi,%rax
   0.23%    ││ │    0x00007ff60a790e74:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.11%    ││ │    0x00007ff60a790e79:   vmovdqu %ymm0,(%rsp)
   0.04%    ││ │    0x00007ff60a790e7e:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.12%    ││ │    0x00007ff60a790e84:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.22%    ││ │    0x00007ff60a790e8a:   vpaddq %ymm6,%ymm0,%ymm0
   0.21%    ││ │    0x00007ff60a790e8e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.03%    ││ │    0x00007ff60a790e94:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.17%    ││ │    0x00007ff60a790e9a:   vpsrlq $0x1,%ymm1,%ymm2
   0.25%    ││ │    0x00007ff60a790e9f:   vpsllq $0x3f,%ymm1,%ymm3
   0.16%    ││ │    0x00007ff60a790ea4:   vpor   %ymm2,%ymm3,%ymm3
   0.03%    ││ │    0x00007ff60a790ea8:   vpsrlq $0x7,%ymm1,%ymm8
   0.15%    ││ │    0x00007ff60a790ead:   mov    %rax,%rdi
   0.22%    ││ │    0x00007ff60a790eb0:   rorx   $0x29,%rdx,%r13
   0.14%    ││ │    0x00007ff60a790eb6:   rorx   $0x12,%rdx,%r14
   0.03%    ││ │    0x00007ff60a790ebc:   add    (%rsp),%r11
   0.12%    ││ │    0x00007ff60a790ec0:   or     %rcx,%rdi
   0.17%    ││ │    0x00007ff60a790ec3:   mov    %r9,%r15
   0.16%    ││ │    0x00007ff60a790ec6:   xor    %r10,%r15
   0.05%    ││ │    0x00007ff60a790ec9:   rorx   $0x22,%rax,%r12
   0.13%    ││ │    0x00007ff60a790ecf:   xor    %r14,%r13
   0.19%    ││ │    0x00007ff60a790ed2:   rorx   $0xe,%rdx,%r14
   0.16%    ││ │    0x00007ff60a790ed8:   and    %rdx,%r15
   0.06%    ││ │    0x00007ff60a790edb:   add    %r11,%r8
   0.11%    ││ │    0x00007ff60a790ede:   and    %rbx,%rdi
   0.18%    ││ │    0x00007ff60a790ee1:   xor    %r14,%r13
   0.18%    ││ │    0x00007ff60a790ee4:   rorx   $0x27,%rax,%r14
   0.04%    ││ │    0x00007ff60a790eea:   xor    %r12,%r14
   0.11%    ││ │    0x00007ff60a790eed:   rorx   $0x1c,%rax,%r12
   0.17%    ││ │    0x00007ff60a790ef3:   xor    %r10,%r15
   0.13%    ││ │    0x00007ff60a790ef6:   xor    %r12,%r14
   0.05%    ││ │    0x00007ff60a790ef9:   mov    %rax,%r12
   0.10%    ││ │    0x00007ff60a790efc:   and    %rcx,%r12
   0.23%    ││ │    0x00007ff60a790eff:   add    %r13,%r15
   0.15%    ││ │    0x00007ff60a790f02:   or     %r12,%rdi
   0.03%    ││ │    0x00007ff60a790f05:   add    %r14,%r11
   0.12%    ││ │    0x00007ff60a790f08:   add    %r15,%r8
   0.19%    ││ │    0x00007ff60a790f0b:   add    %r15,%r11
   0.16%    ││ │    0x00007ff60a790f0e:   add    %rdi,%r11
   0.05%    ││ │    0x00007ff60a790f11:   vpsrlq $0x8,%ymm1,%ymm2
   0.09%    ││ │    0x00007ff60a790f16:   vpsllq $0x38,%ymm1,%ymm1
   0.17%    ││ │    0x00007ff60a790f1b:   vpor   %ymm2,%ymm1,%ymm1
   0.15%    ││ │    0x00007ff60a790f1f:   vpxor  %ymm8,%ymm3,%ymm3
   0.04%    ││ │    0x00007ff60a790f24:   vpxor  %ymm1,%ymm3,%ymm1
   0.12%    ││ │    0x00007ff60a790f28:   vpaddq %ymm1,%ymm0,%ymm0
   0.22%    ││ │    0x00007ff60a790f2c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.15%    ││ │    0x00007ff60a790f32:   vpand  %ymm10,%ymm0,%ymm0
   0.04%    ││ │    0x00007ff60a790f37:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.13%    ││ │    0x00007ff60a790f3d:   vpsrlq $0x6,%ymm2,%ymm8
   0.18%    ││ │    0x00007ff60a790f42:   mov    %r11,%rdi
   0.14%    ││ │    0x00007ff60a790f45:   rorx   $0x29,%r8,%r13
   0.05%    ││ │    0x00007ff60a790f4b:   rorx   $0x12,%r8,%r14
   0.14%    ││ │    0x00007ff60a790f51:   add    0x8(%rsp),%r10
   0.18%    ││ │    0x00007ff60a790f56:   or     %rbx,%rdi
   0.13%    ││ │    0x00007ff60a790f59:   mov    %rdx,%r15
   0.05%    ││ │    0x00007ff60a790f5c:   xor    %r9,%r15
   0.08%    ││ │    0x00007ff60a790f5f:   rorx   $0x22,%r11,%r12
   0.16%    ││ │    0x00007ff60a790f65:   xor    %r14,%r13
   0.16%    ││ │    0x00007ff60a790f68:   rorx   $0xe,%r8,%r14
   0.05%    ││ │    0x00007ff60a790f6e:   and    %r8,%r15
   0.10%    ││ │    0x00007ff60a790f71:   add    %r10,%rcx
   0.16%    ││ │    0x00007ff60a790f74:   and    %rax,%rdi
   0.15%    ││ │    0x00007ff60a790f77:   xor    %r14,%r13
   0.06%    ││ │    0x00007ff60a790f7a:   rorx   $0x27,%r11,%r14
   0.16%    ││ │    0x00007ff60a790f80:   xor    %r12,%r14
   0.17%    ││ │    0x00007ff60a790f83:   rorx   $0x1c,%r11,%r12
   0.13%    ││ │    0x00007ff60a790f89:   xor    %r9,%r15
   0.06%    ││ │    0x00007ff60a790f8c:   xor    %r12,%r14
   0.12%    ││ │    0x00007ff60a790f8f:   mov    %r11,%r12
   0.19%    ││ │    0x00007ff60a790f92:   and    %rbx,%r12
   0.16%    ││ │    0x00007ff60a790f95:   add    %r13,%r15
   0.07%    ││ │    0x00007ff60a790f98:   or     %r12,%rdi
   0.12%    ││ │    0x00007ff60a790f9b:   add    %r14,%r10
   0.17%    ││ │    0x00007ff60a790f9e:   add    %r15,%rcx
   0.15%    ││ │    0x00007ff60a790fa1:   add    %r15,%r10
   0.07%    ││ │    0x00007ff60a790fa4:   add    %rdi,%r10
   0.10%    ││ │    0x00007ff60a790fa7:   vpsrlq $0x13,%ymm2,%ymm3
   0.21%    ││ │    0x00007ff60a790fac:   vpsllq $0x2d,%ymm2,%ymm1
   0.14%    ││ │    0x00007ff60a790fb1:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007ff60a790fb5:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%    ││ │    0x00007ff60a790fb9:   vpsrlq $0x3d,%ymm2,%ymm3
   0.18%    ││ │    0x00007ff60a790fbe:   vpsllq $0x3,%ymm2,%ymm1
   0.15%    ││ │    0x00007ff60a790fc3:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007ff60a790fc7:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%    ││ │    0x00007ff60a790fcb:   vpaddq %ymm8,%ymm6,%ymm6
   0.18%    ││ │    0x00007ff60a790fd0:   vpsrlq $0x6,%ymm6,%ymm8
   0.18%    ││ │    0x00007ff60a790fd5:   mov    %r10,%rdi
   0.05%    ││ │    0x00007ff60a790fd8:   rorx   $0x29,%rcx,%r13
   0.09%    ││ │    0x00007ff60a790fde:   rorx   $0x12,%rcx,%r14
   0.14%    ││ │    0x00007ff60a790fe4:   add    0x10(%rsp),%r9
   0.18%    ││ │    0x00007ff60a790fe9:   or     %rax,%rdi
   0.06%    ││ │    0x00007ff60a790fec:   mov    %r8,%r15
   0.11%    ││ │    0x00007ff60a790fef:   xor    %rdx,%r15
   0.16%    ││ │    0x00007ff60a790ff2:   rorx   $0x22,%r10,%r12
   0.16%    ││ │    0x00007ff60a790ff8:   xor    %r14,%r13
   0.05%    ││ │    0x00007ff60a790ffb:   rorx   $0xe,%rcx,%r14
   0.11%    ││ │    0x00007ff60a791001:   and    %rcx,%r15
   0.19%    ││ │    0x00007ff60a791004:   add    %r9,%rbx
   0.16%    ││ │    0x00007ff60a791007:   and    %r11,%rdi
   0.05%    ││ │    0x00007ff60a79100a:   xor    %r14,%r13
   0.13%    ││ │    0x00007ff60a79100d:   rorx   $0x27,%r10,%r14
   0.17%    ││ │    0x00007ff60a791013:   xor    %r12,%r14
   0.19%    ││ │    0x00007ff60a791016:   rorx   $0x1c,%r10,%r12
   0.04%    ││ │    0x00007ff60a79101c:   xor    %rdx,%r15
   0.12%    ││ │    0x00007ff60a79101f:   xor    %r12,%r14
   0.19%    ││ │    0x00007ff60a791022:   mov    %r10,%r12
   0.15%    ││ │    0x00007ff60a791025:   and    %rax,%r12
   0.04%    ││ │    0x00007ff60a791028:   add    %r13,%r15
   0.10%    ││ │    0x00007ff60a79102b:   or     %r12,%rdi
   0.17%    ││ │    0x00007ff60a79102e:   add    %r14,%r9
   0.15%    ││ │    0x00007ff60a791031:   add    %r15,%rbx
   0.05%    ││ │    0x00007ff60a791034:   add    %r15,%r9
   0.10%    ││ │    0x00007ff60a791037:   add    %rdi,%r9
   0.18%    ││ │    0x00007ff60a79103a:   vpsrlq $0x13,%ymm6,%ymm3
   0.16%    ││ │    0x00007ff60a79103f:   vpsllq $0x2d,%ymm6,%ymm1
   0.03%    ││ │    0x00007ff60a791044:   vpor   %ymm1,%ymm3,%ymm3
   0.10%    ││ │    0x00007ff60a791048:   vpxor  %ymm3,%ymm8,%ymm8
   0.20%    ││ │    0x00007ff60a79104c:   vpsrlq $0x3d,%ymm6,%ymm3
   0.14%    ││ │    0x00007ff60a791051:   vpsllq $0x3,%ymm6,%ymm1
   0.05%    ││ │    0x00007ff60a791056:   vpor   %ymm1,%ymm3,%ymm3
   0.12%    ││ │    0x00007ff60a79105a:   vpxor  %ymm3,%ymm8,%ymm8
   0.18%    ││ │    0x00007ff60a79105e:   vpaddq %ymm8,%ymm0,%ymm2
   0.17%    ││ │    0x00007ff60a791063:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.12%    ││ │    0x00007ff60a791069:   mov    %r9,%rdi
   0.09%    ││ │    0x00007ff60a79106c:   rorx   $0x29,%rbx,%r13
   0.15%    ││ │    0x00007ff60a791072:   rorx   $0x12,%rbx,%r14
   0.14%    ││ │    0x00007ff60a791078:   add    0x18(%rsp),%rdx
   0.14%    ││ │    0x00007ff60a79107d:   or     %r11,%rdi
   0.10%    ││ │    0x00007ff60a791080:   mov    %rcx,%r15
   0.13%    ││ │    0x00007ff60a791083:   xor    %r8,%r15
   0.15%    ││ │    0x00007ff60a791086:   rorx   $0x22,%r9,%r12
   0.11%    ││ │    0x00007ff60a79108c:   xor    %r14,%r13
   0.10%    ││ │    0x00007ff60a79108f:   rorx   $0xe,%rbx,%r14
   0.15%    ││ │    0x00007ff60a791095:   and    %rbx,%r15
   0.13%    ││ │    0x00007ff60a791098:   add    %rdx,%rax
   0.10%    ││ │    0x00007ff60a79109b:   and    %r10,%rdi
   0.09%    ││ │    0x00007ff60a79109e:   xor    %r14,%r13
   0.16%    ││ │    0x00007ff60a7910a1:   rorx   $0x27,%r9,%r14
   0.15%    ││ │    0x00007ff60a7910a7:   xor    %r12,%r14
   0.13%    ││ │    0x00007ff60a7910aa:   rorx   $0x1c,%r9,%r12
   0.12%    ││ │    0x00007ff60a7910b0:   xor    %r8,%r15
   0.13%    ││ │    0x00007ff60a7910b3:   xor    %r12,%r14
   0.16%    ││ │    0x00007ff60a7910b6:   mov    %r9,%r12
   0.11%    ││ │    0x00007ff60a7910b9:   and    %r11,%r12
   0.11%    ││ │    0x00007ff60a7910bc:   add    %r13,%r15
   0.12%    ││ │    0x00007ff60a7910bf:   or     %r12,%rdi
   0.12%    ││ │    0x00007ff60a7910c2:   add    %r14,%rdx
   0.11%    ││ │    0x00007ff60a7910c5:   add    %r15,%rax
   0.11%    ││ │    0x00007ff60a7910c8:   add    %r15,%rdx
   0.12%    ││ │    0x00007ff60a7910cb:   add    %rdi,%rdx
   0.13%    ││ │    0x00007ff60a7910ce:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.12%    ││ │    0x00007ff60a7910d3:   vmovdqu %ymm0,(%rsp)
   0.11%    ││ │    0x00007ff60a7910d8:   add    $0x80,%rbp
   0.14%    ││ │    0x00007ff60a7910df:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.15%    ││ │    0x00007ff60a7910e5:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.13%    ││ │    0x00007ff60a7910eb:   vpaddq %ymm7,%ymm0,%ymm0
   0.23%    ││ │    0x00007ff60a7910ef:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.13%    ││ │    0x00007ff60a7910f5:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.12%    ││ │    0x00007ff60a7910fb:   vpsrlq $0x1,%ymm1,%ymm2
   0.12%    ││ │    0x00007ff60a791100:   vpsllq $0x3f,%ymm1,%ymm3
   0.17%    ││ │    0x00007ff60a791105:   vpor   %ymm2,%ymm3,%ymm3
   0.14%    ││ │    0x00007ff60a791109:   vpsrlq $0x7,%ymm1,%ymm8
   0.10%    ││ │    0x00007ff60a79110e:   mov    %rdx,%rdi
   0.11%    ││ │    0x00007ff60a791111:   rorx   $0x29,%rax,%r13
   0.14%    ││ │    0x00007ff60a791117:   rorx   $0x12,%rax,%r14
   0.12%    ││ │    0x00007ff60a79111d:   add    (%rsp),%r8
   0.11%    ││ │    0x00007ff60a791121:   or     %r10,%rdi
   0.10%    ││ │    0x00007ff60a791124:   mov    %rbx,%r15
   0.16%    ││ │    0x00007ff60a791127:   xor    %rcx,%r15
   0.17%    ││ │    0x00007ff60a79112a:   rorx   $0x22,%rdx,%r12
   0.10%    ││ │    0x00007ff60a791130:   xor    %r14,%r13
   0.09%    ││ │    0x00007ff60a791133:   rorx   $0xe,%rax,%r14
   0.16%    ││ │    0x00007ff60a791139:   and    %rax,%r15
   0.15%    ││ │    0x00007ff60a79113c:   add    %r8,%r11
   0.11%    ││ │    0x00007ff60a79113f:   and    %r9,%rdi
   0.09%    ││ │    0x00007ff60a791142:   xor    %r14,%r13
   0.15%    ││ │    0x00007ff60a791145:   rorx   $0x27,%rdx,%r14
   0.14%    ││ │    0x00007ff60a79114b:   xor    %r12,%r14
   0.10%    ││ │    0x00007ff60a79114e:   rorx   $0x1c,%rdx,%r12
   0.09%    ││ │    0x00007ff60a791154:   xor    %rcx,%r15
   0.14%    ││ │    0x00007ff60a791157:   xor    %r12,%r14
   0.15%    ││ │    0x00007ff60a79115a:   mov    %rdx,%r12
   0.10%    ││ │    0x00007ff60a79115d:   and    %r10,%r12
   0.09%    ││ │    0x00007ff60a791160:   add    %r13,%r15
   0.13%    ││ │    0x00007ff60a791163:   or     %r12,%rdi
   0.14%    ││ │    0x00007ff60a791166:   add    %r14,%r8
   0.11%    ││ │    0x00007ff60a791169:   add    %r15,%r11
   0.11%    ││ │    0x00007ff60a79116c:   add    %r15,%r8
   0.16%    ││ │    0x00007ff60a79116f:   add    %rdi,%r8
   0.12%    ││ │    0x00007ff60a791172:   vpsrlq $0x8,%ymm1,%ymm2
   0.11%    ││ │    0x00007ff60a791177:   vpsllq $0x38,%ymm1,%ymm1
   0.09%    ││ │    0x00007ff60a79117c:   vpor   %ymm2,%ymm1,%ymm1
   0.14%    ││ │    0x00007ff60a791180:   vpxor  %ymm8,%ymm3,%ymm3
   0.16%    ││ │    0x00007ff60a791185:   vpxor  %ymm1,%ymm3,%ymm1
   0.10%    ││ │    0x00007ff60a791189:   vpaddq %ymm1,%ymm0,%ymm0
   0.10%    ││ │    0x00007ff60a79118d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.19%    ││ │    0x00007ff60a791193:   vpand  %ymm10,%ymm0,%ymm0
   0.17%    ││ │    0x00007ff60a791198:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.09%    ││ │    0x00007ff60a79119e:   vpsrlq $0x6,%ymm2,%ymm8
   0.09%    ││ │    0x00007ff60a7911a3:   mov    %r8,%rdi
   0.14%    ││ │    0x00007ff60a7911a6:   rorx   $0x29,%r11,%r13
   0.19%    ││ │    0x00007ff60a7911ac:   rorx   $0x12,%r11,%r14
   0.12%    ││ │    0x00007ff60a7911b2:   add    0x8(%rsp),%rcx
   0.12%    ││ │    0x00007ff60a7911b7:   or     %r9,%rdi
   0.11%    ││ │    0x00007ff60a7911ba:   mov    %rax,%r15
   0.15%    ││ │    0x00007ff60a7911bd:   xor    %rbx,%r15
   0.11%    ││ │    0x00007ff60a7911c0:   rorx   $0x22,%r8,%r12
   0.09%    ││ │    0x00007ff60a7911c6:   xor    %r14,%r13
   0.15%    ││ │    0x00007ff60a7911c9:   rorx   $0xe,%r11,%r14
   0.15%    ││ │    0x00007ff60a7911cf:   and    %r11,%r15
   0.13%    ││ │    0x00007ff60a7911d2:   add    %rcx,%r10
   0.10%    ││ │    0x00007ff60a7911d5:   and    %rdx,%rdi
   0.14%    ││ │    0x00007ff60a7911d8:   xor    %r14,%r13
   0.15%    ││ │    0x00007ff60a7911db:   rorx   $0x27,%r8,%r14
   0.13%    ││ │    0x00007ff60a7911e1:   xor    %r12,%r14
   0.11%    ││ │    0x00007ff60a7911e4:   rorx   $0x1c,%r8,%r12
   0.16%    ││ │    0x00007ff60a7911ea:   xor    %rbx,%r15
   0.13%    ││ │    0x00007ff60a7911ed:   xor    %r12,%r14
   0.08%    ││ │    0x00007ff60a7911f0:   mov    %r8,%r12
   0.10%    ││ │    0x00007ff60a7911f3:   and    %r9,%r12
   0.14%    ││ │    0x00007ff60a7911f6:   add    %r13,%r15
   0.16%    ││ │    0x00007ff60a7911f9:   or     %r12,%rdi
   0.11%    ││ │    0x00007ff60a7911fc:   add    %r14,%rcx
   0.09%    ││ │    0x00007ff60a7911ff:   add    %r15,%r10
   0.11%    ││ │    0x00007ff60a791202:   add    %r15,%rcx
   0.17%    ││ │    0x00007ff60a791205:   add    %rdi,%rcx
   0.13%    ││ │    0x00007ff60a791208:   vpsrlq $0x13,%ymm2,%ymm3
   0.08%    ││ │    0x00007ff60a79120d:   vpsllq $0x2d,%ymm2,%ymm1
   0.14%    ││ │    0x00007ff60a791212:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007ff60a791216:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%    ││ │    0x00007ff60a79121a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.09%    ││ │    0x00007ff60a79121f:   vpsllq $0x3,%ymm2,%ymm1
   0.14%    ││ │    0x00007ff60a791224:   vpor   %ymm1,%ymm3,%ymm3
   0.17%    ││ │    0x00007ff60a791228:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%    ││ │    0x00007ff60a79122c:   vpaddq %ymm8,%ymm7,%ymm7
   0.09%    ││ │    0x00007ff60a791231:   vpsrlq $0x6,%ymm7,%ymm8
   0.17%    ││ │    0x00007ff60a791236:   mov    %rcx,%rdi
   0.15%    ││ │    0x00007ff60a791239:   rorx   $0x29,%r10,%r13
   0.09%    ││ │    0x00007ff60a79123f:   rorx   $0x12,%r10,%r14
   0.09%    ││ │    0x00007ff60a791245:   add    0x10(%rsp),%rbx
   0.17%    ││ │    0x00007ff60a79124a:   or     %rdx,%rdi
   0.15%    ││ │    0x00007ff60a79124d:   mov    %r11,%r15
   0.12%    ││ │    0x00007ff60a791250:   xor    %rax,%r15
   0.09%    ││ │    0x00007ff60a791253:   rorx   $0x22,%rcx,%r12
   0.18%    ││ │    0x00007ff60a791259:   xor    %r14,%r13
   0.13%    ││ │    0x00007ff60a79125c:   rorx   $0xe,%r10,%r14
   0.10%    ││ │    0x00007ff60a791262:   and    %r10,%r15
   0.09%    ││ │    0x00007ff60a791265:   add    %rbx,%r9
   0.16%    ││ │    0x00007ff60a791268:   and    %r8,%rdi
   0.13%    ││ │    0x00007ff60a79126b:   xor    %r14,%r13
   0.10%    ││ │    0x00007ff60a79126e:   rorx   $0x27,%rcx,%r14
   0.08%    ││ │    0x00007ff60a791274:   xor    %r12,%r14
   0.14%    ││ │    0x00007ff60a791277:   rorx   $0x1c,%rcx,%r12
   0.17%    ││ │    0x00007ff60a79127d:   xor    %rax,%r15
   0.10%    ││ │    0x00007ff60a791280:   xor    %r12,%r14
   0.09%    ││ │    0x00007ff60a791283:   mov    %rcx,%r12
   0.19%    ││ │    0x00007ff60a791286:   and    %rdx,%r12
   0.13%    ││ │    0x00007ff60a791289:   add    %r13,%r15
   0.11%    ││ │    0x00007ff60a79128c:   or     %r12,%rdi
   0.08%    ││ │    0x00007ff60a79128f:   add    %r14,%rbx
   0.15%    ││ │    0x00007ff60a791292:   add    %r15,%r9
   0.16%    ││ │    0x00007ff60a791295:   add    %r15,%rbx
   0.10%    ││ │    0x00007ff60a791298:   add    %rdi,%rbx
   0.08%    ││ │    0x00007ff60a79129b:   vpsrlq $0x13,%ymm7,%ymm3
   0.18%    ││ │    0x00007ff60a7912a0:   vpsllq $0x2d,%ymm7,%ymm1
   0.15%    ││ │    0x00007ff60a7912a5:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007ff60a7912a9:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │    0x00007ff60a7912ad:   vpsrlq $0x3d,%ymm7,%ymm3
   0.17%    ││ │    0x00007ff60a7912b2:   vpsllq $0x3,%ymm7,%ymm1
   0.16%    ││ │    0x00007ff60a7912b7:   vpor   %ymm1,%ymm3,%ymm3
   0.15%    ││ │    0x00007ff60a7912bb:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │    0x00007ff60a7912bf:   vpaddq %ymm8,%ymm0,%ymm2
   0.16%    ││ │    0x00007ff60a7912c4:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.24%    ││ │    0x00007ff60a7912ca:   mov    %rbx,%rdi
   0.09%    ││ │    0x00007ff60a7912cd:   rorx   $0x29,%r9,%r13
   0.07%    ││ │    0x00007ff60a7912d3:   rorx   $0x12,%r9,%r14
   0.13%    ││ │    0x00007ff60a7912d9:   add    0x18(%rsp),%rax
   0.22%    ││ │    0x00007ff60a7912de:   or     %r8,%rdi
   0.08%    ││ │    0x00007ff60a7912e1:   mov    %r10,%r15
   0.07%    ││ │    0x00007ff60a7912e4:   xor    %r11,%r15
   0.12%    ││ │    0x00007ff60a7912e7:   rorx   $0x22,%rbx,%r12
   0.20%    ││ │    0x00007ff60a7912ed:   xor    %r14,%r13
   0.10%    ││ │    0x00007ff60a7912f0:   rorx   $0xe,%r9,%r14
   0.08%    ││ │    0x00007ff60a7912f6:   and    %r9,%r15
   0.12%    ││ │    0x00007ff60a7912f9:   add    %rax,%rdx
   0.21%    ││ │    0x00007ff60a7912fc:   and    %rcx,%rdi
   0.08%    ││ │    0x00007ff60a7912ff:   xor    %r14,%r13
   0.08%    ││ │    0x00007ff60a791302:   rorx   $0x27,%rbx,%r14
   0.11%    ││ │    0x00007ff60a791308:   xor    %r12,%r14
   0.22%    ││ │    0x00007ff60a79130b:   rorx   $0x1c,%rbx,%r12
   0.11%    ││ │    0x00007ff60a791311:   xor    %r11,%r15
   0.07%    ││ │    0x00007ff60a791314:   xor    %r12,%r14
   0.13%    ││ │    0x00007ff60a791317:   mov    %rbx,%r12
   0.20%    ││ │    0x00007ff60a79131a:   and    %r8,%r12
   0.10%    ││ │    0x00007ff60a79131d:   add    %r13,%r15
   0.07%    ││ │    0x00007ff60a791320:   or     %r12,%rdi
   0.11%    ││ │    0x00007ff60a791323:   add    %r14,%rax
   0.19%    ││ │    0x00007ff60a791326:   add    %r15,%rdx
   0.09%    ││ │    0x00007ff60a791329:   add    %r15,%rax
   0.07%    ││ │    0x00007ff60a79132c:   add    %rdi,%rax
   0.13%    ││ │    0x00007ff60a79132f:   subq   $0x1,0x20(%rsp)
   0.32%    │╰ │    0x00007ff60a791335:   jne    0x00007ff60a7909c0
   0.04%    │  │    0x00007ff60a79133b:   movq   $0x2,0x20(%rsp)
   0.06%    │ ↗│    0x00007ff60a791344:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.07%    │ ││    0x00007ff60a791349:   vmovdqu %ymm0,(%rsp)
   0.05%    │ ││    0x00007ff60a79134e:   mov    %r9,%r15
   0.06%    │ ││    0x00007ff60a791351:   rorx   $0x29,%rdx,%r13
   0.06%    │ ││    0x00007ff60a791357:   rorx   $0x12,%rdx,%r14
   0.08%    │ ││    0x00007ff60a79135d:   xor    %r10,%r15
   0.08%    │ ││    0x00007ff60a791360:   xor    %r14,%r13
   0.06%    │ ││    0x00007ff60a791363:   rorx   $0xe,%rdx,%r14
   0.05%    │ ││    0x00007ff60a791369:   and    %rdx,%r15
   0.07%    │ ││    0x00007ff60a79136c:   xor    %r14,%r13
   0.05%    │ ││    0x00007ff60a79136f:   rorx   $0x22,%rax,%r12
   0.08%    │ ││    0x00007ff60a791375:   xor    %r10,%r15
   0.06%    │ ││    0x00007ff60a791378:   rorx   $0x27,%rax,%r14
   0.05%    │ ││    0x00007ff60a79137e:   mov    %rax,%rdi
   0.06%    │ ││    0x00007ff60a791381:   xor    %r12,%r14
   0.08%    │ ││    0x00007ff60a791384:   rorx   $0x1c,%rax,%r12
   0.05%    │ ││    0x00007ff60a79138a:   add    (%rsp),%r11
   0.08%    │ ││    0x00007ff60a79138e:   or     %rcx,%rdi
   0.04%    │ ││    0x00007ff60a791391:   xor    %r12,%r14
   0.07%    │ ││    0x00007ff60a791394:   mov    %rax,%r12
   0.06%    │ ││    0x00007ff60a791397:   and    %rbx,%rdi
   0.08%    │ ││    0x00007ff60a79139a:   and    %rcx,%r12
   0.03%    │ ││    0x00007ff60a79139d:   add    %r13,%r15
   0.06%    │ ││    0x00007ff60a7913a0:   add    %r11,%r8
   0.05%    │ ││    0x00007ff60a7913a3:   or     %r12,%rdi
   0.10%    │ ││    0x00007ff60a7913a6:   add    %r14,%r11
   0.05%    │ ││    0x00007ff60a7913a9:   add    %r15,%r8
   0.07%    │ ││    0x00007ff60a7913ac:   add    %r15,%r11
   0.06%    │ ││    0x00007ff60a7913af:   mov    %rdx,%r15
   0.10%    │ ││    0x00007ff60a7913b2:   rorx   $0x29,%r8,%r13
   0.08%    │ ││    0x00007ff60a7913b8:   rorx   $0x12,%r8,%r14
   0.11%    │ ││    0x00007ff60a7913be:   xor    %r9,%r15
   0.06%    │ ││    0x00007ff60a7913c1:   xor    %r14,%r13
   0.05%    │ ││    0x00007ff60a7913c4:   rorx   $0xe,%r8,%r14
   0.05%    │ ││    0x00007ff60a7913ca:   and    %r8,%r15
   0.08%    │ ││    0x00007ff60a7913cd:   add    %rdi,%r11
   0.06%    │ ││    0x00007ff60a7913d0:   xor    %r14,%r13
   0.08%    │ ││    0x00007ff60a7913d3:   rorx   $0x22,%r11,%r12
   0.06%    │ ││    0x00007ff60a7913d9:   xor    %r9,%r15
   0.09%    │ ││    0x00007ff60a7913dc:   rorx   $0x27,%r11,%r14
   0.04%    │ ││    0x00007ff60a7913e2:   mov    %r11,%rdi
   0.05%    │ ││    0x00007ff60a7913e5:   xor    %r12,%r14
   0.06%    │ ││    0x00007ff60a7913e8:   rorx   $0x1c,%r11,%r12
   0.10%    │ ││    0x00007ff60a7913ee:   add    0x8(%rsp),%r10
   0.05%    │ ││    0x00007ff60a7913f3:   or     %rbx,%rdi
   0.05%    │ ││    0x00007ff60a7913f6:   xor    %r12,%r14
   0.07%    │ ││    0x00007ff60a7913f9:   mov    %r11,%r12
   0.06%    │ ││    0x00007ff60a7913fc:   and    %rax,%rdi
   0.05%    │ ││    0x00007ff60a7913ff:   and    %rbx,%r12
   0.05%    │ ││    0x00007ff60a791402:   add    %r13,%r15
   0.07%    │ ││    0x00007ff60a791405:   add    %r10,%rcx
   0.07%    │ ││    0x00007ff60a791408:   or     %r12,%rdi
   0.05%    │ ││    0x00007ff60a79140b:   add    %r14,%r10
   0.07%    │ ││    0x00007ff60a79140e:   add    %r15,%rcx
   0.05%    │ ││    0x00007ff60a791411:   add    %r15,%r10
   0.08%    │ ││    0x00007ff60a791414:   mov    %r8,%r15
   0.06%    │ ││    0x00007ff60a791417:   rorx   $0x29,%rcx,%r13
   0.08%    │ ││    0x00007ff60a79141d:   rorx   $0x12,%rcx,%r14
   0.06%    │ ││    0x00007ff60a791423:   xor    %rdx,%r15
   0.07%    │ ││    0x00007ff60a791426:   xor    %r14,%r13
   0.05%    │ ││    0x00007ff60a791429:   rorx   $0xe,%rcx,%r14
   0.07%    │ ││    0x00007ff60a79142f:   and    %rcx,%r15
   0.09%    │ ││    0x00007ff60a791432:   add    %rdi,%r10
   0.08%    │ ││    0x00007ff60a791435:   xor    %r14,%r13
   0.05%    │ ││    0x00007ff60a791438:   rorx   $0x22,%r10,%r12
   0.06%    │ ││    0x00007ff60a79143e:   xor    %rdx,%r15
   0.07%    │ ││    0x00007ff60a791441:   rorx   $0x27,%r10,%r14
   0.07%    │ ││    0x00007ff60a791447:   mov    %r10,%rdi
   0.07%    │ ││    0x00007ff60a79144a:   xor    %r12,%r14
   0.09%    │ ││    0x00007ff60a79144d:   rorx   $0x1c,%r10,%r12
   0.07%    │ ││    0x00007ff60a791453:   add    0x10(%rsp),%r9
   0.06%    │ ││    0x00007ff60a791458:   or     %rax,%rdi
   0.06%    │ ││    0x00007ff60a79145b:   xor    %r12,%r14
   0.05%    │ ││    0x00007ff60a79145e:   mov    %r10,%r12
   0.04%    │ ││    0x00007ff60a791461:   and    %r11,%rdi
   0.09%    │ ││    0x00007ff60a791464:   and    %rax,%r12
   0.04%    │ ││    0x00007ff60a791467:   add    %r13,%r15
   0.09%    │ ││    0x00007ff60a79146a:   add    %r9,%rbx
   0.07%    │ ││    0x00007ff60a79146d:   or     %r12,%rdi
   0.06%    │ ││    0x00007ff60a791470:   add    %r14,%r9
   0.05%    │ ││    0x00007ff60a791473:   add    %r15,%rbx
   0.08%    │ ││    0x00007ff60a791476:   add    %r15,%r9
   0.06%    │ ││    0x00007ff60a791479:   mov    %rcx,%r15
   0.04%    │ ││    0x00007ff60a79147c:   rorx   $0x29,%rbx,%r13
   0.06%    │ ││    0x00007ff60a791482:   rorx   $0x12,%rbx,%r14
   0.08%    │ ││    0x00007ff60a791488:   xor    %r8,%r15
   0.07%    │ ││    0x00007ff60a79148b:   xor    %r14,%r13
   0.07%    │ ││    0x00007ff60a79148e:   rorx   $0xe,%rbx,%r14
   0.06%    │ ││    0x00007ff60a791494:   and    %rbx,%r15
   0.08%    │ ││    0x00007ff60a791497:   add    %rdi,%r9
   0.06%    │ ││    0x00007ff60a79149a:   xor    %r14,%r13
   0.07%    │ ││    0x00007ff60a79149d:   rorx   $0x22,%r9,%r12
   0.06%    │ ││    0x00007ff60a7914a3:   xor    %r8,%r15
   0.09%    │ ││    0x00007ff60a7914a6:   rorx   $0x27,%r9,%r14
   0.06%    │ ││    0x00007ff60a7914ac:   mov    %r9,%rdi
   0.05%    │ ││    0x00007ff60a7914af:   xor    %r12,%r14
   0.06%    │ ││    0x00007ff60a7914b2:   rorx   $0x1c,%r9,%r12
   0.08%    │ ││    0x00007ff60a7914b8:   add    0x18(%rsp),%rdx
   0.05%    │ ││    0x00007ff60a7914bd:   or     %r11,%rdi
   0.05%    │ ││    0x00007ff60a7914c0:   xor    %r12,%r14
   0.06%    │ ││    0x00007ff60a7914c3:   mov    %r9,%r12
   0.09%    │ ││    0x00007ff60a7914c6:   and    %r10,%rdi
   0.04%    │ ││    0x00007ff60a7914c9:   and    %r11,%r12
   0.05%    │ ││    0x00007ff60a7914cc:   add    %r13,%r15
   0.08%    │ ││    0x00007ff60a7914cf:   add    %rdx,%rax
   0.08%    │ ││    0x00007ff60a7914d2:   or     %r12,%rdi
   0.06%    │ ││    0x00007ff60a7914d5:   add    %r14,%rdx
   0.09%    │ ││    0x00007ff60a7914d8:   add    %r15,%rax
   0.08%    │ ││    0x00007ff60a7914db:   add    %r15,%rdx
   0.06%    │ ││    0x00007ff60a7914de:   add    %rdi,%rdx
   0.07%    │ ││    0x00007ff60a7914e1:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.07%    │ ││    0x00007ff60a7914e6:   vmovdqu %ymm0,(%rsp)
   0.04%    │ ││    0x00007ff60a7914eb:   add    $0x40,%rbp
   0.07%    │ ││    0x00007ff60a7914ef:   mov    %rbx,%r15
   0.09%    │ ││    0x00007ff60a7914f2:   rorx   $0x29,%rax,%r13
   0.07%    │ ││    0x00007ff60a7914f8:   rorx   $0x12,%rax,%r14
   0.04%    │ ││    0x00007ff60a7914fe:   xor    %rcx,%r15
   0.06%    │ ││    0x00007ff60a791501:   xor    %r14,%r13
   0.09%    │ ││    0x00007ff60a791504:   rorx   $0xe,%rax,%r14
   0.08%    │ ││    0x00007ff60a79150a:   and    %rax,%r15
   0.03%    │ ││    0x00007ff60a79150d:   xor    %r14,%r13
   0.06%    │ ││    0x00007ff60a791510:   rorx   $0x22,%rdx,%r12
   0.08%    │ ││    0x00007ff60a791516:   xor    %rcx,%r15
   0.09%    │ ││    0x00007ff60a791519:   rorx   $0x27,%rdx,%r14
   0.03%    │ ││    0x00007ff60a79151f:   mov    %rdx,%rdi
   0.07%    │ ││    0x00007ff60a791522:   xor    %r12,%r14
   0.09%    │ ││    0x00007ff60a791525:   rorx   $0x1c,%rdx,%r12
   0.05%    │ ││    0x00007ff60a79152b:   add    (%rsp),%r8
   0.03%    │ ││    0x00007ff60a79152f:   or     %r10,%rdi
   0.04%    │ ││    0x00007ff60a791532:   xor    %r12,%r14
   0.08%    │ ││    0x00007ff60a791535:   mov    %rdx,%r12
   0.04%    │ ││    0x00007ff60a791538:   and    %r9,%rdi
   0.04%    │ ││    0x00007ff60a79153b:   and    %r10,%r12
   0.08%    │ ││    0x00007ff60a79153e:   add    %r13,%r15
   0.09%    │ ││    0x00007ff60a791541:   add    %r8,%r11
   0.04%    │ ││    0x00007ff60a791544:   or     %r12,%rdi
   0.05%    │ ││    0x00007ff60a791547:   add    %r14,%r8
   0.06%    │ ││    0x00007ff60a79154a:   add    %r15,%r11
   0.08%    │ ││    0x00007ff60a79154d:   add    %r15,%r8
   0.07%    │ ││    0x00007ff60a791550:   mov    %rax,%r15
   0.03%    │ ││    0x00007ff60a791553:   rorx   $0x29,%r11,%r13
   0.08%    │ ││    0x00007ff60a791559:   rorx   $0x12,%r11,%r14
   0.10%    │ ││    0x00007ff60a79155f:   xor    %rbx,%r15
   0.08%    │ ││    0x00007ff60a791562:   xor    %r14,%r13
   0.04%    │ ││    0x00007ff60a791565:   rorx   $0xe,%r11,%r14
   0.05%    │ ││    0x00007ff60a79156b:   and    %r11,%r15
   0.08%    │ ││    0x00007ff60a79156e:   add    %rdi,%r8
   0.07%    │ ││    0x00007ff60a791571:   xor    %r14,%r13
   0.06%    │ ││    0x00007ff60a791574:   rorx   $0x22,%r8,%r12
   0.07%    │ ││    0x00007ff60a79157a:   xor    %rbx,%r15
   0.09%    │ ││    0x00007ff60a79157d:   rorx   $0x27,%r8,%r14
   0.05%    │ ││    0x00007ff60a791583:   mov    %r8,%rdi
   0.04%    │ ││    0x00007ff60a791586:   xor    %r12,%r14
   0.10%    │ ││    0x00007ff60a791589:   rorx   $0x1c,%r8,%r12
   0.07%    │ ││    0x00007ff60a79158f:   add    0x8(%rsp),%rcx
   0.05%    │ ││    0x00007ff60a791594:   or     %r9,%rdi
   0.06%    │ ││    0x00007ff60a791597:   xor    %r12,%r14
   0.08%    │ ││    0x00007ff60a79159a:   mov    %r8,%r12
   0.06%    │ ││    0x00007ff60a79159d:   and    %rdx,%rdi
   0.05%    │ ││    0x00007ff60a7915a0:   and    %r9,%r12
   0.05%    │ ││    0x00007ff60a7915a3:   add    %r13,%r15
   0.05%    │ ││    0x00007ff60a7915a6:   add    %rcx,%r10
   0.07%    │ ││    0x00007ff60a7915a9:   or     %r12,%rdi
   0.05%    │ ││    0x00007ff60a7915ac:   add    %r14,%rcx
   0.04%    │ ││    0x00007ff60a7915af:   add    %r15,%r10
   0.10%    │ ││    0x00007ff60a7915b2:   add    %r15,%rcx
   0.07%    │ ││    0x00007ff60a7915b5:   mov    %r11,%r15
   0.06%    │ ││    0x00007ff60a7915b8:   rorx   $0x29,%r10,%r13
   0.05%    │ ││    0x00007ff60a7915be:   rorx   $0x12,%r10,%r14
   0.07%    │ ││    0x00007ff60a7915c4:   xor    %rax,%r15
   0.08%    │ ││    0x00007ff60a7915c7:   xor    %r14,%r13
   0.08%    │ ││    0x00007ff60a7915ca:   rorx   $0xe,%r10,%r14
   0.07%    │ ││    0x00007ff60a7915d0:   and    %r10,%r15
   0.07%    │ ││    0x00007ff60a7915d3:   add    %rdi,%rcx
   0.09%    │ ││    0x00007ff60a7915d6:   xor    %r14,%r13
   0.08%    │ ││    0x00007ff60a7915d9:   rorx   $0x22,%rcx,%r12
   0.05%    │ ││    0x00007ff60a7915df:   xor    %rax,%r15
   0.09%    │ ││    0x00007ff60a7915e2:   rorx   $0x27,%rcx,%r14
   0.06%    │ ││    0x00007ff60a7915e8:   mov    %rcx,%rdi
   0.06%    │ ││    0x00007ff60a7915eb:   xor    %r12,%r14
   0.07%    │ ││    0x00007ff60a7915ee:   rorx   $0x1c,%rcx,%r12
   0.11%    │ ││    0x00007ff60a7915f4:   add    0x10(%rsp),%rbx
   0.05%    │ ││    0x00007ff60a7915f9:   or     %rdx,%rdi
   0.06%    │ ││    0x00007ff60a7915fc:   xor    %r12,%r14
   0.05%    │ ││    0x00007ff60a7915ff:   mov    %rcx,%r12
   0.08%    │ ││    0x00007ff60a791602:   and    %r8,%rdi
   0.08%    │ ││    0x00007ff60a791605:   and    %rdx,%r12
   0.08%    │ ││    0x00007ff60a791608:   add    %r13,%r15
   0.06%    │ ││    0x00007ff60a79160b:   add    %rbx,%r9
   0.08%    │ ││    0x00007ff60a79160e:   or     %r12,%rdi
   0.10%    │ ││    0x00007ff60a791611:   add    %r14,%rbx
   0.05%    │ ││    0x00007ff60a791614:   add    %r15,%r9
   0.06%    │ ││    0x00007ff60a791617:   add    %r15,%rbx
   0.06%    │ ││    0x00007ff60a79161a:   mov    %r10,%r15
   0.06%    │ ││    0x00007ff60a79161d:   rorx   $0x29,%r9,%r13
   0.07%    │ ││    0x00007ff60a791623:   rorx   $0x12,%r9,%r14
   0.07%    │ ││    0x00007ff60a791629:   xor    %r11,%r15
   0.08%    │ ││    0x00007ff60a79162c:   xor    %r14,%r13
   0.07%    │ ││    0x00007ff60a79162f:   rorx   $0xe,%r9,%r14
   0.05%    │ ││    0x00007ff60a791635:   and    %r9,%r15
   0.06%    │ ││    0x00007ff60a791638:   add    %rdi,%rbx
   0.08%    │ ││    0x00007ff60a79163b:   xor    %r14,%r13
   0.08%    │ ││    0x00007ff60a79163e:   rorx   $0x22,%rbx,%r12
   0.05%    │ ││    0x00007ff60a791644:   xor    %r11,%r15
   0.07%    │ ││    0x00007ff60a791647:   rorx   $0x27,%rbx,%r14
   0.07%    │ ││    0x00007ff60a79164d:   mov    %rbx,%rdi
   0.06%    │ ││    0x00007ff60a791650:   xor    %r12,%r14
   0.07%    │ ││    0x00007ff60a791653:   rorx   $0x1c,%rbx,%r12
   0.07%    │ ││    0x00007ff60a791659:   add    0x18(%rsp),%rax
   0.06%    │ ││    0x00007ff60a79165e:   or     %r8,%rdi
   0.05%    │ ││    0x00007ff60a791661:   xor    %r12,%r14
   0.07%    │ ││    0x00007ff60a791664:   mov    %rbx,%r12
   0.06%    │ ││    0x00007ff60a791667:   and    %rcx,%rdi
   0.08%    │ ││    0x00007ff60a79166a:   and    %r8,%r12
   0.07%    │ ││    0x00007ff60a79166d:   add    %r13,%r15
   0.10%    │ ││    0x00007ff60a791670:   add    %rax,%rdx
   0.05%    │ ││    0x00007ff60a791673:   or     %r12,%rdi
   0.08%    │ ││    0x00007ff60a791676:   add    %r14,%rax
   0.07%    │ ││    0x00007ff60a791679:   add    %r15,%rdx
   0.07%    │ ││    0x00007ff60a79167c:   add    %r15,%rax
   0.05%    │ ││    0x00007ff60a79167f:   add    %rdi,%rax
   0.11%    │ ││    0x00007ff60a791682:   vmovdqu %ymm6,%ymm4
   0.06%    │ ││    0x00007ff60a791686:   vmovdqu %ymm7,%ymm5
   0.01%    │ ││    0x00007ff60a79168a:   subq   $0x1,0x20(%rsp)
   0.17%    │ ╰│    0x00007ff60a791690:   jne    0x00007ff60a791344
   0.02%    │  │    0x00007ff60a791696:   add    (%rsi),%rax
   0.01%    │  │    0x00007ff60a791699:   mov    %rax,(%rsi)
   0.23%    │  │    0x00007ff60a79169c:   add    0x8(%rsi),%rbx
            │  │    0x00007ff60a7916a0:   mov    %rbx,0x8(%rsi)
   0.01%    │  │    0x00007ff60a7916a4:   add    0x10(%rsi),%rcx
            │  │    0x00007ff60a7916a8:   mov    %rcx,0x10(%rsi)
   0.08%    │  │    0x00007ff60a7916ac:   add    0x18(%rsi),%r8
   0.00%    │  │    0x00007ff60a7916b0:   mov    %r8,0x18(%rsi)
   0.02%    │  │    0x00007ff60a7916b4:   add    0x20(%rsi),%rdx
            │  │    0x00007ff60a7916b8:   mov    %rdx,0x20(%rsi)
   0.10%    │  │    0x00007ff60a7916bc:   add    0x28(%rsi),%r9
            │  │    0x00007ff60a7916c0:   mov    %r9,0x28(%rsi)
   0.02%    │  │    0x00007ff60a7916c4:   add    0x30(%rsi),%r10
   0.00%    │  │    0x00007ff60a7916c8:   mov    %r10,0x30(%rsi)
   0.12%    │  │    0x00007ff60a7916cc:   add    0x38(%rsi),%r11
            │  │    0x00007ff60a7916d0:   mov    %r11,0x38(%rsi)
   0.04%    │  │    0x00007ff60a7916d4:   mov    0x28(%rsp),%rdi
            │  │    0x00007ff60a7916d9:   add    $0x80,%rdi
   0.08%    │  │    0x00007ff60a7916e0:   cmp    0x30(%rsp),%rdi
            │  ╰    0x00007ff60a7916e5:   jne    0x00007ff60a79097b
   0.01%    ↘       0x00007ff60a7916eb:   mov    0x40(%rsp),%rbp
   0.01%            0x00007ff60a7916f0:   mov    0x48(%rsp),%rbx
   0.00%            0x00007ff60a7916f5:   mov    0x50(%rsp),%r12
                    0x00007ff60a7916fa:   mov    0x58(%rsp),%r13
   0.00%            0x00007ff60a7916ff:   mov    0x60(%rsp),%r14
   0.00%            0x00007ff60a791704:   mov    0x68(%rsp),%r15
                    0x00007ff60a791709:   mov    0x38(%rsp),%rsp
                    0x00007ff60a79170e:   pop    %rcx
   0.00%            0x00007ff60a79170f:   pop    %rdx
                    0x00007ff60a791710:   mov    %rdx,%rax
   0.25%         ↗  0x00007ff60a791713:   cmp    %rcx,%rax
                ╭│  0x00007ff60a791716:   jae    0x00007ff60a791720
   0.00%        ││  0x00007ff60a791718:   add    $0x80,%rax
   0.00%        │╰  0x00007ff60a79171e:   jmp    0x00007ff60a791713
   0.01%        ↘   0x00007ff60a791720:   vzeroupper 
   0.00%            0x00007ff60a791723:   leave  
   0.02%            0x00007ff60a791724:   ret    
                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::avx2_shuffle_base64 [0x00007ff60a791740, 0x00007ff60a791760] (32 bytes)
                  --------------------------------------------------------------------------------
....................................................................................................
  93.33%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.33%         runtime stub  StubRoutines::sha512_implCompressMB 
   4.04%                       <unknown> 
   0.46%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1144 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1144 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1144 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1144 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1144 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1144 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1144 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1144 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1144 
   0.02%               kernel  [unknown] 
   1.36%  <...other 363 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.34%         runtime stub  StubRoutines::sha512_implCompressMB 
   4.09%                       <unknown> 
   1.44%               kernel  [unknown] 
   0.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1144 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1171 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  outputStream::print 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%            libjvm.so  os::strdup 
   0.00%         libc-2.31.so  syscall 
   0.15%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.34%         runtime stub
   4.09%                     
   1.44%               kernel
   0.84%       jvmci, level 4
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.02%  libjvmcicompiler.so
   0.02%           ld-2.31.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA512/256, length = 16384)

# Run progress: 58.33% complete, ETA 00:09:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 46.584 us/op
# Warmup Iteration   2: 39.006 us/op
# Warmup Iteration   3: 38.994 us/op
# Warmup Iteration   4: 38.993 us/op
# Warmup Iteration   5: 38.983 us/op
Iteration   1: 38.985 us/op
Iteration   2: 38.985 us/op
Iteration   3: 38.979 us/op
Iteration   4: 38.995 us/op
Iteration   5: 38.989 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  38.987 ±(99.9%) 0.022 us/op [Average]
  (min, avg, max) = (38.979, 38.987, 38.995), stdev = 0.006
  CI (99.9%): [38.965, 39.008] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 286977 total address lines.
Perf output processed (skipped 61.816 seconds):
 Column 1: cycles (50826 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::sha512_implCompressMB [0x00007f3fba7909c0, 0x00007f3fba791805] (3653 bytes)
                  --------------------------------------------------------------------------------
                    0x00007f3fba7909c0:   push   %rbp
                    0x00007f3fba7909c1:   mov    %rsp,%rbp
   0.00%            0x00007f3fba7909c4:   push   %rdx
                    0x00007f3fba7909c5:   push   %rcx
                    0x00007f3fba7909c6:   mov    %rsp,%rax
                    0x00007f3fba7909c9:   sub    $0x70,%rsp
   0.00%            0x00007f3fba7909cd:   and    $0xffffffffffffffe0,%rsp
                    0x00007f3fba7909d1:   mov    %rax,0x38(%rsp)
                    0x00007f3fba7909d6:   mov    %rbp,0x40(%rsp)
   0.00%            0x00007f3fba7909db:   mov    %rbx,0x48(%rsp)
   0.00%            0x00007f3fba7909e0:   mov    %r12,0x50(%rsp)
                    0x00007f3fba7909e5:   mov    %r13,0x58(%rsp)
                    0x00007f3fba7909ea:   mov    %r14,0x60(%rsp)
                    0x00007f3fba7909ef:   mov    %r15,0x68(%rsp)
   0.00%            0x00007f3fba7909f4:   vpblendd $0xf0,%xmm1,%xmm0,%xmm0
                    0x00007f3fba7909fa:   vpblendd $0xf0,%ymm1,%ymm0,%ymm0
   0.00%            0x00007f3fba790a00:   xor    %rax,%rax
   0.00%   ↗        0x00007f3fba790a03:   cmp    %rcx,%rdx
          ╭│        0x00007f3fba790a06:   jae    0x00007f3fba790a17
   0.06%  ││        0x00007f3fba790a08:   add    $0x80,%rdx
   0.06%  ││        0x00007f3fba790a0f:   add    $0x80,%rax
   0.00%  │╰        0x00007f3fba790a15:   jmp    0x00007f3fba790a03
   0.01%  ↘         0x00007f3fba790a17:   mov    %rax,%rdx
                    0x00007f3fba790a1a:   cmp    $0x0,%rdx
            ╭       0x00007f3fba790a1e:   je     0x00007f3fba7917cb
   0.01%    │       0x00007f3fba790a24:   add    %rdi,%rdx
   0.00%    │       0x00007f3fba790a27:   mov    %rdx,0x30(%rsp)
   0.00%    │       0x00007f3fba790a2c:   mov    (%rsi),%rax
            │       0x00007f3fba790a2f:   mov    0x8(%rsi),%rbx
            │       0x00007f3fba790a33:   mov    0x10(%rsi),%rcx
            │       0x00007f3fba790a37:   mov    0x18(%rsi),%r8
            │       0x00007f3fba790a3b:   mov    0x20(%rsi),%rdx
            │       0x00007f3fba790a3f:   mov    0x28(%rsi),%r9
            │       0x00007f3fba790a43:   mov    0x38(%rsi),%r11
   0.00%    │       0x00007f3fba790a47:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007f3fba78fb60
            │       0x00007f3fba790a4f:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007f3fba78fb80
            │       0x00007f3fba790a57:   mov    0x30(%rsi),%r10
            │  ↗    0x00007f3fba790a5b:   movabs $0x7f3fd40b1180,%rbp
   0.02%    │  │    0x00007f3fba790a65:   vmovdqu (%rdi),%ymm4
   0.09%    │  │    0x00007f3fba790a69:   vpshufb %ymm9,%ymm4,%ymm4
   0.16%    │  │    0x00007f3fba790a6e:   vmovdqu 0x20(%rdi),%ymm5
   0.03%    │  │    0x00007f3fba790a73:   vpshufb %ymm9,%ymm5,%ymm5
   0.09%    │  │    0x00007f3fba790a78:   vmovdqu 0x40(%rdi),%ymm6
   0.10%    │  │    0x00007f3fba790a7d:   vpshufb %ymm9,%ymm6,%ymm6
   0.13%    │  │    0x00007f3fba790a82:   vmovdqu 0x60(%rdi),%ymm7
   0.02%    │  │    0x00007f3fba790a87:   vpshufb %ymm9,%ymm7,%ymm7
   0.07%    │  │    0x00007f3fba790a8c:   mov    %rdi,0x28(%rsp)
            │  │    0x00007f3fba790a91:   movq   $0x4,0x20(%rsp)
   0.06%    │  │    0x00007f3fba790a9a:   nopw   0x0(%rax,%rax,1)
   0.06%    │↗ │    0x00007f3fba790aa0:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.22%    ││ │    0x00007f3fba790aa5:   vmovdqu %ymm0,(%rsp)
   0.13%    ││ │    0x00007f3fba790aaa:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.29%    ││ │    0x00007f3fba790ab0:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.38%    ││ │    0x00007f3fba790ab6:   vpaddq %ymm4,%ymm0,%ymm0
   0.72%    ││ │    0x00007f3fba790aba:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.12%    ││ │    0x00007f3fba790ac0:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.09%    ││ │    0x00007f3fba790ac6:   vpsrlq $0x1,%ymm1,%ymm2
   0.09%    ││ │    0x00007f3fba790acb:   vpsllq $0x3f,%ymm1,%ymm3
   0.23%    ││ │    0x00007f3fba790ad0:   vpor   %ymm2,%ymm3,%ymm3
   0.15%    ││ │    0x00007f3fba790ad4:   vpsrlq $0x7,%ymm1,%ymm8
   0.08%    ││ │    0x00007f3fba790ad9:   mov    %rax,%rdi
   0.04%    ││ │    0x00007f3fba790adc:   rorx   $0x29,%rdx,%r13
   0.21%    ││ │    0x00007f3fba790ae2:   rorx   $0x12,%rdx,%r14
   0.22%    ││ │    0x00007f3fba790ae8:   add    (%rsp),%r11
   0.10%    ││ │    0x00007f3fba790aec:   or     %rcx,%rdi
   0.05%    ││ │    0x00007f3fba790aef:   mov    %r9,%r15
   0.22%    ││ │    0x00007f3fba790af2:   xor    %r10,%r15
   0.18%    ││ │    0x00007f3fba790af5:   rorx   $0x22,%rax,%r12
   0.07%    ││ │    0x00007f3fba790afb:   xor    %r14,%r13
   0.06%    ││ │    0x00007f3fba790afe:   rorx   $0xe,%rdx,%r14
   0.21%    ││ │    0x00007f3fba790b04:   and    %rdx,%r15
   0.15%    ││ │    0x00007f3fba790b07:   add    %r11,%r8
   0.07%    ││ │    0x00007f3fba790b0a:   and    %rbx,%rdi
   0.04%    ││ │    0x00007f3fba790b0d:   xor    %r14,%r13
   0.20%    ││ │    0x00007f3fba790b10:   rorx   $0x27,%rax,%r14
   0.17%    ││ │    0x00007f3fba790b16:   xor    %r12,%r14
   0.08%    ││ │    0x00007f3fba790b19:   rorx   $0x1c,%rax,%r12
   0.05%    ││ │    0x00007f3fba790b1f:   xor    %r10,%r15
   0.19%    ││ │    0x00007f3fba790b22:   xor    %r12,%r14
   0.17%    ││ │    0x00007f3fba790b25:   mov    %rax,%r12
   0.08%    ││ │    0x00007f3fba790b28:   and    %rcx,%r12
   0.04%    ││ │    0x00007f3fba790b2b:   add    %r13,%r15
   0.21%    ││ │    0x00007f3fba790b2e:   or     %r12,%rdi
   0.15%    ││ │    0x00007f3fba790b31:   add    %r14,%r11
   0.06%    ││ │    0x00007f3fba790b34:   add    %r15,%r8
   0.06%    ││ │    0x00007f3fba790b37:   add    %r15,%r11
   0.19%    ││ │    0x00007f3fba790b3a:   add    %rdi,%r11
   0.17%    ││ │    0x00007f3fba790b3d:   vpsrlq $0x8,%ymm1,%ymm2
   0.07%    ││ │    0x00007f3fba790b42:   vpsllq $0x38,%ymm1,%ymm1
   0.04%    ││ │    0x00007f3fba790b47:   vpor   %ymm2,%ymm1,%ymm1
   0.21%    ││ │    0x00007f3fba790b4b:   vpxor  %ymm8,%ymm3,%ymm3
   0.22%    ││ │    0x00007f3fba790b50:   vpxor  %ymm1,%ymm3,%ymm1
   0.08%    ││ │    0x00007f3fba790b54:   vpaddq %ymm1,%ymm0,%ymm0
   0.05%    ││ │    0x00007f3fba790b58:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.22%    ││ │    0x00007f3fba790b5e:   vpand  %ymm10,%ymm0,%ymm0
   0.20%    ││ │    0x00007f3fba790b63:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.06%    ││ │    0x00007f3fba790b69:   vpsrlq $0x6,%ymm2,%ymm8
   0.03%    ││ │    0x00007f3fba790b6e:   mov    %r11,%rdi
   0.20%    ││ │    0x00007f3fba790b71:   rorx   $0x29,%r8,%r13
   0.20%    ││ │    0x00007f3fba790b77:   rorx   $0x12,%r8,%r14
   0.05%    ││ │    0x00007f3fba790b7d:   add    0x8(%rsp),%r10
   0.05%    ││ │    0x00007f3fba790b82:   or     %rbx,%rdi
   0.23%    ││ │    0x00007f3fba790b85:   mov    %rdx,%r15
   0.17%    ││ │    0x00007f3fba790b88:   xor    %r9,%r15
   0.06%    ││ │    0x00007f3fba790b8b:   rorx   $0x22,%r11,%r12
   0.04%    ││ │    0x00007f3fba790b91:   xor    %r14,%r13
   0.20%    ││ │    0x00007f3fba790b94:   rorx   $0xe,%r8,%r14
   0.20%    ││ │    0x00007f3fba790b9a:   and    %r8,%r15
   0.07%    ││ │    0x00007f3fba790b9d:   add    %r10,%rcx
   0.06%    ││ │    0x00007f3fba790ba0:   and    %rax,%rdi
   0.18%    ││ │    0x00007f3fba790ba3:   xor    %r14,%r13
   0.19%    ││ │    0x00007f3fba790ba6:   rorx   $0x27,%r11,%r14
   0.06%    ││ │    0x00007f3fba790bac:   xor    %r12,%r14
   0.04%    ││ │    0x00007f3fba790baf:   rorx   $0x1c,%r11,%r12
   0.21%    ││ │    0x00007f3fba790bb5:   xor    %r9,%r15
   0.14%    ││ │    0x00007f3fba790bb8:   xor    %r12,%r14
   0.05%    ││ │    0x00007f3fba790bbb:   mov    %r11,%r12
   0.06%    ││ │    0x00007f3fba790bbe:   and    %rbx,%r12
   0.20%    ││ │    0x00007f3fba790bc1:   add    %r13,%r15
   0.18%    ││ │    0x00007f3fba790bc4:   or     %r12,%rdi
   0.07%    ││ │    0x00007f3fba790bc7:   add    %r14,%r10
   0.06%    ││ │    0x00007f3fba790bca:   add    %r15,%rcx
   0.19%    ││ │    0x00007f3fba790bcd:   add    %r15,%r10
   0.18%    ││ │    0x00007f3fba790bd0:   add    %rdi,%r10
   0.07%    ││ │    0x00007f3fba790bd3:   vpsrlq $0x13,%ymm2,%ymm3
   0.06%    ││ │    0x00007f3fba790bd8:   vpsllq $0x2d,%ymm2,%ymm1
   0.20%    ││ │    0x00007f3fba790bdd:   vpor   %ymm1,%ymm3,%ymm3
   0.17%    ││ │    0x00007f3fba790be1:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%    ││ │    0x00007f3fba790be5:   vpsrlq $0x3d,%ymm2,%ymm3
   0.06%    ││ │    0x00007f3fba790bea:   vpsllq $0x3,%ymm2,%ymm1
   0.17%    ││ │    0x00007f3fba790bef:   vpor   %ymm1,%ymm3,%ymm3
   0.20%    ││ │    0x00007f3fba790bf3:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │    0x00007f3fba790bf7:   vpaddq %ymm8,%ymm4,%ymm4
   0.06%    ││ │    0x00007f3fba790bfc:   vpsrlq $0x6,%ymm4,%ymm8
   0.19%    ││ │    0x00007f3fba790c01:   mov    %r10,%rdi
   0.20%    ││ │    0x00007f3fba790c04:   rorx   $0x29,%rcx,%r13
   0.04%    ││ │    0x00007f3fba790c0a:   rorx   $0x12,%rcx,%r14
   0.04%    ││ │    0x00007f3fba790c10:   add    0x10(%rsp),%r9
   0.17%    ││ │    0x00007f3fba790c15:   or     %rax,%rdi
   0.14%    ││ │    0x00007f3fba790c18:   mov    %r8,%r15
   0.07%    ││ │    0x00007f3fba790c1b:   xor    %rdx,%r15
   0.05%    ││ │    0x00007f3fba790c1e:   rorx   $0x22,%r10,%r12
   0.20%    ││ │    0x00007f3fba790c24:   xor    %r14,%r13
   0.17%    ││ │    0x00007f3fba790c27:   rorx   $0xe,%rcx,%r14
   0.07%    ││ │    0x00007f3fba790c2d:   and    %rcx,%r15
   0.06%    ││ │    0x00007f3fba790c30:   add    %r9,%rbx
   0.19%    ││ │    0x00007f3fba790c33:   and    %r11,%rdi
   0.19%    ││ │    0x00007f3fba790c36:   xor    %r14,%r13
   0.05%    ││ │    0x00007f3fba790c39:   rorx   $0x27,%r10,%r14
   0.04%    ││ │    0x00007f3fba790c3f:   xor    %r12,%r14
   0.18%    ││ │    0x00007f3fba790c42:   rorx   $0x1c,%r10,%r12
   0.17%    ││ │    0x00007f3fba790c48:   xor    %rdx,%r15
   0.05%    ││ │    0x00007f3fba790c4b:   xor    %r12,%r14
   0.03%    ││ │    0x00007f3fba790c4e:   mov    %r10,%r12
   0.22%    ││ │    0x00007f3fba790c51:   and    %rax,%r12
   0.18%    ││ │    0x00007f3fba790c54:   add    %r13,%r15
   0.06%    ││ │    0x00007f3fba790c57:   or     %r12,%rdi
   0.06%    ││ │    0x00007f3fba790c5a:   add    %r14,%r9
   0.22%    ││ │    0x00007f3fba790c5d:   add    %r15,%rbx
   0.20%    ││ │    0x00007f3fba790c60:   add    %r15,%r9
   0.06%    ││ │    0x00007f3fba790c63:   add    %rdi,%r9
   0.06%    ││ │    0x00007f3fba790c66:   vpsrlq $0x13,%ymm4,%ymm3
   0.20%    ││ │    0x00007f3fba790c6b:   vpsllq $0x2d,%ymm4,%ymm1
   0.17%    ││ │    0x00007f3fba790c70:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007f3fba790c74:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f3fba790c78:   vpsrlq $0x3d,%ymm4,%ymm3
   0.22%    ││ │    0x00007f3fba790c7d:   vpsllq $0x3,%ymm4,%ymm1
   0.17%    ││ │    0x00007f3fba790c82:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007f3fba790c86:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007f3fba790c8a:   vpaddq %ymm8,%ymm0,%ymm2
   0.20%    ││ │    0x00007f3fba790c8f:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.27%    ││ │    0x00007f3fba790c95:   mov    %r9,%rdi
   0.06%    ││ │    0x00007f3fba790c98:   rorx   $0x29,%rbx,%r13
   0.04%    ││ │    0x00007f3fba790c9e:   rorx   $0x12,%rbx,%r14
   0.20%    ││ │    0x00007f3fba790ca4:   add    0x18(%rsp),%rdx
   0.22%    ││ │    0x00007f3fba790ca9:   or     %r11,%rdi
   0.08%    ││ │    0x00007f3fba790cac:   mov    %rcx,%r15
   0.04%    ││ │    0x00007f3fba790caf:   xor    %r8,%r15
   0.16%    ││ │    0x00007f3fba790cb2:   rorx   $0x22,%r9,%r12
   0.26%    ││ │    0x00007f3fba790cb8:   xor    %r14,%r13
   0.08%    ││ │    0x00007f3fba790cbb:   rorx   $0xe,%rbx,%r14
   0.03%    ││ │    0x00007f3fba790cc1:   and    %rbx,%r15
   0.15%    ││ │    0x00007f3fba790cc4:   add    %rdx,%rax
   0.22%    ││ │    0x00007f3fba790cc7:   and    %r10,%rdi
   0.06%    ││ │    0x00007f3fba790cca:   xor    %r14,%r13
   0.04%    ││ │    0x00007f3fba790ccd:   rorx   $0x27,%r9,%r14
   0.16%    ││ │    0x00007f3fba790cd3:   xor    %r12,%r14
   0.20%    ││ │    0x00007f3fba790cd6:   rorx   $0x1c,%r9,%r12
   0.05%    ││ │    0x00007f3fba790cdc:   xor    %r8,%r15
   0.06%    ││ │    0x00007f3fba790cdf:   xor    %r12,%r14
   0.19%    ││ │    0x00007f3fba790ce2:   mov    %r9,%r12
   0.21%    ││ │    0x00007f3fba790ce5:   and    %r11,%r12
   0.05%    ││ │    0x00007f3fba790ce8:   add    %r13,%r15
   0.02%    ││ │    0x00007f3fba790ceb:   or     %r12,%rdi
   0.17%    ││ │    0x00007f3fba790cee:   add    %r14,%rdx
   0.21%    ││ │    0x00007f3fba790cf1:   add    %r15,%rax
   0.07%    ││ │    0x00007f3fba790cf4:   add    %r15,%rdx
   0.04%    ││ │    0x00007f3fba790cf7:   add    %rdi,%rdx
   0.17%    ││ │    0x00007f3fba790cfa:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.23%    ││ │    0x00007f3fba790cff:   vmovdqu %ymm0,(%rsp)
   0.07%    ││ │    0x00007f3fba790d04:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.04%    ││ │    0x00007f3fba790d0a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.17%    ││ │    0x00007f3fba790d10:   vpaddq %ymm5,%ymm0,%ymm0
   0.30%    ││ │    0x00007f3fba790d14:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.04%    ││ │    0x00007f3fba790d1a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.05%    ││ │    0x00007f3fba790d20:   vpsrlq $0x1,%ymm1,%ymm2
   0.19%    ││ │    0x00007f3fba790d25:   vpsllq $0x3f,%ymm1,%ymm3
   0.21%    ││ │    0x00007f3fba790d2a:   vpor   %ymm2,%ymm3,%ymm3
   0.06%    ││ │    0x00007f3fba790d2e:   vpsrlq $0x7,%ymm1,%ymm8
   0.03%    ││ │    0x00007f3fba790d33:   mov    %rdx,%rdi
   0.19%    ││ │    0x00007f3fba790d36:   rorx   $0x29,%rax,%r13
   0.19%    ││ │    0x00007f3fba790d3c:   rorx   $0x12,%rax,%r14
   0.08%    ││ │    0x00007f3fba790d42:   add    (%rsp),%r8
   0.02%    ││ │    0x00007f3fba790d46:   or     %r10,%rdi
   0.20%    ││ │    0x00007f3fba790d49:   mov    %rbx,%r15
   0.20%    ││ │    0x00007f3fba790d4c:   xor    %rcx,%r15
   0.07%    ││ │    0x00007f3fba790d4f:   rorx   $0x22,%rdx,%r12
   0.04%    ││ │    0x00007f3fba790d55:   xor    %r14,%r13
   0.16%    ││ │    0x00007f3fba790d58:   rorx   $0xe,%rax,%r14
   0.22%    ││ │    0x00007f3fba790d5e:   and    %rax,%r15
   0.08%    ││ │    0x00007f3fba790d61:   add    %r8,%r11
   0.04%    ││ │    0x00007f3fba790d64:   and    %r9,%rdi
   0.15%    ││ │    0x00007f3fba790d67:   xor    %r14,%r13
   0.22%    ││ │    0x00007f3fba790d6a:   rorx   $0x27,%rdx,%r14
   0.07%    ││ │    0x00007f3fba790d70:   xor    %r12,%r14
   0.04%    ││ │    0x00007f3fba790d73:   rorx   $0x1c,%rdx,%r12
   0.17%    ││ │    0x00007f3fba790d79:   xor    %rcx,%r15
   0.19%    ││ │    0x00007f3fba790d7c:   xor    %r12,%r14
   0.07%    ││ │    0x00007f3fba790d7f:   mov    %rdx,%r12
   0.03%    ││ │    0x00007f3fba790d82:   and    %r10,%r12
   0.17%    ││ │    0x00007f3fba790d85:   add    %r13,%r15
   0.22%    ││ │    0x00007f3fba790d88:   or     %r12,%rdi
   0.09%    ││ │    0x00007f3fba790d8b:   add    %r14,%r8
   0.04%    ││ │    0x00007f3fba790d8e:   add    %r15,%r11
   0.17%    ││ │    0x00007f3fba790d91:   add    %r15,%r8
   0.17%    ││ │    0x00007f3fba790d94:   add    %rdi,%r8
   0.08%    ││ │    0x00007f3fba790d97:   vpsrlq $0x8,%ymm1,%ymm2
   0.03%    ││ │    0x00007f3fba790d9c:   vpsllq $0x38,%ymm1,%ymm1
   0.16%    ││ │    0x00007f3fba790da1:   vpor   %ymm2,%ymm1,%ymm1
   0.20%    ││ │    0x00007f3fba790da5:   vpxor  %ymm8,%ymm3,%ymm3
   0.06%    ││ │    0x00007f3fba790daa:   vpxor  %ymm1,%ymm3,%ymm1
   0.05%    ││ │    0x00007f3fba790dae:   vpaddq %ymm1,%ymm0,%ymm0
   0.15%    ││ │    0x00007f3fba790db2:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.23%    ││ │    0x00007f3fba790db8:   vpand  %ymm10,%ymm0,%ymm0
   0.06%    ││ │    0x00007f3fba790dbd:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.02%    ││ │    0x00007f3fba790dc3:   vpsrlq $0x6,%ymm2,%ymm8
   0.16%    ││ │    0x00007f3fba790dc8:   mov    %r8,%rdi
   0.18%    ││ │    0x00007f3fba790dcb:   rorx   $0x29,%r11,%r13
   0.07%    ││ │    0x00007f3fba790dd1:   rorx   $0x12,%r11,%r14
   0.04%    ││ │    0x00007f3fba790dd7:   add    0x8(%rsp),%rcx
   0.18%    ││ │    0x00007f3fba790ddc:   or     %r9,%rdi
   0.25%    ││ │    0x00007f3fba790ddf:   mov    %rax,%r15
   0.07%    ││ │    0x00007f3fba790de2:   xor    %rbx,%r15
   0.04%    ││ │    0x00007f3fba790de5:   rorx   $0x22,%r8,%r12
   0.18%    ││ │    0x00007f3fba790deb:   xor    %r14,%r13
   0.17%    ││ │    0x00007f3fba790dee:   rorx   $0xe,%r11,%r14
   0.07%    ││ │    0x00007f3fba790df4:   and    %r11,%r15
   0.04%    ││ │    0x00007f3fba790df7:   add    %rcx,%r10
   0.16%    ││ │    0x00007f3fba790dfa:   and    %rdx,%rdi
   0.22%    ││ │    0x00007f3fba790dfd:   xor    %r14,%r13
   0.07%    ││ │    0x00007f3fba790e00:   rorx   $0x27,%r8,%r14
   0.04%    ││ │    0x00007f3fba790e06:   xor    %r12,%r14
   0.20%    ││ │    0x00007f3fba790e09:   rorx   $0x1c,%r8,%r12
   0.22%    ││ │    0x00007f3fba790e0f:   xor    %rbx,%r15
   0.07%    ││ │    0x00007f3fba790e12:   xor    %r12,%r14
   0.05%    ││ │    0x00007f3fba790e15:   mov    %r8,%r12
   0.18%    ││ │    0x00007f3fba790e18:   and    %r9,%r12
   0.20%    ││ │    0x00007f3fba790e1b:   add    %r13,%r15
   0.08%    ││ │    0x00007f3fba790e1e:   or     %r12,%rdi
   0.05%    ││ │    0x00007f3fba790e21:   add    %r14,%rcx
   0.14%    ││ │    0x00007f3fba790e24:   add    %r15,%r10
   0.20%    ││ │    0x00007f3fba790e27:   add    %r15,%rcx
   0.07%    ││ │    0x00007f3fba790e2a:   add    %rdi,%rcx
   0.03%    ││ │    0x00007f3fba790e2d:   vpsrlq $0x13,%ymm2,%ymm3
   0.17%    ││ │    0x00007f3fba790e32:   vpsllq $0x2d,%ymm2,%ymm1
   0.19%    ││ │    0x00007f3fba790e37:   vpor   %ymm1,%ymm3,%ymm3
   0.10%    ││ │    0x00007f3fba790e3b:   vpxor  %ymm3,%ymm8,%ymm8
   0.03%    ││ │    0x00007f3fba790e3f:   vpsrlq $0x3d,%ymm2,%ymm3
   0.17%    ││ │    0x00007f3fba790e44:   vpsllq $0x3,%ymm2,%ymm1
   0.21%    ││ │    0x00007f3fba790e49:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007f3fba790e4d:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f3fba790e51:   vpaddq %ymm8,%ymm5,%ymm5
   0.15%    ││ │    0x00007f3fba790e56:   vpsrlq $0x6,%ymm5,%ymm8
   0.27%    ││ │    0x00007f3fba790e5b:   mov    %rcx,%rdi
   0.08%    ││ │    0x00007f3fba790e5e:   rorx   $0x29,%r10,%r13
   0.04%    ││ │    0x00007f3fba790e64:   rorx   $0x12,%r10,%r14
   0.14%    ││ │    0x00007f3fba790e6a:   add    0x10(%rsp),%rbx
   0.22%    ││ │    0x00007f3fba790e6f:   or     %rdx,%rdi
   0.05%    ││ │    0x00007f3fba790e72:   mov    %r11,%r15
   0.04%    ││ │    0x00007f3fba790e75:   xor    %rax,%r15
   0.16%    ││ │    0x00007f3fba790e78:   rorx   $0x22,%rcx,%r12
   0.21%    ││ │    0x00007f3fba790e7e:   xor    %r14,%r13
   0.09%    ││ │    0x00007f3fba790e81:   rorx   $0xe,%r10,%r14
   0.03%    ││ │    0x00007f3fba790e87:   and    %r10,%r15
   0.16%    ││ │    0x00007f3fba790e8a:   add    %rbx,%r9
   0.21%    ││ │    0x00007f3fba790e8d:   and    %r8,%rdi
   0.06%    ││ │    0x00007f3fba790e90:   xor    %r14,%r13
   0.04%    ││ │    0x00007f3fba790e93:   rorx   $0x27,%rcx,%r14
   0.15%    ││ │    0x00007f3fba790e99:   xor    %r12,%r14
   0.26%    ││ │    0x00007f3fba790e9c:   rorx   $0x1c,%rcx,%r12
   0.09%    ││ │    0x00007f3fba790ea2:   xor    %rax,%r15
   0.04%    ││ │    0x00007f3fba790ea5:   xor    %r12,%r14
   0.15%    ││ │    0x00007f3fba790ea8:   mov    %rcx,%r12
   0.21%    ││ │    0x00007f3fba790eab:   and    %rdx,%r12
   0.07%    ││ │    0x00007f3fba790eae:   add    %r13,%r15
   0.03%    ││ │    0x00007f3fba790eb1:   or     %r12,%rdi
   0.18%    ││ │    0x00007f3fba790eb4:   add    %r14,%rbx
   0.23%    ││ │    0x00007f3fba790eb7:   add    %r15,%r9
   0.10%    ││ │    0x00007f3fba790eba:   add    %r15,%rbx
   0.04%    ││ │    0x00007f3fba790ebd:   add    %rdi,%rbx
   0.14%    ││ │    0x00007f3fba790ec0:   vpsrlq $0x13,%ymm5,%ymm3
   0.23%    ││ │    0x00007f3fba790ec5:   vpsllq $0x2d,%ymm5,%ymm1
   0.09%    ││ │    0x00007f3fba790eca:   vpor   %ymm1,%ymm3,%ymm3
   0.02%    ││ │    0x00007f3fba790ece:   vpxor  %ymm3,%ymm8,%ymm8
   0.15%    ││ │    0x00007f3fba790ed2:   vpsrlq $0x3d,%ymm5,%ymm3
   0.20%    ││ │    0x00007f3fba790ed7:   vpsllq $0x3,%ymm5,%ymm1
   0.11%    ││ │    0x00007f3fba790edc:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007f3fba790ee0:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%    ││ │    0x00007f3fba790ee4:   vpaddq %ymm8,%ymm0,%ymm2
   0.28%    ││ │    0x00007f3fba790ee9:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.13%    ││ │    0x00007f3fba790eef:   mov    %rbx,%rdi
   0.04%    ││ │    0x00007f3fba790ef2:   rorx   $0x29,%r9,%r13
   0.15%    ││ │    0x00007f3fba790ef8:   rorx   $0x12,%r9,%r14
   0.20%    ││ │    0x00007f3fba790efe:   add    0x18(%rsp),%rax
   0.11%    ││ │    0x00007f3fba790f03:   or     %r8,%rdi
   0.05%    ││ │    0x00007f3fba790f06:   mov    %r10,%r15
   0.16%    ││ │    0x00007f3fba790f09:   xor    %r11,%r15
   0.19%    ││ │    0x00007f3fba790f0c:   rorx   $0x22,%rbx,%r12
   0.11%    ││ │    0x00007f3fba790f12:   xor    %r14,%r13
   0.03%    ││ │    0x00007f3fba790f15:   rorx   $0xe,%r9,%r14
   0.12%    ││ │    0x00007f3fba790f1b:   and    %r9,%r15
   0.21%    ││ │    0x00007f3fba790f1e:   add    %rax,%rdx
   0.11%    ││ │    0x00007f3fba790f21:   and    %rcx,%rdi
   0.04%    ││ │    0x00007f3fba790f24:   xor    %r14,%r13
   0.11%    ││ │    0x00007f3fba790f27:   rorx   $0x27,%rbx,%r14
   0.21%    ││ │    0x00007f3fba790f2d:   xor    %r12,%r14
   0.13%    ││ │    0x00007f3fba790f30:   rorx   $0x1c,%rbx,%r12
   0.03%    ││ │    0x00007f3fba790f36:   xor    %r11,%r15
   0.14%    ││ │    0x00007f3fba790f39:   xor    %r12,%r14
   0.21%    ││ │    0x00007f3fba790f3c:   mov    %rbx,%r12
   0.11%    ││ │    0x00007f3fba790f3f:   and    %r8,%r12
   0.03%    ││ │    0x00007f3fba790f42:   add    %r13,%r15
   0.13%    ││ │    0x00007f3fba790f45:   or     %r12,%rdi
   0.26%    ││ │    0x00007f3fba790f48:   add    %r14,%rax
   0.11%    ││ │    0x00007f3fba790f4b:   add    %r15,%rdx
   0.04%    ││ │    0x00007f3fba790f4e:   add    %r15,%rax
   0.15%    ││ │    0x00007f3fba790f51:   add    %rdi,%rax
   0.20%    ││ │    0x00007f3fba790f54:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.10%    ││ │    0x00007f3fba790f59:   vmovdqu %ymm0,(%rsp)
   0.04%    ││ │    0x00007f3fba790f5e:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.11%    ││ │    0x00007f3fba790f64:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.18%    ││ │    0x00007f3fba790f6a:   vpaddq %ymm6,%ymm0,%ymm0
   0.20%    ││ │    0x00007f3fba790f6e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.04%    ││ │    0x00007f3fba790f74:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.13%    ││ │    0x00007f3fba790f7a:   vpsrlq $0x1,%ymm1,%ymm2
   0.21%    ││ │    0x00007f3fba790f7f:   vpsllq $0x3f,%ymm1,%ymm3
   0.16%    ││ │    0x00007f3fba790f84:   vpor   %ymm2,%ymm3,%ymm3
   0.05%    ││ │    0x00007f3fba790f88:   vpsrlq $0x7,%ymm1,%ymm8
   0.15%    ││ │    0x00007f3fba790f8d:   mov    %rax,%rdi
   0.18%    ││ │    0x00007f3fba790f90:   rorx   $0x29,%rdx,%r13
   0.17%    ││ │    0x00007f3fba790f96:   rorx   $0x12,%rdx,%r14
   0.04%    ││ │    0x00007f3fba790f9c:   add    (%rsp),%r11
   0.13%    ││ │    0x00007f3fba790fa0:   or     %rcx,%rdi
   0.17%    ││ │    0x00007f3fba790fa3:   mov    %r9,%r15
   0.13%    ││ │    0x00007f3fba790fa6:   xor    %r10,%r15
   0.04%    ││ │    0x00007f3fba790fa9:   rorx   $0x22,%rax,%r12
   0.14%    ││ │    0x00007f3fba790faf:   xor    %r14,%r13
   0.18%    ││ │    0x00007f3fba790fb2:   rorx   $0xe,%rdx,%r14
   0.16%    ││ │    0x00007f3fba790fb8:   and    %rdx,%r15
   0.04%    ││ │    0x00007f3fba790fbb:   add    %r11,%r8
   0.13%    ││ │    0x00007f3fba790fbe:   and    %rbx,%rdi
   0.15%    ││ │    0x00007f3fba790fc1:   xor    %r14,%r13
   0.13%    ││ │    0x00007f3fba790fc4:   rorx   $0x27,%rax,%r14
   0.05%    ││ │    0x00007f3fba790fca:   xor    %r12,%r14
   0.15%    ││ │    0x00007f3fba790fcd:   rorx   $0x1c,%rax,%r12
   0.18%    ││ │    0x00007f3fba790fd3:   xor    %r10,%r15
   0.15%    ││ │    0x00007f3fba790fd6:   xor    %r12,%r14
   0.03%    ││ │    0x00007f3fba790fd9:   mov    %rax,%r12
   0.13%    ││ │    0x00007f3fba790fdc:   and    %rcx,%r12
   0.23%    ││ │    0x00007f3fba790fdf:   add    %r13,%r15
   0.14%    ││ │    0x00007f3fba790fe2:   or     %r12,%rdi
   0.03%    ││ │    0x00007f3fba790fe5:   add    %r14,%r11
   0.17%    ││ │    0x00007f3fba790fe8:   add    %r15,%r8
   0.18%    ││ │    0x00007f3fba790feb:   add    %r15,%r11
   0.13%    ││ │    0x00007f3fba790fee:   add    %rdi,%r11
   0.05%    ││ │    0x00007f3fba790ff1:   vpsrlq $0x8,%ymm1,%ymm2
   0.12%    ││ │    0x00007f3fba790ff6:   vpsllq $0x38,%ymm1,%ymm1
   0.22%    ││ │    0x00007f3fba790ffb:   vpor   %ymm2,%ymm1,%ymm1
   0.14%    ││ │    0x00007f3fba790fff:   vpxor  %ymm8,%ymm3,%ymm3
   0.05%    ││ │    0x00007f3fba791004:   vpxor  %ymm1,%ymm3,%ymm1
   0.14%    ││ │    0x00007f3fba791008:   vpaddq %ymm1,%ymm0,%ymm0
   0.19%    ││ │    0x00007f3fba79100c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.15%    ││ │    0x00007f3fba791012:   vpand  %ymm10,%ymm0,%ymm0
   0.07%    ││ │    0x00007f3fba791017:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.14%    ││ │    0x00007f3fba79101d:   vpsrlq $0x6,%ymm2,%ymm8
   0.17%    ││ │    0x00007f3fba791022:   mov    %r11,%rdi
   0.17%    ││ │    0x00007f3fba791025:   rorx   $0x29,%r8,%r13
   0.05%    ││ │    0x00007f3fba79102b:   rorx   $0x12,%r8,%r14
   0.12%    ││ │    0x00007f3fba791031:   add    0x8(%rsp),%r10
   0.19%    ││ │    0x00007f3fba791036:   or     %rbx,%rdi
   0.13%    ││ │    0x00007f3fba791039:   mov    %rdx,%r15
   0.05%    ││ │    0x00007f3fba79103c:   xor    %r9,%r15
   0.15%    ││ │    0x00007f3fba79103f:   rorx   $0x22,%r11,%r12
   0.17%    ││ │    0x00007f3fba791045:   xor    %r14,%r13
   0.15%    ││ │    0x00007f3fba791048:   rorx   $0xe,%r8,%r14
   0.05%    ││ │    0x00007f3fba79104e:   and    %r8,%r15
   0.12%    ││ │    0x00007f3fba791051:   add    %r10,%rcx
   0.17%    ││ │    0x00007f3fba791054:   and    %rax,%rdi
   0.17%    ││ │    0x00007f3fba791057:   xor    %r14,%r13
   0.06%    ││ │    0x00007f3fba79105a:   rorx   $0x27,%r11,%r14
   0.11%    ││ │    0x00007f3fba791060:   xor    %r12,%r14
   0.20%    ││ │    0x00007f3fba791063:   rorx   $0x1c,%r11,%r12
   0.16%    ││ │    0x00007f3fba791069:   xor    %r9,%r15
   0.04%    ││ │    0x00007f3fba79106c:   xor    %r12,%r14
   0.13%    ││ │    0x00007f3fba79106f:   mov    %r11,%r12
   0.19%    ││ │    0x00007f3fba791072:   and    %rbx,%r12
   0.13%    ││ │    0x00007f3fba791075:   add    %r13,%r15
   0.06%    ││ │    0x00007f3fba791078:   or     %r12,%rdi
   0.13%    ││ │    0x00007f3fba79107b:   add    %r14,%r10
   0.13%    ││ │    0x00007f3fba79107e:   add    %r15,%rcx
   0.15%    ││ │    0x00007f3fba791081:   add    %r15,%r10
   0.05%    ││ │    0x00007f3fba791084:   add    %rdi,%r10
   0.14%    ││ │    0x00007f3fba791087:   vpsrlq $0x13,%ymm2,%ymm3
   0.17%    ││ │    0x00007f3fba79108c:   vpsllq $0x2d,%ymm2,%ymm1
   0.15%    ││ │    0x00007f3fba791091:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007f3fba791095:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%    ││ │    0x00007f3fba791099:   vpsrlq $0x3d,%ymm2,%ymm3
   0.15%    ││ │    0x00007f3fba79109e:   vpsllq $0x3,%ymm2,%ymm1
   0.15%    ││ │    0x00007f3fba7910a3:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007f3fba7910a7:   vpxor  %ymm3,%ymm8,%ymm8
   0.16%    ││ │    0x00007f3fba7910ab:   vpaddq %ymm8,%ymm6,%ymm6
   0.16%    ││ │    0x00007f3fba7910b0:   vpsrlq $0x6,%ymm6,%ymm8
   0.16%    ││ │    0x00007f3fba7910b5:   mov    %r10,%rdi
   0.06%    ││ │    0x00007f3fba7910b8:   rorx   $0x29,%rcx,%r13
   0.13%    ││ │    0x00007f3fba7910be:   rorx   $0x12,%rcx,%r14
   0.13%    ││ │    0x00007f3fba7910c4:   add    0x10(%rsp),%r9
   0.17%    ││ │    0x00007f3fba7910c9:   or     %rax,%rdi
   0.06%    ││ │    0x00007f3fba7910cc:   mov    %r8,%r15
   0.13%    ││ │    0x00007f3fba7910cf:   xor    %rdx,%r15
   0.16%    ││ │    0x00007f3fba7910d2:   rorx   $0x22,%r10,%r12
   0.18%    ││ │    0x00007f3fba7910d8:   xor    %r14,%r13
   0.05%    ││ │    0x00007f3fba7910db:   rorx   $0xe,%rcx,%r14
   0.10%    ││ │    0x00007f3fba7910e1:   and    %rcx,%r15
   0.15%    ││ │    0x00007f3fba7910e4:   add    %r9,%rbx
   0.16%    ││ │    0x00007f3fba7910e7:   and    %r11,%rdi
   0.04%    ││ │    0x00007f3fba7910ea:   xor    %r14,%r13
   0.14%    ││ │    0x00007f3fba7910ed:   rorx   $0x27,%r10,%r14
   0.15%    ││ │    0x00007f3fba7910f3:   xor    %r12,%r14
   0.15%    ││ │    0x00007f3fba7910f6:   rorx   $0x1c,%r10,%r12
   0.04%    ││ │    0x00007f3fba7910fc:   xor    %rdx,%r15
   0.13%    ││ │    0x00007f3fba7910ff:   xor    %r12,%r14
   0.14%    ││ │    0x00007f3fba791102:   mov    %r10,%r12
   0.19%    ││ │    0x00007f3fba791105:   and    %rax,%r12
   0.04%    ││ │    0x00007f3fba791108:   add    %r13,%r15
   0.12%    ││ │    0x00007f3fba79110b:   or     %r12,%rdi
   0.14%    ││ │    0x00007f3fba79110e:   add    %r14,%r9
   0.14%    ││ │    0x00007f3fba791111:   add    %r15,%rbx
   0.06%    ││ │    0x00007f3fba791114:   add    %r15,%r9
   0.13%    ││ │    0x00007f3fba791117:   add    %rdi,%r9
   0.16%    ││ │    0x00007f3fba79111a:   vpsrlq $0x13,%ymm6,%ymm3
   0.19%    ││ │    0x00007f3fba79111f:   vpsllq $0x2d,%ymm6,%ymm1
   0.04%    ││ │    0x00007f3fba791124:   vpor   %ymm1,%ymm3,%ymm3
   0.11%    ││ │    0x00007f3fba791128:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%    ││ │    0x00007f3fba79112c:   vpsrlq $0x3d,%ymm6,%ymm3
   0.17%    ││ │    0x00007f3fba791131:   vpsllq $0x3,%ymm6,%ymm1
   0.04%    ││ │    0x00007f3fba791136:   vpor   %ymm1,%ymm3,%ymm3
   0.14%    ││ │    0x00007f3fba79113a:   vpxor  %ymm3,%ymm8,%ymm8
   0.18%    ││ │    0x00007f3fba79113e:   vpaddq %ymm8,%ymm0,%ymm2
   0.15%    ││ │    0x00007f3fba791143:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.15%    ││ │    0x00007f3fba791149:   mov    %r9,%rdi
   0.11%    ││ │    0x00007f3fba79114c:   rorx   $0x29,%rbx,%r13
   0.17%    ││ │    0x00007f3fba791152:   rorx   $0x12,%rbx,%r14
   0.13%    ││ │    0x00007f3fba791158:   add    0x18(%rsp),%rdx
   0.14%    ││ │    0x00007f3fba79115d:   or     %r11,%rdi
   0.11%    ││ │    0x00007f3fba791160:   mov    %rcx,%r15
   0.14%    ││ │    0x00007f3fba791163:   xor    %r8,%r15
   0.16%    ││ │    0x00007f3fba791166:   rorx   $0x22,%r9,%r12
   0.14%    ││ │    0x00007f3fba79116c:   xor    %r14,%r13
   0.09%    ││ │    0x00007f3fba79116f:   rorx   $0xe,%rbx,%r14
   0.13%    ││ │    0x00007f3fba791175:   and    %rbx,%r15
   0.13%    ││ │    0x00007f3fba791178:   add    %rdx,%rax
   0.10%    ││ │    0x00007f3fba79117b:   and    %r10,%rdi
   0.13%    ││ │    0x00007f3fba79117e:   xor    %r14,%r13
   0.14%    ││ │    0x00007f3fba791181:   rorx   $0x27,%r9,%r14
   0.15%    ││ │    0x00007f3fba791187:   xor    %r12,%r14
   0.10%    ││ │    0x00007f3fba79118a:   rorx   $0x1c,%r9,%r12
   0.10%    ││ │    0x00007f3fba791190:   xor    %r8,%r15
   0.15%    ││ │    0x00007f3fba791193:   xor    %r12,%r14
   0.12%    ││ │    0x00007f3fba791196:   mov    %r9,%r12
   0.11%    ││ │    0x00007f3fba791199:   and    %r11,%r12
   0.13%    ││ │    0x00007f3fba79119c:   add    %r13,%r15
   0.11%    ││ │    0x00007f3fba79119f:   or     %r12,%rdi
   0.14%    ││ │    0x00007f3fba7911a2:   add    %r14,%rdx
   0.12%    ││ │    0x00007f3fba7911a5:   add    %r15,%rax
   0.12%    ││ │    0x00007f3fba7911a8:   add    %r15,%rdx
   0.12%    ││ │    0x00007f3fba7911ab:   add    %rdi,%rdx
   0.14%    ││ │    0x00007f3fba7911ae:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.10%    ││ │    0x00007f3fba7911b3:   vmovdqu %ymm0,(%rsp)
   0.08%    ││ │    0x00007f3fba7911b8:   add    $0x80,%rbp
   0.11%    ││ │    0x00007f3fba7911bf:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.15%    ││ │    0x00007f3fba7911c5:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.12%    ││ │    0x00007f3fba7911cb:   vpaddq %ymm7,%ymm0,%ymm0
   0.23%    ││ │    0x00007f3fba7911cf:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.12%    ││ │    0x00007f3fba7911d5:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.16%    ││ │    0x00007f3fba7911db:   vpsrlq $0x1,%ymm1,%ymm2
   0.10%    ││ │    0x00007f3fba7911e0:   vpsllq $0x3f,%ymm1,%ymm3
   0.18%    ││ │    0x00007f3fba7911e5:   vpor   %ymm2,%ymm3,%ymm3
   0.14%    ││ │    0x00007f3fba7911e9:   vpsrlq $0x7,%ymm1,%ymm8
   0.11%    ││ │    0x00007f3fba7911ee:   mov    %rdx,%rdi
   0.08%    ││ │    0x00007f3fba7911f1:   rorx   $0x29,%rax,%r13
   0.15%    ││ │    0x00007f3fba7911f7:   rorx   $0x12,%rax,%r14
   0.14%    ││ │    0x00007f3fba7911fd:   add    (%rsp),%r8
   0.11%    ││ │    0x00007f3fba791201:   or     %r10,%rdi
   0.08%    ││ │    0x00007f3fba791204:   mov    %rbx,%r15
   0.15%    ││ │    0x00007f3fba791207:   xor    %rcx,%r15
   0.14%    ││ │    0x00007f3fba79120a:   rorx   $0x22,%rdx,%r12
   0.13%    ││ │    0x00007f3fba791210:   xor    %r14,%r13
   0.11%    ││ │    0x00007f3fba791213:   rorx   $0xe,%rax,%r14
   0.16%    ││ │    0x00007f3fba791219:   and    %rax,%r15
   0.14%    ││ │    0x00007f3fba79121c:   add    %r8,%r11
   0.12%    ││ │    0x00007f3fba79121f:   and    %r9,%rdi
   0.10%    ││ │    0x00007f3fba791222:   xor    %r14,%r13
   0.18%    ││ │    0x00007f3fba791225:   rorx   $0x27,%rdx,%r14
   0.18%    ││ │    0x00007f3fba79122b:   xor    %r12,%r14
   0.10%    ││ │    0x00007f3fba79122e:   rorx   $0x1c,%rdx,%r12
   0.09%    ││ │    0x00007f3fba791234:   xor    %rcx,%r15
   0.14%    ││ │    0x00007f3fba791237:   xor    %r12,%r14
   0.13%    ││ │    0x00007f3fba79123a:   mov    %rdx,%r12
   0.08%    ││ │    0x00007f3fba79123d:   and    %r10,%r12
   0.10%    ││ │    0x00007f3fba791240:   add    %r13,%r15
   0.12%    ││ │    0x00007f3fba791243:   or     %r12,%rdi
   0.11%    ││ │    0x00007f3fba791246:   add    %r14,%r8
   0.09%    ││ │    0x00007f3fba791249:   add    %r15,%r11
   0.11%    ││ │    0x00007f3fba79124c:   add    %r15,%r8
   0.16%    ││ │    0x00007f3fba79124f:   add    %rdi,%r8
   0.12%    ││ │    0x00007f3fba791252:   vpsrlq $0x8,%ymm1,%ymm2
   0.11%    ││ │    0x00007f3fba791257:   vpsllq $0x38,%ymm1,%ymm1
   0.11%    ││ │    0x00007f3fba79125c:   vpor   %ymm2,%ymm1,%ymm1
   0.18%    ││ │    0x00007f3fba791260:   vpxor  %ymm8,%ymm3,%ymm3
   0.12%    ││ │    0x00007f3fba791265:   vpxor  %ymm1,%ymm3,%ymm1
   0.13%    ││ │    0x00007f3fba791269:   vpaddq %ymm1,%ymm0,%ymm0
   0.12%    ││ │    0x00007f3fba79126d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.13%    ││ │    0x00007f3fba791273:   vpand  %ymm10,%ymm0,%ymm0
   0.13%    ││ │    0x00007f3fba791278:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.10%    ││ │    0x00007f3fba79127e:   vpsrlq $0x6,%ymm2,%ymm8
   0.11%    ││ │    0x00007f3fba791283:   mov    %r8,%rdi
   0.15%    ││ │    0x00007f3fba791286:   rorx   $0x29,%r11,%r13
   0.19%    ││ │    0x00007f3fba79128c:   rorx   $0x12,%r11,%r14
   0.09%    ││ │    0x00007f3fba791292:   add    0x8(%rsp),%rcx
   0.11%    ││ │    0x00007f3fba791297:   or     %r9,%rdi
   0.12%    ││ │    0x00007f3fba79129a:   mov    %rax,%r15
   0.14%    ││ │    0x00007f3fba79129d:   xor    %rbx,%r15
   0.12%    ││ │    0x00007f3fba7912a0:   rorx   $0x22,%r8,%r12
   0.08%    ││ │    0x00007f3fba7912a6:   xor    %r14,%r13
   0.16%    ││ │    0x00007f3fba7912a9:   rorx   $0xe,%r11,%r14
   0.16%    ││ │    0x00007f3fba7912af:   and    %r11,%r15
   0.12%    ││ │    0x00007f3fba7912b2:   add    %rcx,%r10
   0.09%    ││ │    0x00007f3fba7912b5:   and    %rdx,%rdi
   0.17%    ││ │    0x00007f3fba7912b8:   xor    %r14,%r13
   0.14%    ││ │    0x00007f3fba7912bb:   rorx   $0x27,%r8,%r14
   0.09%    ││ │    0x00007f3fba7912c1:   xor    %r12,%r14
   0.08%    ││ │    0x00007f3fba7912c4:   rorx   $0x1c,%r8,%r12
   0.15%    ││ │    0x00007f3fba7912ca:   xor    %rbx,%r15
   0.15%    ││ │    0x00007f3fba7912cd:   xor    %r12,%r14
   0.10%    ││ │    0x00007f3fba7912d0:   mov    %r8,%r12
   0.09%    ││ │    0x00007f3fba7912d3:   and    %r9,%r12
   0.15%    ││ │    0x00007f3fba7912d6:   add    %r13,%r15
   0.14%    ││ │    0x00007f3fba7912d9:   or     %r12,%rdi
   0.10%    ││ │    0x00007f3fba7912dc:   add    %r14,%rcx
   0.08%    ││ │    0x00007f3fba7912df:   add    %r15,%r10
   0.12%    ││ │    0x00007f3fba7912e2:   add    %r15,%rcx
   0.14%    ││ │    0x00007f3fba7912e5:   add    %rdi,%rcx
   0.11%    ││ │    0x00007f3fba7912e8:   vpsrlq $0x13,%ymm2,%ymm3
   0.10%    ││ │    0x00007f3fba7912ed:   vpsllq $0x2d,%ymm2,%ymm1
   0.14%    ││ │    0x00007f3fba7912f2:   vpor   %ymm1,%ymm3,%ymm3
   0.16%    ││ │    0x00007f3fba7912f6:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%    ││ │    0x00007f3fba7912fa:   vpsrlq $0x3d,%ymm2,%ymm3
   0.11%    ││ │    0x00007f3fba7912ff:   vpsllq $0x3,%ymm2,%ymm1
   0.18%    ││ │    0x00007f3fba791304:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007f3fba791308:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%    ││ │    0x00007f3fba79130c:   vpaddq %ymm8,%ymm7,%ymm7
   0.08%    ││ │    0x00007f3fba791311:   vpsrlq $0x6,%ymm7,%ymm8
   0.16%    ││ │    0x00007f3fba791316:   mov    %rcx,%rdi
   0.14%    ││ │    0x00007f3fba791319:   rorx   $0x29,%r10,%r13
   0.12%    ││ │    0x00007f3fba79131f:   rorx   $0x12,%r10,%r14
   0.10%    ││ │    0x00007f3fba791325:   add    0x10(%rsp),%rbx
   0.18%    ││ │    0x00007f3fba79132a:   or     %rdx,%rdi
   0.13%    ││ │    0x00007f3fba79132d:   mov    %r11,%r15
   0.08%    ││ │    0x00007f3fba791330:   xor    %rax,%r15
   0.06%    ││ │    0x00007f3fba791333:   rorx   $0x22,%rcx,%r12
   0.18%    ││ │    0x00007f3fba791339:   xor    %r14,%r13
   0.17%    ││ │    0x00007f3fba79133c:   rorx   $0xe,%r10,%r14
   0.11%    ││ │    0x00007f3fba791342:   and    %r10,%r15
   0.06%    ││ │    0x00007f3fba791345:   add    %rbx,%r9
   0.18%    ││ │    0x00007f3fba791348:   and    %r8,%rdi
   0.14%    ││ │    0x00007f3fba79134b:   xor    %r14,%r13
   0.11%    ││ │    0x00007f3fba79134e:   rorx   $0x27,%rcx,%r14
   0.08%    ││ │    0x00007f3fba791354:   xor    %r12,%r14
   0.15%    ││ │    0x00007f3fba791357:   rorx   $0x1c,%rcx,%r12
   0.16%    ││ │    0x00007f3fba79135d:   xor    %rax,%r15
   0.09%    ││ │    0x00007f3fba791360:   xor    %r12,%r14
   0.08%    ││ │    0x00007f3fba791363:   mov    %rcx,%r12
   0.15%    ││ │    0x00007f3fba791366:   and    %rdx,%r12
   0.13%    ││ │    0x00007f3fba791369:   add    %r13,%r15
   0.11%    ││ │    0x00007f3fba79136c:   or     %r12,%rdi
   0.07%    ││ │    0x00007f3fba79136f:   add    %r14,%rbx
   0.17%    ││ │    0x00007f3fba791372:   add    %r15,%r9
   0.14%    ││ │    0x00007f3fba791375:   add    %r15,%rbx
   0.09%    ││ │    0x00007f3fba791378:   add    %rdi,%rbx
   0.06%    ││ │    0x00007f3fba79137b:   vpsrlq $0x13,%ymm7,%ymm3
   0.19%    ││ │    0x00007f3fba791380:   vpsllq $0x2d,%ymm7,%ymm1
   0.13%    ││ │    0x00007f3fba791385:   vpor   %ymm1,%ymm3,%ymm3
   0.12%    ││ │    0x00007f3fba791389:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%    ││ │    0x00007f3fba79138d:   vpsrlq $0x3d,%ymm7,%ymm3
   0.18%    ││ │    0x00007f3fba791392:   vpsllq $0x3,%ymm7,%ymm1
   0.14%    ││ │    0x00007f3fba791397:   vpor   %ymm1,%ymm3,%ymm3
   0.14%    ││ │    0x00007f3fba79139b:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%    ││ │    0x00007f3fba79139f:   vpaddq %ymm8,%ymm0,%ymm2
   0.18%    ││ │    0x00007f3fba7913a4:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.20%    ││ │    0x00007f3fba7913aa:   mov    %rbx,%rdi
   0.07%    ││ │    0x00007f3fba7913ad:   rorx   $0x29,%r9,%r13
   0.08%    ││ │    0x00007f3fba7913b3:   rorx   $0x12,%r9,%r14
   0.15%    ││ │    0x00007f3fba7913b9:   add    0x18(%rsp),%rax
   0.17%    ││ │    0x00007f3fba7913be:   or     %r8,%rdi
   0.09%    ││ │    0x00007f3fba7913c1:   mov    %r10,%r15
   0.06%    ││ │    0x00007f3fba7913c4:   xor    %r11,%r15
   0.13%    ││ │    0x00007f3fba7913c7:   rorx   $0x22,%rbx,%r12
   0.19%    ││ │    0x00007f3fba7913cd:   xor    %r14,%r13
   0.09%    ││ │    0x00007f3fba7913d0:   rorx   $0xe,%r9,%r14
   0.05%    ││ │    0x00007f3fba7913d6:   and    %r9,%r15
   0.16%    ││ │    0x00007f3fba7913d9:   add    %rax,%rdx
   0.20%    ││ │    0x00007f3fba7913dc:   and    %rcx,%rdi
   0.09%    ││ │    0x00007f3fba7913df:   xor    %r14,%r13
   0.08%    ││ │    0x00007f3fba7913e2:   rorx   $0x27,%rbx,%r14
   0.13%    ││ │    0x00007f3fba7913e8:   xor    %r12,%r14
   0.18%    ││ │    0x00007f3fba7913eb:   rorx   $0x1c,%rbx,%r12
   0.10%    ││ │    0x00007f3fba7913f1:   xor    %r11,%r15
   0.05%    ││ │    0x00007f3fba7913f4:   xor    %r12,%r14
   0.16%    ││ │    0x00007f3fba7913f7:   mov    %rbx,%r12
   0.18%    ││ │    0x00007f3fba7913fa:   and    %r8,%r12
   0.12%    ││ │    0x00007f3fba7913fd:   add    %r13,%r15
   0.08%    ││ │    0x00007f3fba791400:   or     %r12,%rdi
   0.13%    ││ │    0x00007f3fba791403:   add    %r14,%rax
   0.20%    ││ │    0x00007f3fba791406:   add    %r15,%rdx
   0.10%    ││ │    0x00007f3fba791409:   add    %r15,%rax
   0.07%    ││ │    0x00007f3fba79140c:   add    %rdi,%rax
   0.15%    ││ │    0x00007f3fba79140f:   subq   $0x1,0x20(%rsp)
   0.30%    │╰ │    0x00007f3fba791415:   jne    0x00007f3fba790aa0
   0.01%    │  │    0x00007f3fba79141b:   movq   $0x2,0x20(%rsp)
   0.06%    │ ↗│    0x00007f3fba791424:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.08%    │ ││    0x00007f3fba791429:   vmovdqu %ymm0,(%rsp)
   0.07%    │ ││    0x00007f3fba79142e:   mov    %r9,%r15
   0.08%    │ ││    0x00007f3fba791431:   rorx   $0x29,%rdx,%r13
   0.06%    │ ││    0x00007f3fba791437:   rorx   $0x12,%rdx,%r14
   0.05%    │ ││    0x00007f3fba79143d:   xor    %r10,%r15
   0.05%    │ ││    0x00007f3fba791440:   xor    %r14,%r13
   0.06%    │ ││    0x00007f3fba791443:   rorx   $0xe,%rdx,%r14
   0.04%    │ ││    0x00007f3fba791449:   and    %rdx,%r15
   0.08%    │ ││    0x00007f3fba79144c:   xor    %r14,%r13
   0.05%    │ ││    0x00007f3fba79144f:   rorx   $0x22,%rax,%r12
   0.07%    │ ││    0x00007f3fba791455:   xor    %r10,%r15
   0.05%    │ ││    0x00007f3fba791458:   rorx   $0x27,%rax,%r14
   0.07%    │ ││    0x00007f3fba79145e:   mov    %rax,%rdi
   0.06%    │ ││    0x00007f3fba791461:   xor    %r12,%r14
   0.07%    │ ││    0x00007f3fba791464:   rorx   $0x1c,%rax,%r12
   0.05%    │ ││    0x00007f3fba79146a:   add    (%rsp),%r11
   0.08%    │ ││    0x00007f3fba79146e:   or     %rcx,%rdi
   0.07%    │ ││    0x00007f3fba791471:   xor    %r12,%r14
   0.08%    │ ││    0x00007f3fba791474:   mov    %rax,%r12
   0.05%    │ ││    0x00007f3fba791477:   and    %rbx,%rdi
   0.06%    │ ││    0x00007f3fba79147a:   and    %rcx,%r12
   0.06%    │ ││    0x00007f3fba79147d:   add    %r13,%r15
   0.06%    │ ││    0x00007f3fba791480:   add    %r11,%r8
   0.05%    │ ││    0x00007f3fba791483:   or     %r12,%rdi
   0.07%    │ ││    0x00007f3fba791486:   add    %r14,%r11
   0.07%    │ ││    0x00007f3fba791489:   add    %r15,%r8
   0.07%    │ ││    0x00007f3fba79148c:   add    %r15,%r11
   0.06%    │ ││    0x00007f3fba79148f:   mov    %rdx,%r15
   0.06%    │ ││    0x00007f3fba791492:   rorx   $0x29,%r8,%r13
   0.05%    │ ││    0x00007f3fba791498:   rorx   $0x12,%r8,%r14
   0.06%    │ ││    0x00007f3fba79149e:   xor    %r9,%r15
   0.04%    │ ││    0x00007f3fba7914a1:   xor    %r14,%r13
   0.07%    │ ││    0x00007f3fba7914a4:   rorx   $0xe,%r8,%r14
   0.06%    │ ││    0x00007f3fba7914aa:   and    %r8,%r15
   0.06%    │ ││    0x00007f3fba7914ad:   add    %rdi,%r11
   0.05%    │ ││    0x00007f3fba7914b0:   xor    %r14,%r13
   0.06%    │ ││    0x00007f3fba7914b3:   rorx   $0x22,%r11,%r12
   0.07%    │ ││    0x00007f3fba7914b9:   xor    %r9,%r15
   0.07%    │ ││    0x00007f3fba7914bc:   rorx   $0x27,%r11,%r14
   0.06%    │ ││    0x00007f3fba7914c2:   mov    %r11,%rdi
   0.09%    │ ││    0x00007f3fba7914c5:   xor    %r12,%r14
   0.05%    │ ││    0x00007f3fba7914c8:   rorx   $0x1c,%r11,%r12
   0.06%    │ ││    0x00007f3fba7914ce:   add    0x8(%rsp),%r10
   0.04%    │ ││    0x00007f3fba7914d3:   or     %rbx,%rdi
   0.05%    │ ││    0x00007f3fba7914d6:   xor    %r12,%r14
   0.06%    │ ││    0x00007f3fba7914d9:   mov    %r11,%r12
   0.05%    │ ││    0x00007f3fba7914dc:   and    %rax,%rdi
   0.07%    │ ││    0x00007f3fba7914df:   and    %rbx,%r12
   0.06%    │ ││    0x00007f3fba7914e2:   add    %r13,%r15
   0.04%    │ ││    0x00007f3fba7914e5:   add    %r10,%rcx
   0.08%    │ ││    0x00007f3fba7914e8:   or     %r12,%rdi
   0.06%    │ ││    0x00007f3fba7914eb:   add    %r14,%r10
   0.05%    │ ││    0x00007f3fba7914ee:   add    %r15,%rcx
   0.06%    │ ││    0x00007f3fba7914f1:   add    %r15,%r10
   0.06%    │ ││    0x00007f3fba7914f4:   mov    %r8,%r15
   0.07%    │ ││    0x00007f3fba7914f7:   rorx   $0x29,%rcx,%r13
   0.06%    │ ││    0x00007f3fba7914fd:   rorx   $0x12,%rcx,%r14
   0.06%    │ ││    0x00007f3fba791503:   xor    %rdx,%r15
   0.06%    │ ││    0x00007f3fba791506:   xor    %r14,%r13
   0.07%    │ ││    0x00007f3fba791509:   rorx   $0xe,%rcx,%r14
   0.06%    │ ││    0x00007f3fba79150f:   and    %rcx,%r15
   0.07%    │ ││    0x00007f3fba791512:   add    %rdi,%r10
   0.07%    │ ││    0x00007f3fba791515:   xor    %r14,%r13
   0.07%    │ ││    0x00007f3fba791518:   rorx   $0x22,%r10,%r12
   0.07%    │ ││    0x00007f3fba79151e:   xor    %rdx,%r15
   0.08%    │ ││    0x00007f3fba791521:   rorx   $0x27,%r10,%r14
   0.09%    │ ││    0x00007f3fba791527:   mov    %r10,%rdi
   0.06%    │ ││    0x00007f3fba79152a:   xor    %r12,%r14
   0.09%    │ ││    0x00007f3fba79152d:   rorx   $0x1c,%r10,%r12
   0.07%    │ ││    0x00007f3fba791533:   add    0x10(%rsp),%r9
   0.06%    │ ││    0x00007f3fba791538:   or     %rax,%rdi
   0.06%    │ ││    0x00007f3fba79153b:   xor    %r12,%r14
   0.08%    │ ││    0x00007f3fba79153e:   mov    %r10,%r12
   0.07%    │ ││    0x00007f3fba791541:   and    %r11,%rdi
   0.05%    │ ││    0x00007f3fba791544:   and    %rax,%r12
   0.06%    │ ││    0x00007f3fba791547:   add    %r13,%r15
   0.08%    │ ││    0x00007f3fba79154a:   add    %r9,%rbx
   0.06%    │ ││    0x00007f3fba79154d:   or     %r12,%rdi
   0.06%    │ ││    0x00007f3fba791550:   add    %r14,%r9
   0.08%    │ ││    0x00007f3fba791553:   add    %r15,%rbx
   0.09%    │ ││    0x00007f3fba791556:   add    %r15,%r9
   0.09%    │ ││    0x00007f3fba791559:   mov    %rcx,%r15
   0.05%    │ ││    0x00007f3fba79155c:   rorx   $0x29,%rbx,%r13
   0.08%    │ ││    0x00007f3fba791562:   rorx   $0x12,%rbx,%r14
   0.08%    │ ││    0x00007f3fba791568:   xor    %r8,%r15
   0.08%    │ ││    0x00007f3fba79156b:   xor    %r14,%r13
   0.06%    │ ││    0x00007f3fba79156e:   rorx   $0xe,%rbx,%r14
   0.06%    │ ││    0x00007f3fba791574:   and    %rbx,%r15
   0.08%    │ ││    0x00007f3fba791577:   add    %rdi,%r9
   0.07%    │ ││    0x00007f3fba79157a:   xor    %r14,%r13
   0.08%    │ ││    0x00007f3fba79157d:   rorx   $0x22,%r9,%r12
   0.06%    │ ││    0x00007f3fba791583:   xor    %r8,%r15
   0.08%    │ ││    0x00007f3fba791586:   rorx   $0x27,%r9,%r14
   0.06%    │ ││    0x00007f3fba79158c:   mov    %r9,%rdi
   0.07%    │ ││    0x00007f3fba79158f:   xor    %r12,%r14
   0.05%    │ ││    0x00007f3fba791592:   rorx   $0x1c,%r9,%r12
   0.10%    │ ││    0x00007f3fba791598:   add    0x18(%rsp),%rdx
   0.06%    │ ││    0x00007f3fba79159d:   or     %r11,%rdi
   0.05%    │ ││    0x00007f3fba7915a0:   xor    %r12,%r14
   0.06%    │ ││    0x00007f3fba7915a3:   mov    %r9,%r12
   0.07%    │ ││    0x00007f3fba7915a6:   and    %r10,%rdi
   0.06%    │ ││    0x00007f3fba7915a9:   and    %r11,%r12
   0.07%    │ ││    0x00007f3fba7915ac:   add    %r13,%r15
   0.06%    │ ││    0x00007f3fba7915af:   add    %rdx,%rax
   0.08%    │ ││    0x00007f3fba7915b2:   or     %r12,%rdi
   0.06%    │ ││    0x00007f3fba7915b5:   add    %r14,%rdx
   0.05%    │ ││    0x00007f3fba7915b8:   add    %r15,%rax
   0.06%    │ ││    0x00007f3fba7915bb:   add    %r15,%rdx
   0.09%    │ ││    0x00007f3fba7915be:   add    %rdi,%rdx
   0.06%    │ ││    0x00007f3fba7915c1:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.05%    │ ││    0x00007f3fba7915c6:   vmovdqu %ymm0,(%rsp)
   0.05%    │ ││    0x00007f3fba7915cb:   add    $0x40,%rbp
   0.05%    │ ││    0x00007f3fba7915cf:   mov    %rbx,%r15
   0.09%    │ ││    0x00007f3fba7915d2:   rorx   $0x29,%rax,%r13
   0.07%    │ ││    0x00007f3fba7915d8:   rorx   $0x12,%rax,%r14
   0.03%    │ ││    0x00007f3fba7915de:   xor    %rcx,%r15
   0.06%    │ ││    0x00007f3fba7915e1:   xor    %r14,%r13
   0.09%    │ ││    0x00007f3fba7915e4:   rorx   $0xe,%rax,%r14
   0.05%    │ ││    0x00007f3fba7915ea:   and    %rax,%r15
   0.05%    │ ││    0x00007f3fba7915ed:   xor    %r14,%r13
   0.06%    │ ││    0x00007f3fba7915f0:   rorx   $0x22,%rdx,%r12
   0.07%    │ ││    0x00007f3fba7915f6:   xor    %rcx,%r15
   0.05%    │ ││    0x00007f3fba7915f9:   rorx   $0x27,%rdx,%r14
   0.05%    │ ││    0x00007f3fba7915ff:   mov    %rdx,%rdi
   0.06%    │ ││    0x00007f3fba791602:   xor    %r12,%r14
   0.09%    │ ││    0x00007f3fba791605:   rorx   $0x1c,%rdx,%r12
   0.06%    │ ││    0x00007f3fba79160b:   add    (%rsp),%r8
   0.06%    │ ││    0x00007f3fba79160f:   or     %r10,%rdi
   0.05%    │ ││    0x00007f3fba791612:   xor    %r12,%r14
   0.10%    │ ││    0x00007f3fba791615:   mov    %rdx,%r12
   0.06%    │ ││    0x00007f3fba791618:   and    %r9,%rdi
   0.05%    │ ││    0x00007f3fba79161b:   and    %r10,%r12
   0.06%    │ ││    0x00007f3fba79161e:   add    %r13,%r15
   0.07%    │ ││    0x00007f3fba791621:   add    %r8,%r11
   0.06%    │ ││    0x00007f3fba791624:   or     %r12,%rdi
   0.04%    │ ││    0x00007f3fba791627:   add    %r14,%r8
   0.06%    │ ││    0x00007f3fba79162a:   add    %r15,%r11
   0.06%    │ ││    0x00007f3fba79162d:   add    %r15,%r8
   0.07%    │ ││    0x00007f3fba791630:   mov    %rax,%r15
   0.04%    │ ││    0x00007f3fba791633:   rorx   $0x29,%r11,%r13
   0.08%    │ ││    0x00007f3fba791639:   rorx   $0x12,%r11,%r14
   0.11%    │ ││    0x00007f3fba79163f:   xor    %rbx,%r15
   0.07%    │ ││    0x00007f3fba791642:   xor    %r14,%r13
   0.06%    │ ││    0x00007f3fba791645:   rorx   $0xe,%r11,%r14
   0.07%    │ ││    0x00007f3fba79164b:   and    %r11,%r15
   0.09%    │ ││    0x00007f3fba79164e:   add    %rdi,%r8
   0.07%    │ ││    0x00007f3fba791651:   xor    %r14,%r13
   0.05%    │ ││    0x00007f3fba791654:   rorx   $0x22,%r8,%r12
   0.07%    │ ││    0x00007f3fba79165a:   xor    %rbx,%r15
   0.09%    │ ││    0x00007f3fba79165d:   rorx   $0x27,%r8,%r14
   0.05%    │ ││    0x00007f3fba791663:   mov    %r8,%rdi
   0.06%    │ ││    0x00007f3fba791666:   xor    %r12,%r14
   0.07%    │ ││    0x00007f3fba791669:   rorx   $0x1c,%r8,%r12
   0.07%    │ ││    0x00007f3fba79166f:   add    0x8(%rsp),%rcx
   0.06%    │ ││    0x00007f3fba791674:   or     %r9,%rdi
   0.04%    │ ││    0x00007f3fba791677:   xor    %r12,%r14
   0.07%    │ ││    0x00007f3fba79167a:   mov    %r8,%r12
   0.07%    │ ││    0x00007f3fba79167d:   and    %rdx,%rdi
   0.05%    │ ││    0x00007f3fba791680:   and    %r9,%r12
   0.05%    │ ││    0x00007f3fba791683:   add    %r13,%r15
   0.08%    │ ││    0x00007f3fba791686:   add    %rcx,%r10
   0.07%    │ ││    0x00007f3fba791689:   or     %r12,%rdi
   0.06%    │ ││    0x00007f3fba79168c:   add    %r14,%rcx
   0.05%    │ ││    0x00007f3fba79168f:   add    %r15,%r10
   0.07%    │ ││    0x00007f3fba791692:   add    %r15,%rcx
   0.08%    │ ││    0x00007f3fba791695:   mov    %r11,%r15
   0.07%    │ ││    0x00007f3fba791698:   rorx   $0x29,%r10,%r13
   0.05%    │ ││    0x00007f3fba79169e:   rorx   $0x12,%r10,%r14
   0.05%    │ ││    0x00007f3fba7916a4:   xor    %rax,%r15
   0.10%    │ ││    0x00007f3fba7916a7:   xor    %r14,%r13
   0.07%    │ ││    0x00007f3fba7916aa:   rorx   $0xe,%r10,%r14
   0.09%    │ ││    0x00007f3fba7916b0:   and    %r10,%r15
   0.08%    │ ││    0x00007f3fba7916b3:   add    %rdi,%rcx
   0.07%    │ ││    0x00007f3fba7916b6:   xor    %r14,%r13
   0.07%    │ ││    0x00007f3fba7916b9:   rorx   $0x22,%rcx,%r12
   0.07%    │ ││    0x00007f3fba7916bf:   xor    %rax,%r15
   0.10%    │ ││    0x00007f3fba7916c2:   rorx   $0x27,%rcx,%r14
   0.07%    │ ││    0x00007f3fba7916c8:   mov    %rcx,%rdi
   0.04%    │ ││    0x00007f3fba7916cb:   xor    %r12,%r14
   0.05%    │ ││    0x00007f3fba7916ce:   rorx   $0x1c,%rcx,%r12
   0.09%    │ ││    0x00007f3fba7916d4:   add    0x10(%rsp),%rbx
   0.05%    │ ││    0x00007f3fba7916d9:   or     %rdx,%rdi
   0.04%    │ ││    0x00007f3fba7916dc:   xor    %r12,%r14
   0.07%    │ ││    0x00007f3fba7916df:   mov    %rcx,%r12
   0.07%    │ ││    0x00007f3fba7916e2:   and    %r8,%rdi
   0.06%    │ ││    0x00007f3fba7916e5:   and    %rdx,%r12
   0.06%    │ ││    0x00007f3fba7916e8:   add    %r13,%r15
   0.06%    │ ││    0x00007f3fba7916eb:   add    %rbx,%r9
   0.08%    │ ││    0x00007f3fba7916ee:   or     %r12,%rdi
   0.07%    │ ││    0x00007f3fba7916f1:   add    %r14,%rbx
   0.05%    │ ││    0x00007f3fba7916f4:   add    %r15,%r9
   0.09%    │ ││    0x00007f3fba7916f7:   add    %r15,%rbx
   0.08%    │ ││    0x00007f3fba7916fa:   mov    %r10,%r15
   0.08%    │ ││    0x00007f3fba7916fd:   rorx   $0x29,%r9,%r13
   0.08%    │ ││    0x00007f3fba791703:   rorx   $0x12,%r9,%r14
   0.06%    │ ││    0x00007f3fba791709:   xor    %r11,%r15
   0.07%    │ ││    0x00007f3fba79170c:   xor    %r14,%r13
   0.09%    │ ││    0x00007f3fba79170f:   rorx   $0xe,%r9,%r14
   0.05%    │ ││    0x00007f3fba791715:   and    %r9,%r15
   0.08%    │ ││    0x00007f3fba791718:   add    %rdi,%rbx
   0.08%    │ ││    0x00007f3fba79171b:   xor    %r14,%r13
   0.08%    │ ││    0x00007f3fba79171e:   rorx   $0x22,%rbx,%r12
   0.07%    │ ││    0x00007f3fba791724:   xor    %r11,%r15
   0.09%    │ ││    0x00007f3fba791727:   rorx   $0x27,%rbx,%r14
   0.07%    │ ││    0x00007f3fba79172d:   mov    %rbx,%rdi
   0.06%    │ ││    0x00007f3fba791730:   xor    %r12,%r14
   0.07%    │ ││    0x00007f3fba791733:   rorx   $0x1c,%rbx,%r12
   0.10%    │ ││    0x00007f3fba791739:   add    0x18(%rsp),%rax
   0.03%    │ ││    0x00007f3fba79173e:   or     %r8,%rdi
   0.07%    │ ││    0x00007f3fba791741:   xor    %r12,%r14
   0.08%    │ ││    0x00007f3fba791744:   mov    %rbx,%r12
   0.05%    │ ││    0x00007f3fba791747:   and    %rcx,%rdi
   0.08%    │ ││    0x00007f3fba79174a:   and    %r8,%r12
   0.06%    │ ││    0x00007f3fba79174d:   add    %r13,%r15
   0.06%    │ ││    0x00007f3fba791750:   add    %rax,%rdx
   0.06%    │ ││    0x00007f3fba791753:   or     %r12,%rdi
   0.08%    │ ││    0x00007f3fba791756:   add    %r14,%rax
   0.11%    │ ││    0x00007f3fba791759:   add    %r15,%rdx
   0.06%    │ ││    0x00007f3fba79175c:   add    %r15,%rax
   0.05%    │ ││    0x00007f3fba79175f:   add    %rdi,%rax
   0.12%    │ ││    0x00007f3fba791762:   vmovdqu %ymm6,%ymm4
   0.05%    │ ││    0x00007f3fba791766:   vmovdqu %ymm7,%ymm5
   0.03%    │ ││    0x00007f3fba79176a:   subq   $0x1,0x20(%rsp)
   0.16%    │ ╰│    0x00007f3fba791770:   jne    0x00007f3fba791424
   0.03%    │  │    0x00007f3fba791776:   add    (%rsi),%rax
   0.01%    │  │    0x00007f3fba791779:   mov    %rax,(%rsi)
   0.20%    │  │    0x00007f3fba79177c:   add    0x8(%rsi),%rbx
   0.00%    │  │    0x00007f3fba791780:   mov    %rbx,0x8(%rsi)
   0.00%    │  │    0x00007f3fba791784:   add    0x10(%rsi),%rcx
            │  │    0x00007f3fba791788:   mov    %rcx,0x10(%rsi)
   0.12%    │  │    0x00007f3fba79178c:   add    0x18(%rsi),%r8
            │  │    0x00007f3fba791790:   mov    %r8,0x18(%rsi)
   0.01%    │  │    0x00007f3fba791794:   add    0x20(%rsi),%rdx
            │  │    0x00007f3fba791798:   mov    %rdx,0x20(%rsi)
   0.10%    │  │    0x00007f3fba79179c:   add    0x28(%rsi),%r9
            │  │    0x00007f3fba7917a0:   mov    %r9,0x28(%rsi)
   0.02%    │  │    0x00007f3fba7917a4:   add    0x30(%rsi),%r10
   0.00%    │  │    0x00007f3fba7917a8:   mov    %r10,0x30(%rsi)
   0.08%    │  │    0x00007f3fba7917ac:   add    0x38(%rsi),%r11
            │  │    0x00007f3fba7917b0:   mov    %r11,0x38(%rsi)
   0.03%    │  │    0x00007f3fba7917b4:   mov    0x28(%rsp),%rdi
   0.00%    │  │    0x00007f3fba7917b9:   add    $0x80,%rdi
   0.09%    │  │    0x00007f3fba7917c0:   cmp    0x30(%rsp),%rdi
            │  ╰    0x00007f3fba7917c5:   jne    0x00007f3fba790a5b
   0.01%    ↘       0x00007f3fba7917cb:   mov    0x40(%rsp),%rbp
   0.01%            0x00007f3fba7917d0:   mov    0x48(%rsp),%rbx
   0.00%            0x00007f3fba7917d5:   mov    0x50(%rsp),%r12
                    0x00007f3fba7917da:   mov    0x58(%rsp),%r13
   0.00%            0x00007f3fba7917df:   mov    0x60(%rsp),%r14
                    0x00007f3fba7917e4:   mov    0x68(%rsp),%r15
                    0x00007f3fba7917e9:   mov    0x38(%rsp),%rsp
                    0x00007f3fba7917ee:   pop    %rcx
   0.01%            0x00007f3fba7917ef:   pop    %rdx
                    0x00007f3fba7917f0:   mov    %rdx,%rax
   0.23%         ↗  0x00007f3fba7917f3:   cmp    %rcx,%rax
                ╭│  0x00007f3fba7917f6:   jae    0x00007f3fba791800
   0.00%        ││  0x00007f3fba7917f8:   add    $0x80,%rax
   0.00%        │╰  0x00007f3fba7917fe:   jmp    0x00007f3fba7917f3
   0.02%        ↘   0x00007f3fba791800:   vzeroupper 
   0.00%            0x00007f3fba791803:   leave  
   0.01%            0x00007f3fba791804:   ret    
                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::avx2_shuffle_base64 [0x00007f3fba791840, 0x00007f3fba791860] (32 bytes)
                  --------------------------------------------------------------------------------
....................................................................................................
  92.90%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.90%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.03%                      <unknown> 
   0.50%              kernel  [unknown] 
   0.24%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1157 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1160 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1160 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1160 
   0.04%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlockCheck, version 2, compile id 1155 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1160 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1160 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1160 
   1.58%  <...other 424 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.90%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.07%                      <unknown> 
   1.85%              kernel  [unknown] 
   0.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1160 
   0.14%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1157 
   0.04%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlockCheck, version 2, compile id 1155 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1185 
   0.01%      jvmci, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 1107 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.19%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.90%        runtime stub
   4.07%                    
   1.85%              kernel
   0.88%      jvmci, level 4
   0.14%           libjvm.so
   0.09%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA3-224, length = 16384)

# Run progress: 66.67% complete, ETA 00:07:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 119.554 us/op
# Warmup Iteration   2: 102.338 us/op
# Warmup Iteration   3: 102.306 us/op
# Warmup Iteration   4: 102.303 us/op
# Warmup Iteration   5: 102.282 us/op
Iteration   1: 102.351 us/op
Iteration   2: 102.374 us/op
Iteration   3: 102.356 us/op
Iteration   4: 102.275 us/op
Iteration   5: 102.399 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  102.351 ±(99.9%) 0.178 us/op [Average]
  (min, avg, max) = (102.275, 102.351, 102.399), stdev = 0.046
  CI (99.9%): [102.173, 102.529] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 281737 total address lines.
Perf output processed (skipped 61.832 seconds):
 Column 1: cycles (50550 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1115 

 <region is too big to display, has 1622 lines, but threshold is 1000>
....................................................................................................
  96.33%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.33%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1115 
   0.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1128 
   0.47%               kernel  [unknown] 
   0.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1128 
   0.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1128 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1115 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1115 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1128 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1128 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.14%  <...other 333 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.41%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1115 
   1.88%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1128 
   1.39%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  ImplicitExceptionTable::continuation_offset 
   0.00%         libc-2.31.so  _IO_str_init_static_internal 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.16%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.30%       jvmci, level 4
   1.39%               kernel
   0.12%            libjvm.so
   0.10%         libc-2.31.so
   0.03%                     
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA3-256, length = 16384)

# Run progress: 75.00% complete, ETA 00:05:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 123.429 us/op
# Warmup Iteration   2: 108.353 us/op
# Warmup Iteration   3: 108.355 us/op
# Warmup Iteration   4: 108.377 us/op
# Warmup Iteration   5: 108.342 us/op
Iteration   1: 108.362 us/op
Iteration   2: 108.345 us/op
Iteration   3: 108.362 us/op
Iteration   4: 108.355 us/op
Iteration   5: 108.317 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  108.348 ±(99.9%) 0.072 us/op [Average]
  (min, avg, max) = (108.317, 108.348, 108.362), stdev = 0.019
  CI (99.9%): [108.276, 108.420] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 279137 total address lines.
Perf output processed (skipped 61.749 seconds):
 Column 1: cycles (50469 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1127 

 <region is too big to display, has 1604 lines, but threshold is 1000>
....................................................................................................
  96.50%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.50%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1127 
   0.77%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1135 
   0.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1135 
   0.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1135 
   0.19%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1127 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1135 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1135 
   1.20%  <...other 369 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.62%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1127 
   1.87%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1135 
   1.17%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 4, compile id 1157 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.15%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.50%      jvmci, level 4
   1.17%              kernel
   0.13%           libjvm.so
   0.10%        libc-2.31.so
   0.04%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA3-384, length = 16384)

# Run progress: 83.33% complete, ETA 00:03:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 168.651 us/op
# Warmup Iteration   2: 140.474 us/op
# Warmup Iteration   3: 140.433 us/op
# Warmup Iteration   4: 140.438 us/op
# Warmup Iteration   5: 140.424 us/op
Iteration   1: 140.436 us/op
Iteration   2: 140.449 us/op
Iteration   3: 140.423 us/op
Iteration   4: 140.442 us/op
Iteration   5: 140.428 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  140.436 ±(99.9%) 0.041 us/op [Average]
  (min, avg, max) = (140.423, 140.436, 140.449), stdev = 0.011
  CI (99.9%): [140.395, 140.477] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 275707 total address lines.
Perf output processed (skipped 61.744 seconds):
 Column 1: cycles (50499 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1142 

 <region is too big to display, has 1604 lines, but threshold is 1000>
....................................................................................................
  96.93%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.93%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1142 
   0.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1153 
   0.46%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1153 
   0.24%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1153 
   0.07%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1142 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1153 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.15%  <...other 356 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.03%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1142 
   1.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1153 
   1.25%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1184 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%    perf-2130928.map  [unknown] 
   0.15%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.44%      jvmci, level 4
   1.25%              kernel
   0.14%           libjvm.so
   0.09%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%    perf-2130928.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA3-512, length = 16384)

# Run progress: 91.67% complete, ETA 00:01:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 241.923 us/op
# Warmup Iteration   2: 201.489 us/op
# Warmup Iteration   3: 201.341 us/op
# Warmup Iteration   4: 201.291 us/op
# Warmup Iteration   5: 201.355 us/op
Iteration   1: 201.331 us/op
Iteration   2: 201.338 us/op
Iteration   3: 201.338 us/op
Iteration   4: 201.349 us/op
Iteration   5: 201.307 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  201.333 ±(99.9%) 0.061 us/op [Average]
  (min, avg, max) = (201.307, 201.333, 201.349), stdev = 0.016
  CI (99.9%): [201.272, 201.393] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 278022 total address lines.
Perf output processed (skipped 61.762 seconds):
 Column 1: cycles (50747 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1135 

 <region is too big to display, has 1606 lines, but threshold is 1000>
....................................................................................................
  96.87%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.87%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1135 
   0.53%               kernel  [unknown] 
   0.27%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1145 
   0.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1145 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1145 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1145 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1145 
   0.07%               kernel  [unknown] 
   0.06%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1135 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1145 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1145 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1145 
   0.02%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1135 
   0.02%               kernel  [unknown] 
   1.31%  <...other 393 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.96%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1135 
   1.66%               kernel  [unknown] 
   1.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1145 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  HighResTimeSampler::take_sample 
   0.01%         libc-2.31.so  syscall 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.18%  <...other 77 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.96%       jvmci, level 4
   1.66%               kernel
   0.15%            libjvm.so
   0.12%         libc-2.31.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.00%          interpreter
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:23:01

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

Benchmark                       (algorithm)  (length)  Mode  Cnt    Score   Error  Units
HmacCryptoBenchmark.mac             HmacMD5     16384  avgt    5   30.833 ± 0.025  us/op
HmacCryptoBenchmark.mac:asm         HmacMD5     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac            HmacSHA1     16384  avgt    5   67.255 ± 0.031  us/op
HmacCryptoBenchmark.mac:asm        HmacSHA1     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac          HmacSHA224     16384  avgt    5   55.206 ± 0.039  us/op
HmacCryptoBenchmark.mac:asm      HmacSHA224     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac          HmacSHA256     16384  avgt    5   55.215 ± 0.105  us/op
HmacCryptoBenchmark.mac:asm      HmacSHA256     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac          HmacSHA384     16384  avgt    5   39.017 ± 0.030  us/op
HmacCryptoBenchmark.mac:asm      HmacSHA384     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac          HmacSHA512     16384  avgt    5   38.994 ± 0.060  us/op
HmacCryptoBenchmark.mac:asm      HmacSHA512     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac      HmacSHA512/224     16384  avgt    5   38.964 ± 0.029  us/op
HmacCryptoBenchmark.mac:asm  HmacSHA512/224     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac      HmacSHA512/256     16384  avgt    5   38.987 ± 0.022  us/op
HmacCryptoBenchmark.mac:asm  HmacSHA512/256     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac        HmacSHA3-224     16384  avgt    5  102.351 ± 0.178  us/op
HmacCryptoBenchmark.mac:asm    HmacSHA3-224     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac        HmacSHA3-256     16384  avgt    5  108.348 ± 0.072  us/op
HmacCryptoBenchmark.mac:asm    HmacSHA3-256     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac        HmacSHA3-384     16384  avgt    5  140.436 ± 0.041  us/op
HmacCryptoBenchmark.mac:asm    HmacSHA3-384     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac        HmacSHA3-512     16384  avgt    5  201.333 ± 0.061  us/op
HmacCryptoBenchmark.mac:asm    HmacSHA3-512     16384  avgt           NaN            ---
