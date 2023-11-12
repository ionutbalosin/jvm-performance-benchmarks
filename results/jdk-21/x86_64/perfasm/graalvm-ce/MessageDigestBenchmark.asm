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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = MD5, length = 16384)

# Run progress: 0.00% complete, ETA 00:18:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 33.108 us/op
# Warmup Iteration   2: 30.460 us/op
# Warmup Iteration   3: 30.465 us/op
# Warmup Iteration   4: 30.462 us/op
# Warmup Iteration   5: 30.455 us/op
Iteration   1: 30.462 us/op
Iteration   2: 30.460 us/op
Iteration   3: 30.460 us/op
Iteration   4: 30.460 us/op
Iteration   5: 30.456 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  30.460 ±(99.9%) 0.009 us/op [Average]
  (min, avg, max) = (30.456, 30.460, 30.462), stdev = 0.002
  CI (99.9%): [30.451, 30.469] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 236932 total address lines.
Perf output processed (skipped 60.435 seconds):
 Column 1: cycles (50699 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::md5_implCompressMB 

             0x00007f0d8ec58140:   push   %rbp
             0x00007f0d8ec58141:   mov    %rsp,%rbp
             0x00007f0d8ec58144:   push   %rbx
             0x00007f0d8ec58145:   push   %rdi
             0x00007f0d8ec58146:   push   %rsi
             0x00007f0d8ec58147:   push   %r15
             0x00007f0d8ec58149:   sub    $0x10,%rsp
             0x00007f0d8ec5814d:   mov    %rdi,%r15
             0x00007f0d8ec58150:   mov    %rsi,(%rsp)
             0x00007f0d8ec58154:   mov    %edx,0x8(%rsp)
   0.00%     0x00007f0d8ec58158:   mov    %ecx,0xc(%rsp)
             0x00007f0d8ec5815c:   mov    (%rsp),%rdi
             0x00007f0d8ec58160:   mov    (%rdi),%eax
             0x00007f0d8ec58162:   mov    0x4(%rdi),%ebx
             0x00007f0d8ec58165:   mov    0x8(%rdi),%ecx
             0x00007f0d8ec58168:   mov    0xc(%rdi),%edx
          ↗  0x00007f0d8ec5816b:   add    $0xd76aa478,%eax
          │  0x00007f0d8ec58170:   mov    %ecx,%esi
   0.00%  │  0x00007f0d8ec58172:   add    (%r15),%eax
   0.37%  │  0x00007f0d8ec58175:   xor    %edx,%esi
          │  0x00007f0d8ec58177:   and    %ebx,%esi
          │  0x00007f0d8ec58179:   xor    %edx,%esi
   0.00%  │  0x00007f0d8ec5817b:   add    %esi,%eax
   0.35%  │  0x00007f0d8ec5817d:   rol    $0x7,%eax
          │  0x00007f0d8ec58180:   add    %ebx,%eax
          │  0x00007f0d8ec58182:   add    $0xe8c7b756,%edx
          │  0x00007f0d8ec58188:   mov    %ebx,%esi
   0.27%  │  0x00007f0d8ec5818a:   add    0x4(%r15),%edx
          │  0x00007f0d8ec5818e:   xor    %ecx,%esi
          │  0x00007f0d8ec58190:   and    %eax,%esi
          │  0x00007f0d8ec58192:   xor    %ecx,%esi
   0.32%  │  0x00007f0d8ec58194:   add    %esi,%edx
   0.00%  │  0x00007f0d8ec58196:   rol    $0xc,%edx
   0.28%  │  0x00007f0d8ec58199:   add    %eax,%edx
   0.32%  │  0x00007f0d8ec5819b:   add    $0x242070db,%ecx
   0.01%  │  0x00007f0d8ec581a1:   mov    %eax,%esi
          │  0x00007f0d8ec581a3:   add    0x8(%r15),%ecx
          │  0x00007f0d8ec581a7:   xor    %ebx,%esi
   0.31%  │  0x00007f0d8ec581a9:   and    %edx,%esi
   0.01%  │  0x00007f0d8ec581ab:   xor    %ebx,%esi
   0.49%  │  0x00007f0d8ec581ad:   add    %esi,%ecx
   0.17%  │  0x00007f0d8ec581af:   rol    $0x11,%ecx
   0.32%  │  0x00007f0d8ec581b2:   add    %edx,%ecx
   0.34%  │  0x00007f0d8ec581b4:   add    $0xc1bdceee,%ebx
          │  0x00007f0d8ec581ba:   mov    %edx,%esi
          │  0x00007f0d8ec581bc:   add    0xc(%r15),%ebx
          │  0x00007f0d8ec581c0:   xor    %eax,%esi
   0.33%  │  0x00007f0d8ec581c2:   and    %ecx,%esi
          │  0x00007f0d8ec581c4:   xor    %eax,%esi
   0.50%  │  0x00007f0d8ec581c6:   add    %esi,%ebx
   0.15%  │  0x00007f0d8ec581c8:   rol    $0x16,%ebx
   0.29%  │  0x00007f0d8ec581cb:   add    %ecx,%ebx
   0.31%  │  0x00007f0d8ec581cd:   add    $0xf57c0faf,%eax
   0.00%  │  0x00007f0d8ec581d2:   mov    %ecx,%esi
          │  0x00007f0d8ec581d4:   add    0x10(%r15),%eax
          │  0x00007f0d8ec581d8:   xor    %edx,%esi
   0.30%  │  0x00007f0d8ec581da:   and    %ebx,%esi
          │  0x00007f0d8ec581dc:   xor    %edx,%esi
   0.50%  │  0x00007f0d8ec581de:   add    %esi,%eax
   0.16%  │  0x00007f0d8ec581e0:   rol    $0x7,%eax
   0.29%  │  0x00007f0d8ec581e3:   add    %ebx,%eax
   0.28%  │  0x00007f0d8ec581e5:   add    $0x4787c62a,%edx
   0.01%  │  0x00007f0d8ec581eb:   mov    %ebx,%esi
          │  0x00007f0d8ec581ed:   add    0x14(%r15),%edx
          │  0x00007f0d8ec581f1:   xor    %ecx,%esi
   0.33%  │  0x00007f0d8ec581f3:   and    %eax,%esi
   0.00%  │  0x00007f0d8ec581f5:   xor    %ecx,%esi
   0.48%  │  0x00007f0d8ec581f7:   add    %esi,%edx
   0.14%  │  0x00007f0d8ec581f9:   rol    $0xc,%edx
   0.26%  │  0x00007f0d8ec581fc:   add    %eax,%edx
   0.33%  │  0x00007f0d8ec581fe:   add    $0xa8304613,%ecx
          │  0x00007f0d8ec58204:   mov    %eax,%esi
          │  0x00007f0d8ec58206:   add    0x18(%r15),%ecx
          │  0x00007f0d8ec5820a:   xor    %ebx,%esi
   0.39%  │  0x00007f0d8ec5820c:   and    %edx,%esi
   0.00%  │  0x00007f0d8ec5820e:   xor    %ebx,%esi
   0.51%  │  0x00007f0d8ec58210:   add    %esi,%ecx
   0.14%  │  0x00007f0d8ec58212:   rol    $0x11,%ecx
   0.29%  │  0x00007f0d8ec58215:   add    %edx,%ecx
   0.27%  │  0x00007f0d8ec58217:   add    $0xfd469501,%ebx
   0.00%  │  0x00007f0d8ec5821d:   mov    %edx,%esi
          │  0x00007f0d8ec5821f:   add    0x1c(%r15),%ebx
          │  0x00007f0d8ec58223:   xor    %eax,%esi
   0.31%  │  0x00007f0d8ec58225:   and    %ecx,%esi
   0.01%  │  0x00007f0d8ec58227:   xor    %eax,%esi
   0.51%  │  0x00007f0d8ec58229:   add    %esi,%ebx
   0.16%  │  0x00007f0d8ec5822b:   rol    $0x16,%ebx
   0.27%  │  0x00007f0d8ec5822e:   add    %ecx,%ebx
   0.31%  │  0x00007f0d8ec58230:   add    $0x698098d8,%eax
          │  0x00007f0d8ec58235:   mov    %ecx,%esi
          │  0x00007f0d8ec58237:   add    0x20(%r15),%eax
          │  0x00007f0d8ec5823b:   xor    %edx,%esi
   0.34%  │  0x00007f0d8ec5823d:   and    %ebx,%esi
   0.00%  │  0x00007f0d8ec5823f:   xor    %edx,%esi
   0.49%  │  0x00007f0d8ec58241:   add    %esi,%eax
   0.13%  │  0x00007f0d8ec58243:   rol    $0x7,%eax
   0.27%  │  0x00007f0d8ec58246:   add    %ebx,%eax
   0.33%  │  0x00007f0d8ec58248:   add    $0x8b44f7af,%edx
          │  0x00007f0d8ec5824e:   mov    %ebx,%esi
          │  0x00007f0d8ec58250:   add    0x24(%r15),%edx
          │  0x00007f0d8ec58254:   xor    %ecx,%esi
   0.31%  │  0x00007f0d8ec58256:   and    %eax,%esi
   0.00%  │  0x00007f0d8ec58258:   xor    %ecx,%esi
   0.54%  │  0x00007f0d8ec5825a:   add    %esi,%edx
   0.18%  │  0x00007f0d8ec5825c:   rol    $0xc,%edx
   0.25%  │  0x00007f0d8ec5825f:   add    %eax,%edx
   0.32%  │  0x00007f0d8ec58261:   add    $0xffff5bb1,%ecx
   0.01%  │  0x00007f0d8ec58267:   mov    %eax,%esi
          │  0x00007f0d8ec58269:   add    0x28(%r15),%ecx
          │  0x00007f0d8ec5826d:   xor    %ebx,%esi
   0.30%  │  0x00007f0d8ec5826f:   and    %edx,%esi
   0.01%  │  0x00007f0d8ec58271:   xor    %ebx,%esi
   0.62%  │  0x00007f0d8ec58273:   add    %esi,%ecx
   0.13%  │  0x00007f0d8ec58275:   rol    $0x11,%ecx
   0.22%  │  0x00007f0d8ec58278:   add    %edx,%ecx
   0.34%  │  0x00007f0d8ec5827a:   add    $0x895cd7be,%ebx
   0.01%  │  0x00007f0d8ec58280:   mov    %edx,%esi
          │  0x00007f0d8ec58282:   add    0x2c(%r15),%ebx
          │  0x00007f0d8ec58286:   xor    %eax,%esi
   0.30%  │  0x00007f0d8ec58288:   and    %ecx,%esi
   0.02%  │  0x00007f0d8ec5828a:   xor    %eax,%esi
   0.64%  │  0x00007f0d8ec5828c:   add    %esi,%ebx
   0.09%  │  0x00007f0d8ec5828e:   rol    $0x16,%ebx
   0.21%  │  0x00007f0d8ec58291:   add    %ecx,%ebx
   0.31%  │  0x00007f0d8ec58293:   add    $0x6b901122,%eax
   0.01%  │  0x00007f0d8ec58298:   mov    %ecx,%esi
          │  0x00007f0d8ec5829a:   add    0x30(%r15),%eax
          │  0x00007f0d8ec5829e:   xor    %edx,%esi
   0.29%  │  0x00007f0d8ec582a0:   and    %ebx,%esi
   0.01%  │  0x00007f0d8ec582a2:   xor    %edx,%esi
   0.57%  │  0x00007f0d8ec582a4:   add    %esi,%eax
   0.10%  │  0x00007f0d8ec582a6:   rol    $0x7,%eax
   0.24%  │  0x00007f0d8ec582a9:   add    %ebx,%eax
   0.30%  │  0x00007f0d8ec582ab:   add    $0xfd987193,%edx
   0.03%  │  0x00007f0d8ec582b1:   mov    %ebx,%esi
          │  0x00007f0d8ec582b3:   add    0x34(%r15),%edx
          │  0x00007f0d8ec582b7:   xor    %ecx,%esi
   0.33%  │  0x00007f0d8ec582b9:   and    %eax,%esi
   0.02%  │  0x00007f0d8ec582bb:   xor    %ecx,%esi
   0.59%  │  0x00007f0d8ec582bd:   add    %esi,%edx
   0.17%  │  0x00007f0d8ec582bf:   rol    $0xc,%edx
   0.27%  │  0x00007f0d8ec582c2:   add    %eax,%edx
   0.31%  │  0x00007f0d8ec582c4:   add    $0xa679438e,%ecx
   0.01%  │  0x00007f0d8ec582ca:   mov    %eax,%esi
          │  0x00007f0d8ec582cc:   add    0x38(%r15),%ecx
          │  0x00007f0d8ec582d0:   xor    %ebx,%esi
   0.29%  │  0x00007f0d8ec582d2:   and    %edx,%esi
   0.02%  │  0x00007f0d8ec582d4:   xor    %ebx,%esi
   0.49%  │  0x00007f0d8ec582d6:   add    %esi,%ecx
   0.15%  │  0x00007f0d8ec582d8:   rol    $0x11,%ecx
   0.27%  │  0x00007f0d8ec582db:   add    %edx,%ecx
   0.31%  │  0x00007f0d8ec582dd:   add    $0x49b40821,%ebx
   0.01%  │  0x00007f0d8ec582e3:   mov    %edx,%esi
          │  0x00007f0d8ec582e5:   add    0x3c(%r15),%ebx
          │  0x00007f0d8ec582e9:   xor    %eax,%esi
   0.35%  │  0x00007f0d8ec582eb:   and    %ecx,%esi
   0.01%  │  0x00007f0d8ec582ed:   xor    %eax,%esi
   0.60%  │  0x00007f0d8ec582ef:   add    %esi,%ebx
   0.11%  │  0x00007f0d8ec582f1:   rol    $0x16,%ebx
   0.24%  │  0x00007f0d8ec582f4:   add    %ecx,%ebx
   0.26%  │  0x00007f0d8ec582f6:   add    $0xf61e2562,%eax
   0.04%  │  0x00007f0d8ec582fb:   mov    %edx,%esi
          │  0x00007f0d8ec582fd:   mov    %edx,%edi
          │  0x00007f0d8ec582ff:   add    0x4(%r15),%eax
   0.31%  │  0x00007f0d8ec58303:   not    %esi
   0.04%  │  0x00007f0d8ec58305:   and    %ebx,%edi
          │  0x00007f0d8ec58307:   and    %ecx,%esi
          │  0x00007f0d8ec58309:   or     %edi,%esi
   0.29%  │  0x00007f0d8ec5830b:   add    %esi,%eax
   0.29%  │  0x00007f0d8ec5830d:   rol    $0x5,%eax
   0.36%  │  0x00007f0d8ec58310:   add    %ebx,%eax
   0.30%  │  0x00007f0d8ec58312:   add    $0xc040b340,%edx
          │  0x00007f0d8ec58318:   mov    %ecx,%esi
          │  0x00007f0d8ec5831a:   mov    %ecx,%edi
          │  0x00007f0d8ec5831c:   add    0x18(%r15),%edx
   0.35%  │  0x00007f0d8ec58320:   not    %esi
          │  0x00007f0d8ec58322:   and    %eax,%edi
          │  0x00007f0d8ec58324:   and    %ebx,%esi
          │  0x00007f0d8ec58326:   or     %edi,%esi
   0.36%  │  0x00007f0d8ec58328:   add    %esi,%edx
   0.35%  │  0x00007f0d8ec5832a:   rol    $0x9,%edx
   0.33%  │  0x00007f0d8ec5832d:   add    %eax,%edx
   0.31%  │  0x00007f0d8ec5832f:   add    $0x265e5a51,%ecx
          │  0x00007f0d8ec58335:   mov    %ebx,%esi
          │  0x00007f0d8ec58337:   mov    %ebx,%edi
          │  0x00007f0d8ec58339:   add    0x2c(%r15),%ecx
   0.33%  │  0x00007f0d8ec5833d:   not    %esi
          │  0x00007f0d8ec5833f:   and    %edx,%edi
          │  0x00007f0d8ec58341:   and    %eax,%esi
          │  0x00007f0d8ec58343:   or     %edi,%esi
   0.34%  │  0x00007f0d8ec58345:   add    %esi,%ecx
   0.29%  │  0x00007f0d8ec58347:   rol    $0xe,%ecx
   0.31%  │  0x00007f0d8ec5834a:   add    %edx,%ecx
   0.34%  │  0x00007f0d8ec5834c:   add    $0xe9b6c7aa,%ebx
          │  0x00007f0d8ec58352:   mov    %eax,%esi
          │  0x00007f0d8ec58354:   mov    %eax,%edi
          │  0x00007f0d8ec58356:   add    (%r15),%ebx
   0.34%  │  0x00007f0d8ec58359:   not    %esi
          │  0x00007f0d8ec5835b:   and    %ecx,%edi
          │  0x00007f0d8ec5835d:   and    %edx,%esi
          │  0x00007f0d8ec5835f:   or     %edi,%esi
   0.33%  │  0x00007f0d8ec58361:   add    %esi,%ebx
   0.32%  │  0x00007f0d8ec58363:   rol    $0x14,%ebx
   0.33%  │  0x00007f0d8ec58366:   add    %ecx,%ebx
   0.37%  │  0x00007f0d8ec58368:   add    $0xd62f105d,%eax
          │  0x00007f0d8ec5836d:   mov    %edx,%esi
          │  0x00007f0d8ec5836f:   mov    %edx,%edi
          │  0x00007f0d8ec58371:   add    0x14(%r15),%eax
   0.35%  │  0x00007f0d8ec58375:   not    %esi
          │  0x00007f0d8ec58377:   and    %ebx,%edi
          │  0x00007f0d8ec58379:   and    %ecx,%esi
          │  0x00007f0d8ec5837b:   or     %edi,%esi
   0.32%  │  0x00007f0d8ec5837d:   add    %esi,%eax
   0.30%  │  0x00007f0d8ec5837f:   rol    $0x5,%eax
   0.28%  │  0x00007f0d8ec58382:   add    %ebx,%eax
   0.30%  │  0x00007f0d8ec58384:   add    $0x2441453,%edx
          │  0x00007f0d8ec5838a:   mov    %ecx,%esi
          │  0x00007f0d8ec5838c:   mov    %ecx,%edi
          │  0x00007f0d8ec5838e:   add    0x28(%r15),%edx
   0.30%  │  0x00007f0d8ec58392:   not    %esi
          │  0x00007f0d8ec58394:   and    %eax,%edi
          │  0x00007f0d8ec58396:   and    %ebx,%esi
          │  0x00007f0d8ec58398:   or     %edi,%esi
   0.33%  │  0x00007f0d8ec5839a:   add    %esi,%edx
   0.33%  │  0x00007f0d8ec5839c:   rol    $0x9,%edx
   0.28%  │  0x00007f0d8ec5839f:   add    %eax,%edx
   0.34%  │  0x00007f0d8ec583a1:   add    $0xd8a1e681,%ecx
          │  0x00007f0d8ec583a7:   mov    %ebx,%esi
          │  0x00007f0d8ec583a9:   mov    %ebx,%edi
          │  0x00007f0d8ec583ab:   add    0x3c(%r15),%ecx
   0.32%  │  0x00007f0d8ec583af:   not    %esi
          │  0x00007f0d8ec583b1:   and    %edx,%edi
          │  0x00007f0d8ec583b3:   and    %eax,%esi
          │  0x00007f0d8ec583b5:   or     %edi,%esi
   0.29%  │  0x00007f0d8ec583b7:   add    %esi,%ecx
   0.34%  │  0x00007f0d8ec583b9:   rol    $0xe,%ecx
   0.28%  │  0x00007f0d8ec583bc:   add    %edx,%ecx
   0.32%  │  0x00007f0d8ec583be:   add    $0xe7d3fbc8,%ebx
          │  0x00007f0d8ec583c4:   mov    %eax,%esi
          │  0x00007f0d8ec583c6:   mov    %eax,%edi
          │  0x00007f0d8ec583c8:   add    0x10(%r15),%ebx
   0.34%  │  0x00007f0d8ec583cc:   not    %esi
          │  0x00007f0d8ec583ce:   and    %ecx,%edi
          │  0x00007f0d8ec583d0:   and    %edx,%esi
          │  0x00007f0d8ec583d2:   or     %edi,%esi
   0.31%  │  0x00007f0d8ec583d4:   add    %esi,%ebx
   0.32%  │  0x00007f0d8ec583d6:   rol    $0x14,%ebx
   0.35%  │  0x00007f0d8ec583d9:   add    %ecx,%ebx
   0.31%  │  0x00007f0d8ec583db:   add    $0x21e1cde6,%eax
          │  0x00007f0d8ec583e0:   mov    %edx,%esi
          │  0x00007f0d8ec583e2:   mov    %edx,%edi
          │  0x00007f0d8ec583e4:   add    0x24(%r15),%eax
   0.38%  │  0x00007f0d8ec583e8:   not    %esi
          │  0x00007f0d8ec583ea:   and    %ebx,%edi
          │  0x00007f0d8ec583ec:   and    %ecx,%esi
          │  0x00007f0d8ec583ee:   or     %edi,%esi
   0.32%  │  0x00007f0d8ec583f0:   add    %esi,%eax
   0.35%  │  0x00007f0d8ec583f2:   rol    $0x5,%eax
   0.32%  │  0x00007f0d8ec583f5:   add    %ebx,%eax
   0.29%  │  0x00007f0d8ec583f7:   add    $0xc33707d6,%edx
          │  0x00007f0d8ec583fd:   mov    %ecx,%esi
          │  0x00007f0d8ec583ff:   mov    %ecx,%edi
          │  0x00007f0d8ec58401:   add    0x38(%r15),%edx
   0.35%  │  0x00007f0d8ec58405:   not    %esi
          │  0x00007f0d8ec58407:   and    %eax,%edi
          │  0x00007f0d8ec58409:   and    %ebx,%esi
          │  0x00007f0d8ec5840b:   or     %edi,%esi
   0.27%  │  0x00007f0d8ec5840d:   add    %esi,%edx
   0.23%  │  0x00007f0d8ec5840f:   rol    $0x9,%edx
   0.33%  │  0x00007f0d8ec58412:   add    %eax,%edx
   0.34%  │  0x00007f0d8ec58414:   add    $0xf4d50d87,%ecx
          │  0x00007f0d8ec5841a:   mov    %ebx,%esi
          │  0x00007f0d8ec5841c:   mov    %ebx,%edi
          │  0x00007f0d8ec5841e:   add    0xc(%r15),%ecx
   0.32%  │  0x00007f0d8ec58422:   not    %esi
          │  0x00007f0d8ec58424:   and    %edx,%edi
          │  0x00007f0d8ec58426:   and    %eax,%esi
          │  0x00007f0d8ec58428:   or     %edi,%esi
   0.27%  │  0x00007f0d8ec5842a:   add    %esi,%ecx
   0.30%  │  0x00007f0d8ec5842c:   rol    $0xe,%ecx
   0.30%  │  0x00007f0d8ec5842f:   add    %edx,%ecx
   0.32%  │  0x00007f0d8ec58431:   add    $0x455a14ed,%ebx
          │  0x00007f0d8ec58437:   mov    %eax,%esi
          │  0x00007f0d8ec58439:   mov    %eax,%edi
          │  0x00007f0d8ec5843b:   add    0x20(%r15),%ebx
   0.34%  │  0x00007f0d8ec5843f:   not    %esi
          │  0x00007f0d8ec58441:   and    %ecx,%edi
          │  0x00007f0d8ec58443:   and    %edx,%esi
          │  0x00007f0d8ec58445:   or     %edi,%esi
   0.36%  │  0x00007f0d8ec58447:   add    %esi,%ebx
   0.33%  │  0x00007f0d8ec58449:   rol    $0x14,%ebx
   0.30%  │  0x00007f0d8ec5844c:   add    %ecx,%ebx
   0.27%  │  0x00007f0d8ec5844e:   add    $0xa9e3e905,%eax
          │  0x00007f0d8ec58453:   mov    %edx,%esi
          │  0x00007f0d8ec58455:   mov    %edx,%edi
          │  0x00007f0d8ec58457:   add    0x34(%r15),%eax
   0.35%  │  0x00007f0d8ec5845b:   not    %esi
          │  0x00007f0d8ec5845d:   and    %ebx,%edi
          │  0x00007f0d8ec5845f:   and    %ecx,%esi
          │  0x00007f0d8ec58461:   or     %edi,%esi
   0.30%  │  0x00007f0d8ec58463:   add    %esi,%eax
   0.39%  │  0x00007f0d8ec58465:   rol    $0x5,%eax
   0.32%  │  0x00007f0d8ec58468:   add    %ebx,%eax
   0.32%  │  0x00007f0d8ec5846a:   add    $0xfcefa3f8,%edx
          │  0x00007f0d8ec58470:   mov    %ecx,%esi
          │  0x00007f0d8ec58472:   mov    %ecx,%edi
          │  0x00007f0d8ec58474:   add    0x8(%r15),%edx
   0.32%  │  0x00007f0d8ec58478:   not    %esi
          │  0x00007f0d8ec5847a:   and    %eax,%edi
          │  0x00007f0d8ec5847c:   and    %ebx,%esi
          │  0x00007f0d8ec5847e:   or     %edi,%esi
   0.32%  │  0x00007f0d8ec58480:   add    %esi,%edx
   0.31%  │  0x00007f0d8ec58482:   rol    $0x9,%edx
   0.33%  │  0x00007f0d8ec58485:   add    %eax,%edx
   0.31%  │  0x00007f0d8ec58487:   add    $0x676f02d9,%ecx
          │  0x00007f0d8ec5848d:   mov    %ebx,%esi
          │  0x00007f0d8ec5848f:   mov    %ebx,%edi
          │  0x00007f0d8ec58491:   add    0x1c(%r15),%ecx
   0.33%  │  0x00007f0d8ec58495:   not    %esi
          │  0x00007f0d8ec58497:   and    %edx,%edi
          │  0x00007f0d8ec58499:   and    %eax,%esi
          │  0x00007f0d8ec5849b:   or     %edi,%esi
   0.33%  │  0x00007f0d8ec5849d:   add    %esi,%ecx
   0.30%  │  0x00007f0d8ec5849f:   rol    $0xe,%ecx
   0.36%  │  0x00007f0d8ec584a2:   add    %edx,%ecx
   0.32%  │  0x00007f0d8ec584a4:   add    $0x8d2a4c8a,%ebx
          │  0x00007f0d8ec584aa:   mov    %eax,%esi
          │  0x00007f0d8ec584ac:   mov    %eax,%edi
          │  0x00007f0d8ec584ae:   add    0x30(%r15),%ebx
   0.24%  │  0x00007f0d8ec584b2:   not    %esi
          │  0x00007f0d8ec584b4:   and    %ecx,%edi
          │  0x00007f0d8ec584b6:   and    %edx,%esi
          │  0x00007f0d8ec584b8:   or     %edi,%esi
   0.32%  │  0x00007f0d8ec584ba:   add    %esi,%ebx
   0.32%  │  0x00007f0d8ec584bc:   rol    $0x14,%ebx
   0.29%  │  0x00007f0d8ec584bf:   add    %ecx,%ebx
   0.36%  │  0x00007f0d8ec584c1:   add    $0xfffa3942,%eax
          │  0x00007f0d8ec584c6:   mov    %ecx,%esi
          │  0x00007f0d8ec584c8:   add    0x14(%r15),%eax
          │  0x00007f0d8ec584cc:   xor    %edx,%esi
   0.31%  │  0x00007f0d8ec584ce:   xor    %ebx,%esi
          │  0x00007f0d8ec584d0:   add    %esi,%eax
   0.31%  │  0x00007f0d8ec584d2:   rol    $0x4,%eax
   0.32%  │  0x00007f0d8ec584d5:   add    %ebx,%eax
   0.31%  │  0x00007f0d8ec584d7:   add    $0x8771f681,%edx
          │  0x00007f0d8ec584dd:   mov    %ebx,%esi
          │  0x00007f0d8ec584df:   add    0x20(%r15),%edx
          │  0x00007f0d8ec584e3:   xor    %ecx,%esi
   0.33%  │  0x00007f0d8ec584e5:   xor    %eax,%esi
          │  0x00007f0d8ec584e7:   add    %esi,%edx
   0.33%  │  0x00007f0d8ec584e9:   rol    $0xb,%edx
   0.33%  │  0x00007f0d8ec584ec:   add    %eax,%edx
   0.33%  │  0x00007f0d8ec584ee:   add    $0x6d9d6122,%ecx
          │  0x00007f0d8ec584f4:   mov    %eax,%esi
          │  0x00007f0d8ec584f6:   add    0x2c(%r15),%ecx
          │  0x00007f0d8ec584fa:   xor    %ebx,%esi
   0.31%  │  0x00007f0d8ec584fc:   xor    %edx,%esi
   0.00%  │  0x00007f0d8ec584fe:   add    %esi,%ecx
   0.33%  │  0x00007f0d8ec58500:   rol    $0x10,%ecx
   0.35%  │  0x00007f0d8ec58503:   add    %edx,%ecx
   0.36%  │  0x00007f0d8ec58505:   add    $0xfde5380c,%ebx
          │  0x00007f0d8ec5850b:   mov    %edx,%esi
          │  0x00007f0d8ec5850d:   add    0x38(%r15),%ebx
          │  0x00007f0d8ec58511:   xor    %eax,%esi
   0.33%  │  0x00007f0d8ec58513:   xor    %ecx,%esi
          │  0x00007f0d8ec58515:   add    %esi,%ebx
   0.31%  │  0x00007f0d8ec58517:   rol    $0x17,%ebx
   0.39%  │  0x00007f0d8ec5851a:   add    %ecx,%ebx
   0.34%  │  0x00007f0d8ec5851c:   add    $0xa4beea44,%eax
          │  0x00007f0d8ec58521:   mov    %ecx,%esi
          │  0x00007f0d8ec58523:   add    0x4(%r15),%eax
          │  0x00007f0d8ec58527:   xor    %edx,%esi
   0.31%  │  0x00007f0d8ec58529:   xor    %ebx,%esi
          │  0x00007f0d8ec5852b:   add    %esi,%eax
   0.34%  │  0x00007f0d8ec5852d:   rol    $0x4,%eax
   0.32%  │  0x00007f0d8ec58530:   add    %ebx,%eax
   0.31%  │  0x00007f0d8ec58532:   add    $0x4bdecfa9,%edx
          │  0x00007f0d8ec58538:   mov    %ebx,%esi
          │  0x00007f0d8ec5853a:   add    0x10(%r15),%edx
          │  0x00007f0d8ec5853e:   xor    %ecx,%esi
   0.36%  │  0x00007f0d8ec58540:   xor    %eax,%esi
          │  0x00007f0d8ec58542:   add    %esi,%edx
   0.33%  │  0x00007f0d8ec58544:   rol    $0xb,%edx
   0.30%  │  0x00007f0d8ec58547:   add    %eax,%edx
   0.31%  │  0x00007f0d8ec58549:   add    $0xf6bb4b60,%ecx
          │  0x00007f0d8ec5854f:   mov    %eax,%esi
          │  0x00007f0d8ec58551:   add    0x1c(%r15),%ecx
          │  0x00007f0d8ec58555:   xor    %ebx,%esi
   0.31%  │  0x00007f0d8ec58557:   xor    %edx,%esi
          │  0x00007f0d8ec58559:   add    %esi,%ecx
   0.31%  │  0x00007f0d8ec5855b:   rol    $0x10,%ecx
   0.33%  │  0x00007f0d8ec5855e:   add    %edx,%ecx
   0.34%  │  0x00007f0d8ec58560:   add    $0xbebfbc70,%ebx
          │  0x00007f0d8ec58566:   mov    %edx,%esi
          │  0x00007f0d8ec58568:   add    0x28(%r15),%ebx
          │  0x00007f0d8ec5856c:   xor    %eax,%esi
   0.34%  │  0x00007f0d8ec5856e:   xor    %ecx,%esi
          │  0x00007f0d8ec58570:   add    %esi,%ebx
   0.29%  │  0x00007f0d8ec58572:   rol    $0x17,%ebx
   0.27%  │  0x00007f0d8ec58575:   add    %ecx,%ebx
   0.34%  │  0x00007f0d8ec58577:   add    $0x289b7ec6,%eax
          │  0x00007f0d8ec5857c:   mov    %ecx,%esi
          │  0x00007f0d8ec5857e:   add    0x34(%r15),%eax
          │  0x00007f0d8ec58582:   xor    %edx,%esi
   0.35%  │  0x00007f0d8ec58584:   xor    %ebx,%esi
   0.00%  │  0x00007f0d8ec58586:   add    %esi,%eax
   0.30%  │  0x00007f0d8ec58588:   rol    $0x4,%eax
   0.34%  │  0x00007f0d8ec5858b:   add    %ebx,%eax
   0.28%  │  0x00007f0d8ec5858d:   add    $0xeaa127fa,%edx
          │  0x00007f0d8ec58593:   mov    %ebx,%esi
          │  0x00007f0d8ec58595:   add    (%r15),%edx
          │  0x00007f0d8ec58598:   xor    %ecx,%esi
   0.30%  │  0x00007f0d8ec5859a:   xor    %eax,%esi
   0.00%  │  0x00007f0d8ec5859c:   add    %esi,%edx
   0.31%  │  0x00007f0d8ec5859e:   rol    $0xb,%edx
   0.35%  │  0x00007f0d8ec585a1:   add    %eax,%edx
   0.35%  │  0x00007f0d8ec585a3:   add    $0xd4ef3085,%ecx
          │  0x00007f0d8ec585a9:   mov    %eax,%esi
          │  0x00007f0d8ec585ab:   add    0xc(%r15),%ecx
          │  0x00007f0d8ec585af:   xor    %ebx,%esi
   0.31%  │  0x00007f0d8ec585b1:   xor    %edx,%esi
          │  0x00007f0d8ec585b3:   add    %esi,%ecx
   0.36%  │  0x00007f0d8ec585b5:   rol    $0x10,%ecx
   0.37%  │  0x00007f0d8ec585b8:   add    %edx,%ecx
   0.27%  │  0x00007f0d8ec585ba:   add    $0x4881d05,%ebx
          │  0x00007f0d8ec585c0:   mov    %edx,%esi
          │  0x00007f0d8ec585c2:   add    0x18(%r15),%ebx
          │  0x00007f0d8ec585c6:   xor    %eax,%esi
   0.32%  │  0x00007f0d8ec585c8:   xor    %ecx,%esi
          │  0x00007f0d8ec585ca:   add    %esi,%ebx
   0.30%  │  0x00007f0d8ec585cc:   rol    $0x17,%ebx
   0.34%  │  0x00007f0d8ec585cf:   add    %ecx,%ebx
   0.40%  │  0x00007f0d8ec585d1:   add    $0xd9d4d039,%eax
          │  0x00007f0d8ec585d6:   mov    %ecx,%esi
          │  0x00007f0d8ec585d8:   add    0x24(%r15),%eax
          │  0x00007f0d8ec585dc:   xor    %edx,%esi
   0.32%  │  0x00007f0d8ec585de:   xor    %ebx,%esi
          │  0x00007f0d8ec585e0:   add    %esi,%eax
   0.32%  │  0x00007f0d8ec585e2:   rol    $0x4,%eax
   0.31%  │  0x00007f0d8ec585e5:   add    %ebx,%eax
   0.36%  │  0x00007f0d8ec585e7:   add    $0xe6db99e5,%edx
          │  0x00007f0d8ec585ed:   mov    %ebx,%esi
          │  0x00007f0d8ec585ef:   add    0x30(%r15),%edx
          │  0x00007f0d8ec585f3:   xor    %ecx,%esi
   0.34%  │  0x00007f0d8ec585f5:   xor    %eax,%esi
          │  0x00007f0d8ec585f7:   add    %esi,%edx
   0.28%  │  0x00007f0d8ec585f9:   rol    $0xb,%edx
   0.33%  │  0x00007f0d8ec585fc:   add    %eax,%edx
   0.34%  │  0x00007f0d8ec585fe:   add    $0x1fa27cf8,%ecx
          │  0x00007f0d8ec58604:   mov    %eax,%esi
          │  0x00007f0d8ec58606:   add    0x3c(%r15),%ecx
          │  0x00007f0d8ec5860a:   xor    %ebx,%esi
   0.33%  │  0x00007f0d8ec5860c:   xor    %edx,%esi
          │  0x00007f0d8ec5860e:   add    %esi,%ecx
   0.32%  │  0x00007f0d8ec58610:   rol    $0x10,%ecx
   0.31%  │  0x00007f0d8ec58613:   add    %edx,%ecx
   0.36%  │  0x00007f0d8ec58615:   add    $0xc4ac5665,%ebx
          │  0x00007f0d8ec5861b:   mov    %edx,%esi
          │  0x00007f0d8ec5861d:   add    0x8(%r15),%ebx
          │  0x00007f0d8ec58621:   xor    %eax,%esi
   0.29%  │  0x00007f0d8ec58623:   xor    %ecx,%esi
          │  0x00007f0d8ec58625:   add    %esi,%ebx
   0.33%  │  0x00007f0d8ec58627:   rol    $0x17,%ebx
   0.32%  │  0x00007f0d8ec5862a:   add    %ecx,%ebx
   0.32%  │  0x00007f0d8ec5862c:   add    $0xf4292244,%eax
          │  0x00007f0d8ec58631:   mov    %edx,%esi
          │  0x00007f0d8ec58633:   not    %esi
          │  0x00007f0d8ec58635:   add    (%r15),%eax
   0.48%  │  0x00007f0d8ec58638:   or     %ebx,%esi
          │  0x00007f0d8ec5863a:   xor    %ecx,%esi
   0.20%  │  0x00007f0d8ec5863c:   add    %esi,%eax
   0.31%  │  0x00007f0d8ec5863e:   rol    $0x6,%eax
   0.30%  │  0x00007f0d8ec58641:   add    %ebx,%eax
   0.29%  │  0x00007f0d8ec58643:   add    $0x432aff97,%edx
          │  0x00007f0d8ec58649:   mov    %ecx,%esi
          │  0x00007f0d8ec5864b:   not    %esi
          │  0x00007f0d8ec5864d:   add    0x1c(%r15),%edx
   0.52%  │  0x00007f0d8ec58651:   or     %eax,%esi
          │  0x00007f0d8ec58653:   xor    %ebx,%esi
   0.12%  │  0x00007f0d8ec58655:   add    %esi,%edx
   0.31%  │  0x00007f0d8ec58657:   rol    $0xa,%edx
   0.33%  │  0x00007f0d8ec5865a:   add    %eax,%edx
   0.27%  │  0x00007f0d8ec5865c:   add    $0xab9423a7,%ecx
          │  0x00007f0d8ec58662:   mov    %ebx,%esi
          │  0x00007f0d8ec58664:   not    %esi
          │  0x00007f0d8ec58666:   add    0x38(%r15),%ecx
   0.46%  │  0x00007f0d8ec5866a:   or     %edx,%esi
          │  0x00007f0d8ec5866c:   xor    %eax,%esi
   0.16%  │  0x00007f0d8ec5866e:   add    %esi,%ecx
   0.28%  │  0x00007f0d8ec58670:   rol    $0xf,%ecx
   0.31%  │  0x00007f0d8ec58673:   add    %edx,%ecx
   0.33%  │  0x00007f0d8ec58675:   add    $0xfc93a039,%ebx
          │  0x00007f0d8ec5867b:   mov    %eax,%esi
          │  0x00007f0d8ec5867d:   not    %esi
          │  0x00007f0d8ec5867f:   add    0x14(%r15),%ebx
   0.48%  │  0x00007f0d8ec58683:   or     %ecx,%esi
          │  0x00007f0d8ec58685:   xor    %edx,%esi
   0.12%  │  0x00007f0d8ec58687:   add    %esi,%ebx
   0.29%  │  0x00007f0d8ec58689:   rol    $0x15,%ebx
   0.35%  │  0x00007f0d8ec5868c:   add    %ecx,%ebx
   0.31%  │  0x00007f0d8ec5868e:   add    $0x655b59c3,%eax
          │  0x00007f0d8ec58693:   mov    %edx,%esi
          │  0x00007f0d8ec58695:   not    %esi
          │  0x00007f0d8ec58697:   add    0x30(%r15),%eax
   0.42%  │  0x00007f0d8ec5869b:   or     %ebx,%esi
          │  0x00007f0d8ec5869d:   xor    %ecx,%esi
   0.21%  │  0x00007f0d8ec5869f:   add    %esi,%eax
   0.29%  │  0x00007f0d8ec586a1:   rol    $0x6,%eax
   0.32%  │  0x00007f0d8ec586a4:   add    %ebx,%eax
   0.32%  │  0x00007f0d8ec586a6:   add    $0x8f0ccc92,%edx
          │  0x00007f0d8ec586ac:   mov    %ecx,%esi
          │  0x00007f0d8ec586ae:   not    %esi
          │  0x00007f0d8ec586b0:   add    0xc(%r15),%edx
   0.49%  │  0x00007f0d8ec586b4:   or     %eax,%esi
          │  0x00007f0d8ec586b6:   xor    %ebx,%esi
   0.13%  │  0x00007f0d8ec586b8:   add    %esi,%edx
   0.36%  │  0x00007f0d8ec586ba:   rol    $0xa,%edx
   0.30%  │  0x00007f0d8ec586bd:   add    %eax,%edx
   0.33%  │  0x00007f0d8ec586bf:   add    $0xffeff47d,%ecx
          │  0x00007f0d8ec586c5:   mov    %ebx,%esi
          │  0x00007f0d8ec586c7:   not    %esi
          │  0x00007f0d8ec586c9:   add    0x28(%r15),%ecx
   0.36%  │  0x00007f0d8ec586cd:   or     %edx,%esi
          │  0x00007f0d8ec586cf:   xor    %eax,%esi
   0.17%  │  0x00007f0d8ec586d1:   add    %esi,%ecx
   0.28%  │  0x00007f0d8ec586d3:   rol    $0xf,%ecx
   0.32%  │  0x00007f0d8ec586d6:   add    %edx,%ecx
   0.34%  │  0x00007f0d8ec586d8:   add    $0x85845dd1,%ebx
          │  0x00007f0d8ec586de:   mov    %eax,%esi
          │  0x00007f0d8ec586e0:   not    %esi
          │  0x00007f0d8ec586e2:   add    0x4(%r15),%ebx
   0.44%  │  0x00007f0d8ec586e6:   or     %ecx,%esi
          │  0x00007f0d8ec586e8:   xor    %edx,%esi
   0.09%  │  0x00007f0d8ec586ea:   add    %esi,%ebx
   0.29%  │  0x00007f0d8ec586ec:   rol    $0x15,%ebx
   0.31%  │  0x00007f0d8ec586ef:   add    %ecx,%ebx
   0.34%  │  0x00007f0d8ec586f1:   add    $0x6fa87e4f,%eax
          │  0x00007f0d8ec586f6:   mov    %edx,%esi
          │  0x00007f0d8ec586f8:   not    %esi
          │  0x00007f0d8ec586fa:   add    0x20(%r15),%eax
   0.50%  │  0x00007f0d8ec586fe:   or     %ebx,%esi
          │  0x00007f0d8ec58700:   xor    %ecx,%esi
   0.11%  │  0x00007f0d8ec58702:   add    %esi,%eax
   0.31%  │  0x00007f0d8ec58704:   rol    $0x6,%eax
   0.25%  │  0x00007f0d8ec58707:   add    %ebx,%eax
   0.33%  │  0x00007f0d8ec58709:   add    $0xfe2ce6e0,%edx
          │  0x00007f0d8ec5870f:   mov    %ecx,%esi
          │  0x00007f0d8ec58711:   not    %esi
          │  0x00007f0d8ec58713:   add    0x3c(%r15),%edx
   0.56%  │  0x00007f0d8ec58717:   or     %eax,%esi
          │  0x00007f0d8ec58719:   xor    %ebx,%esi
   0.14%  │  0x00007f0d8ec5871b:   add    %esi,%edx
   0.33%  │  0x00007f0d8ec5871d:   rol    $0xa,%edx
   0.34%  │  0x00007f0d8ec58720:   add    %eax,%edx
   0.30%  │  0x00007f0d8ec58722:   add    $0xa3014314,%ecx
          │  0x00007f0d8ec58728:   mov    %ebx,%esi
          │  0x00007f0d8ec5872a:   not    %esi
          │  0x00007f0d8ec5872c:   add    0x18(%r15),%ecx
   0.53%  │  0x00007f0d8ec58730:   or     %edx,%esi
          │  0x00007f0d8ec58732:   xor    %eax,%esi
   0.13%  │  0x00007f0d8ec58734:   add    %esi,%ecx
   0.33%  │  0x00007f0d8ec58736:   rol    $0xf,%ecx
   0.35%  │  0x00007f0d8ec58739:   add    %edx,%ecx
   0.32%  │  0x00007f0d8ec5873b:   add    $0x4e0811a1,%ebx
          │  0x00007f0d8ec58741:   mov    %eax,%esi
          │  0x00007f0d8ec58743:   not    %esi
          │  0x00007f0d8ec58745:   add    0x34(%r15),%ebx
   0.51%  │  0x00007f0d8ec58749:   or     %ecx,%esi
          │  0x00007f0d8ec5874b:   xor    %edx,%esi
   0.09%  │  0x00007f0d8ec5874d:   add    %esi,%ebx
   0.32%  │  0x00007f0d8ec5874f:   rol    $0x15,%ebx
   0.32%  │  0x00007f0d8ec58752:   add    %ecx,%ebx
   0.25%  │  0x00007f0d8ec58754:   add    $0xf7537e82,%eax
          │  0x00007f0d8ec58759:   mov    %edx,%esi
          │  0x00007f0d8ec5875b:   not    %esi
          │  0x00007f0d8ec5875d:   add    0x10(%r15),%eax
   0.47%  │  0x00007f0d8ec58761:   or     %ebx,%esi
          │  0x00007f0d8ec58763:   xor    %ecx,%esi
   0.17%  │  0x00007f0d8ec58765:   add    %esi,%eax
   0.34%  │  0x00007f0d8ec58767:   rol    $0x6,%eax
   0.33%  │  0x00007f0d8ec5876a:   add    %ebx,%eax
   0.30%  │  0x00007f0d8ec5876c:   add    $0xbd3af235,%edx
          │  0x00007f0d8ec58772:   mov    %ecx,%esi
          │  0x00007f0d8ec58774:   not    %esi
          │  0x00007f0d8ec58776:   add    0x2c(%r15),%edx
   0.49%  │  0x00007f0d8ec5877a:   or     %eax,%esi
          │  0x00007f0d8ec5877c:   xor    %ebx,%esi
   0.12%  │  0x00007f0d8ec5877e:   add    %esi,%edx
   0.33%  │  0x00007f0d8ec58780:   rol    $0xa,%edx
   0.31%  │  0x00007f0d8ec58783:   add    %eax,%edx
   0.31%  │  0x00007f0d8ec58785:   add    $0x2ad7d2bb,%ecx
          │  0x00007f0d8ec5878b:   mov    %ebx,%esi
          │  0x00007f0d8ec5878d:   not    %esi
          │  0x00007f0d8ec5878f:   add    0x8(%r15),%ecx
   0.44%  │  0x00007f0d8ec58793:   or     %edx,%esi
          │  0x00007f0d8ec58795:   xor    %eax,%esi
   0.21%  │  0x00007f0d8ec58797:   add    %esi,%ecx
   0.33%  │  0x00007f0d8ec58799:   rol    $0xf,%ecx
   0.27%  │  0x00007f0d8ec5879c:   add    %edx,%ecx
   0.32%  │  0x00007f0d8ec5879e:   add    $0xeb86d391,%ebx
          │  0x00007f0d8ec587a4:   mov    %eax,%esi
          │  0x00007f0d8ec587a6:   not    %esi
          │  0x00007f0d8ec587a8:   add    0x24(%r15),%ebx
   0.48%  │  0x00007f0d8ec587ac:   or     %ecx,%esi
          │  0x00007f0d8ec587ae:   xor    %edx,%esi
   0.17%  │  0x00007f0d8ec587b0:   add    %esi,%ebx
   0.30%  │  0x00007f0d8ec587b2:   rol    $0x15,%ebx
   0.38%  │  0x00007f0d8ec587b5:   add    %ecx,%ebx
   0.31%  │  0x00007f0d8ec587b7:   mov    (%rsp),%rdi
          │  0x00007f0d8ec587bb:   add    (%rdi),%eax
          │  0x00007f0d8ec587bd:   mov    %eax,(%rdi)
          │  0x00007f0d8ec587bf:   add    0x4(%rdi),%ebx
   0.32%  │  0x00007f0d8ec587c2:   mov    %ebx,0x4(%rdi)
   0.66%  │  0x00007f0d8ec587c5:   add    0x8(%rdi),%ecx
          │  0x00007f0d8ec587c8:   mov    %ecx,0x8(%rdi)
          │  0x00007f0d8ec587cb:   add    0xc(%rdi),%edx
          │  0x00007f0d8ec587ce:   mov    %edx,0xc(%rdi)
   0.28%  │  0x00007f0d8ec587d1:   add    $0x40,%r15
          │  0x00007f0d8ec587d5:   addl   $0x40,0x8(%rsp)
          │  0x00007f0d8ec587da:   mov    0x8(%rsp),%esi
   0.36%  │  0x00007f0d8ec587de:   cmp    0xc(%rsp),%esi
          ╰  0x00007f0d8ec587e2:   jbe    0x00007f0d8ec5816b
             0x00007f0d8ec587e8:   mov    %rsi,%rax
             0x00007f0d8ec587eb:   add    $0x10,%rsp
             0x00007f0d8ec587ef:   pop    %r15
   0.01%     0x00007f0d8ec587f1:   pop    %rsi
             0x00007f0d8ec587f2:   pop    %rdi
             0x00007f0d8ec587f3:   pop    %rbx
             0x00007f0d8ec587f4:   leave  
             0x00007f0d8ec587f5:   ret    
           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           <task_queued compile_id='6' method='java.lang.StringLatin1 equals ([B[B)Z' bytes='36' count='384' backedge_count='334' iicount='384' level='3' stamp='1.489' comment='tiered' hot_count='384'/>
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           Decoding RuntimeStub - new_instance Runtime1 stub 0x00007f0d8ecf5210
           --------------------------------------------------------------------------------
....................................................................................................
  97.22%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.22%         runtime stub  StubRoutines::md5_implCompressMB 
   0.23%               kernel  [unknown] 
   0.16%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.15%                       <unknown> 
   0.13%               kernel  [unknown] 
   0.13%                       <unknown> 
   0.10%                       <unknown> 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1020 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1020 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1020 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1024 
   1.25%  <...other 384 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.22%         runtime stub  StubRoutines::md5_implCompressMB 
   1.56%               kernel  [unknown] 
   0.46%                       <unknown> 
   0.16%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.15%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1020 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1024 
   0.03%            libjvm.so  xmlStream::write_text 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1053 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  stringStream::write 
   0.22%  <...other 97 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.38%         runtime stub
   1.56%               kernel
   0.46%                     
   0.23%       jvmci, level 4
   0.15%            libjvm.so
   0.09%         libc-2.31.so
   0.06%  libjvmcicompiler.so
   0.02%           ld-2.31.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%               [vdso]
   0.00%          c1, level 3
   0.00%            libnio.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-1, length = 16384)

# Run progress: 9.09% complete, ETA 00:19:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 80.692 us/op
# Warmup Iteration   2: 72.254 us/op
# Warmup Iteration   3: 72.251 us/op
# Warmup Iteration   4: 72.227 us/op
# Warmup Iteration   5: 72.258 us/op
Iteration   1: 72.280 us/op
Iteration   2: 72.246 us/op
Iteration   3: 72.241 us/op
Iteration   4: 72.262 us/op
Iteration   5: 72.254 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  72.257 ±(99.9%) 0.060 us/op [Average]
  (min, avg, max) = (72.241, 72.257, 72.280), stdev = 0.016
  CI (99.9%): [72.197, 72.316] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 237922 total address lines.
Perf output processed (skipped 60.400 seconds):
 Column 1: cycles (50509 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.SHA::implCompress0, version 4, compile id 987 

 <region is too big to display, has 2038 lines, but threshold is 1000>
....................................................................................................
  64.81%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.provider.SHA::implCompress0, version 4, compile id 987 

             # parm1:    rcx       = int
             #           [sp+0x160]  (sp of caller)
             0x00007f302f24ae40:   mov    0x8(%rsi),%r10d
             0x00007f302f24ae44:   movabs $0x7f2faf000000,%r12
             0x00007f302f24ae4e:   add    %r12,%r10
             0x00007f302f24ae51:   xor    %r12,%r12
             0x00007f302f24ae54:   cmp    %r10,%rax
             0x00007f302f24ae57:   jne    0x00007f302ec2f080           ;   {runtime_call ic_miss_stub}
             0x00007f302f24ae5d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.13%     0x00007f302f24ae60:   mov    %eax,-0x14000(%rsp)
   0.01%     0x00007f302f24ae67:   sub    $0x158,%rsp
             0x00007f302f24ae6e:   xchg   %ax,%ax
   0.12%     0x00007f302f24ae70:   cmpl   $0x1,0x20(%r15)
             0x00007f302f24ae78:   jne    0x00007f302f24c69f
   0.02%     0x00007f302f24ae7e:   mov    %rbp,0x150(%rsp)
             0x00007f302f24ae86:   mov    0x30(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop rsi=Oop r10=NarrowOop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) sun.security.provider.SHA::implCompress0@0 (line 151)
   0.12%     0x00007f302f24ae8a:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f302f24c6c6
   0.00%     0x00007f302f24ae92:   cmp    $0x4d,%r11d
             0x00007f302f24ae96:   jb     0x00007f302f24c67b           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@40 (line 158)
   0.01%     0x00007f302f24ae9c:   nopl   0x0(%rax)
             0x00007f302f24aea0:   cmp    $0x50,%r11d
             0x00007f302f24aea4:   jb     0x00007f302f24c60e           ; ImmutableOopMap {rdx=Oop rsi=Oop r10=NarrowOop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) sun.security.provider.SHA::implCompress0@0 (line 151)
   0.13%     0x00007f302f24aeaa:   mov    0xc(%rdx),%r11d              ; implicit exception: dispatches to 0x00007f302f24c6ed
   0.00%     0x00007f302f24aeae:   cmp    $0x3,%r11d
             0x00007f302f24aeb2:   jb     0x00007f302f24c4ee           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f302f24aeb8:   lea    -0x3(%r11),%r11d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@4 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24aebc:   nopl   0x0(%rax)
   0.14%     0x00007f302f24aec0:   cmp    %ecx,%r11d
             0x00007f302f24aec3:   jbe    0x00007f302f24c68d           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f302f24aec9:   lea    0x4(%rcx),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@19 (line 102)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f302f24aecd:   cmp    %r8d,%r11d
             0x00007f302f24aed0:   jbe    0x00007f302f24c669           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@20 (line 102)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24aed6:   lea    0x8(%rcx),%r9d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@33 (line 103)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.11%     0x00007f302f24aeda:   nopw   0x0(%rax,%rax,1)
   0.00%     0x00007f302f24aee0:   cmp    %r9d,%r11d
             0x00007f302f24aee3:   jbe    0x00007f302f24c645           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@34 (line 103)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f302f24aee9:   lea    0xc(%rcx),%ebx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@47 (line 104)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24aeec:   cmp    %ebx,%r11d
             0x00007f302f24aeef:   jbe    0x00007f302f24c516           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@48 (line 104)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.11%     0x00007f302f24aef5:   lea    0x10(%rcx),%edi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@61 (line 105)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f302f24aef8:   nopl   0x0(%rax,%rax,1)
   0.01%     0x00007f302f24af00:   cmp    %edi,%r11d
             0x00007f302f24af03:   jbe    0x00007f302f24c657           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@62 (line 105)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24af09:   lea    0x14(%rcx),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@75 (line 106)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.11%     0x00007f302f24af0c:   cmp    %eax,%r11d
             0x00007f302f24af0f:   jbe    0x00007f302f24c632           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@76 (line 106)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f302f24af15:   lea    0x18(%rcx),%ebp              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@90 (line 107)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f302f24af18:   nopl   0x0(%rax,%rax,1)
             0x00007f302f24af20:   cmp    %ebp,%r11d
             0x00007f302f24af23:   jbe    0x00007f302f24c539           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@91 (line 107)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.16%     0x00007f302f24af29:   lea    0x1c(%rcx),%r13d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@105 (line 108)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24af2d:   cmp    %r13d,%r11d
             0x00007f302f24af30:   jbe    0x00007f302f24c620           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@106 (line 108)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f302f24af36:   lea    0x20(%rcx),%r14d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@120 (line 109)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24af3a:   nopw   0x0(%rax,%rax,1)
   0.11%     0x00007f302f24af40:   cmp    %r14d,%r11d
             0x00007f302f24af43:   jbe    0x00007f302f24c5fc           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@121 (line 109)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24af49:   mov    %rsi,0x10(%rsp)
   0.01%     0x00007f302f24af4e:   lea    0x24(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@135 (line 110)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24af51:   cmp    %esi,%r11d
             0x00007f302f24af54:   jbe    0x00007f302f24c5e5           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@136 (line 110)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
                                                                       ;   {no_reloc}
   0.12%     0x00007f302f24af5a:   mov    %esi,0x144(%rsp)
   0.00%     0x00007f302f24af61:   lea    0x28(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@150 (line 111)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f302f24af64:   cmp    %esi,%r11d
             0x00007f302f24af67:   jbe    0x00007f302f24c5b3           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@151 (line 111)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24af6d:   mov    %esi,0x140(%rsp)
   0.12%     0x00007f302f24af74:   lea    0x2c(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@165 (line 112)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f302f24af77:   mov    %esi,0x13c(%rsp)
   0.01%     0x00007f302f24af7e:   xchg   %ax,%ax
             0x00007f302f24af80:   cmp    %esi,%r11d
             0x00007f302f24af83:   jbe    0x00007f302f24c525           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@166 (line 112)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.11%     0x00007f302f24af89:   lea    0x30(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@180 (line 113)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24af8c:   mov    %esi,0x138(%rsp)
   0.01%     0x00007f302f24af93:   cmp    %esi,%r11d
             0x00007f302f24af96:   jbe    0x00007f302f24c5ca           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@181 (line 113)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24af9c:   lea    0x34(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@195 (line 114)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.14%     0x00007f302f24af9f:   mov    %esi,0x134(%rsp)
             0x00007f302f24afa6:   cmp    %esi,%r11d
             0x00007f302f24afa9:   jbe    0x00007f302f24c59c           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@196 (line 114)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f302f24afaf:   lea    0x38(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@210 (line 115)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24afb2:   mov    %esi,0x130(%rsp)
   0.11%     0x00007f302f24afb9:   nopl   0x0(%rax)
             0x00007f302f24afc0:   cmp    %esi,%r11d
             0x00007f302f24afc3:   jbe    0x00007f302f24c585           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@211 (line 115)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f302f24afc9:   lea    0x3c(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@225 (line 116)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24afcc:   cmp    %esi,%r11d
             0x00007f302f24afcf:   jbe    0x00007f302f24c56d           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@226 (line 116)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.11%     0x00007f302f24afd5:   mov    %esi,0x12c(%rsp)
             0x00007f302f24afdc:   mov    0x140(%rsp),%esi
   0.01%     0x00007f302f24afe3:   mov    0x144(%rsp),%r11d
             0x00007f302f24afeb:   mov    0x10(%rdx,%rcx,1),%ecx       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.15%     0x00007f302f24afef:   bswap  %ecx                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24aff1:   mov    %ecx,0x10(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@10 (line 101)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f302f24aff9:   mov    0x10(%rdx,%r8,1),%r8d        ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@20 (line 102)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24affe:   bswap  %r8d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@20 (line 102)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.13%     0x00007f302f24b001:   mov    %r8d,0x14(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@23 (line 102)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b009:   mov    0x10(%rdx,%r9,1),%r8d        ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@34 (line 103)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f302f24b00e:   bswap  %r8d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@34 (line 103)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b011:   mov    %r8d,0x18(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@37 (line 103)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.12%     0x00007f302f24b019:   mov    0x10(%rdx,%rbx,1),%r9d       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@48 (line 104)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b01e:   bswap  %r9d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@48 (line 104)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f302f24b021:   mov    %r9d,0x1c(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@51 (line 104)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b029:   mov    0x10(%rdx,%rdi,1),%r9d       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@62 (line 105)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.12%     0x00007f302f24b02e:   bswap  %r9d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@62 (line 105)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f302f24b031:   mov    %r9d,0x20(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@65 (line 105)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f302f24b039:   mov    0x10(%rdx,%rax,1),%r9d       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@76 (line 106)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b03e:   bswap  %r9d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@76 (line 106)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.13%     0x00007f302f24b041:   mov    %r9d,0x24(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@79 (line 106)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b049:   mov    0x10(%rdx,%rbp,1),%r9d       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@91 (line 107)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f302f24b04e:   bswap  %r9d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@91 (line 107)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b051:   mov    %r9d,0x28(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@94 (line 107)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
                                                                       ;   {no_reloc}
   0.12%     0x00007f302f24b059:   mov    0x10(%rdx,%r13,1),%r9d       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@106 (line 108)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b05e:   bswap  %r9d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@106 (line 108)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f302f24b061:   mov    %r9d,0x2c(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@109 (line 108)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b069:   mov    0x10(%rdx,%r14,1),%r9d       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@121 (line 109)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.10%     0x00007f302f24b06e:   bswap  %r9d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@121 (line 109)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b071:   mov    %r9d,0x30(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@124 (line 109)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f302f24b079:   mov    0x10(%rdx,%r11,1),%r11d      ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@136 (line 110)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b07e:   bswap  %r11d                        ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@136 (line 110)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.13%     0x00007f302f24b081:   mov    %r11d,0x34(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@139 (line 110)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f302f24b089:   mov    0x10(%rdx,%rsi,1),%r11d      ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@151 (line 111)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f302f24b08e:   bswap  %r11d                        ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@151 (line 111)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b091:   mov    %r11d,0x38(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@154 (line 111)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.10%     0x00007f302f24b099:   mov    0x13c(%rsp),%esi
             0x00007f302f24b0a0:   mov    0x10(%rdx,%rsi,1),%r11d      ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@166 (line 112)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f302f24b0a5:   bswap  %r11d                        ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@166 (line 112)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b0a8:   mov    %r11d,0x3c(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@169 (line 112)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.12%     0x00007f302f24b0b0:   mov    0x138(%rsp),%esi
   0.00%     0x00007f302f24b0b7:   mov    0x10(%rdx,%rsi,1),%r11d      ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@181 (line 113)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f302f24b0bc:   bswap  %r11d                        ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@181 (line 113)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b0bf:   mov    %r11d,0x40(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@184 (line 113)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.14%     0x00007f302f24b0c7:   mov    0x134(%rsp),%esi
             0x00007f302f24b0ce:   mov    0x10(%rdx,%rsi,1),%r11d      ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@196 (line 114)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f302f24b0d3:   bswap  %r11d                        ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@196 (line 114)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b0d6:   mov    %r11d,0x44(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@199 (line 114)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.10%     0x00007f302f24b0de:   mov    0x130(%rsp),%esi
             0x00007f302f24b0e5:   mov    0x10(%rdx,%rsi,1),%ebx       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@211 (line 115)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f302f24b0e9:   bswap  %ebx                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@211 (line 115)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b0eb:   mov    %ebx,0x48(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@214 (line 115)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.11%     0x00007f302f24b0f3:   mov    0x12c(%rsp),%esi
   0.00%     0x00007f302f24b0fa:   mov    0x10(%rdx,%rsi,1),%ebx       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@226 (line 116)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f302f24b0fe:   bswap  %ebx                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@226 (line 116)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f302f24b100:   mov    %ebx,0x4c(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@229 (line 116)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.10%     0x00007f302f24b108:   xor    %r11d,%r9d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@50 (line 158)
             0x00007f302f24b10b:   xor    %r9d,%r8d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@60 (line 158)
   0.01%     0x00007f302f24b10e:   xor    %r8d,%ecx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@70 (line 158)
             0x00007f302f24b111:   rol    %ecx                         ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.Integer::rotateLeft@7 (line 1724)
                                                                       ; - sun.security.provider.SHA::implCompress0@81 (line 159)
   0.17%     0x00007f302f24b113:   mov    %ecx,0x50(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   0.01%     0x00007f302f24b11b:   mov    %r10d,%r11d
             0x00007f302f24b11e:   shl    $0x3,%r11                    ;*getfield W {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@1 (line 151)
   0.10%     0x00007f302f24b122:   mov    $0x11,%r8d
   0.00%     0x00007f302f24b128:   jmp    0x00007f302f24b241           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@27 (line 157)
             0x00007f302f24b12d:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f302f24b138:   data16 data16 xchg %ax,%ax
             0x00007f302f24b13c:   nopl   0x0(%rax)                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@30 (line 157)
   0.27%  ↗  0x00007f302f24b140:   movslq %r8d,%r9
   1.73%  │  0x00007f302f24b143:   mov    -0x30(%r11,%r9,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@69 (line 158)
          │  0x00007f302f24b148:   mov    0x4(%r11,%r9,4),%ebx         ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@40 (line 158)
   0.24%  │  0x00007f302f24b14d:   xor    -0x10(%r11,%r9,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@49 (line 158)
   0.41%  │  0x00007f302f24b152:   xor    -0x28(%r11,%r9,4),%ebx       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@60 (line 158)
          │                                                            ;   {no_reloc}
   1.64%  │  0x00007f302f24b157:   xor    %ecx,%ebx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@70 (line 158)
   0.21%  │  0x00007f302f24b159:   rol    %ebx                         ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                            ; - sun.security.provider.SHA::implCompress0@81 (line 159)
   0.93%  │  0x00007f302f24b15b:   mov    %ebx,0x10(%r11,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   2.66%  │  0x00007f302f24b160:   mov    -0x2c(%r11,%r9,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@69 (line 158)
          │  0x00007f302f24b165:   mov    0x8(%r11,%r9,4),%ebx         ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@40 (line 158)
   0.25%  │  0x00007f302f24b16a:   xor    -0xc(%r11,%r9,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@49 (line 158)
   0.39%  │  0x00007f302f24b16f:   xor    -0x24(%r11,%r9,4),%ebx       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@60 (line 158)
   1.80%  │  0x00007f302f24b174:   xor    %ecx,%ebx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@70 (line 158)
   0.23%  │  0x00007f302f24b176:   rol    %ebx                         ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                            ; - sun.security.provider.SHA::implCompress0@81 (line 159)
   1.01%  │  0x00007f302f24b178:   mov    %ebx,0x14(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   2.79%  │  0x00007f302f24b17d:   mov    -0x28(%r11,%r9,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@69 (line 158)
          │  0x00007f302f24b182:   mov    0xc(%r11,%r9,4),%ebx         ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@40 (line 158)
   0.24%  │  0x00007f302f24b187:   xor    -0x8(%r11,%r9,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@49 (line 158)
   0.41%  │  0x00007f302f24b18c:   xor    -0x20(%r11,%r9,4),%ebx       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@60 (line 158)
   1.82%  │  0x00007f302f24b191:   xor    %ecx,%ebx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@70 (line 158)
   0.25%  │  0x00007f302f24b193:   rol    %ebx                         ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                            ; - sun.security.provider.SHA::implCompress0@81 (line 159)
   0.99%  │  0x00007f302f24b195:   mov    %ebx,0x18(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   2.74%  │  0x00007f302f24b19a:   mov    -0x24(%r11,%r9,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@69 (line 158)
          │  0x00007f302f24b19f:   mov    0x10(%r11,%r8,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@40 (line 158)
   0.53%  │  0x00007f302f24b1a4:   xor    -0x4(%r11,%r9,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@49 (line 158)
   0.34%  │  0x00007f302f24b1a9:   xor    -0x1c(%r11,%r9,4),%ebx       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@60 (line 158)
   1.93%  │  0x00007f302f24b1ae:   xor    %ecx,%ebx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@70 (line 158)
   0.26%  │  0x00007f302f24b1b0:   rol    %ebx                         ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                            ; - sun.security.provider.SHA::implCompress0@81 (line 159)
   1.36%  │  0x00007f302f24b1b2:   mov    %ebx,0x1c(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   2.70%  │  0x00007f302f24b1b7:   lea    0x4(%r8),%r8d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@85 (line 157)
          │  0x00007f302f24b1bb:   nopl   0x0(%rax,%rax,1)
          │  0x00007f302f24b1c0:   cmp    $0x4c,%r8d
          ╰  0x00007f302f24b1c4:   jl     0x00007f302f24b140
             0x00007f302f24b1ca:   jmp    0x00007f302f24b210
             0x00007f302f24b1cf:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f302f24b1da:   data16 data16 xchg %ax,%ax
             0x00007f302f24b1de:   xchg   %ax,%ax                      ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@30 (line 157)
....................................................................................................
  32.45%  <total for region 2>

....[Hottest Regions]...............................................................................
  64.81%      jvmci, level 4  sun.security.provider.SHA::implCompress0, version 4, compile id 987 
  32.45%      jvmci, level 4  sun.security.provider.SHA::implCompress0, version 4, compile id 987 
   0.67%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 5, compile id 1014 
   0.20%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1015 
   0.02%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1015 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1015 
   0.02%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1015 
   0.02%              kernel  [unknown] 
   1.22%  <...other 382 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.26%      jvmci, level 4  sun.security.provider.SHA::implCompress0, version 4, compile id 987 
   1.44%              kernel  [unknown] 
   0.67%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 5, compile id 1014 
   0.14%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1015 
   0.11%                      <unknown> 
   0.09%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1018 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  decode_env::print_hook_comments 
   0.14%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.11%      jvmci, level 4
   1.44%              kernel
   0.11%                    
   0.10%           libjvm.so
   0.10%        libc-2.31.so
   0.09%        runtime stub
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-224, length = 16384)

# Run progress: 18.18% complete, ETA 00:17:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 60.015 us/op
# Warmup Iteration   2: 54.342 us/op
# Warmup Iteration   3: 54.320 us/op
# Warmup Iteration   4: 54.315 us/op
# Warmup Iteration   5: 54.323 us/op
Iteration   1: 54.329 us/op
Iteration   2: 54.311 us/op
Iteration   3: 54.336 us/op
Iteration   4: 54.321 us/op
Iteration   5: 54.330 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  54.326 ±(99.9%) 0.037 us/op [Average]
  (min, avg, max) = (54.311, 54.326, 54.336), stdev = 0.010
  CI (99.9%): [54.289, 54.362] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 238615 total address lines.
Perf output processed (skipped 60.529 seconds):
 Column 1: cycles (50874 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1097 lines, but threshold is 1000>
....................................................................................................
  95.73%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.73%         runtime stub  StubRoutines::sha256_implCompressMB 
   0.97%               kernel  [unknown] 
   0.52%                       <unknown> 
   0.37%         runtime stub  StubRoutines::sha256_implCompressMB 
   0.24%         runtime stub  StubRoutines::sha256_implCompressMB 
   0.17%                       <unknown> 
   0.10%                       <unknown> 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1021 
   0.04%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1021 
   0.04%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1021 
   0.04%               kernel  [unknown] 
   0.03%                       <unknown> 
   1.21%  <...other 323 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.35%         runtime stub  StubRoutines::sha256_implCompressMB 
   1.99%               kernel  [unknown] 
   0.96%                       <unknown> 
   0.25%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1021 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1018 
   0.06%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1045 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  stringStream::write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  MethodMatcher::matches 
   0.01%            libjvm.so  fileStream::write 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.00%            libjvm.so  resource_allocate_bytes 
   0.17%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.42%         runtime stub
   1.99%               kernel
   0.96%                     
   0.37%       jvmci, level 4
   0.10%            libjvm.so
   0.08%         libc-2.31.so
   0.03%  libjvmcicompiler.so
   0.02%          interpreter
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%     perf-2116448.map
   0.00%     Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-256, length = 16384)

# Run progress: 27.27% complete, ETA 00:15:09
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 59.828 us/op
# Warmup Iteration   2: 54.384 us/op
# Warmup Iteration   3: 54.380 us/op
# Warmup Iteration   4: 54.356 us/op
# Warmup Iteration   5: 54.353 us/op
Iteration   1: 54.377 us/op
Iteration   2: 54.354 us/op
Iteration   3: 54.353 us/op
Iteration   4: 54.352 us/op
Iteration   5: 54.360 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  54.359 ±(99.9%) 0.039 us/op [Average]
  (min, avg, max) = (54.352, 54.359, 54.377), stdev = 0.010
  CI (99.9%): [54.320, 54.398] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 231649 total address lines.
Perf output processed (skipped 60.162 seconds):
 Column 1: cycles (50626 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1093 lines, but threshold is 1000>
....................................................................................................
  96.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.03%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.44%              kernel  [unknown] 
   0.40%                      <unknown> 
   0.38%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.30%                      <unknown> 
   0.22%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.10%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1008 
   0.05%                      <unknown> 
   0.05%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1008 
   0.05%                      <unknown> 
   0.04%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.43%  <...other 366 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.62%        runtime stub  StubRoutines::sha256_implCompressMB 
   1.70%              kernel  [unknown] 
   1.00%                      <unknown> 
   0.22%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1008 
   0.08%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1006 
   0.03%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1035 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1007 
   0.01%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%      jvmci, level 4  sun.security.provider.SHA2::implCompress, version 2, compile id 965 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        runtime stub  StubRoutines::jbyte_arraycopy 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  defaultStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.17%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.68%        runtime stub
   1.70%              kernel
   1.00%                    
   0.35%      jvmci, level 4
   0.13%           libjvm.so
   0.09%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%    perf-2116514.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-384, length = 16384)

# Run progress: 36.36% complete, ETA 00:13:14
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 42.727 us/op
# Warmup Iteration   2: 37.917 us/op
# Warmup Iteration   3: 37.917 us/op
# Warmup Iteration   4: 37.955 us/op
# Warmup Iteration   5: 37.917 us/op
Iteration   1: 37.910 us/op
Iteration   2: 37.918 us/op
Iteration   3: 37.927 us/op
Iteration   4: 37.927 us/op
Iteration   5: 37.915 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  37.920 ±(99.9%) 0.029 us/op [Average]
  (min, avg, max) = (37.910, 37.920, 37.927), stdev = 0.007
  CI (99.9%): [37.891, 37.948] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 241560 total address lines.
Perf output processed (skipped 60.475 seconds):
 Column 1: cycles (51057 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

               0x00007f397ac5bdcf:   mov    0x8(%rsi),%rbx
               0x00007f397ac5bdd3:   mov    0x10(%rsi),%rcx
   0.00%       0x00007f397ac5bdd7:   mov    0x18(%rsi),%r8
               0x00007f397ac5bddb:   mov    0x20(%rsi),%rdx
               0x00007f397ac5bddf:   mov    0x28(%rsi),%r9
               0x00007f397ac5bde3:   mov    0x38(%rsi),%r11
               0x00007f397ac5bde7:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007f397ac5af00
               0x00007f397ac5bdef:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007f397ac5af20
               0x00007f397ac5bdf7:   mov    0x30(%rsi),%r10
            ↗  0x00007f397ac5bdfb:   movabs $0x7f3992059840,%rbp
   0.02%    │  0x00007f397ac5be05:   vmovdqu (%rdi),%ymm4
   0.01%    │  0x00007f397ac5be09:   vpshufb %ymm9,%ymm4,%ymm4
   0.16%    │  0x00007f397ac5be0e:   vmovdqu 0x20(%rdi),%ymm5
   0.17%    │  0x00007f397ac5be13:   vpshufb %ymm9,%ymm5,%ymm5
   0.38%    │  0x00007f397ac5be18:   vmovdqu 0x40(%rdi),%ymm6
   0.03%    │  0x00007f397ac5be1d:   vpshufb %ymm9,%ymm6,%ymm6
   0.01%    │  0x00007f397ac5be22:   vmovdqu 0x60(%rdi),%ymm7
   0.06%    │  0x00007f397ac5be27:   vpshufb %ymm9,%ymm7,%ymm7
   0.32%    │  0x00007f397ac5be2c:   mov    %rdi,0x28(%rsp)
            │  0x00007f397ac5be31:   movq   $0x4,0x20(%rsp)
            │  0x00007f397ac5be3a:   nopw   0x0(%rax,%rax,1)
   0.03%  ↗ │  0x00007f397ac5be40:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.32%  │ │  0x00007f397ac5be45:   vmovdqu %ymm0,(%rsp)
   0.09%  │ │  0x00007f397ac5be4a:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.25%  │ │  0x00007f397ac5be50:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.21%  │ │  0x00007f397ac5be56:   vpaddq %ymm4,%ymm0,%ymm0
   0.73%  │ │  0x00007f397ac5be5a:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.12%  │ │  0x00007f397ac5be60:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.09%  │ │  0x00007f397ac5be66:   vpsrlq $0x1,%ymm1,%ymm2
   0.05%  │ │  0x00007f397ac5be6b:   vpsllq $0x3f,%ymm1,%ymm3
   0.31%  │ │  0x00007f397ac5be70:   vpor   %ymm2,%ymm3,%ymm3
   0.10%  │ │  0x00007f397ac5be74:   vpsrlq $0x7,%ymm1,%ymm8
   0.05%  │ │  0x00007f397ac5be79:   mov    %rax,%rdi
   0.04%  │ │  0x00007f397ac5be7c:   rorx   $0x29,%rdx,%r13
   0.30%  │ │  0x00007f397ac5be82:   rorx   $0x12,%rdx,%r14
   0.11%  │ │  0x00007f397ac5be88:   add    (%rsp),%r11
   0.07%  │ │  0x00007f397ac5be8c:   or     %rcx,%rdi
   0.03%  │ │  0x00007f397ac5be8f:   mov    %r9,%r15
   0.31%  │ │  0x00007f397ac5be92:   xor    %r10,%r15
   0.13%  │ │  0x00007f397ac5be95:   rorx   $0x22,%rax,%r12
   0.07%  │ │  0x00007f397ac5be9b:   xor    %r14,%r13
   0.04%  │ │  0x00007f397ac5be9e:   rorx   $0xe,%rdx,%r14
   0.27%  │ │  0x00007f397ac5bea4:   and    %rdx,%r15
   0.10%  │ │  0x00007f397ac5bea7:   add    %r11,%r8
   0.05%  │ │  0x00007f397ac5beaa:   and    %rbx,%rdi
   0.03%  │ │  0x00007f397ac5bead:   xor    %r14,%r13
   0.27%  │ │  0x00007f397ac5beb0:   rorx   $0x27,%rax,%r14
   0.11%  │ │  0x00007f397ac5beb6:   xor    %r12,%r14
   0.05%  │ │  0x00007f397ac5beb9:   rorx   $0x1c,%rax,%r12
   0.04%  │ │  0x00007f397ac5bebf:   xor    %r10,%r15
   0.29%  │ │  0x00007f397ac5bec2:   xor    %r12,%r14
   0.12%  │ │  0x00007f397ac5bec5:   mov    %rax,%r12
   0.05%  │ │  0x00007f397ac5bec8:   and    %rcx,%r12
   0.05%  │ │  0x00007f397ac5becb:   add    %r13,%r15
   0.30%  │ │  0x00007f397ac5bece:   or     %r12,%rdi
   0.15%  │ │  0x00007f397ac5bed1:   add    %r14,%r11
   0.06%  │ │  0x00007f397ac5bed4:   add    %r15,%r8
   0.05%  │ │  0x00007f397ac5bed7:   add    %r15,%r11
   0.27%  │ │  0x00007f397ac5beda:   add    %rdi,%r11
   0.09%  │ │  0x00007f397ac5bedd:   vpsrlq $0x8,%ymm1,%ymm2
   0.07%  │ │  0x00007f397ac5bee2:   vpsllq $0x38,%ymm1,%ymm1
   0.04%  │ │  0x00007f397ac5bee7:   vpor   %ymm2,%ymm1,%ymm1
   0.26%  │ │  0x00007f397ac5beeb:   vpxor  %ymm8,%ymm3,%ymm3
   0.14%  │ │  0x00007f397ac5bef0:   vpxor  %ymm1,%ymm3,%ymm1
   0.06%  │ │  0x00007f397ac5bef4:   vpaddq %ymm1,%ymm0,%ymm0
   0.04%  │ │  0x00007f397ac5bef8:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.25%  │ │  0x00007f397ac5befe:   vpand  %ymm10,%ymm0,%ymm0
   0.13%  │ │  0x00007f397ac5bf03:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.05%  │ │  0x00007f397ac5bf09:   vpsrlq $0x6,%ymm2,%ymm8
   0.02%  │ │  0x00007f397ac5bf0e:   mov    %r11,%rdi
   0.31%  │ │  0x00007f397ac5bf11:   rorx   $0x29,%r8,%r13
   0.12%  │ │  0x00007f397ac5bf17:   rorx   $0x12,%r8,%r14
   0.05%  │ │  0x00007f397ac5bf1d:   add    0x8(%rsp),%r10
   0.04%  │ │  0x00007f397ac5bf22:   or     %rbx,%rdi
   0.29%  │ │  0x00007f397ac5bf25:   mov    %rdx,%r15
   0.09%  │ │  0x00007f397ac5bf28:   xor    %r9,%r15
   0.05%  │ │  0x00007f397ac5bf2b:   rorx   $0x22,%r11,%r12
   0.02%  │ │  0x00007f397ac5bf31:   xor    %r14,%r13
   0.30%  │ │  0x00007f397ac5bf34:   rorx   $0xe,%r8,%r14
   0.11%  │ │  0x00007f397ac5bf3a:   and    %r8,%r15
   0.05%  │ │  0x00007f397ac5bf3d:   add    %r10,%rcx
   0.05%  │ │  0x00007f397ac5bf40:   and    %rax,%rdi
   0.29%  │ │  0x00007f397ac5bf43:   xor    %r14,%r13
   0.12%  │ │  0x00007f397ac5bf46:   rorx   $0x27,%r11,%r14
   0.05%  │ │  0x00007f397ac5bf4c:   xor    %r12,%r14
   0.04%  │ │  0x00007f397ac5bf4f:   rorx   $0x1c,%r11,%r12
   0.30%  │ │  0x00007f397ac5bf55:   xor    %r9,%r15
   0.12%  │ │  0x00007f397ac5bf58:   xor    %r12,%r14
   0.04%  │ │  0x00007f397ac5bf5b:   mov    %r11,%r12
   0.04%  │ │  0x00007f397ac5bf5e:   and    %rbx,%r12
   0.25%  │ │  0x00007f397ac5bf61:   add    %r13,%r15
   0.12%  │ │  0x00007f397ac5bf64:   or     %r12,%rdi
   0.06%  │ │  0x00007f397ac5bf67:   add    %r14,%r10
   0.05%  │ │  0x00007f397ac5bf6a:   add    %r15,%rcx
   0.30%  │ │  0x00007f397ac5bf6d:   add    %r15,%r10
   0.13%  │ │  0x00007f397ac5bf70:   add    %rdi,%r10
   0.06%  │ │  0x00007f397ac5bf73:   vpsrlq $0x13,%ymm2,%ymm3
   0.03%  │ │  0x00007f397ac5bf78:   vpsllq $0x2d,%ymm2,%ymm1
   0.30%  │ │  0x00007f397ac5bf7d:   vpor   %ymm1,%ymm3,%ymm3
   0.14%  │ │  0x00007f397ac5bf81:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%  │ │  0x00007f397ac5bf85:   vpsrlq $0x3d,%ymm2,%ymm3
   0.05%  │ │  0x00007f397ac5bf8a:   vpsllq $0x3,%ymm2,%ymm1
   0.28%  │ │  0x00007f397ac5bf8f:   vpor   %ymm1,%ymm3,%ymm3
   0.14%  │ │  0x00007f397ac5bf93:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │  0x00007f397ac5bf97:   vpaddq %ymm8,%ymm4,%ymm4
   0.05%  │ │  0x00007f397ac5bf9c:   vpsrlq $0x6,%ymm4,%ymm8
   0.30%  │ │  0x00007f397ac5bfa1:   mov    %r10,%rdi
   0.13%  │ │  0x00007f397ac5bfa4:   rorx   $0x29,%rcx,%r13
   0.05%  │ │  0x00007f397ac5bfaa:   rorx   $0x12,%rcx,%r14
   0.03%  │ │  0x00007f397ac5bfb0:   add    0x10(%rsp),%r9
   0.25%  │ │  0x00007f397ac5bfb5:   or     %rax,%rdi
   0.12%  │ │  0x00007f397ac5bfb8:   mov    %r8,%r15
   0.04%  │ │  0x00007f397ac5bfbb:   xor    %rdx,%r15
   0.04%  │ │  0x00007f397ac5bfbe:   rorx   $0x22,%r10,%r12
   0.30%  │ │  0x00007f397ac5bfc4:   xor    %r14,%r13
   0.14%  │ │  0x00007f397ac5bfc7:   rorx   $0xe,%rcx,%r14
   0.06%  │ │  0x00007f397ac5bfcd:   and    %rcx,%r15
   0.05%  │ │  0x00007f397ac5bfd0:   add    %r9,%rbx
   0.27%  │ │  0x00007f397ac5bfd3:   and    %r11,%rdi
   0.13%  │ │  0x00007f397ac5bfd6:   xor    %r14,%r13
   0.05%  │ │  0x00007f397ac5bfd9:   rorx   $0x27,%r10,%r14
   0.03%  │ │  0x00007f397ac5bfdf:   xor    %r12,%r14
   0.30%  │ │  0x00007f397ac5bfe2:   rorx   $0x1c,%r10,%r12
   0.14%  │ │  0x00007f397ac5bfe8:   xor    %rdx,%r15
   0.05%  │ │  0x00007f397ac5bfeb:   xor    %r12,%r14
   0.03%  │ │  0x00007f397ac5bfee:   mov    %r10,%r12
   0.32%  │ │  0x00007f397ac5bff1:   and    %rax,%r12
   0.14%  │ │  0x00007f397ac5bff4:   add    %r13,%r15
   0.05%  │ │  0x00007f397ac5bff7:   or     %r12,%rdi
   0.02%  │ │  0x00007f397ac5bffa:   add    %r14,%r9
   0.33%  │ │  0x00007f397ac5bffd:   add    %r15,%rbx
   0.12%  │ │  0x00007f397ac5c000:   add    %r15,%r9
   0.04%  │ │  0x00007f397ac5c003:   add    %rdi,%r9
   0.03%  │ │  0x00007f397ac5c006:   vpsrlq $0x13,%ymm4,%ymm3
   0.29%  │ │  0x00007f397ac5c00b:   vpsllq $0x2d,%ymm4,%ymm1
   0.10%  │ │  0x00007f397ac5c010:   vpor   %ymm1,%ymm3,%ymm3
   0.07%  │ │  0x00007f397ac5c014:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%  │ │  0x00007f397ac5c018:   vpsrlq $0x3d,%ymm4,%ymm3
   0.32%  │ │  0x00007f397ac5c01d:   vpsllq $0x3,%ymm4,%ymm1
   0.10%  │ │  0x00007f397ac5c022:   vpor   %ymm1,%ymm3,%ymm3
   0.06%  │ │  0x00007f397ac5c026:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │  0x00007f397ac5c02a:   vpaddq %ymm8,%ymm0,%ymm2
   0.26%  │ │  0x00007f397ac5c02f:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.21%  │ │  0x00007f397ac5c035:   mov    %r9,%rdi
   0.06%  │ │  0x00007f397ac5c038:   rorx   $0x29,%rbx,%r13
   0.03%  │ │  0x00007f397ac5c03e:   rorx   $0x12,%rbx,%r14
   0.26%  │ │  0x00007f397ac5c044:   add    0x18(%rsp),%rdx
   0.15%  │ │  0x00007f397ac5c049:   or     %r11,%rdi
   0.06%  │ │  0x00007f397ac5c04c:   mov    %rcx,%r15
   0.05%  │ │  0x00007f397ac5c04f:   xor    %r8,%r15
   0.28%  │ │  0x00007f397ac5c052:   rorx   $0x22,%r9,%r12
   0.13%  │ │  0x00007f397ac5c058:   xor    %r14,%r13
   0.06%  │ │  0x00007f397ac5c05b:   rorx   $0xe,%rbx,%r14
   0.04%  │ │  0x00007f397ac5c061:   and    %rbx,%r15
   0.23%  │ │  0x00007f397ac5c064:   add    %rdx,%rax
   0.15%  │ │  0x00007f397ac5c067:   and    %r10,%rdi
   0.05%  │ │  0x00007f397ac5c06a:   xor    %r14,%r13
   0.03%  │ │  0x00007f397ac5c06d:   rorx   $0x27,%r9,%r14
   0.25%  │ │  0x00007f397ac5c073:   xor    %r12,%r14
   0.16%  │ │  0x00007f397ac5c076:   rorx   $0x1c,%r9,%r12
   0.05%  │ │  0x00007f397ac5c07c:   xor    %r8,%r15
   0.03%  │ │  0x00007f397ac5c07f:   xor    %r12,%r14
   0.25%  │ │  0x00007f397ac5c082:   mov    %r9,%r12
   0.15%  │ │  0x00007f397ac5c085:   and    %r11,%r12
   0.05%  │ │  0x00007f397ac5c088:   add    %r13,%r15
   0.03%  │ │  0x00007f397ac5c08b:   or     %r12,%rdi
   0.25%  │ │  0x00007f397ac5c08e:   add    %r14,%rdx
   0.16%  │ │  0x00007f397ac5c091:   add    %r15,%rax
   0.04%  │ │  0x00007f397ac5c094:   add    %r15,%rdx
   0.03%  │ │  0x00007f397ac5c097:   add    %rdi,%rdx
   0.28%  │ │  0x00007f397ac5c09a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.16%  │ │  0x00007f397ac5c09f:   vmovdqu %ymm0,(%rsp)
   0.05%  │ │  0x00007f397ac5c0a4:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.03%  │ │  0x00007f397ac5c0aa:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.26%  │ │  0x00007f397ac5c0b0:   vpaddq %ymm5,%ymm0,%ymm0
   0.22%  │ │  0x00007f397ac5c0b4:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.04%  │ │  0x00007f397ac5c0ba:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.02%  │ │  0x00007f397ac5c0c0:   vpsrlq $0x1,%ymm1,%ymm2
   0.28%  │ │  0x00007f397ac5c0c5:   vpsllq $0x3f,%ymm1,%ymm3
   0.17%  │ │  0x00007f397ac5c0ca:   vpor   %ymm2,%ymm3,%ymm3
   0.06%  │ │  0x00007f397ac5c0ce:   vpsrlq $0x7,%ymm1,%ymm8
   0.04%  │ │  0x00007f397ac5c0d3:   mov    %rdx,%rdi
   0.25%  │ │  0x00007f397ac5c0d6:   rorx   $0x29,%rax,%r13
   0.18%  │ │  0x00007f397ac5c0dc:   rorx   $0x12,%rax,%r14
   0.05%  │ │  0x00007f397ac5c0e2:   add    (%rsp),%r8
   0.03%  │ │  0x00007f397ac5c0e6:   or     %r10,%rdi
   0.30%  │ │  0x00007f397ac5c0e9:   mov    %rbx,%r15
   0.14%  │ │  0x00007f397ac5c0ec:   xor    %rcx,%r15
   0.07%  │ │  0x00007f397ac5c0ef:   rorx   $0x22,%rdx,%r12
   0.03%  │ │  0x00007f397ac5c0f5:   xor    %r14,%r13
   0.24%  │ │  0x00007f397ac5c0f8:   rorx   $0xe,%rax,%r14
   0.16%  │ │  0x00007f397ac5c0fe:   and    %rax,%r15
   0.07%  │ │  0x00007f397ac5c101:   add    %r8,%r11
   0.04%  │ │  0x00007f397ac5c104:   and    %r9,%rdi
   0.25%  │ │  0x00007f397ac5c107:   xor    %r14,%r13
   0.19%  │ │  0x00007f397ac5c10a:   rorx   $0x27,%rdx,%r14
   0.05%  │ │  0x00007f397ac5c110:   xor    %r12,%r14
   0.02%  │ │  0x00007f397ac5c113:   rorx   $0x1c,%rdx,%r12
   0.24%  │ │  0x00007f397ac5c119:   xor    %rcx,%r15
   0.14%  │ │  0x00007f397ac5c11c:   xor    %r12,%r14
   0.06%  │ │  0x00007f397ac5c11f:   mov    %rdx,%r12
   0.03%  │ │  0x00007f397ac5c122:   and    %r10,%r12
   0.28%  │ │  0x00007f397ac5c125:   add    %r13,%r15
   0.17%  │ │  0x00007f397ac5c128:   or     %r12,%rdi
   0.06%  │ │  0x00007f397ac5c12b:   add    %r14,%r8
   0.03%  │ │  0x00007f397ac5c12e:   add    %r15,%r11
   0.26%  │ │  0x00007f397ac5c131:   add    %r15,%r8
   0.15%  │ │  0x00007f397ac5c134:   add    %rdi,%r8
   0.05%  │ │  0x00007f397ac5c137:   vpsrlq $0x8,%ymm1,%ymm2
   0.03%  │ │  0x00007f397ac5c13c:   vpsllq $0x38,%ymm1,%ymm1
   0.27%  │ │  0x00007f397ac5c141:   vpor   %ymm2,%ymm1,%ymm1
   0.16%  │ │  0x00007f397ac5c145:   vpxor  %ymm8,%ymm3,%ymm3
   0.08%  │ │  0x00007f397ac5c14a:   vpxor  %ymm1,%ymm3,%ymm1
   0.02%  │ │  0x00007f397ac5c14e:   vpaddq %ymm1,%ymm0,%ymm0
   0.28%  │ │  0x00007f397ac5c152:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.15%  │ │  0x00007f397ac5c158:   vpand  %ymm10,%ymm0,%ymm0
   0.07%  │ │  0x00007f397ac5c15d:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.04%  │ │  0x00007f397ac5c163:   vpsrlq $0x6,%ymm2,%ymm8
   0.23%  │ │  0x00007f397ac5c168:   mov    %r8,%rdi
   0.17%  │ │  0x00007f397ac5c16b:   rorx   $0x29,%r11,%r13
   0.05%  │ │  0x00007f397ac5c171:   rorx   $0x12,%r11,%r14
   0.02%  │ │  0x00007f397ac5c177:   add    0x8(%rsp),%rcx
   0.22%  │ │  0x00007f397ac5c17c:   or     %r9,%rdi
   0.15%  │ │  0x00007f397ac5c17f:   mov    %rax,%r15
   0.06%  │ │  0x00007f397ac5c182:   xor    %rbx,%r15
   0.04%  │ │  0x00007f397ac5c185:   rorx   $0x22,%r8,%r12
   0.25%  │ │  0x00007f397ac5c18b:   xor    %r14,%r13
   0.17%  │ │  0x00007f397ac5c18e:   rorx   $0xe,%r11,%r14
   0.08%  │ │  0x00007f397ac5c194:   and    %r11,%r15
   0.02%  │ │  0x00007f397ac5c197:   add    %rcx,%r10
   0.24%  │ │  0x00007f397ac5c19a:   and    %rdx,%rdi
   0.13%  │ │  0x00007f397ac5c19d:   xor    %r14,%r13
   0.08%  │ │  0x00007f397ac5c1a0:   rorx   $0x27,%r8,%r14
   0.02%  │ │  0x00007f397ac5c1a6:   xor    %r12,%r14
   0.25%  │ │  0x00007f397ac5c1a9:   rorx   $0x1c,%r8,%r12
   0.15%  │ │  0x00007f397ac5c1af:   xor    %rbx,%r15
   0.09%  │ │  0x00007f397ac5c1b2:   xor    %r12,%r14
   0.02%  │ │  0x00007f397ac5c1b5:   mov    %r8,%r12
   0.26%  │ │  0x00007f397ac5c1b8:   and    %r9,%r12
   0.17%  │ │  0x00007f397ac5c1bb:   add    %r13,%r15
   0.09%  │ │  0x00007f397ac5c1be:   or     %r12,%rdi
   0.03%  │ │  0x00007f397ac5c1c1:   add    %r14,%rcx
   0.25%  │ │  0x00007f397ac5c1c4:   add    %r15,%r10
   0.14%  │ │  0x00007f397ac5c1c7:   add    %r15,%rcx
   0.07%  │ │  0x00007f397ac5c1ca:   add    %rdi,%rcx
   0.02%  │ │  0x00007f397ac5c1cd:   vpsrlq $0x13,%ymm2,%ymm3
   0.24%  │ │  0x00007f397ac5c1d2:   vpsllq $0x2d,%ymm2,%ymm1
   0.15%  │ │  0x00007f397ac5c1d7:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │  0x00007f397ac5c1db:   vpxor  %ymm3,%ymm8,%ymm8
   0.02%  │ │  0x00007f397ac5c1df:   vpsrlq $0x3d,%ymm2,%ymm3
   0.20%  │ │  0x00007f397ac5c1e4:   vpsllq $0x3,%ymm2,%ymm1
   0.17%  │ │  0x00007f397ac5c1e9:   vpor   %ymm1,%ymm3,%ymm3
   0.06%  │ │  0x00007f397ac5c1ed:   vpxor  %ymm3,%ymm8,%ymm8
   0.03%  │ │  0x00007f397ac5c1f1:   vpaddq %ymm8,%ymm5,%ymm5
   0.25%  │ │  0x00007f397ac5c1f6:   vpsrlq $0x6,%ymm5,%ymm8
   0.14%  │ │  0x00007f397ac5c1fb:   mov    %rcx,%rdi
   0.08%  │ │  0x00007f397ac5c1fe:   rorx   $0x29,%r10,%r13
   0.04%  │ │  0x00007f397ac5c204:   rorx   $0x12,%r10,%r14
   0.23%  │ │  0x00007f397ac5c20a:   add    0x10(%rsp),%rbx
   0.16%  │ │  0x00007f397ac5c20f:   or     %rdx,%rdi
   0.07%  │ │  0x00007f397ac5c212:   mov    %r11,%r15
   0.03%  │ │  0x00007f397ac5c215:   xor    %rax,%r15
   0.19%  │ │  0x00007f397ac5c218:   rorx   $0x22,%rcx,%r12
   0.15%  │ │  0x00007f397ac5c21e:   xor    %r14,%r13
   0.08%  │ │  0x00007f397ac5c221:   rorx   $0xe,%r10,%r14
   0.02%  │ │  0x00007f397ac5c227:   and    %r10,%r15
   0.26%  │ │  0x00007f397ac5c22a:   add    %rbx,%r9
   0.18%  │ │  0x00007f397ac5c22d:   and    %r8,%rdi
   0.06%  │ │  0x00007f397ac5c230:   xor    %r14,%r13
   0.02%  │ │  0x00007f397ac5c233:   rorx   $0x27,%rcx,%r14
   0.25%  │ │  0x00007f397ac5c239:   xor    %r12,%r14
   0.16%  │ │  0x00007f397ac5c23c:   rorx   $0x1c,%rcx,%r12
   0.06%  │ │  0x00007f397ac5c242:   xor    %rax,%r15
   0.01%  │ │  0x00007f397ac5c245:   xor    %r12,%r14
   0.25%  │ │  0x00007f397ac5c248:   mov    %rcx,%r12
   0.17%  │ │  0x00007f397ac5c24b:   and    %rdx,%r12
   0.07%  │ │  0x00007f397ac5c24e:   add    %r13,%r15
   0.02%  │ │  0x00007f397ac5c251:   or     %r12,%rdi
   0.24%  │ │  0x00007f397ac5c254:   add    %r14,%rbx
   0.19%  │ │  0x00007f397ac5c257:   add    %r15,%r9
   0.05%  │ │  0x00007f397ac5c25a:   add    %r15,%rbx
   0.02%  │ │  0x00007f397ac5c25d:   add    %rdi,%rbx
   0.27%  │ │  0x00007f397ac5c260:   vpsrlq $0x13,%ymm5,%ymm3
   0.15%  │ │  0x00007f397ac5c265:   vpsllq $0x2d,%ymm5,%ymm1
   0.08%  │ │  0x00007f397ac5c26a:   vpor   %ymm1,%ymm3,%ymm3
   0.03%  │ │  0x00007f397ac5c26e:   vpxor  %ymm3,%ymm8,%ymm8
   0.24%  │ │  0x00007f397ac5c272:   vpsrlq $0x3d,%ymm5,%ymm3
   0.17%  │ │  0x00007f397ac5c277:   vpsllq $0x3,%ymm5,%ymm1
   0.08%  │ │  0x00007f397ac5c27c:   vpor   %ymm1,%ymm3,%ymm3
   0.04%  │ │  0x00007f397ac5c280:   vpxor  %ymm3,%ymm8,%ymm8
   0.22%  │ │  0x00007f397ac5c284:   vpaddq %ymm8,%ymm0,%ymm2
   0.19%  │ │  0x00007f397ac5c289:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.12%  │ │  0x00007f397ac5c28f:   mov    %rbx,%rdi
   0.03%  │ │  0x00007f397ac5c292:   rorx   $0x29,%r9,%r13
   0.24%  │ │  0x00007f397ac5c298:   rorx   $0x12,%r9,%r14
   0.15%  │ │  0x00007f397ac5c29e:   add    0x18(%rsp),%rax
   0.08%  │ │  0x00007f397ac5c2a3:   or     %r8,%rdi
   0.03%  │ │  0x00007f397ac5c2a6:   mov    %r10,%r15
   0.22%  │ │  0x00007f397ac5c2a9:   xor    %r11,%r15
   0.16%  │ │  0x00007f397ac5c2ac:   rorx   $0x22,%rbx,%r12
   0.11%  │ │  0x00007f397ac5c2b2:   xor    %r14,%r13
   0.02%  │ │  0x00007f397ac5c2b5:   rorx   $0xe,%r9,%r14
   0.23%  │ │  0x00007f397ac5c2bb:   and    %r9,%r15
   0.15%  │ │  0x00007f397ac5c2be:   add    %rax,%rdx
   0.08%  │ │  0x00007f397ac5c2c1:   and    %rcx,%rdi
   0.03%  │ │  0x00007f397ac5c2c4:   xor    %r14,%r13
   0.19%  │ │  0x00007f397ac5c2c7:   rorx   $0x27,%rbx,%r14
   0.16%  │ │  0x00007f397ac5c2cd:   xor    %r12,%r14
   0.09%  │ │  0x00007f397ac5c2d0:   rorx   $0x1c,%rbx,%r12
   0.03%  │ │  0x00007f397ac5c2d6:   xor    %r11,%r15
   0.21%  │ │  0x00007f397ac5c2d9:   xor    %r12,%r14
   0.16%  │ │  0x00007f397ac5c2dc:   mov    %rbx,%r12
   0.10%  │ │  0x00007f397ac5c2df:   and    %r8,%r12
   0.03%  │ │  0x00007f397ac5c2e2:   add    %r13,%r15
   0.24%  │ │  0x00007f397ac5c2e5:   or     %r12,%rdi
   0.17%  │ │  0x00007f397ac5c2e8:   add    %r14,%rax
   0.09%  │ │  0x00007f397ac5c2eb:   add    %r15,%rdx
   0.02%  │ │  0x00007f397ac5c2ee:   add    %r15,%rax
   0.24%  │ │  0x00007f397ac5c2f1:   add    %rdi,%rax
   0.15%  │ │  0x00007f397ac5c2f4:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.10%  │ │  0x00007f397ac5c2f9:   vmovdqu %ymm0,(%rsp)
   0.04%  │ │  0x00007f397ac5c2fe:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.25%  │ │  0x00007f397ac5c304:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.19%  │ │  0x00007f397ac5c30a:   vpaddq %ymm6,%ymm0,%ymm0
   0.18%  │ │  0x00007f397ac5c30e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.02%  │ │  0x00007f397ac5c314:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.19%  │ │  0x00007f397ac5c31a:   vpsrlq $0x1,%ymm1,%ymm2
   0.15%  │ │  0x00007f397ac5c31f:   vpsllq $0x3f,%ymm1,%ymm3
   0.15%  │ │  0x00007f397ac5c324:   vpor   %ymm2,%ymm3,%ymm3
   0.03%  │ │  0x00007f397ac5c328:   vpsrlq $0x7,%ymm1,%ymm8
   0.23%  │ │  0x00007f397ac5c32d:   mov    %rax,%rdi
   0.14%  │ │  0x00007f397ac5c330:   rorx   $0x29,%rdx,%r13
   0.12%  │ │  0x00007f397ac5c336:   rorx   $0x12,%rdx,%r14
   0.04%  │ │  0x00007f397ac5c33c:   add    (%rsp),%r11
   0.22%  │ │  0x00007f397ac5c340:   or     %rcx,%rdi
   0.14%  │ │  0x00007f397ac5c343:   mov    %r9,%r15
   0.13%  │ │  0x00007f397ac5c346:   xor    %r10,%r15
   0.04%  │ │  0x00007f397ac5c349:   rorx   $0x22,%rax,%r12
   0.20%  │ │  0x00007f397ac5c34f:   xor    %r14,%r13
   0.15%  │ │  0x00007f397ac5c352:   rorx   $0xe,%rdx,%r14
   0.15%  │ │  0x00007f397ac5c358:   and    %rdx,%r15
   0.02%  │ │  0x00007f397ac5c35b:   add    %r11,%r8
   0.23%  │ │  0x00007f397ac5c35e:   and    %rbx,%rdi
   0.13%  │ │  0x00007f397ac5c361:   xor    %r14,%r13
   0.14%  │ │  0x00007f397ac5c364:   rorx   $0x27,%rax,%r14
   0.02%  │ │  0x00007f397ac5c36a:   xor    %r12,%r14
   0.24%  │ │  0x00007f397ac5c36d:   rorx   $0x1c,%rax,%r12
   0.11%  │ │  0x00007f397ac5c373:   xor    %r10,%r15
   0.14%  │ │  0x00007f397ac5c376:   xor    %r12,%r14
   0.04%  │ │  0x00007f397ac5c379:   mov    %rax,%r12
   0.21%  │ │  0x00007f397ac5c37c:   and    %rcx,%r12
   0.12%  │ │  0x00007f397ac5c37f:   add    %r13,%r15
   0.12%  │ │  0x00007f397ac5c382:   or     %r12,%rdi
   0.02%  │ │  0x00007f397ac5c385:   add    %r14,%r11
   0.23%  │ │  0x00007f397ac5c388:   add    %r15,%r8
   0.13%  │ │  0x00007f397ac5c38b:   add    %r15,%r11
   0.14%  │ │  0x00007f397ac5c38e:   add    %rdi,%r11
   0.04%  │ │  0x00007f397ac5c391:   vpsrlq $0x8,%ymm1,%ymm2
   0.23%  │ │  0x00007f397ac5c396:   vpsllq $0x38,%ymm1,%ymm1
   0.15%  │ │  0x00007f397ac5c39b:   vpor   %ymm2,%ymm1,%ymm1
   0.11%  │ │  0x00007f397ac5c39f:   vpxor  %ymm8,%ymm3,%ymm3
   0.04%  │ │  0x00007f397ac5c3a4:   vpxor  %ymm1,%ymm3,%ymm1
   0.22%  │ │  0x00007f397ac5c3a8:   vpaddq %ymm1,%ymm0,%ymm0
   0.12%  │ │  0x00007f397ac5c3ac:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.13%  │ │  0x00007f397ac5c3b2:   vpand  %ymm10,%ymm0,%ymm0
   0.04%  │ │  0x00007f397ac5c3b7:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.24%  │ │  0x00007f397ac5c3bd:   vpsrlq $0x6,%ymm2,%ymm8
   0.13%  │ │  0x00007f397ac5c3c2:   mov    %r11,%rdi
   0.14%  │ │  0x00007f397ac5c3c5:   rorx   $0x29,%r8,%r13
   0.04%  │ │  0x00007f397ac5c3cb:   rorx   $0x12,%r8,%r14
   0.21%  │ │  0x00007f397ac5c3d1:   add    0x8(%rsp),%r10
   0.13%  │ │  0x00007f397ac5c3d6:   or     %rbx,%rdi
   0.10%  │ │  0x00007f397ac5c3d9:   mov    %rdx,%r15
   0.04%  │ │  0x00007f397ac5c3dc:   xor    %r9,%r15
   0.18%  │ │  0x00007f397ac5c3df:   rorx   $0x22,%r11,%r12
   0.13%  │ │  0x00007f397ac5c3e5:   xor    %r14,%r13
   0.13%  │ │  0x00007f397ac5c3e8:   rorx   $0xe,%r8,%r14
   0.03%  │ │  0x00007f397ac5c3ee:   and    %r8,%r15
   0.21%  │ │  0x00007f397ac5c3f1:   add    %r10,%rcx
   0.14%  │ │  0x00007f397ac5c3f4:   and    %rax,%rdi
   0.12%  │ │  0x00007f397ac5c3f7:   xor    %r14,%r13
   0.05%  │ │  0x00007f397ac5c3fa:   rorx   $0x27,%r11,%r14
   0.21%  │ │  0x00007f397ac5c400:   xor    %r12,%r14
   0.12%  │ │  0x00007f397ac5c403:   rorx   $0x1c,%r11,%r12
   0.13%  │ │  0x00007f397ac5c409:   xor    %r9,%r15
   0.03%  │ │  0x00007f397ac5c40c:   xor    %r12,%r14
   0.20%  │ │  0x00007f397ac5c40f:   mov    %r11,%r12
   0.11%  │ │  0x00007f397ac5c412:   and    %rbx,%r12
   0.13%  │ │  0x00007f397ac5c415:   add    %r13,%r15
   0.04%  │ │  0x00007f397ac5c418:   or     %r12,%rdi
   0.23%  │ │  0x00007f397ac5c41b:   add    %r14,%r10
   0.12%  │ │  0x00007f397ac5c41e:   add    %r15,%rcx
   0.12%  │ │  0x00007f397ac5c421:   add    %r15,%r10
   0.04%  │ │  0x00007f397ac5c424:   add    %rdi,%r10
   0.21%  │ │  0x00007f397ac5c427:   vpsrlq $0x13,%ymm2,%ymm3
   0.14%  │ │  0x00007f397ac5c42c:   vpsllq $0x2d,%ymm2,%ymm1
   0.14%  │ │  0x00007f397ac5c431:   vpor   %ymm1,%ymm3,%ymm3
   0.04%  │ │  0x00007f397ac5c435:   vpxor  %ymm3,%ymm8,%ymm8
   0.19%  │ │  0x00007f397ac5c439:   vpsrlq $0x3d,%ymm2,%ymm3
   0.14%  │ │  0x00007f397ac5c43e:   vpsllq $0x3,%ymm2,%ymm1
   0.15%  │ │  0x00007f397ac5c443:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │  0x00007f397ac5c447:   vpxor  %ymm3,%ymm8,%ymm8
   0.17%  │ │  0x00007f397ac5c44b:   vpaddq %ymm8,%ymm6,%ymm6
   0.12%  │ │  0x00007f397ac5c450:   vpsrlq $0x6,%ymm6,%ymm8
   0.12%  │ │  0x00007f397ac5c455:   mov    %r10,%rdi
   0.03%  │ │  0x00007f397ac5c458:   rorx   $0x29,%rcx,%r13
   0.23%  │ │  0x00007f397ac5c45e:   rorx   $0x12,%rcx,%r14
   0.13%  │ │  0x00007f397ac5c464:   add    0x10(%rsp),%r9
   0.12%  │ │  0x00007f397ac5c469:   or     %rax,%rdi
   0.04%  │ │  0x00007f397ac5c46c:   mov    %r8,%r15
   0.18%  │ │  0x00007f397ac5c46f:   xor    %rdx,%r15
   0.11%  │ │  0x00007f397ac5c472:   rorx   $0x22,%r10,%r12
   0.15%  │ │  0x00007f397ac5c478:   xor    %r14,%r13
   0.04%  │ │  0x00007f397ac5c47b:   rorx   $0xe,%rcx,%r14
   0.19%  │ │  0x00007f397ac5c481:   and    %rcx,%r15
   0.14%  │ │  0x00007f397ac5c484:   add    %r9,%rbx
   0.13%  │ │  0x00007f397ac5c487:   and    %r11,%rdi
   0.03%  │ │  0x00007f397ac5c48a:   xor    %r14,%r13
   0.19%  │ │  0x00007f397ac5c48d:   rorx   $0x27,%r10,%r14
   0.13%  │ │  0x00007f397ac5c493:   xor    %r12,%r14
   0.15%  │ │  0x00007f397ac5c496:   rorx   $0x1c,%r10,%r12
   0.05%  │ │  0x00007f397ac5c49c:   xor    %rdx,%r15
   0.23%  │ │  0x00007f397ac5c49f:   xor    %r12,%r14
   0.15%  │ │  0x00007f397ac5c4a2:   mov    %r10,%r12
   0.12%  │ │  0x00007f397ac5c4a5:   and    %rax,%r12
   0.04%  │ │  0x00007f397ac5c4a8:   add    %r13,%r15
   0.22%  │ │  0x00007f397ac5c4ab:   or     %r12,%rdi
   0.10%  │ │  0x00007f397ac5c4ae:   add    %r14,%r9
   0.12%  │ │  0x00007f397ac5c4b1:   add    %r15,%rbx
   0.04%  │ │  0x00007f397ac5c4b4:   add    %r15,%r9
   0.21%  │ │  0x00007f397ac5c4b7:   add    %rdi,%r9
   0.12%  │ │  0x00007f397ac5c4ba:   vpsrlq $0x13,%ymm6,%ymm3
   0.10%  │ │  0x00007f397ac5c4bf:   vpsllq $0x2d,%ymm6,%ymm1
   0.04%  │ │  0x00007f397ac5c4c4:   vpor   %ymm1,%ymm3,%ymm3
   0.22%  │ │  0x00007f397ac5c4c8:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%  │ │  0x00007f397ac5c4cc:   vpsrlq $0x3d,%ymm6,%ymm3
   0.14%  │ │  0x00007f397ac5c4d1:   vpsllq $0x3,%ymm6,%ymm1
   0.05%  │ │  0x00007f397ac5c4d6:   vpor   %ymm1,%ymm3,%ymm3
   0.24%  │ │  0x00007f397ac5c4da:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%  │ │  0x00007f397ac5c4de:   vpaddq %ymm8,%ymm0,%ymm2
   0.16%  │ │  0x00007f397ac5c4e3:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.13%  │ │  0x00007f397ac5c4e9:   mov    %r9,%rdi
   0.21%  │ │  0x00007f397ac5c4ec:   rorx   $0x29,%rbx,%r13
   0.11%  │ │  0x00007f397ac5c4f2:   rorx   $0x12,%rbx,%r14
   0.09%  │ │  0x00007f397ac5c4f8:   add    0x18(%rsp),%rdx
   0.10%  │ │  0x00007f397ac5c4fd:   or     %r11,%rdi
   0.23%  │ │  0x00007f397ac5c500:   mov    %rcx,%r15
   0.09%  │ │  0x00007f397ac5c503:   xor    %r8,%r15
   0.12%  │ │  0x00007f397ac5c506:   rorx   $0x22,%r9,%r12
   0.07%  │ │  0x00007f397ac5c50c:   xor    %r14,%r13
   0.21%  │ │  0x00007f397ac5c50f:   rorx   $0xe,%rbx,%r14
   0.10%  │ │  0x00007f397ac5c515:   and    %rbx,%r15
   0.14%  │ │  0x00007f397ac5c518:   add    %rdx,%rax
   0.08%  │ │  0x00007f397ac5c51b:   and    %r10,%rdi
   0.17%  │ │  0x00007f397ac5c51e:   xor    %r14,%r13
   0.10%  │ │  0x00007f397ac5c521:   rorx   $0x27,%r9,%r14
   0.11%  │ │  0x00007f397ac5c527:   xor    %r12,%r14
   0.09%  │ │  0x00007f397ac5c52a:   rorx   $0x1c,%r9,%r12
   0.23%  │ │  0x00007f397ac5c530:   xor    %r8,%r15
   0.12%  │ │  0x00007f397ac5c533:   xor    %r12,%r14
   0.09%  │ │  0x00007f397ac5c536:   mov    %r9,%r12
   0.09%  │ │  0x00007f397ac5c539:   and    %r11,%r12
   0.19%  │ │  0x00007f397ac5c53c:   add    %r13,%r15
   0.08%  │ │  0x00007f397ac5c53f:   or     %r12,%rdi
   0.13%  │ │  0x00007f397ac5c542:   add    %r14,%rdx
   0.08%  │ │  0x00007f397ac5c545:   add    %r15,%rax
   0.21%  │ │  0x00007f397ac5c548:   add    %r15,%rdx
   0.11%  │ │  0x00007f397ac5c54b:   add    %rdi,%rdx
   0.13%  │ │  0x00007f397ac5c54e:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.09%  │ │  0x00007f397ac5c553:   vmovdqu %ymm0,(%rsp)
   0.17%  │ │  0x00007f397ac5c558:   add    $0x80,%rbp
   0.09%  │ │  0x00007f397ac5c55f:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.09%  │ │  0x00007f397ac5c565:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.07%  │ │  0x00007f397ac5c56b:   vpaddq %ymm7,%ymm0,%ymm0
   0.26%  │ │  0x00007f397ac5c56f:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.08%  │ │  0x00007f397ac5c575:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.11%  │ │  0x00007f397ac5c57b:   vpsrlq $0x1,%ymm1,%ymm2
   0.09%  │ │  0x00007f397ac5c580:   vpsllq $0x3f,%ymm1,%ymm3
   0.24%  │ │  0x00007f397ac5c585:   vpor   %ymm2,%ymm3,%ymm3
   0.11%  │ │  0x00007f397ac5c589:   vpsrlq $0x7,%ymm1,%ymm8
   0.06%  │ │  0x00007f397ac5c58e:   mov    %rdx,%rdi
   0.07%  │ │  0x00007f397ac5c591:   rorx   $0x29,%rax,%r13
   0.21%  │ │  0x00007f397ac5c597:   rorx   $0x12,%rax,%r14
   0.07%  │ │  0x00007f397ac5c59d:   add    (%rsp),%r8
   0.10%  │ │  0x00007f397ac5c5a1:   or     %r10,%rdi
   0.11%  │ │  0x00007f397ac5c5a4:   mov    %rbx,%r15
   0.22%  │ │  0x00007f397ac5c5a7:   xor    %rcx,%r15
   0.12%  │ │  0x00007f397ac5c5aa:   rorx   $0x22,%rdx,%r12
   0.11%  │ │  0x00007f397ac5c5b0:   xor    %r14,%r13
   0.08%  │ │  0x00007f397ac5c5b3:   rorx   $0xe,%rax,%r14
   0.25%  │ │  0x00007f397ac5c5b9:   and    %rax,%r15
   0.11%  │ │  0x00007f397ac5c5bc:   add    %r8,%r11
   0.09%  │ │  0x00007f397ac5c5bf:   and    %r9,%rdi
   0.09%  │ │  0x00007f397ac5c5c2:   xor    %r14,%r13
   0.25%  │ │  0x00007f397ac5c5c5:   rorx   $0x27,%rdx,%r14
   0.11%  │ │  0x00007f397ac5c5cb:   xor    %r12,%r14
   0.06%  │ │  0x00007f397ac5c5ce:   rorx   $0x1c,%rdx,%r12
   0.08%  │ │  0x00007f397ac5c5d4:   xor    %rcx,%r15
   0.24%  │ │  0x00007f397ac5c5d7:   xor    %r12,%r14
   0.10%  │ │  0x00007f397ac5c5da:   mov    %rdx,%r12
   0.09%  │ │  0x00007f397ac5c5dd:   and    %r10,%r12
   0.08%  │ │  0x00007f397ac5c5e0:   add    %r13,%r15
   0.25%  │ │  0x00007f397ac5c5e3:   or     %r12,%rdi
   0.12%  │ │  0x00007f397ac5c5e6:   add    %r14,%r8
   0.08%  │ │  0x00007f397ac5c5e9:   add    %r15,%r11
   0.08%  │ │  0x00007f397ac5c5ec:   add    %r15,%r8
   0.24%  │ │  0x00007f397ac5c5ef:   add    %rdi,%r8
   0.10%  │ │  0x00007f397ac5c5f2:   vpsrlq $0x8,%ymm1,%ymm2
   0.08%  │ │  0x00007f397ac5c5f7:   vpsllq $0x38,%ymm1,%ymm1
   0.09%  │ │  0x00007f397ac5c5fc:   vpor   %ymm2,%ymm1,%ymm1
   0.20%  │ │  0x00007f397ac5c600:   vpxor  %ymm8,%ymm3,%ymm3
   0.13%  │ │  0x00007f397ac5c605:   vpxor  %ymm1,%ymm3,%ymm1
   0.09%  │ │  0x00007f397ac5c609:   vpaddq %ymm1,%ymm0,%ymm0
   0.10%  │ │  0x00007f397ac5c60d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.23%  │ │  0x00007f397ac5c613:   vpand  %ymm10,%ymm0,%ymm0
   0.11%  │ │  0x00007f397ac5c618:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.10%  │ │  0x00007f397ac5c61e:   vpsrlq $0x6,%ymm2,%ymm8
   0.07%  │ │  0x00007f397ac5c623:   mov    %r8,%rdi
   0.22%  │ │  0x00007f397ac5c626:   rorx   $0x29,%r11,%r13
   0.10%  │ │  0x00007f397ac5c62c:   rorx   $0x12,%r11,%r14
   0.11%  │ │  0x00007f397ac5c632:   add    0x8(%rsp),%rcx
   0.08%  │ │  0x00007f397ac5c637:   or     %r9,%rdi
   0.26%  │ │  0x00007f397ac5c63a:   mov    %rax,%r15
   0.10%  │ │  0x00007f397ac5c63d:   xor    %rbx,%r15
   0.09%  │ │  0x00007f397ac5c640:   rorx   $0x22,%r8,%r12
   0.09%  │ │  0x00007f397ac5c646:   xor    %r14,%r13
   0.24%  │ │  0x00007f397ac5c649:   rorx   $0xe,%r11,%r14
   0.09%  │ │  0x00007f397ac5c64f:   and    %r11,%r15
   0.10%  │ │  0x00007f397ac5c652:   add    %rcx,%r10
   0.06%  │ │  0x00007f397ac5c655:   and    %rdx,%rdi
   0.21%  │ │  0x00007f397ac5c658:   xor    %r14,%r13
   0.09%  │ │  0x00007f397ac5c65b:   rorx   $0x27,%r8,%r14
   0.06%  │ │  0x00007f397ac5c661:   xor    %r12,%r14
   0.08%  │ │  0x00007f397ac5c664:   rorx   $0x1c,%r8,%r12
   0.26%  │ │  0x00007f397ac5c66a:   xor    %rbx,%r15
   0.14%  │ │  0x00007f397ac5c66d:   xor    %r12,%r14
   0.09%  │ │  0x00007f397ac5c670:   mov    %r8,%r12
   0.08%  │ │  0x00007f397ac5c673:   and    %r9,%r12
   0.21%  │ │  0x00007f397ac5c676:   add    %r13,%r15
   0.11%  │ │  0x00007f397ac5c679:   or     %r12,%rdi
   0.09%  │ │  0x00007f397ac5c67c:   add    %r14,%rcx
   0.07%  │ │  0x00007f397ac5c67f:   add    %r15,%r10
   0.25%  │ │  0x00007f397ac5c682:   add    %r15,%rcx
   0.11%  │ │  0x00007f397ac5c685:   add    %rdi,%rcx
   0.09%  │ │  0x00007f397ac5c688:   vpsrlq $0x13,%ymm2,%ymm3
   0.09%  │ │  0x00007f397ac5c68d:   vpsllq $0x2d,%ymm2,%ymm1
   0.22%  │ │  0x00007f397ac5c692:   vpor   %ymm1,%ymm3,%ymm3
   0.12%  │ │  0x00007f397ac5c696:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%  │ │  0x00007f397ac5c69a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.07%  │ │  0x00007f397ac5c69f:   vpsllq $0x3,%ymm2,%ymm1
   0.23%  │ │  0x00007f397ac5c6a4:   vpor   %ymm1,%ymm3,%ymm3
   0.12%  │ │  0x00007f397ac5c6a8:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%  │ │  0x00007f397ac5c6ac:   vpaddq %ymm8,%ymm7,%ymm7
   0.06%  │ │  0x00007f397ac5c6b1:   vpsrlq $0x6,%ymm7,%ymm8
   0.25%  │ │  0x00007f397ac5c6b6:   mov    %rcx,%rdi
   0.11%  │ │  0x00007f397ac5c6b9:   rorx   $0x29,%r10,%r13
   0.06%  │ │  0x00007f397ac5c6bf:   rorx   $0x12,%r10,%r14
   0.08%  │ │  0x00007f397ac5c6c5:   add    0x10(%rsp),%rbx
   0.23%  │ │  0x00007f397ac5c6ca:   or     %rdx,%rdi
   0.09%  │ │  0x00007f397ac5c6cd:   mov    %r11,%r15
   0.07%  │ │  0x00007f397ac5c6d0:   xor    %rax,%r15
   0.07%  │ │  0x00007f397ac5c6d3:   rorx   $0x22,%rcx,%r12
   0.28%  │ │  0x00007f397ac5c6d9:   xor    %r14,%r13
   0.11%  │ │  0x00007f397ac5c6dc:   rorx   $0xe,%r10,%r14
   0.07%  │ │  0x00007f397ac5c6e2:   and    %r10,%r15
   0.08%  │ │  0x00007f397ac5c6e5:   add    %rbx,%r9
   0.23%  │ │  0x00007f397ac5c6e8:   and    %r8,%rdi
   0.11%  │ │  0x00007f397ac5c6eb:   xor    %r14,%r13
   0.09%  │ │  0x00007f397ac5c6ee:   rorx   $0x27,%rcx,%r14
   0.07%  │ │  0x00007f397ac5c6f4:   xor    %r12,%r14
   0.24%  │ │  0x00007f397ac5c6f7:   rorx   $0x1c,%rcx,%r12
   0.12%  │ │  0x00007f397ac5c6fd:   xor    %rax,%r15
   0.08%  │ │  0x00007f397ac5c700:   xor    %r12,%r14
   0.08%  │ │  0x00007f397ac5c703:   mov    %rcx,%r12
   0.23%  │ │  0x00007f397ac5c706:   and    %rdx,%r12
   0.10%  │ │  0x00007f397ac5c709:   add    %r13,%r15
   0.10%  │ │  0x00007f397ac5c70c:   or     %r12,%rdi
   0.09%  │ │  0x00007f397ac5c70f:   add    %r14,%rbx
   0.21%  │ │  0x00007f397ac5c712:   add    %r15,%r9
   0.12%  │ │  0x00007f397ac5c715:   add    %r15,%rbx
   0.10%  │ │  0x00007f397ac5c718:   add    %rdi,%rbx
   0.07%  │ │  0x00007f397ac5c71b:   vpsrlq $0x13,%ymm7,%ymm3
   0.24%  │ │  0x00007f397ac5c720:   vpsllq $0x2d,%ymm7,%ymm1
   0.12%  │ │  0x00007f397ac5c725:   vpor   %ymm1,%ymm3,%ymm3
   0.09%  │ │  0x00007f397ac5c729:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%  │ │  0x00007f397ac5c72d:   vpsrlq $0x3d,%ymm7,%ymm3
   0.27%  │ │  0x00007f397ac5c732:   vpsllq $0x3,%ymm7,%ymm1
   0.10%  │ │  0x00007f397ac5c737:   vpor   %ymm1,%ymm3,%ymm3
   0.12%  │ │  0x00007f397ac5c73b:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%  │ │  0x00007f397ac5c73f:   vpaddq %ymm8,%ymm0,%ymm2
   0.24%  │ │  0x00007f397ac5c744:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.22%  │ │  0x00007f397ac5c74a:   mov    %rbx,%rdi
   0.08%  │ │  0x00007f397ac5c74d:   rorx   $0x29,%r9,%r13
   0.07%  │ │  0x00007f397ac5c753:   rorx   $0x12,%r9,%r14
   0.22%  │ │  0x00007f397ac5c759:   add    0x18(%rsp),%rax
   0.16%  │ │  0x00007f397ac5c75e:   or     %r8,%rdi
   0.10%  │ │  0x00007f397ac5c761:   mov    %r10,%r15
   0.07%  │ │  0x00007f397ac5c764:   xor    %r11,%r15
   0.19%  │ │  0x00007f397ac5c767:   rorx   $0x22,%rbx,%r12
   0.15%  │ │  0x00007f397ac5c76d:   xor    %r14,%r13
   0.09%  │ │  0x00007f397ac5c770:   rorx   $0xe,%r9,%r14
   0.06%  │ │  0x00007f397ac5c776:   and    %r9,%r15
   0.22%  │ │  0x00007f397ac5c779:   add    %rax,%rdx
   0.15%  │ │  0x00007f397ac5c77c:   and    %rcx,%rdi
   0.11%  │ │  0x00007f397ac5c77f:   xor    %r14,%r13
   0.06%  │ │  0x00007f397ac5c782:   rorx   $0x27,%rbx,%r14
   0.16%  │ │  0x00007f397ac5c788:   xor    %r12,%r14
   0.15%  │ │  0x00007f397ac5c78b:   rorx   $0x1c,%rbx,%r12
   0.11%  │ │  0x00007f397ac5c791:   xor    %r11,%r15
   0.05%  │ │  0x00007f397ac5c794:   xor    %r12,%r14
   0.17%  │ │  0x00007f397ac5c797:   mov    %rbx,%r12
   0.11%  │ │  0x00007f397ac5c79a:   and    %r8,%r12
   0.10%  │ │  0x00007f397ac5c79d:   add    %r13,%r15
   0.08%  │ │  0x00007f397ac5c7a0:   or     %r12,%rdi
   0.19%  │ │  0x00007f397ac5c7a3:   add    %r14,%rax
   0.15%  │ │  0x00007f397ac5c7a6:   add    %r15,%rdx
   0.08%  │ │  0x00007f397ac5c7a9:   add    %r15,%rax
   0.05%  │ │  0x00007f397ac5c7ac:   add    %rdi,%rax
   0.21%  │ │  0x00007f397ac5c7af:   subq   $0x1,0x20(%rsp)
   0.24%  ╰ │  0x00007f397ac5c7b5:   jne    0x00007f397ac5be40
   0.03%    │  0x00007f397ac5c7bb:   movq   $0x2,0x20(%rsp)
   0.06%   ↗│  0x00007f397ac5c7c4:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.06%   ││  0x00007f397ac5c7c9:   vmovdqu %ymm0,(%rsp)
   0.07%   ││  0x00007f397ac5c7ce:   mov    %r9,%r15
   0.11%   ││  0x00007f397ac5c7d1:   rorx   $0x29,%rdx,%r13
   0.05%   ││  0x00007f397ac5c7d7:   rorx   $0x12,%rdx,%r14
   0.06%   ││  0x00007f397ac5c7dd:   xor    %r10,%r15
   0.05%   ││  0x00007f397ac5c7e0:   xor    %r14,%r13
   0.07%   ││  0x00007f397ac5c7e3:   rorx   $0xe,%rdx,%r14
   0.07%   ││  0x00007f397ac5c7e9:   and    %rdx,%r15
   0.06%   ││  0x00007f397ac5c7ec:   xor    %r14,%r13
   0.05%   ││  0x00007f397ac5c7ef:   rorx   $0x22,%rax,%r12
   0.06%   ││  0x00007f397ac5c7f5:   xor    %r10,%r15
   0.06%   ││  0x00007f397ac5c7f8:   rorx   $0x27,%rax,%r14
   0.08%   ││  0x00007f397ac5c7fe:   mov    %rax,%rdi
   0.06%   ││  0x00007f397ac5c801:   xor    %r12,%r14
   0.06%   ││  0x00007f397ac5c804:   rorx   $0x1c,%rax,%r12
   0.06%   ││  0x00007f397ac5c80a:   add    (%rsp),%r11
   0.05%   ││  0x00007f397ac5c80e:   or     %rcx,%rdi
   0.05%   ││  0x00007f397ac5c811:   xor    %r12,%r14
   0.05%   ││  0x00007f397ac5c814:   mov    %rax,%r12
   0.08%   ││  0x00007f397ac5c817:   and    %rbx,%rdi
   0.05%   ││  0x00007f397ac5c81a:   and    %rcx,%r12
   0.05%   ││  0x00007f397ac5c81d:   add    %r13,%r15
   0.07%   ││  0x00007f397ac5c820:   add    %r11,%r8
   0.07%   ││  0x00007f397ac5c823:   or     %r12,%rdi
   0.06%   ││  0x00007f397ac5c826:   add    %r14,%r11
   0.06%   ││  0x00007f397ac5c829:   add    %r15,%r8
   0.04%   ││  0x00007f397ac5c82c:   add    %r15,%r11
   0.08%   ││  0x00007f397ac5c82f:   mov    %rdx,%r15
   0.07%   ││  0x00007f397ac5c832:   rorx   $0x29,%r8,%r13
   0.06%   ││  0x00007f397ac5c838:   rorx   $0x12,%r8,%r14
   0.07%   ││  0x00007f397ac5c83e:   xor    %r9,%r15
   0.05%   ││  0x00007f397ac5c841:   xor    %r14,%r13
   0.06%   ││  0x00007f397ac5c844:   rorx   $0xe,%r8,%r14
   0.06%   ││  0x00007f397ac5c84a:   and    %r8,%r15
   0.08%   ││  0x00007f397ac5c84d:   add    %rdi,%r11
   0.06%   ││  0x00007f397ac5c850:   xor    %r14,%r13
   0.08%   ││  0x00007f397ac5c853:   rorx   $0x22,%r11,%r12
   0.05%   ││  0x00007f397ac5c859:   xor    %r9,%r15
   0.09%   ││  0x00007f397ac5c85c:   rorx   $0x27,%r11,%r14
   0.08%   ││  0x00007f397ac5c862:   mov    %r11,%rdi
   0.07%   ││  0x00007f397ac5c865:   xor    %r12,%r14
   0.08%   ││  0x00007f397ac5c868:   rorx   $0x1c,%r11,%r12
   0.06%   ││  0x00007f397ac5c86e:   add    0x8(%rsp),%r10
   0.05%   ││  0x00007f397ac5c873:   or     %rbx,%rdi
   0.06%   ││  0x00007f397ac5c876:   xor    %r12,%r14
   0.07%   ││  0x00007f397ac5c879:   mov    %r11,%r12
   0.05%   ││  0x00007f397ac5c87c:   and    %rax,%rdi
   0.06%   ││  0x00007f397ac5c87f:   and    %rbx,%r12
   0.05%   ││  0x00007f397ac5c882:   add    %r13,%r15
   0.07%   ││  0x00007f397ac5c885:   add    %r10,%rcx
   0.06%   ││  0x00007f397ac5c888:   or     %r12,%rdi
   0.05%   ││  0x00007f397ac5c88b:   add    %r14,%r10
   0.08%   ││  0x00007f397ac5c88e:   add    %r15,%rcx
   0.07%   ││  0x00007f397ac5c891:   add    %r15,%r10
   0.05%   ││  0x00007f397ac5c894:   mov    %r8,%r15
   0.05%   ││  0x00007f397ac5c897:   rorx   $0x29,%rcx,%r13
   0.06%   ││  0x00007f397ac5c89d:   rorx   $0x12,%rcx,%r14
   0.07%   ││  0x00007f397ac5c8a3:   xor    %rdx,%r15
   0.07%   ││  0x00007f397ac5c8a6:   xor    %r14,%r13
   0.06%   ││  0x00007f397ac5c8a9:   rorx   $0xe,%rcx,%r14
   0.07%   ││  0x00007f397ac5c8af:   and    %rcx,%r15
   0.05%   ││  0x00007f397ac5c8b2:   add    %rdi,%r10
   0.06%   ││  0x00007f397ac5c8b5:   xor    %r14,%r13
   0.06%   ││  0x00007f397ac5c8b8:   rorx   $0x22,%r10,%r12
   0.06%   ││  0x00007f397ac5c8be:   xor    %rdx,%r15
   0.08%   ││  0x00007f397ac5c8c1:   rorx   $0x27,%r10,%r14
   0.08%   ││  0x00007f397ac5c8c7:   mov    %r10,%rdi
   0.05%   ││  0x00007f397ac5c8ca:   xor    %r12,%r14
   0.08%   ││  0x00007f397ac5c8cd:   rorx   $0x1c,%r10,%r12
   0.05%   ││  0x00007f397ac5c8d3:   add    0x10(%rsp),%r9
   0.07%   ││  0x00007f397ac5c8d8:   or     %rax,%rdi
   0.08%   ││  0x00007f397ac5c8db:   xor    %r12,%r14
   0.08%   ││  0x00007f397ac5c8de:   mov    %r10,%r12
   0.07%   ││  0x00007f397ac5c8e1:   and    %r11,%rdi
   0.07%   ││  0x00007f397ac5c8e4:   and    %rax,%r12
   0.07%   ││  0x00007f397ac5c8e7:   add    %r13,%r15
   0.08%   ││  0x00007f397ac5c8ea:   add    %r9,%rbx
   0.09%   ││  0x00007f397ac5c8ed:   or     %r12,%rdi
   0.06%   ││  0x00007f397ac5c8f0:   add    %r14,%r9
   0.06%   ││  0x00007f397ac5c8f3:   add    %r15,%rbx
   0.07%   ││  0x00007f397ac5c8f6:   add    %r15,%r9
   0.08%   ││  0x00007f397ac5c8f9:   mov    %rcx,%r15
   0.06%   ││  0x00007f397ac5c8fc:   rorx   $0x29,%rbx,%r13
   0.05%   ││  0x00007f397ac5c902:   rorx   $0x12,%rbx,%r14
   0.07%   ││  0x00007f397ac5c908:   xor    %r8,%r15
   0.08%   ││  0x00007f397ac5c90b:   xor    %r14,%r13
   0.09%   ││  0x00007f397ac5c90e:   rorx   $0xe,%rbx,%r14
   0.06%   ││  0x00007f397ac5c914:   and    %rbx,%r15
   0.07%   ││  0x00007f397ac5c917:   add    %rdi,%r9
   0.08%   ││  0x00007f397ac5c91a:   xor    %r14,%r13
   0.07%   ││  0x00007f397ac5c91d:   rorx   $0x22,%r9,%r12
   0.08%   ││  0x00007f397ac5c923:   xor    %r8,%r15
   0.07%   ││  0x00007f397ac5c926:   rorx   $0x27,%r9,%r14
   0.07%   ││  0x00007f397ac5c92c:   mov    %r9,%rdi
   0.05%   ││  0x00007f397ac5c92f:   xor    %r12,%r14
   0.08%   ││  0x00007f397ac5c932:   rorx   $0x1c,%r9,%r12
   0.07%   ││  0x00007f397ac5c938:   add    0x18(%rsp),%rdx
   0.05%   ││  0x00007f397ac5c93d:   or     %r11,%rdi
   0.05%   ││  0x00007f397ac5c940:   xor    %r12,%r14
   0.08%   ││  0x00007f397ac5c943:   mov    %r9,%r12
   0.07%   ││  0x00007f397ac5c946:   and    %r10,%rdi
   0.07%   ││  0x00007f397ac5c949:   and    %r11,%r12
   0.04%   ││  0x00007f397ac5c94c:   add    %r13,%r15
   0.08%   ││  0x00007f397ac5c94f:   add    %rdx,%rax
   0.06%   ││  0x00007f397ac5c952:   or     %r12,%rdi
   0.06%   ││  0x00007f397ac5c955:   add    %r14,%rdx
   0.06%   ││  0x00007f397ac5c958:   add    %r15,%rax
   0.09%   ││  0x00007f397ac5c95b:   add    %r15,%rdx
   0.09%   ││  0x00007f397ac5c95e:   add    %rdi,%rdx
   0.10%   ││  0x00007f397ac5c961:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.04%   ││  0x00007f397ac5c966:   vmovdqu %ymm0,(%rsp)
   0.05%   ││  0x00007f397ac5c96b:   add    $0x40,%rbp
   0.05%   ││  0x00007f397ac5c96f:   mov    %rbx,%r15
   0.08%   ││  0x00007f397ac5c972:   rorx   $0x29,%rax,%r13
   0.05%   ││  0x00007f397ac5c978:   rorx   $0x12,%rax,%r14
   0.05%   ││  0x00007f397ac5c97e:   xor    %rcx,%r15
   0.08%   ││  0x00007f397ac5c981:   xor    %r14,%r13
   0.10%   ││  0x00007f397ac5c984:   rorx   $0xe,%rax,%r14
   0.07%   ││  0x00007f397ac5c98a:   and    %rax,%r15
   0.04%   ││  0x00007f397ac5c98d:   xor    %r14,%r13
   0.07%   ││  0x00007f397ac5c990:   rorx   $0x22,%rdx,%r12
   0.08%   ││  0x00007f397ac5c996:   xor    %rcx,%r15
   0.07%   ││  0x00007f397ac5c999:   rorx   $0x27,%rdx,%r14
   0.05%   ││  0x00007f397ac5c99f:   mov    %rdx,%rdi
   0.06%   ││  0x00007f397ac5c9a2:   xor    %r12,%r14
   0.10%   ││  0x00007f397ac5c9a5:   rorx   $0x1c,%rdx,%r12
   0.07%   ││  0x00007f397ac5c9ab:   add    (%rsp),%r8
   0.05%   ││  0x00007f397ac5c9af:   or     %r10,%rdi
   0.07%   ││  0x00007f397ac5c9b2:   xor    %r12,%r14
   0.06%   ││  0x00007f397ac5c9b5:   mov    %rdx,%r12
   0.06%   ││  0x00007f397ac5c9b8:   and    %r9,%rdi
   0.04%   ││  0x00007f397ac5c9bb:   and    %r10,%r12
   0.07%   ││  0x00007f397ac5c9be:   add    %r13,%r15
   0.09%   ││  0x00007f397ac5c9c1:   add    %r8,%r11
   0.06%   ││  0x00007f397ac5c9c4:   or     %r12,%rdi
   0.04%   ││  0x00007f397ac5c9c7:   add    %r14,%r8
   0.05%   ││  0x00007f397ac5c9ca:   add    %r15,%r11
   0.10%   ││  0x00007f397ac5c9cd:   add    %r15,%r8
   0.06%   ││  0x00007f397ac5c9d0:   mov    %rax,%r15
   0.04%   ││  0x00007f397ac5c9d3:   rorx   $0x29,%r11,%r13
   0.07%   ││  0x00007f397ac5c9d9:   rorx   $0x12,%r11,%r14
   0.09%   ││  0x00007f397ac5c9df:   xor    %rbx,%r15
   0.05%   ││  0x00007f397ac5c9e2:   xor    %r14,%r13
   0.06%   ││  0x00007f397ac5c9e5:   rorx   $0xe,%r11,%r14
   0.07%   ││  0x00007f397ac5c9eb:   and    %r11,%r15
   0.08%   ││  0x00007f397ac5c9ee:   add    %rdi,%r8
   0.05%   ││  0x00007f397ac5c9f1:   xor    %r14,%r13
   0.07%   ││  0x00007f397ac5c9f4:   rorx   $0x22,%r8,%r12
   0.06%   ││  0x00007f397ac5c9fa:   xor    %rbx,%r15
   0.11%   ││  0x00007f397ac5c9fd:   rorx   $0x27,%r8,%r14
   0.06%   ││  0x00007f397ac5ca03:   mov    %r8,%rdi
   0.06%   ││  0x00007f397ac5ca06:   xor    %r12,%r14
   0.09%   ││  0x00007f397ac5ca09:   rorx   $0x1c,%r8,%r12
   0.06%   ││  0x00007f397ac5ca0f:   add    0x8(%rsp),%rcx
   0.05%   ││  0x00007f397ac5ca14:   or     %r9,%rdi
   0.07%   ││  0x00007f397ac5ca17:   xor    %r12,%r14
   0.06%   ││  0x00007f397ac5ca1a:   mov    %r8,%r12
   0.07%   ││  0x00007f397ac5ca1d:   and    %rdx,%rdi
   0.07%   ││  0x00007f397ac5ca20:   and    %r9,%r12
   0.05%   ││  0x00007f397ac5ca23:   add    %r13,%r15
   0.08%   ││  0x00007f397ac5ca26:   add    %rcx,%r10
   0.09%   ││  0x00007f397ac5ca29:   or     %r12,%rdi
   0.05%   ││  0x00007f397ac5ca2c:   add    %r14,%rcx
   0.05%   ││  0x00007f397ac5ca2f:   add    %r15,%r10
   0.10%   ││  0x00007f397ac5ca32:   add    %r15,%rcx
   0.08%   ││  0x00007f397ac5ca35:   mov    %r11,%r15
   0.05%   ││  0x00007f397ac5ca38:   rorx   $0x29,%r10,%r13
   0.05%   ││  0x00007f397ac5ca3e:   rorx   $0x12,%r10,%r14
   0.06%   ││  0x00007f397ac5ca44:   xor    %rax,%r15
   0.06%   ││  0x00007f397ac5ca47:   xor    %r14,%r13
   0.05%   ││  0x00007f397ac5ca4a:   rorx   $0xe,%r10,%r14
   0.07%   ││  0x00007f397ac5ca50:   and    %r10,%r15
   0.09%   ││  0x00007f397ac5ca53:   add    %rdi,%rcx
   0.08%   ││  0x00007f397ac5ca56:   xor    %r14,%r13
   0.05%   ││  0x00007f397ac5ca59:   rorx   $0x22,%rcx,%r12
   0.05%   ││  0x00007f397ac5ca5f:   xor    %rax,%r15
   0.07%   ││  0x00007f397ac5ca62:   rorx   $0x27,%rcx,%r14
   0.05%   ││  0x00007f397ac5ca68:   mov    %rcx,%rdi
   0.05%   ││  0x00007f397ac5ca6b:   xor    %r12,%r14
   0.07%   ││  0x00007f397ac5ca6e:   rorx   $0x1c,%rcx,%r12
   0.09%   ││  0x00007f397ac5ca74:   add    0x10(%rsp),%rbx
   0.05%   ││  0x00007f397ac5ca79:   or     %rdx,%rdi
   0.05%   ││  0x00007f397ac5ca7c:   xor    %r12,%r14
   0.08%   ││  0x00007f397ac5ca7f:   mov    %rcx,%r12
   0.07%   ││  0x00007f397ac5ca82:   and    %r8,%rdi
   0.06%   ││  0x00007f397ac5ca85:   and    %rdx,%r12
   0.05%   ││  0x00007f397ac5ca88:   add    %r13,%r15
   0.08%   ││  0x00007f397ac5ca8b:   add    %rbx,%r9
   0.07%   ││  0x00007f397ac5ca8e:   or     %r12,%rdi
   0.08%   ││  0x00007f397ac5ca91:   add    %r14,%rbx
   0.06%   ││  0x00007f397ac5ca94:   add    %r15,%r9
   0.08%   ││  0x00007f397ac5ca97:   add    %r15,%rbx
   0.07%   ││  0x00007f397ac5ca9a:   mov    %r10,%r15
   0.06%   ││  0x00007f397ac5ca9d:   rorx   $0x29,%r9,%r13
   0.04%   ││  0x00007f397ac5caa3:   rorx   $0x12,%r9,%r14
   0.08%   ││  0x00007f397ac5caa9:   xor    %r11,%r15
   0.08%   ││  0x00007f397ac5caac:   xor    %r14,%r13
   0.08%   ││  0x00007f397ac5caaf:   rorx   $0xe,%r9,%r14
   0.05%   ││  0x00007f397ac5cab5:   and    %r9,%r15
   0.06%   ││  0x00007f397ac5cab8:   add    %rdi,%rbx
   0.08%   ││  0x00007f397ac5cabb:   xor    %r14,%r13
   0.11%   ││  0x00007f397ac5cabe:   rorx   $0x22,%rbx,%r12
   0.07%   ││  0x00007f397ac5cac4:   xor    %r11,%r15
   0.08%   ││  0x00007f397ac5cac7:   rorx   $0x27,%rbx,%r14
   0.07%   ││  0x00007f397ac5cacd:   mov    %rbx,%rdi
   0.07%   ││  0x00007f397ac5cad0:   xor    %r12,%r14
   0.06%   ││  0x00007f397ac5cad3:   rorx   $0x1c,%rbx,%r12
   0.06%   ││  0x00007f397ac5cad9:   add    0x18(%rsp),%rax
   0.05%   ││  0x00007f397ac5cade:   or     %r8,%rdi
   0.06%   ││  0x00007f397ac5cae1:   xor    %r12,%r14
   0.06%   ││  0x00007f397ac5cae4:   mov    %rbx,%r12
   0.07%   ││  0x00007f397ac5cae7:   and    %rcx,%rdi
   0.05%   ││  0x00007f397ac5caea:   and    %r8,%r12
   0.07%   ││  0x00007f397ac5caed:   add    %r13,%r15
   0.07%   ││  0x00007f397ac5caf0:   add    %rax,%rdx
   0.07%   ││  0x00007f397ac5caf3:   or     %r12,%rdi
   0.06%   ││  0x00007f397ac5caf6:   add    %r14,%rax
   0.09%   ││  0x00007f397ac5caf9:   add    %r15,%rdx
   0.07%   ││  0x00007f397ac5cafc:   add    %r15,%rax
   0.06%   ││  0x00007f397ac5caff:   add    %rdi,%rax
   0.11%   ││  0x00007f397ac5cb02:   vmovdqu %ymm6,%ymm4
   0.06%   ││  0x00007f397ac5cb06:   vmovdqu %ymm7,%ymm5
   0.02%   ││  0x00007f397ac5cb0a:   subq   $0x1,0x20(%rsp)
   0.16%   ╰│  0x00007f397ac5cb10:   jne    0x00007f397ac5c7c4
   0.04%    │  0x00007f397ac5cb16:   add    (%rsi),%rax
   0.02%    │  0x00007f397ac5cb19:   mov    %rax,(%rsi)
   0.23%    │  0x00007f397ac5cb1c:   add    0x8(%rsi),%rbx
            │  0x00007f397ac5cb20:   mov    %rbx,0x8(%rsi)
   0.02%    │  0x00007f397ac5cb24:   add    0x10(%rsi),%rcx
            │  0x00007f397ac5cb28:   mov    %rcx,0x10(%rsi)
   0.12%    │  0x00007f397ac5cb2c:   add    0x18(%rsi),%r8
            │  0x00007f397ac5cb30:   mov    %r8,0x18(%rsi)
   0.01%    │  0x00007f397ac5cb34:   add    0x20(%rsi),%rdx
            │  0x00007f397ac5cb38:   mov    %rdx,0x20(%rsi)
   0.11%    │  0x00007f397ac5cb3c:   add    0x28(%rsi),%r9
   0.00%    │  0x00007f397ac5cb40:   mov    %r9,0x28(%rsi)
   0.01%    │  0x00007f397ac5cb44:   add    0x30(%rsi),%r10
   0.01%    │  0x00007f397ac5cb48:   mov    %r10,0x30(%rsi)
   0.10%    │  0x00007f397ac5cb4c:   add    0x38(%rsi),%r11
            │  0x00007f397ac5cb50:   mov    %r11,0x38(%rsi)
   0.02%    │  0x00007f397ac5cb54:   mov    0x28(%rsp),%rdi
   0.00%    │  0x00007f397ac5cb59:   add    $0x80,%rdi
   0.11%    │  0x00007f397ac5cb60:   cmp    0x30(%rsp),%rdi
            ╰  0x00007f397ac5cb65:   jne    0x00007f397ac5bdfb
   0.00%       0x00007f397ac5cb6b:   mov    0x40(%rsp),%rbp
   0.01%       0x00007f397ac5cb70:   mov    0x48(%rsp),%rbx
               0x00007f397ac5cb75:   mov    0x50(%rsp),%r12
               0x00007f397ac5cb7a:   mov    0x58(%rsp),%r13
               0x00007f397ac5cb7f:   mov    0x60(%rsp),%r14
               0x00007f397ac5cb84:   mov    0x68(%rsp),%r15
               0x00007f397ac5cb89:   mov    0x38(%rsp),%rsp
               0x00007f397ac5cb8e:   pop    %rcx
               0x00007f397ac5cb8f:   pop    %rdx
               0x00007f397ac5cb90:   mov    %rdx,%rax
   0.26%       0x00007f397ac5cb93:   cmp    %rcx,%rax
               0x00007f397ac5cb96:   jae    0x00007f397ac5cba0
....................................................................................................
  94.13%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.13%        runtime stub  StubRoutines::sha512_implCompressMB 
   1.35%                      <unknown> 
   0.59%              kernel  [unknown] 
   0.52%              kernel  [unknown] 
   0.29%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.21%                      <unknown> 
   0.17%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.13%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1048 
   0.10%              kernel  [unknown] 
   0.08%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1048 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.06%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   1.86%  <...other 470 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.59%        runtime stub  StubRoutines::sha512_implCompressMB 
   2.72%              kernel  [unknown] 
   1.73%                      <unknown> 
   0.38%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1048 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1046 
   0.08%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%      jvmci, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 1003 
   0.02%        runtime stub  StubRoutines::jbyte_arraycopy 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  syscall 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1067 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.19%  <...other 73 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  94.70%        runtime stub
   2.72%              kernel
   1.73%                    
   0.54%      jvmci, level 4
   0.16%           libjvm.so
   0.07%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%              [vdso]
....................................................................................................
  99.99%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-512/224, length = 16384)

# Run progress: 45.45% complete, ETA 00:11:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 42.788 us/op
# Warmup Iteration   2: 37.940 us/op
# Warmup Iteration   3: 37.936 us/op
# Warmup Iteration   4: 37.926 us/op
# Warmup Iteration   5: 37.928 us/op
Iteration   1: 37.942 us/op
Iteration   2: 37.935 us/op
Iteration   3: 37.932 us/op
Iteration   4: 37.932 us/op
Iteration   5: 37.934 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  37.935 ±(99.9%) 0.015 us/op [Average]
  (min, avg, max) = (37.932, 37.935, 37.942), stdev = 0.004
  CI (99.9%): [37.920, 37.950] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 243249 total address lines.
Perf output processed (skipped 60.508 seconds):
 Column 1: cycles (51093 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                    0x00007efdaec5c746:   mov    %rsp,%rax
                    0x00007efdaec5c749:   sub    $0x70,%rsp
                    0x00007efdaec5c74d:   and    $0xffffffffffffffe0,%rsp
                    0x00007efdaec5c751:   mov    %rax,0x38(%rsp)
                    0x00007efdaec5c756:   mov    %rbp,0x40(%rsp)
                    0x00007efdaec5c75b:   mov    %rbx,0x48(%rsp)
                    0x00007efdaec5c760:   mov    %r12,0x50(%rsp)
                    0x00007efdaec5c765:   mov    %r13,0x58(%rsp)
                    0x00007efdaec5c76a:   mov    %r14,0x60(%rsp)
                    0x00007efdaec5c76f:   mov    %r15,0x68(%rsp)
   0.00%            0x00007efdaec5c774:   vpblendd $0xf0,%xmm1,%xmm0,%xmm0
                    0x00007efdaec5c77a:   vpblendd $0xf0,%ymm1,%ymm0,%ymm0
                    0x00007efdaec5c780:   xor    %rax,%rax
   0.03%   ↗        0x00007efdaec5c783:   cmp    %rcx,%rdx
          ╭│        0x00007efdaec5c786:   jae    0x00007efdaec5c797
   0.05%  ││        0x00007efdaec5c788:   add    $0x80,%rdx
   0.07%  ││        0x00007efdaec5c78f:   add    $0x80,%rax
   0.00%  │╰        0x00007efdaec5c795:   jmp    0x00007efdaec5c783
   0.00%  ↘         0x00007efdaec5c797:   mov    %rax,%rdx
                    0x00007efdaec5c79a:   cmp    $0x0,%rdx
            ╭       0x00007efdaec5c79e:   je     0x00007efdaec5d54b
   0.01%    │       0x00007efdaec5c7a4:   add    %rdi,%rdx
   0.00%    │       0x00007efdaec5c7a7:   mov    %rdx,0x30(%rsp)
   0.01%    │       0x00007efdaec5c7ac:   mov    (%rsi),%rax
            │       0x00007efdaec5c7af:   mov    0x8(%rsi),%rbx
            │       0x00007efdaec5c7b3:   mov    0x10(%rsi),%rcx
            │       0x00007efdaec5c7b7:   mov    0x18(%rsi),%r8
            │       0x00007efdaec5c7bb:   mov    0x20(%rsi),%rdx
            │       0x00007efdaec5c7bf:   mov    0x28(%rsi),%r9
            │       0x00007efdaec5c7c3:   mov    0x38(%rsi),%r11
   0.00%    │       0x00007efdaec5c7c7:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007efdaec5b8e0
            │       0x00007efdaec5c7cf:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007efdaec5b900
   0.00%    │       0x00007efdaec5c7d7:   mov    0x30(%rsi),%r10
            │  ↗    0x00007efdaec5c7db:   movabs $0x7efdc79c2840,%rbp
   0.03%    │  │    0x00007efdaec5c7e5:   vmovdqu (%rdi),%ymm4
   0.02%    │  │    0x00007efdaec5c7e9:   vpshufb %ymm9,%ymm4,%ymm4
   0.13%    │  │    0x00007efdaec5c7ee:   vmovdqu 0x20(%rdi),%ymm5
   0.12%    │  │    0x00007efdaec5c7f3:   vpshufb %ymm9,%ymm5,%ymm5
   0.32%    │  │    0x00007efdaec5c7f8:   vmovdqu 0x40(%rdi),%ymm6
   0.03%    │  │    0x00007efdaec5c7fd:   vpshufb %ymm9,%ymm6,%ymm6
   0.02%    │  │    0x00007efdaec5c802:   vmovdqu 0x60(%rdi),%ymm7
   0.08%    │  │    0x00007efdaec5c807:   vpshufb %ymm9,%ymm7,%ymm7
   0.34%    │  │    0x00007efdaec5c80c:   mov    %rdi,0x28(%rsp)
            │  │    0x00007efdaec5c811:   movq   $0x4,0x20(%rsp)
            │  │    0x00007efdaec5c81a:   nopw   0x0(%rax,%rax,1)
   0.05%    │↗ │    0x00007efdaec5c820:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.27%    ││ │    0x00007efdaec5c825:   vmovdqu %ymm0,(%rsp)
   0.13%    ││ │    0x00007efdaec5c82a:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.29%    ││ │    0x00007efdaec5c830:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.26%    ││ │    0x00007efdaec5c836:   vpaddq %ymm4,%ymm0,%ymm0
   0.78%    ││ │    0x00007efdaec5c83a:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.09%    ││ │    0x00007efdaec5c840:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.06%    ││ │    0x00007efdaec5c846:   vpsrlq $0x1,%ymm1,%ymm2
   0.07%    ││ │    0x00007efdaec5c84b:   vpsllq $0x3f,%ymm1,%ymm3
   0.29%    ││ │    0x00007efdaec5c850:   vpor   %ymm2,%ymm3,%ymm3
   0.13%    ││ │    0x00007efdaec5c854:   vpsrlq $0x7,%ymm1,%ymm8
   0.05%    ││ │    0x00007efdaec5c859:   mov    %rax,%rdi
   0.04%    ││ │    0x00007efdaec5c85c:   rorx   $0x29,%rdx,%r13
   0.31%    ││ │    0x00007efdaec5c862:   rorx   $0x12,%rdx,%r14
   0.11%    ││ │    0x00007efdaec5c868:   add    (%rsp),%r11
   0.08%    ││ │    0x00007efdaec5c86c:   or     %rcx,%rdi
   0.04%    ││ │    0x00007efdaec5c86f:   mov    %r9,%r15
   0.27%    ││ │    0x00007efdaec5c872:   xor    %r10,%r15
   0.11%    ││ │    0x00007efdaec5c875:   rorx   $0x22,%rax,%r12
   0.05%    ││ │    0x00007efdaec5c87b:   xor    %r14,%r13
   0.05%    ││ │    0x00007efdaec5c87e:   rorx   $0xe,%rdx,%r14
   0.27%    ││ │    0x00007efdaec5c884:   and    %rdx,%r15
   0.14%    ││ │    0x00007efdaec5c887:   add    %r11,%r8
   0.07%    ││ │    0x00007efdaec5c88a:   and    %rbx,%rdi
   0.03%    ││ │    0x00007efdaec5c88d:   xor    %r14,%r13
   0.27%    ││ │    0x00007efdaec5c890:   rorx   $0x27,%rax,%r14
   0.11%    ││ │    0x00007efdaec5c896:   xor    %r12,%r14
   0.06%    ││ │    0x00007efdaec5c899:   rorx   $0x1c,%rax,%r12
   0.04%    ││ │    0x00007efdaec5c89f:   xor    %r10,%r15
   0.34%    ││ │    0x00007efdaec5c8a2:   xor    %r12,%r14
   0.15%    ││ │    0x00007efdaec5c8a5:   mov    %rax,%r12
   0.05%    ││ │    0x00007efdaec5c8a8:   and    %rcx,%r12
   0.04%    ││ │    0x00007efdaec5c8ab:   add    %r13,%r15
   0.30%    ││ │    0x00007efdaec5c8ae:   or     %r12,%rdi
   0.12%    ││ │    0x00007efdaec5c8b1:   add    %r14,%r11
   0.06%    ││ │    0x00007efdaec5c8b4:   add    %r15,%r8
   0.05%    ││ │    0x00007efdaec5c8b7:   add    %r15,%r11
   0.32%    ││ │    0x00007efdaec5c8ba:   add    %rdi,%r11
   0.12%    ││ │    0x00007efdaec5c8bd:   vpsrlq $0x8,%ymm1,%ymm2
   0.04%    ││ │    0x00007efdaec5c8c2:   vpsllq $0x38,%ymm1,%ymm1
   0.04%    ││ │    0x00007efdaec5c8c7:   vpor   %ymm2,%ymm1,%ymm1
   0.28%    ││ │    0x00007efdaec5c8cb:   vpxor  %ymm8,%ymm3,%ymm3
   0.17%    ││ │    0x00007efdaec5c8d0:   vpxor  %ymm1,%ymm3,%ymm1
   0.05%    ││ │    0x00007efdaec5c8d4:   vpaddq %ymm1,%ymm0,%ymm0
   0.05%    ││ │    0x00007efdaec5c8d8:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.32%    ││ │    0x00007efdaec5c8de:   vpand  %ymm10,%ymm0,%ymm0
   0.13%    ││ │    0x00007efdaec5c8e3:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.06%    ││ │    0x00007efdaec5c8e9:   vpsrlq $0x6,%ymm2,%ymm8
   0.05%    ││ │    0x00007efdaec5c8ee:   mov    %r11,%rdi
   0.30%    ││ │    0x00007efdaec5c8f1:   rorx   $0x29,%r8,%r13
   0.12%    ││ │    0x00007efdaec5c8f7:   rorx   $0x12,%r8,%r14
   0.05%    ││ │    0x00007efdaec5c8fd:   add    0x8(%rsp),%r10
   0.04%    ││ │    0x00007efdaec5c902:   or     %rbx,%rdi
   0.30%    ││ │    0x00007efdaec5c905:   mov    %rdx,%r15
   0.13%    ││ │    0x00007efdaec5c908:   xor    %r9,%r15
   0.04%    ││ │    0x00007efdaec5c90b:   rorx   $0x22,%r11,%r12
   0.04%    ││ │    0x00007efdaec5c911:   xor    %r14,%r13
   0.33%    ││ │    0x00007efdaec5c914:   rorx   $0xe,%r8,%r14
   0.14%    ││ │    0x00007efdaec5c91a:   and    %r8,%r15
   0.04%    ││ │    0x00007efdaec5c91d:   add    %r10,%rcx
   0.04%    ││ │    0x00007efdaec5c920:   and    %rax,%rdi
   0.28%    ││ │    0x00007efdaec5c923:   xor    %r14,%r13
   0.15%    ││ │    0x00007efdaec5c926:   rorx   $0x27,%r11,%r14
   0.05%    ││ │    0x00007efdaec5c92c:   xor    %r12,%r14
   0.03%    ││ │    0x00007efdaec5c92f:   rorx   $0x1c,%r11,%r12
   0.27%    ││ │    0x00007efdaec5c935:   xor    %r9,%r15
   0.12%    ││ │    0x00007efdaec5c938:   xor    %r12,%r14
   0.05%    ││ │    0x00007efdaec5c93b:   mov    %r11,%r12
   0.04%    ││ │    0x00007efdaec5c93e:   and    %rbx,%r12
   0.30%    ││ │    0x00007efdaec5c941:   add    %r13,%r15
   0.12%    ││ │    0x00007efdaec5c944:   or     %r12,%rdi
   0.05%    ││ │    0x00007efdaec5c947:   add    %r14,%r10
   0.04%    ││ │    0x00007efdaec5c94a:   add    %r15,%rcx
   0.29%    ││ │    0x00007efdaec5c94d:   add    %r15,%r10
   0.11%    ││ │    0x00007efdaec5c950:   add    %rdi,%r10
   0.06%    ││ │    0x00007efdaec5c953:   vpsrlq $0x13,%ymm2,%ymm3
   0.05%    ││ │    0x00007efdaec5c958:   vpsllq $0x2d,%ymm2,%ymm1
   0.31%    ││ │    0x00007efdaec5c95d:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007efdaec5c961:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007efdaec5c965:   vpsrlq $0x3d,%ymm2,%ymm3
   0.05%    ││ │    0x00007efdaec5c96a:   vpsllq $0x3,%ymm2,%ymm1
   0.27%    ││ │    0x00007efdaec5c96f:   vpor   %ymm1,%ymm3,%ymm3
   0.15%    ││ │    0x00007efdaec5c973:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007efdaec5c977:   vpaddq %ymm8,%ymm4,%ymm4
   0.03%    ││ │    0x00007efdaec5c97c:   vpsrlq $0x6,%ymm4,%ymm8
   0.27%    ││ │    0x00007efdaec5c981:   mov    %r10,%rdi
   0.13%    ││ │    0x00007efdaec5c984:   rorx   $0x29,%rcx,%r13
   0.04%    ││ │    0x00007efdaec5c98a:   rorx   $0x12,%rcx,%r14
   0.05%    ││ │    0x00007efdaec5c990:   add    0x10(%rsp),%r9
   0.24%    ││ │    0x00007efdaec5c995:   or     %rax,%rdi
   0.16%    ││ │    0x00007efdaec5c998:   mov    %r8,%r15
   0.06%    ││ │    0x00007efdaec5c99b:   xor    %rdx,%r15
   0.03%    ││ │    0x00007efdaec5c99e:   rorx   $0x22,%r10,%r12
   0.29%    ││ │    0x00007efdaec5c9a4:   xor    %r14,%r13
   0.12%    ││ │    0x00007efdaec5c9a7:   rorx   $0xe,%rcx,%r14
   0.06%    ││ │    0x00007efdaec5c9ad:   and    %rcx,%r15
   0.05%    ││ │    0x00007efdaec5c9b0:   add    %r9,%rbx
   0.29%    ││ │    0x00007efdaec5c9b3:   and    %r11,%rdi
   0.12%    ││ │    0x00007efdaec5c9b6:   xor    %r14,%r13
   0.05%    ││ │    0x00007efdaec5c9b9:   rorx   $0x27,%r10,%r14
   0.04%    ││ │    0x00007efdaec5c9bf:   xor    %r12,%r14
   0.27%    ││ │    0x00007efdaec5c9c2:   rorx   $0x1c,%r10,%r12
   0.14%    ││ │    0x00007efdaec5c9c8:   xor    %rdx,%r15
   0.06%    ││ │    0x00007efdaec5c9cb:   xor    %r12,%r14
   0.04%    ││ │    0x00007efdaec5c9ce:   mov    %r10,%r12
   0.30%    ││ │    0x00007efdaec5c9d1:   and    %rax,%r12
   0.14%    ││ │    0x00007efdaec5c9d4:   add    %r13,%r15
   0.05%    ││ │    0x00007efdaec5c9d7:   or     %r12,%rdi
   0.04%    ││ │    0x00007efdaec5c9da:   add    %r14,%r9
   0.29%    ││ │    0x00007efdaec5c9dd:   add    %r15,%rbx
   0.11%    ││ │    0x00007efdaec5c9e0:   add    %r15,%r9
   0.05%    ││ │    0x00007efdaec5c9e3:   add    %rdi,%r9
   0.04%    ││ │    0x00007efdaec5c9e6:   vpsrlq $0x13,%ymm4,%ymm3
   0.30%    ││ │    0x00007efdaec5c9eb:   vpsllq $0x2d,%ymm4,%ymm1
   0.11%    ││ │    0x00007efdaec5c9f0:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007efdaec5c9f4:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007efdaec5c9f8:   vpsrlq $0x3d,%ymm4,%ymm3
   0.27%    ││ │    0x00007efdaec5c9fd:   vpsllq $0x3,%ymm4,%ymm1
   0.14%    ││ │    0x00007efdaec5ca02:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007efdaec5ca06:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007efdaec5ca0a:   vpaddq %ymm8,%ymm0,%ymm2
   0.29%    ││ │    0x00007efdaec5ca0f:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.15%    ││ │    0x00007efdaec5ca15:   mov    %r9,%rdi
   0.04%    ││ │    0x00007efdaec5ca18:   rorx   $0x29,%rbx,%r13
   0.03%    ││ │    0x00007efdaec5ca1e:   rorx   $0x12,%rbx,%r14
   0.20%    ││ │    0x00007efdaec5ca24:   add    0x18(%rsp),%rdx
   0.15%    ││ │    0x00007efdaec5ca29:   or     %r11,%rdi
   0.05%    ││ │    0x00007efdaec5ca2c:   mov    %rcx,%r15
   0.04%    ││ │    0x00007efdaec5ca2f:   xor    %r8,%r15
   0.23%    ││ │    0x00007efdaec5ca32:   rorx   $0x22,%r9,%r12
   0.16%    ││ │    0x00007efdaec5ca38:   xor    %r14,%r13
   0.05%    ││ │    0x00007efdaec5ca3b:   rorx   $0xe,%rbx,%r14
   0.03%    ││ │    0x00007efdaec5ca41:   and    %rbx,%r15
   0.24%    ││ │    0x00007efdaec5ca44:   add    %rdx,%rax
   0.17%    ││ │    0x00007efdaec5ca47:   and    %r10,%rdi
   0.04%    ││ │    0x00007efdaec5ca4a:   xor    %r14,%r13
   0.02%    ││ │    0x00007efdaec5ca4d:   rorx   $0x27,%r9,%r14
   0.30%    ││ │    0x00007efdaec5ca53:   xor    %r12,%r14
   0.19%    ││ │    0x00007efdaec5ca56:   rorx   $0x1c,%r9,%r12
   0.06%    ││ │    0x00007efdaec5ca5c:   xor    %r8,%r15
   0.03%    ││ │    0x00007efdaec5ca5f:   xor    %r12,%r14
   0.30%    ││ │    0x00007efdaec5ca62:   mov    %r9,%r12
   0.15%    ││ │    0x00007efdaec5ca65:   and    %r11,%r12
   0.05%    ││ │    0x00007efdaec5ca68:   add    %r13,%r15
   0.02%    ││ │    0x00007efdaec5ca6b:   or     %r12,%rdi
   0.25%    ││ │    0x00007efdaec5ca6e:   add    %r14,%rdx
   0.17%    ││ │    0x00007efdaec5ca71:   add    %r15,%rax
   0.05%    ││ │    0x00007efdaec5ca74:   add    %r15,%rdx
   0.02%    ││ │    0x00007efdaec5ca77:   add    %rdi,%rdx
   0.24%    ││ │    0x00007efdaec5ca7a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.14%    ││ │    0x00007efdaec5ca7f:   vmovdqu %ymm0,(%rsp)
   0.04%    ││ │    0x00007efdaec5ca84:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.03%    ││ │    0x00007efdaec5ca8a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.28%    ││ │    0x00007efdaec5ca90:   vpaddq %ymm5,%ymm0,%ymm0
   0.24%    ││ │    0x00007efdaec5ca94:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.04%    ││ │    0x00007efdaec5ca9a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.05%    ││ │    0x00007efdaec5caa0:   vpsrlq $0x1,%ymm1,%ymm2
   0.30%    ││ │    0x00007efdaec5caa5:   vpsllq $0x3f,%ymm1,%ymm3
   0.17%    ││ │    0x00007efdaec5caaa:   vpor   %ymm2,%ymm3,%ymm3
   0.05%    ││ │    0x00007efdaec5caae:   vpsrlq $0x7,%ymm1,%ymm8
   0.02%    ││ │    0x00007efdaec5cab3:   mov    %rdx,%rdi
   0.24%    ││ │    0x00007efdaec5cab6:   rorx   $0x29,%rax,%r13
   0.18%    ││ │    0x00007efdaec5cabc:   rorx   $0x12,%rax,%r14
   0.05%    ││ │    0x00007efdaec5cac2:   add    (%rsp),%r8
   0.03%    ││ │    0x00007efdaec5cac6:   or     %r10,%rdi
   0.22%    ││ │    0x00007efdaec5cac9:   mov    %rbx,%r15
   0.11%    ││ │    0x00007efdaec5cacc:   xor    %rcx,%r15
   0.07%    ││ │    0x00007efdaec5cacf:   rorx   $0x22,%rdx,%r12
   0.04%    ││ │    0x00007efdaec5cad5:   xor    %r14,%r13
   0.24%    ││ │    0x00007efdaec5cad8:   rorx   $0xe,%rax,%r14
   0.17%    ││ │    0x00007efdaec5cade:   and    %rax,%r15
   0.06%    ││ │    0x00007efdaec5cae1:   add    %r8,%r11
   0.03%    ││ │    0x00007efdaec5cae4:   and    %r9,%rdi
   0.24%    ││ │    0x00007efdaec5cae7:   xor    %r14,%r13
   0.14%    ││ │    0x00007efdaec5caea:   rorx   $0x27,%rdx,%r14
   0.06%    ││ │    0x00007efdaec5caf0:   xor    %r12,%r14
   0.04%    ││ │    0x00007efdaec5caf3:   rorx   $0x1c,%rdx,%r12
   0.26%    ││ │    0x00007efdaec5caf9:   xor    %rcx,%r15
   0.15%    ││ │    0x00007efdaec5cafc:   xor    %r12,%r14
   0.06%    ││ │    0x00007efdaec5caff:   mov    %rdx,%r12
   0.04%    ││ │    0x00007efdaec5cb02:   and    %r10,%r12
   0.29%    ││ │    0x00007efdaec5cb05:   add    %r13,%r15
   0.16%    ││ │    0x00007efdaec5cb08:   or     %r12,%rdi
   0.06%    ││ │    0x00007efdaec5cb0b:   add    %r14,%r8
   0.03%    ││ │    0x00007efdaec5cb0e:   add    %r15,%r11
   0.27%    ││ │    0x00007efdaec5cb11:   add    %r15,%r8
   0.16%    ││ │    0x00007efdaec5cb14:   add    %rdi,%r8
   0.05%    ││ │    0x00007efdaec5cb17:   vpsrlq $0x8,%ymm1,%ymm2
   0.03%    ││ │    0x00007efdaec5cb1c:   vpsllq $0x38,%ymm1,%ymm1
   0.25%    ││ │    0x00007efdaec5cb21:   vpor   %ymm2,%ymm1,%ymm1
   0.14%    ││ │    0x00007efdaec5cb25:   vpxor  %ymm8,%ymm3,%ymm3
   0.05%    ││ │    0x00007efdaec5cb2a:   vpxor  %ymm1,%ymm3,%ymm1
   0.03%    ││ │    0x00007efdaec5cb2e:   vpaddq %ymm1,%ymm0,%ymm0
   0.25%    ││ │    0x00007efdaec5cb32:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.20%    ││ │    0x00007efdaec5cb38:   vpand  %ymm10,%ymm0,%ymm0
   0.06%    ││ │    0x00007efdaec5cb3d:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.05%    ││ │    0x00007efdaec5cb43:   vpsrlq $0x6,%ymm2,%ymm8
   0.24%    ││ │    0x00007efdaec5cb48:   mov    %r8,%rdi
   0.18%    ││ │    0x00007efdaec5cb4b:   rorx   $0x29,%r11,%r13
   0.08%    ││ │    0x00007efdaec5cb51:   rorx   $0x12,%r11,%r14
   0.04%    ││ │    0x00007efdaec5cb57:   add    0x8(%rsp),%rcx
   0.26%    ││ │    0x00007efdaec5cb5c:   or     %r9,%rdi
   0.16%    ││ │    0x00007efdaec5cb5f:   mov    %rax,%r15
   0.09%    ││ │    0x00007efdaec5cb62:   xor    %rbx,%r15
   0.04%    ││ │    0x00007efdaec5cb65:   rorx   $0x22,%r8,%r12
   0.28%    ││ │    0x00007efdaec5cb6b:   xor    %r14,%r13
   0.12%    ││ │    0x00007efdaec5cb6e:   rorx   $0xe,%r11,%r14
   0.07%    ││ │    0x00007efdaec5cb74:   and    %r11,%r15
   0.03%    ││ │    0x00007efdaec5cb77:   add    %rcx,%r10
   0.25%    ││ │    0x00007efdaec5cb7a:   and    %rdx,%rdi
   0.18%    ││ │    0x00007efdaec5cb7d:   xor    %r14,%r13
   0.09%    ││ │    0x00007efdaec5cb80:   rorx   $0x27,%r8,%r14
   0.04%    ││ │    0x00007efdaec5cb86:   xor    %r12,%r14
   0.24%    ││ │    0x00007efdaec5cb89:   rorx   $0x1c,%r8,%r12
   0.15%    ││ │    0x00007efdaec5cb8f:   xor    %rbx,%r15
   0.06%    ││ │    0x00007efdaec5cb92:   xor    %r12,%r14
   0.04%    ││ │    0x00007efdaec5cb95:   mov    %r8,%r12
   0.22%    ││ │    0x00007efdaec5cb98:   and    %r9,%r12
   0.16%    ││ │    0x00007efdaec5cb9b:   add    %r13,%r15
   0.07%    ││ │    0x00007efdaec5cb9e:   or     %r12,%rdi
   0.04%    ││ │    0x00007efdaec5cba1:   add    %r14,%rcx
   0.27%    ││ │    0x00007efdaec5cba4:   add    %r15,%r10
   0.14%    ││ │    0x00007efdaec5cba7:   add    %r15,%rcx
   0.06%    ││ │    0x00007efdaec5cbaa:   add    %rdi,%rcx
   0.03%    ││ │    0x00007efdaec5cbad:   vpsrlq $0x13,%ymm2,%ymm3
   0.27%    ││ │    0x00007efdaec5cbb2:   vpsllq $0x2d,%ymm2,%ymm1
   0.16%    ││ │    0x00007efdaec5cbb7:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │    0x00007efdaec5cbbb:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007efdaec5cbbf:   vpsrlq $0x3d,%ymm2,%ymm3
   0.21%    ││ │    0x00007efdaec5cbc4:   vpsllq $0x3,%ymm2,%ymm1
   0.16%    ││ │    0x00007efdaec5cbc9:   vpor   %ymm1,%ymm3,%ymm3
   0.06%    ││ │    0x00007efdaec5cbcd:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007efdaec5cbd1:   vpaddq %ymm8,%ymm5,%ymm5
   0.23%    ││ │    0x00007efdaec5cbd6:   vpsrlq $0x6,%ymm5,%ymm8
   0.20%    ││ │    0x00007efdaec5cbdb:   mov    %rcx,%rdi
   0.08%    ││ │    0x00007efdaec5cbde:   rorx   $0x29,%r10,%r13
   0.02%    ││ │    0x00007efdaec5cbe4:   rorx   $0x12,%r10,%r14
   0.24%    ││ │    0x00007efdaec5cbea:   add    0x10(%rsp),%rbx
   0.17%    ││ │    0x00007efdaec5cbef:   or     %rdx,%rdi
   0.08%    ││ │    0x00007efdaec5cbf2:   mov    %r11,%r15
   0.03%    ││ │    0x00007efdaec5cbf5:   xor    %rax,%r15
   0.25%    ││ │    0x00007efdaec5cbf8:   rorx   $0x22,%rcx,%r12
   0.20%    ││ │    0x00007efdaec5cbfe:   xor    %r14,%r13
   0.07%    ││ │    0x00007efdaec5cc01:   rorx   $0xe,%r10,%r14
   0.03%    ││ │    0x00007efdaec5cc07:   and    %r10,%r15
   0.23%    ││ │    0x00007efdaec5cc0a:   add    %rbx,%r9
   0.15%    ││ │    0x00007efdaec5cc0d:   and    %r8,%rdi
   0.07%    ││ │    0x00007efdaec5cc10:   xor    %r14,%r13
   0.03%    ││ │    0x00007efdaec5cc13:   rorx   $0x27,%rcx,%r14
   0.26%    ││ │    0x00007efdaec5cc19:   xor    %r12,%r14
   0.16%    ││ │    0x00007efdaec5cc1c:   rorx   $0x1c,%rcx,%r12
   0.05%    ││ │    0x00007efdaec5cc22:   xor    %rax,%r15
   0.02%    ││ │    0x00007efdaec5cc25:   xor    %r12,%r14
   0.23%    ││ │    0x00007efdaec5cc28:   mov    %rcx,%r12
   0.17%    ││ │    0x00007efdaec5cc2b:   and    %rdx,%r12
   0.06%    ││ │    0x00007efdaec5cc2e:   add    %r13,%r15
   0.02%    ││ │    0x00007efdaec5cc31:   or     %r12,%rdi
   0.24%    ││ │    0x00007efdaec5cc34:   add    %r14,%rbx
   0.16%    ││ │    0x00007efdaec5cc37:   add    %r15,%r9
   0.09%    ││ │    0x00007efdaec5cc3a:   add    %r15,%rbx
   0.04%    ││ │    0x00007efdaec5cc3d:   add    %rdi,%rbx
   0.26%    ││ │    0x00007efdaec5cc40:   vpsrlq $0x13,%ymm5,%ymm3
   0.14%    ││ │    0x00007efdaec5cc45:   vpsllq $0x2d,%ymm5,%ymm1
   0.08%    ││ │    0x00007efdaec5cc4a:   vpor   %ymm1,%ymm3,%ymm3
   0.03%    ││ │    0x00007efdaec5cc4e:   vpxor  %ymm3,%ymm8,%ymm8
   0.30%    ││ │    0x00007efdaec5cc52:   vpsrlq $0x3d,%ymm5,%ymm3
   0.16%    ││ │    0x00007efdaec5cc57:   vpsllq $0x3,%ymm5,%ymm1
   0.09%    ││ │    0x00007efdaec5cc5c:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007efdaec5cc60:   vpxor  %ymm3,%ymm8,%ymm8
   0.29%    ││ │    0x00007efdaec5cc64:   vpaddq %ymm8,%ymm0,%ymm2
   0.24%    ││ │    0x00007efdaec5cc69:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.09%    ││ │    0x00007efdaec5cc6f:   mov    %rbx,%rdi
   0.03%    ││ │    0x00007efdaec5cc72:   rorx   $0x29,%r9,%r13
   0.25%    ││ │    0x00007efdaec5cc78:   rorx   $0x12,%r9,%r14
   0.15%    ││ │    0x00007efdaec5cc7e:   add    0x18(%rsp),%rax
   0.10%    ││ │    0x00007efdaec5cc83:   or     %r8,%rdi
   0.03%    ││ │    0x00007efdaec5cc86:   mov    %r10,%r15
   0.22%    ││ │    0x00007efdaec5cc89:   xor    %r11,%r15
   0.14%    ││ │    0x00007efdaec5cc8c:   rorx   $0x22,%rbx,%r12
   0.11%    ││ │    0x00007efdaec5cc92:   xor    %r14,%r13
   0.03%    ││ │    0x00007efdaec5cc95:   rorx   $0xe,%r9,%r14
   0.22%    ││ │    0x00007efdaec5cc9b:   and    %r9,%r15
   0.20%    ││ │    0x00007efdaec5cc9e:   add    %rax,%rdx
   0.10%    ││ │    0x00007efdaec5cca1:   and    %rcx,%rdi
   0.03%    ││ │    0x00007efdaec5cca4:   xor    %r14,%r13
   0.26%    ││ │    0x00007efdaec5cca7:   rorx   $0x27,%rbx,%r14
   0.16%    ││ │    0x00007efdaec5ccad:   xor    %r12,%r14
   0.09%    ││ │    0x00007efdaec5ccb0:   rorx   $0x1c,%rbx,%r12
   0.02%    ││ │    0x00007efdaec5ccb6:   xor    %r11,%r15
   0.28%    ││ │    0x00007efdaec5ccb9:   xor    %r12,%r14
   0.16%    ││ │    0x00007efdaec5ccbc:   mov    %rbx,%r12
   0.07%    ││ │    0x00007efdaec5ccbf:   and    %r8,%r12
   0.02%    ││ │    0x00007efdaec5ccc2:   add    %r13,%r15
   0.22%    ││ │    0x00007efdaec5ccc5:   or     %r12,%rdi
   0.16%    ││ │    0x00007efdaec5ccc8:   add    %r14,%rax
   0.09%    ││ │    0x00007efdaec5cccb:   add    %r15,%rdx
   0.03%    ││ │    0x00007efdaec5ccce:   add    %r15,%rax
   0.23%    ││ │    0x00007efdaec5ccd1:   add    %rdi,%rax
   0.17%    ││ │    0x00007efdaec5ccd4:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.09%    ││ │    0x00007efdaec5ccd9:   vmovdqu %ymm0,(%rsp)
   0.02%    ││ │    0x00007efdaec5ccde:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.26%    ││ │    0x00007efdaec5cce4:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.14%    ││ │    0x00007efdaec5ccea:   vpaddq %ymm6,%ymm0,%ymm0
   0.19%    ││ │    0x00007efdaec5ccee:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.03%    ││ │    0x00007efdaec5ccf4:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.21%    ││ │    0x00007efdaec5ccfa:   vpsrlq $0x1,%ymm1,%ymm2
   0.15%    ││ │    0x00007efdaec5ccff:   vpsllq $0x3f,%ymm1,%ymm3
   0.14%    ││ │    0x00007efdaec5cd04:   vpor   %ymm2,%ymm3,%ymm3
   0.03%    ││ │    0x00007efdaec5cd08:   vpsrlq $0x7,%ymm1,%ymm8
   0.20%    ││ │    0x00007efdaec5cd0d:   mov    %rax,%rdi
   0.15%    ││ │    0x00007efdaec5cd10:   rorx   $0x29,%rdx,%r13
   0.12%    ││ │    0x00007efdaec5cd16:   rorx   $0x12,%rdx,%r14
   0.03%    ││ │    0x00007efdaec5cd1c:   add    (%rsp),%r11
   0.19%    ││ │    0x00007efdaec5cd20:   or     %rcx,%rdi
   0.12%    ││ │    0x00007efdaec5cd23:   mov    %r9,%r15
   0.14%    ││ │    0x00007efdaec5cd26:   xor    %r10,%r15
   0.04%    ││ │    0x00007efdaec5cd29:   rorx   $0x22,%rax,%r12
   0.20%    ││ │    0x00007efdaec5cd2f:   xor    %r14,%r13
   0.14%    ││ │    0x00007efdaec5cd32:   rorx   $0xe,%rdx,%r14
   0.15%    ││ │    0x00007efdaec5cd38:   and    %rdx,%r15
   0.03%    ││ │    0x00007efdaec5cd3b:   add    %r11,%r8
   0.24%    ││ │    0x00007efdaec5cd3e:   and    %rbx,%rdi
   0.13%    ││ │    0x00007efdaec5cd41:   xor    %r14,%r13
   0.13%    ││ │    0x00007efdaec5cd44:   rorx   $0x27,%rax,%r14
   0.02%    ││ │    0x00007efdaec5cd4a:   xor    %r12,%r14
   0.19%    ││ │    0x00007efdaec5cd4d:   rorx   $0x1c,%rax,%r12
   0.13%    ││ │    0x00007efdaec5cd53:   xor    %r10,%r15
   0.13%    ││ │    0x00007efdaec5cd56:   xor    %r12,%r14
   0.04%    ││ │    0x00007efdaec5cd59:   mov    %rax,%r12
   0.20%    ││ │    0x00007efdaec5cd5c:   and    %rcx,%r12
   0.11%    ││ │    0x00007efdaec5cd5f:   add    %r13,%r15
   0.12%    ││ │    0x00007efdaec5cd62:   or     %r12,%rdi
   0.04%    ││ │    0x00007efdaec5cd65:   add    %r14,%r11
   0.23%    ││ │    0x00007efdaec5cd68:   add    %r15,%r8
   0.14%    ││ │    0x00007efdaec5cd6b:   add    %r15,%r11
   0.14%    ││ │    0x00007efdaec5cd6e:   add    %rdi,%r11
   0.02%    ││ │    0x00007efdaec5cd71:   vpsrlq $0x8,%ymm1,%ymm2
   0.19%    ││ │    0x00007efdaec5cd76:   vpsllq $0x38,%ymm1,%ymm1
   0.16%    ││ │    0x00007efdaec5cd7b:   vpor   %ymm2,%ymm1,%ymm1
   0.14%    ││ │    0x00007efdaec5cd7f:   vpxor  %ymm8,%ymm3,%ymm3
   0.03%    ││ │    0x00007efdaec5cd84:   vpxor  %ymm1,%ymm3,%ymm1
   0.21%    ││ │    0x00007efdaec5cd88:   vpaddq %ymm1,%ymm0,%ymm0
   0.13%    ││ │    0x00007efdaec5cd8c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.14%    ││ │    0x00007efdaec5cd92:   vpand  %ymm10,%ymm0,%ymm0
   0.04%    ││ │    0x00007efdaec5cd97:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.22%    ││ │    0x00007efdaec5cd9d:   vpsrlq $0x6,%ymm2,%ymm8
   0.11%    ││ │    0x00007efdaec5cda2:   mov    %r11,%rdi
   0.13%    ││ │    0x00007efdaec5cda5:   rorx   $0x29,%r8,%r13
   0.05%    ││ │    0x00007efdaec5cdab:   rorx   $0x12,%r8,%r14
   0.20%    ││ │    0x00007efdaec5cdb1:   add    0x8(%rsp),%r10
   0.12%    ││ │    0x00007efdaec5cdb6:   or     %rbx,%rdi
   0.13%    ││ │    0x00007efdaec5cdb9:   mov    %rdx,%r15
   0.03%    ││ │    0x00007efdaec5cdbc:   xor    %r9,%r15
   0.18%    ││ │    0x00007efdaec5cdbf:   rorx   $0x22,%r11,%r12
   0.14%    ││ │    0x00007efdaec5cdc5:   xor    %r14,%r13
   0.10%    ││ │    0x00007efdaec5cdc8:   rorx   $0xe,%r8,%r14
   0.05%    ││ │    0x00007efdaec5cdce:   and    %r8,%r15
   0.23%    ││ │    0x00007efdaec5cdd1:   add    %r10,%rcx
   0.13%    ││ │    0x00007efdaec5cdd4:   and    %rax,%rdi
   0.12%    ││ │    0x00007efdaec5cdd7:   xor    %r14,%r13
   0.04%    ││ │    0x00007efdaec5cdda:   rorx   $0x27,%r11,%r14
   0.19%    ││ │    0x00007efdaec5cde0:   xor    %r12,%r14
   0.14%    ││ │    0x00007efdaec5cde3:   rorx   $0x1c,%r11,%r12
   0.10%    ││ │    0x00007efdaec5cde9:   xor    %r9,%r15
   0.04%    ││ │    0x00007efdaec5cdec:   xor    %r12,%r14
   0.20%    ││ │    0x00007efdaec5cdef:   mov    %r11,%r12
   0.12%    ││ │    0x00007efdaec5cdf2:   and    %rbx,%r12
   0.11%    ││ │    0x00007efdaec5cdf5:   add    %r13,%r15
   0.03%    ││ │    0x00007efdaec5cdf8:   or     %r12,%rdi
   0.23%    ││ │    0x00007efdaec5cdfb:   add    %r14,%r10
   0.17%    ││ │    0x00007efdaec5cdfe:   add    %r15,%rcx
   0.15%    ││ │    0x00007efdaec5ce01:   add    %r15,%r10
   0.05%    ││ │    0x00007efdaec5ce04:   add    %rdi,%r10
   0.17%    ││ │    0x00007efdaec5ce07:   vpsrlq $0x13,%ymm2,%ymm3
   0.14%    ││ │    0x00007efdaec5ce0c:   vpsllq $0x2d,%ymm2,%ymm1
   0.15%    ││ │    0x00007efdaec5ce11:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007efdaec5ce15:   vpxor  %ymm3,%ymm8,%ymm8
   0.24%    ││ │    0x00007efdaec5ce19:   vpsrlq $0x3d,%ymm2,%ymm3
   0.12%    ││ │    0x00007efdaec5ce1e:   vpsllq $0x3,%ymm2,%ymm1
   0.13%    ││ │    0x00007efdaec5ce23:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007efdaec5ce27:   vpxor  %ymm3,%ymm8,%ymm8
   0.21%    ││ │    0x00007efdaec5ce2b:   vpaddq %ymm8,%ymm6,%ymm6
   0.13%    ││ │    0x00007efdaec5ce30:   vpsrlq $0x6,%ymm6,%ymm8
   0.15%    ││ │    0x00007efdaec5ce35:   mov    %r10,%rdi
   0.03%    ││ │    0x00007efdaec5ce38:   rorx   $0x29,%rcx,%r13
   0.28%    ││ │    0x00007efdaec5ce3e:   rorx   $0x12,%rcx,%r14
   0.15%    ││ │    0x00007efdaec5ce44:   add    0x10(%rsp),%r9
   0.12%    ││ │    0x00007efdaec5ce49:   or     %rax,%rdi
   0.03%    ││ │    0x00007efdaec5ce4c:   mov    %r8,%r15
   0.19%    ││ │    0x00007efdaec5ce4f:   xor    %rdx,%r15
   0.12%    ││ │    0x00007efdaec5ce52:   rorx   $0x22,%r10,%r12
   0.14%    ││ │    0x00007efdaec5ce58:   xor    %r14,%r13
   0.04%    ││ │    0x00007efdaec5ce5b:   rorx   $0xe,%rcx,%r14
   0.20%    ││ │    0x00007efdaec5ce61:   and    %rcx,%r15
   0.14%    ││ │    0x00007efdaec5ce64:   add    %r9,%rbx
   0.16%    ││ │    0x00007efdaec5ce67:   and    %r11,%rdi
   0.04%    ││ │    0x00007efdaec5ce6a:   xor    %r14,%r13
   0.21%    ││ │    0x00007efdaec5ce6d:   rorx   $0x27,%r10,%r14
   0.11%    ││ │    0x00007efdaec5ce73:   xor    %r12,%r14
   0.14%    ││ │    0x00007efdaec5ce76:   rorx   $0x1c,%r10,%r12
   0.03%    ││ │    0x00007efdaec5ce7c:   xor    %rdx,%r15
   0.16%    ││ │    0x00007efdaec5ce7f:   xor    %r12,%r14
   0.13%    ││ │    0x00007efdaec5ce82:   mov    %r10,%r12
   0.14%    ││ │    0x00007efdaec5ce85:   and    %rax,%r12
   0.04%    ││ │    0x00007efdaec5ce88:   add    %r13,%r15
   0.17%    ││ │    0x00007efdaec5ce8b:   or     %r12,%rdi
   0.10%    ││ │    0x00007efdaec5ce8e:   add    %r14,%r9
   0.14%    ││ │    0x00007efdaec5ce91:   add    %r15,%rbx
   0.03%    ││ │    0x00007efdaec5ce94:   add    %r15,%r9
   0.21%    ││ │    0x00007efdaec5ce97:   add    %rdi,%r9
   0.14%    ││ │    0x00007efdaec5ce9a:   vpsrlq $0x13,%ymm6,%ymm3
   0.14%    ││ │    0x00007efdaec5ce9f:   vpsllq $0x2d,%ymm6,%ymm1
   0.04%    ││ │    0x00007efdaec5cea4:   vpor   %ymm1,%ymm3,%ymm3
   0.20%    ││ │    0x00007efdaec5cea8:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%    ││ │    0x00007efdaec5ceac:   vpsrlq $0x3d,%ymm6,%ymm3
   0.15%    ││ │    0x00007efdaec5ceb1:   vpsllq $0x3,%ymm6,%ymm1
   0.05%    ││ │    0x00007efdaec5ceb6:   vpor   %ymm1,%ymm3,%ymm3
   0.27%    ││ │    0x00007efdaec5ceba:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%    ││ │    0x00007efdaec5cebe:   vpaddq %ymm8,%ymm0,%ymm2
   0.15%    ││ │    0x00007efdaec5cec3:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.14%    ││ │    0x00007efdaec5cec9:   mov    %r9,%rdi
   0.21%    ││ │    0x00007efdaec5cecc:   rorx   $0x29,%rbx,%r13
   0.10%    ││ │    0x00007efdaec5ced2:   rorx   $0x12,%rbx,%r14
   0.10%    ││ │    0x00007efdaec5ced8:   add    0x18(%rsp),%rdx
   0.11%    ││ │    0x00007efdaec5cedd:   or     %r11,%rdi
   0.24%    ││ │    0x00007efdaec5cee0:   mov    %rcx,%r15
   0.09%    ││ │    0x00007efdaec5cee3:   xor    %r8,%r15
   0.10%    ││ │    0x00007efdaec5cee6:   rorx   $0x22,%r9,%r12
   0.08%    ││ │    0x00007efdaec5ceec:   xor    %r14,%r13
   0.19%    ││ │    0x00007efdaec5ceef:   rorx   $0xe,%rbx,%r14
   0.07%    ││ │    0x00007efdaec5cef5:   and    %rbx,%r15
   0.09%    ││ │    0x00007efdaec5cef8:   add    %rdx,%rax
   0.08%    ││ │    0x00007efdaec5cefb:   and    %r10,%rdi
   0.17%    ││ │    0x00007efdaec5cefe:   xor    %r14,%r13
   0.09%    ││ │    0x00007efdaec5cf01:   rorx   $0x27,%r9,%r14
   0.09%    ││ │    0x00007efdaec5cf07:   xor    %r12,%r14
   0.10%    ││ │    0x00007efdaec5cf0a:   rorx   $0x1c,%r9,%r12
   0.18%    ││ │    0x00007efdaec5cf10:   xor    %r8,%r15
   0.10%    ││ │    0x00007efdaec5cf13:   xor    %r12,%r14
   0.08%    ││ │    0x00007efdaec5cf16:   mov    %r9,%r12
   0.08%    ││ │    0x00007efdaec5cf19:   and    %r11,%r12
   0.19%    ││ │    0x00007efdaec5cf1c:   add    %r13,%r15
   0.12%    ││ │    0x00007efdaec5cf1f:   or     %r12,%rdi
   0.10%    ││ │    0x00007efdaec5cf22:   add    %r14,%rdx
   0.11%    ││ │    0x00007efdaec5cf25:   add    %r15,%rax
   0.20%    ││ │    0x00007efdaec5cf28:   add    %r15,%rdx
   0.10%    ││ │    0x00007efdaec5cf2b:   add    %rdi,%rdx
   0.11%    ││ │    0x00007efdaec5cf2e:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.07%    ││ │    0x00007efdaec5cf33:   vmovdqu %ymm0,(%rsp)
   0.22%    ││ │    0x00007efdaec5cf38:   add    $0x80,%rbp
   0.12%    ││ │    0x00007efdaec5cf3f:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.09%    ││ │    0x00007efdaec5cf45:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.10%    ││ │    0x00007efdaec5cf4b:   vpaddq %ymm7,%ymm0,%ymm0
   0.28%    ││ │    0x00007efdaec5cf4f:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.12%    ││ │    0x00007efdaec5cf55:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.08%    ││ │    0x00007efdaec5cf5b:   vpsrlq $0x1,%ymm1,%ymm2
   0.08%    ││ │    0x00007efdaec5cf60:   vpsllq $0x3f,%ymm1,%ymm3
   0.25%    ││ │    0x00007efdaec5cf65:   vpor   %ymm2,%ymm3,%ymm3
   0.12%    ││ │    0x00007efdaec5cf69:   vpsrlq $0x7,%ymm1,%ymm8
   0.09%    ││ │    0x00007efdaec5cf6e:   mov    %rdx,%rdi
   0.08%    ││ │    0x00007efdaec5cf71:   rorx   $0x29,%rax,%r13
   0.23%    ││ │    0x00007efdaec5cf77:   rorx   $0x12,%rax,%r14
   0.11%    ││ │    0x00007efdaec5cf7d:   add    (%rsp),%r8
   0.06%    ││ │    0x00007efdaec5cf81:   or     %r10,%rdi
   0.08%    ││ │    0x00007efdaec5cf84:   mov    %rbx,%r15
   0.24%    ││ │    0x00007efdaec5cf87:   xor    %rcx,%r15
   0.14%    ││ │    0x00007efdaec5cf8a:   rorx   $0x22,%rdx,%r12
   0.13%    ││ │    0x00007efdaec5cf90:   xor    %r14,%r13
   0.07%    ││ │    0x00007efdaec5cf93:   rorx   $0xe,%rax,%r14
   0.24%    ││ │    0x00007efdaec5cf99:   and    %rax,%r15
   0.12%    ││ │    0x00007efdaec5cf9c:   add    %r8,%r11
   0.10%    ││ │    0x00007efdaec5cf9f:   and    %r9,%rdi
   0.06%    ││ │    0x00007efdaec5cfa2:   xor    %r14,%r13
   0.22%    ││ │    0x00007efdaec5cfa5:   rorx   $0x27,%rdx,%r14
   0.10%    ││ │    0x00007efdaec5cfab:   xor    %r12,%r14
   0.09%    ││ │    0x00007efdaec5cfae:   rorx   $0x1c,%rdx,%r12
   0.07%    ││ │    0x00007efdaec5cfb4:   xor    %rcx,%r15
   0.21%    ││ │    0x00007efdaec5cfb7:   xor    %r12,%r14
   0.12%    ││ │    0x00007efdaec5cfba:   mov    %rdx,%r12
   0.09%    ││ │    0x00007efdaec5cfbd:   and    %r10,%r12
   0.09%    ││ │    0x00007efdaec5cfc0:   add    %r13,%r15
   0.22%    ││ │    0x00007efdaec5cfc3:   or     %r12,%rdi
   0.11%    ││ │    0x00007efdaec5cfc6:   add    %r14,%r8
   0.09%    ││ │    0x00007efdaec5cfc9:   add    %r15,%r11
   0.08%    ││ │    0x00007efdaec5cfcc:   add    %r15,%r8
   0.22%    ││ │    0x00007efdaec5cfcf:   add    %rdi,%r8
   0.09%    ││ │    0x00007efdaec5cfd2:   vpsrlq $0x8,%ymm1,%ymm2
   0.09%    ││ │    0x00007efdaec5cfd7:   vpsllq $0x38,%ymm1,%ymm1
   0.10%    ││ │    0x00007efdaec5cfdc:   vpor   %ymm2,%ymm1,%ymm1
   0.23%    ││ │    0x00007efdaec5cfe0:   vpxor  %ymm8,%ymm3,%ymm3
   0.10%    ││ │    0x00007efdaec5cfe5:   vpxor  %ymm1,%ymm3,%ymm1
   0.09%    ││ │    0x00007efdaec5cfe9:   vpaddq %ymm1,%ymm0,%ymm0
   0.08%    ││ │    0x00007efdaec5cfed:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.20%    ││ │    0x00007efdaec5cff3:   vpand  %ymm10,%ymm0,%ymm0
   0.14%    ││ │    0x00007efdaec5cff8:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.09%    ││ │    0x00007efdaec5cffe:   vpsrlq $0x6,%ymm2,%ymm8
   0.07%    ││ │    0x00007efdaec5d003:   mov    %r8,%rdi
   0.19%    ││ │    0x00007efdaec5d006:   rorx   $0x29,%r11,%r13
   0.10%    ││ │    0x00007efdaec5d00c:   rorx   $0x12,%r11,%r14
   0.09%    ││ │    0x00007efdaec5d012:   add    0x8(%rsp),%rcx
   0.09%    ││ │    0x00007efdaec5d017:   or     %r9,%rdi
   0.24%    ││ │    0x00007efdaec5d01a:   mov    %rax,%r15
   0.13%    ││ │    0x00007efdaec5d01d:   xor    %rbx,%r15
   0.09%    ││ │    0x00007efdaec5d020:   rorx   $0x22,%r8,%r12
   0.07%    ││ │    0x00007efdaec5d026:   xor    %r14,%r13
   0.21%    ││ │    0x00007efdaec5d029:   rorx   $0xe,%r11,%r14
   0.10%    ││ │    0x00007efdaec5d02f:   and    %r11,%r15
   0.10%    ││ │    0x00007efdaec5d032:   add    %rcx,%r10
   0.07%    ││ │    0x00007efdaec5d035:   and    %rdx,%rdi
   0.24%    ││ │    0x00007efdaec5d038:   xor    %r14,%r13
   0.13%    ││ │    0x00007efdaec5d03b:   rorx   $0x27,%r8,%r14
   0.10%    ││ │    0x00007efdaec5d041:   xor    %r12,%r14
   0.06%    ││ │    0x00007efdaec5d044:   rorx   $0x1c,%r8,%r12
   0.23%    ││ │    0x00007efdaec5d04a:   xor    %rbx,%r15
   0.13%    ││ │    0x00007efdaec5d04d:   xor    %r12,%r14
   0.07%    ││ │    0x00007efdaec5d050:   mov    %r8,%r12
   0.08%    ││ │    0x00007efdaec5d053:   and    %r9,%r12
   0.20%    ││ │    0x00007efdaec5d056:   add    %r13,%r15
   0.13%    ││ │    0x00007efdaec5d059:   or     %r12,%rdi
   0.08%    ││ │    0x00007efdaec5d05c:   add    %r14,%rcx
   0.07%    ││ │    0x00007efdaec5d05f:   add    %r15,%r10
   0.25%    ││ │    0x00007efdaec5d062:   add    %r15,%rcx
   0.13%    ││ │    0x00007efdaec5d065:   add    %rdi,%rcx
   0.08%    ││ │    0x00007efdaec5d068:   vpsrlq $0x13,%ymm2,%ymm3
   0.08%    ││ │    0x00007efdaec5d06d:   vpsllq $0x2d,%ymm2,%ymm1
   0.21%    ││ │    0x00007efdaec5d072:   vpor   %ymm1,%ymm3,%ymm3
   0.12%    ││ │    0x00007efdaec5d076:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007efdaec5d07a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.06%    ││ │    0x00007efdaec5d07f:   vpsllq $0x3,%ymm2,%ymm1
   0.19%    ││ │    0x00007efdaec5d084:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007efdaec5d088:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │    0x00007efdaec5d08c:   vpaddq %ymm8,%ymm7,%ymm7
   0.07%    ││ │    0x00007efdaec5d091:   vpsrlq $0x6,%ymm7,%ymm8
   0.22%    ││ │    0x00007efdaec5d096:   mov    %rcx,%rdi
   0.09%    ││ │    0x00007efdaec5d099:   rorx   $0x29,%r10,%r13
   0.06%    ││ │    0x00007efdaec5d09f:   rorx   $0x12,%r10,%r14
   0.06%    ││ │    0x00007efdaec5d0a5:   add    0x10(%rsp),%rbx
   0.20%    ││ │    0x00007efdaec5d0aa:   or     %rdx,%rdi
   0.08%    ││ │    0x00007efdaec5d0ad:   mov    %r11,%r15
   0.09%    ││ │    0x00007efdaec5d0b0:   xor    %rax,%r15
   0.08%    ││ │    0x00007efdaec5d0b3:   rorx   $0x22,%rcx,%r12
   0.28%    ││ │    0x00007efdaec5d0b9:   xor    %r14,%r13
   0.08%    ││ │    0x00007efdaec5d0bc:   rorx   $0xe,%r10,%r14
   0.08%    ││ │    0x00007efdaec5d0c2:   and    %r10,%r15
   0.06%    ││ │    0x00007efdaec5d0c5:   add    %rbx,%r9
   0.25%    ││ │    0x00007efdaec5d0c8:   and    %r8,%rdi
   0.13%    ││ │    0x00007efdaec5d0cb:   xor    %r14,%r13
   0.07%    ││ │    0x00007efdaec5d0ce:   rorx   $0x27,%rcx,%r14
   0.06%    ││ │    0x00007efdaec5d0d4:   xor    %r12,%r14
   0.20%    ││ │    0x00007efdaec5d0d7:   rorx   $0x1c,%rcx,%r12
   0.11%    ││ │    0x00007efdaec5d0dd:   xor    %rax,%r15
   0.09%    ││ │    0x00007efdaec5d0e0:   xor    %r12,%r14
   0.07%    ││ │    0x00007efdaec5d0e3:   mov    %rcx,%r12
   0.21%    ││ │    0x00007efdaec5d0e6:   and    %rdx,%r12
   0.10%    ││ │    0x00007efdaec5d0e9:   add    %r13,%r15
   0.08%    ││ │    0x00007efdaec5d0ec:   or     %r12,%rdi
   0.09%    ││ │    0x00007efdaec5d0ef:   add    %r14,%rbx
   0.21%    ││ │    0x00007efdaec5d0f2:   add    %r15,%r9
   0.11%    ││ │    0x00007efdaec5d0f5:   add    %r15,%rbx
   0.07%    ││ │    0x00007efdaec5d0f8:   add    %rdi,%rbx
   0.07%    ││ │    0x00007efdaec5d0fb:   vpsrlq $0x13,%ymm7,%ymm3
   0.23%    ││ │    0x00007efdaec5d100:   vpsllq $0x2d,%ymm7,%ymm1
   0.10%    ││ │    0x00007efdaec5d105:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007efdaec5d109:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007efdaec5d10d:   vpsrlq $0x3d,%ymm7,%ymm3
   0.25%    ││ │    0x00007efdaec5d112:   vpsllq $0x3,%ymm7,%ymm1
   0.10%    ││ │    0x00007efdaec5d117:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │    0x00007efdaec5d11b:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007efdaec5d11f:   vpaddq %ymm8,%ymm0,%ymm2
   0.23%    ││ │    0x00007efdaec5d124:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.18%    ││ │    0x00007efdaec5d12a:   mov    %rbx,%rdi
   0.09%    ││ │    0x00007efdaec5d12d:   rorx   $0x29,%r9,%r13
   0.08%    ││ │    0x00007efdaec5d133:   rorx   $0x12,%r9,%r14
   0.18%    ││ │    0x00007efdaec5d139:   add    0x18(%rsp),%rax
   0.14%    ││ │    0x00007efdaec5d13e:   or     %r8,%rdi
   0.09%    ││ │    0x00007efdaec5d141:   mov    %r10,%r15
   0.05%    ││ │    0x00007efdaec5d144:   xor    %r11,%r15
   0.19%    ││ │    0x00007efdaec5d147:   rorx   $0x22,%rbx,%r12
   0.17%    ││ │    0x00007efdaec5d14d:   xor    %r14,%r13
   0.08%    ││ │    0x00007efdaec5d150:   rorx   $0xe,%r9,%r14
   0.04%    ││ │    0x00007efdaec5d156:   and    %r9,%r15
   0.19%    ││ │    0x00007efdaec5d159:   add    %rax,%rdx
   0.13%    ││ │    0x00007efdaec5d15c:   and    %rcx,%rdi
   0.08%    ││ │    0x00007efdaec5d15f:   xor    %r14,%r13
   0.05%    ││ │    0x00007efdaec5d162:   rorx   $0x27,%rbx,%r14
   0.20%    ││ │    0x00007efdaec5d168:   xor    %r12,%r14
   0.15%    ││ │    0x00007efdaec5d16b:   rorx   $0x1c,%rbx,%r12
   0.08%    ││ │    0x00007efdaec5d171:   xor    %r11,%r15
   0.05%    ││ │    0x00007efdaec5d174:   xor    %r12,%r14
   0.19%    ││ │    0x00007efdaec5d177:   mov    %rbx,%r12
   0.18%    ││ │    0x00007efdaec5d17a:   and    %r8,%r12
   0.09%    ││ │    0x00007efdaec5d17d:   add    %r13,%r15
   0.05%    ││ │    0x00007efdaec5d180:   or     %r12,%rdi
   0.25%    ││ │    0x00007efdaec5d183:   add    %r14,%rax
   0.17%    ││ │    0x00007efdaec5d186:   add    %r15,%rdx
   0.10%    ││ │    0x00007efdaec5d189:   add    %r15,%rax
   0.04%    ││ │    0x00007efdaec5d18c:   add    %rdi,%rax
   0.19%    ││ │    0x00007efdaec5d18f:   subq   $0x1,0x20(%rsp)
   0.23%    │╰ │    0x00007efdaec5d195:   jne    0x00007efdaec5c820
   0.02%    │  │    0x00007efdaec5d19b:   movq   $0x2,0x20(%rsp)
   0.06%    │ ↗│    0x00007efdaec5d1a4:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.05%    │ ││    0x00007efdaec5d1a9:   vmovdqu %ymm0,(%rsp)
   0.06%    │ ││    0x00007efdaec5d1ae:   mov    %r9,%r15
   0.05%    │ ││    0x00007efdaec5d1b1:   rorx   $0x29,%rdx,%r13
   0.05%    │ ││    0x00007efdaec5d1b7:   rorx   $0x12,%rdx,%r14
   0.07%    │ ││    0x00007efdaec5d1bd:   xor    %r10,%r15
   0.06%    │ ││    0x00007efdaec5d1c0:   xor    %r14,%r13
   0.07%    │ ││    0x00007efdaec5d1c3:   rorx   $0xe,%rdx,%r14
   0.06%    │ ││    0x00007efdaec5d1c9:   and    %rdx,%r15
   0.07%    │ ││    0x00007efdaec5d1cc:   xor    %r14,%r13
   0.07%    │ ││    0x00007efdaec5d1cf:   rorx   $0x22,%rax,%r12
   0.08%    │ ││    0x00007efdaec5d1d5:   xor    %r10,%r15
   0.08%    │ ││    0x00007efdaec5d1d8:   rorx   $0x27,%rax,%r14
   0.05%    │ ││    0x00007efdaec5d1de:   mov    %rax,%rdi
   0.08%    │ ││    0x00007efdaec5d1e1:   xor    %r12,%r14
   0.08%    │ ││    0x00007efdaec5d1e4:   rorx   $0x1c,%rax,%r12
   0.04%    │ ││    0x00007efdaec5d1ea:   add    (%rsp),%r11
   0.07%    │ ││    0x00007efdaec5d1ee:   or     %rcx,%rdi
   0.06%    │ ││    0x00007efdaec5d1f1:   xor    %r12,%r14
   0.06%    │ ││    0x00007efdaec5d1f4:   mov    %rax,%r12
   0.04%    │ ││    0x00007efdaec5d1f7:   and    %rbx,%rdi
   0.05%    │ ││    0x00007efdaec5d1fa:   and    %rcx,%r12
   0.08%    │ ││    0x00007efdaec5d1fd:   add    %r13,%r15
   0.08%    │ ││    0x00007efdaec5d200:   add    %r11,%r8
   0.07%    │ ││    0x00007efdaec5d203:   or     %r12,%rdi
   0.07%    │ ││    0x00007efdaec5d206:   add    %r14,%r11
   0.07%    │ ││    0x00007efdaec5d209:   add    %r15,%r8
   0.07%    │ ││    0x00007efdaec5d20c:   add    %r15,%r11
   0.06%    │ ││    0x00007efdaec5d20f:   mov    %rdx,%r15
   0.06%    │ ││    0x00007efdaec5d212:   rorx   $0x29,%r8,%r13
   0.07%    │ ││    0x00007efdaec5d218:   rorx   $0x12,%r8,%r14
   0.09%    │ ││    0x00007efdaec5d21e:   xor    %r9,%r15
   0.05%    │ ││    0x00007efdaec5d221:   xor    %r14,%r13
   0.06%    │ ││    0x00007efdaec5d224:   rorx   $0xe,%r8,%r14
   0.07%    │ ││    0x00007efdaec5d22a:   and    %r8,%r15
   0.07%    │ ││    0x00007efdaec5d22d:   add    %rdi,%r11
   0.06%    │ ││    0x00007efdaec5d230:   xor    %r14,%r13
   0.05%    │ ││    0x00007efdaec5d233:   rorx   $0x22,%r11,%r12
   0.08%    │ ││    0x00007efdaec5d239:   xor    %r9,%r15
   0.08%    │ ││    0x00007efdaec5d23c:   rorx   $0x27,%r11,%r14
   0.06%    │ ││    0x00007efdaec5d242:   mov    %r11,%rdi
   0.05%    │ ││    0x00007efdaec5d245:   xor    %r12,%r14
   0.06%    │ ││    0x00007efdaec5d248:   rorx   $0x1c,%r11,%r12
   0.06%    │ ││    0x00007efdaec5d24e:   add    0x8(%rsp),%r10
   0.05%    │ ││    0x00007efdaec5d253:   or     %rbx,%rdi
   0.08%    │ ││    0x00007efdaec5d256:   xor    %r12,%r14
   0.07%    │ ││    0x00007efdaec5d259:   mov    %r11,%r12
   0.05%    │ ││    0x00007efdaec5d25c:   and    %rax,%rdi
   0.06%    │ ││    0x00007efdaec5d25f:   and    %rbx,%r12
   0.07%    │ ││    0x00007efdaec5d262:   add    %r13,%r15
   0.08%    │ ││    0x00007efdaec5d265:   add    %r10,%rcx
   0.06%    │ ││    0x00007efdaec5d268:   or     %r12,%rdi
   0.07%    │ ││    0x00007efdaec5d26b:   add    %r14,%r10
   0.05%    │ ││    0x00007efdaec5d26e:   add    %r15,%rcx
   0.07%    │ ││    0x00007efdaec5d271:   add    %r15,%r10
   0.07%    │ ││    0x00007efdaec5d274:   mov    %r8,%r15
   0.07%    │ ││    0x00007efdaec5d277:   rorx   $0x29,%rcx,%r13
   0.05%    │ ││    0x00007efdaec5d27d:   rorx   $0x12,%rcx,%r14
   0.06%    │ ││    0x00007efdaec5d283:   xor    %rdx,%r15
   0.08%    │ ││    0x00007efdaec5d286:   xor    %r14,%r13
   0.06%    │ ││    0x00007efdaec5d289:   rorx   $0xe,%rcx,%r14
   0.08%    │ ││    0x00007efdaec5d28f:   and    %rcx,%r15
   0.05%    │ ││    0x00007efdaec5d292:   add    %rdi,%r10
   0.06%    │ ││    0x00007efdaec5d295:   xor    %r14,%r13
   0.08%    │ ││    0x00007efdaec5d298:   rorx   $0x22,%r10,%r12
   0.07%    │ ││    0x00007efdaec5d29e:   xor    %rdx,%r15
   0.08%    │ ││    0x00007efdaec5d2a1:   rorx   $0x27,%r10,%r14
   0.06%    │ ││    0x00007efdaec5d2a7:   mov    %r10,%rdi
   0.07%    │ ││    0x00007efdaec5d2aa:   xor    %r12,%r14
   0.07%    │ ││    0x00007efdaec5d2ad:   rorx   $0x1c,%r10,%r12
   0.07%    │ ││    0x00007efdaec5d2b3:   add    0x10(%rsp),%r9
   0.05%    │ ││    0x00007efdaec5d2b8:   or     %rax,%rdi
   0.06%    │ ││    0x00007efdaec5d2bb:   xor    %r12,%r14
   0.07%    │ ││    0x00007efdaec5d2be:   mov    %r10,%r12
   0.06%    │ ││    0x00007efdaec5d2c1:   and    %r11,%rdi
   0.05%    │ ││    0x00007efdaec5d2c4:   and    %rax,%r12
   0.05%    │ ││    0x00007efdaec5d2c7:   add    %r13,%r15
   0.08%    │ ││    0x00007efdaec5d2ca:   add    %r9,%rbx
   0.08%    │ ││    0x00007efdaec5d2cd:   or     %r12,%rdi
   0.05%    │ ││    0x00007efdaec5d2d0:   add    %r14,%r9
   0.06%    │ ││    0x00007efdaec5d2d3:   add    %r15,%rbx
   0.08%    │ ││    0x00007efdaec5d2d6:   add    %r15,%r9
   0.06%    │ ││    0x00007efdaec5d2d9:   mov    %rcx,%r15
   0.06%    │ ││    0x00007efdaec5d2dc:   rorx   $0x29,%rbx,%r13
   0.08%    │ ││    0x00007efdaec5d2e2:   rorx   $0x12,%rbx,%r14
   0.09%    │ ││    0x00007efdaec5d2e8:   xor    %r8,%r15
   0.06%    │ ││    0x00007efdaec5d2eb:   xor    %r14,%r13
   0.09%    │ ││    0x00007efdaec5d2ee:   rorx   $0xe,%rbx,%r14
   0.05%    │ ││    0x00007efdaec5d2f4:   and    %rbx,%r15
   0.06%    │ ││    0x00007efdaec5d2f7:   add    %rdi,%r9
   0.07%    │ ││    0x00007efdaec5d2fa:   xor    %r14,%r13
   0.08%    │ ││    0x00007efdaec5d2fd:   rorx   $0x22,%r9,%r12
   0.06%    │ ││    0x00007efdaec5d303:   xor    %r8,%r15
   0.07%    │ ││    0x00007efdaec5d306:   rorx   $0x27,%r9,%r14
   0.04%    │ ││    0x00007efdaec5d30c:   mov    %r9,%rdi
   0.04%    │ ││    0x00007efdaec5d30f:   xor    %r12,%r14
   0.07%    │ ││    0x00007efdaec5d312:   rorx   $0x1c,%r9,%r12
   0.08%    │ ││    0x00007efdaec5d318:   add    0x18(%rsp),%rdx
   0.05%    │ ││    0x00007efdaec5d31d:   or     %r11,%rdi
   0.04%    │ ││    0x00007efdaec5d320:   xor    %r12,%r14
   0.07%    │ ││    0x00007efdaec5d323:   mov    %r9,%r12
   0.09%    │ ││    0x00007efdaec5d326:   and    %r10,%rdi
   0.06%    │ ││    0x00007efdaec5d329:   and    %r11,%r12
   0.06%    │ ││    0x00007efdaec5d32c:   add    %r13,%r15
   0.07%    │ ││    0x00007efdaec5d32f:   add    %rdx,%rax
   0.08%    │ ││    0x00007efdaec5d332:   or     %r12,%rdi
   0.08%    │ ││    0x00007efdaec5d335:   add    %r14,%rdx
   0.08%    │ ││    0x00007efdaec5d338:   add    %r15,%rax
   0.09%    │ ││    0x00007efdaec5d33b:   add    %r15,%rdx
   0.07%    │ ││    0x00007efdaec5d33e:   add    %rdi,%rdx
   0.10%    │ ││    0x00007efdaec5d341:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.06%    │ ││    0x00007efdaec5d346:   vmovdqu %ymm0,(%rsp)
   0.06%    │ ││    0x00007efdaec5d34b:   add    $0x40,%rbp
   0.08%    │ ││    0x00007efdaec5d34f:   mov    %rbx,%r15
   0.10%    │ ││    0x00007efdaec5d352:   rorx   $0x29,%rax,%r13
   0.05%    │ ││    0x00007efdaec5d358:   rorx   $0x12,%rax,%r14
   0.07%    │ ││    0x00007efdaec5d35e:   xor    %rcx,%r15
   0.08%    │ ││    0x00007efdaec5d361:   xor    %r14,%r13
   0.08%    │ ││    0x00007efdaec5d364:   rorx   $0xe,%rax,%r14
   0.06%    │ ││    0x00007efdaec5d36a:   and    %rax,%r15
   0.06%    │ ││    0x00007efdaec5d36d:   xor    %r14,%r13
   0.09%    │ ││    0x00007efdaec5d370:   rorx   $0x22,%rdx,%r12
   0.07%    │ ││    0x00007efdaec5d376:   xor    %rcx,%r15
   0.05%    │ ││    0x00007efdaec5d379:   rorx   $0x27,%rdx,%r14
   0.05%    │ ││    0x00007efdaec5d37f:   mov    %rdx,%rdi
   0.08%    │ ││    0x00007efdaec5d382:   xor    %r12,%r14
   0.09%    │ ││    0x00007efdaec5d385:   rorx   $0x1c,%rdx,%r12
   0.05%    │ ││    0x00007efdaec5d38b:   add    (%rsp),%r8
   0.05%    │ ││    0x00007efdaec5d38f:   or     %r10,%rdi
   0.07%    │ ││    0x00007efdaec5d392:   xor    %r12,%r14
   0.09%    │ ││    0x00007efdaec5d395:   mov    %rdx,%r12
   0.05%    │ ││    0x00007efdaec5d398:   and    %r9,%rdi
   0.08%    │ ││    0x00007efdaec5d39b:   and    %r10,%r12
   0.05%    │ ││    0x00007efdaec5d39e:   add    %r13,%r15
   0.10%    │ ││    0x00007efdaec5d3a1:   add    %r8,%r11
   0.07%    │ ││    0x00007efdaec5d3a4:   or     %r12,%rdi
   0.05%    │ ││    0x00007efdaec5d3a7:   add    %r14,%r8
   0.06%    │ ││    0x00007efdaec5d3aa:   add    %r15,%r11
   0.07%    │ ││    0x00007efdaec5d3ad:   add    %r15,%r8
   0.08%    │ ││    0x00007efdaec5d3b0:   mov    %rax,%r15
   0.05%    │ ││    0x00007efdaec5d3b3:   rorx   $0x29,%r11,%r13
   0.08%    │ ││    0x00007efdaec5d3b9:   rorx   $0x12,%r11,%r14
   0.09%    │ ││    0x00007efdaec5d3bf:   xor    %rbx,%r15
   0.06%    │ ││    0x00007efdaec5d3c2:   xor    %r14,%r13
   0.05%    │ ││    0x00007efdaec5d3c5:   rorx   $0xe,%r11,%r14
   0.07%    │ ││    0x00007efdaec5d3cb:   and    %r11,%r15
   0.07%    │ ││    0x00007efdaec5d3ce:   add    %rdi,%r8
   0.04%    │ ││    0x00007efdaec5d3d1:   xor    %r14,%r13
   0.07%    │ ││    0x00007efdaec5d3d4:   rorx   $0x22,%r8,%r12
   0.08%    │ ││    0x00007efdaec5d3da:   xor    %rbx,%r15
   0.11%    │ ││    0x00007efdaec5d3dd:   rorx   $0x27,%r8,%r14
   0.05%    │ ││    0x00007efdaec5d3e3:   mov    %r8,%rdi
   0.04%    │ ││    0x00007efdaec5d3e6:   xor    %r12,%r14
   0.07%    │ ││    0x00007efdaec5d3e9:   rorx   $0x1c,%r8,%r12
   0.08%    │ ││    0x00007efdaec5d3ef:   add    0x8(%rsp),%rcx
   0.07%    │ ││    0x00007efdaec5d3f4:   or     %r9,%rdi
   0.04%    │ ││    0x00007efdaec5d3f7:   xor    %r12,%r14
   0.06%    │ ││    0x00007efdaec5d3fa:   mov    %r8,%r12
   0.06%    │ ││    0x00007efdaec5d3fd:   and    %rdx,%rdi
   0.04%    │ ││    0x00007efdaec5d400:   and    %r9,%r12
   0.05%    │ ││    0x00007efdaec5d403:   add    %r13,%r15
   0.08%    │ ││    0x00007efdaec5d406:   add    %rcx,%r10
   0.08%    │ ││    0x00007efdaec5d409:   or     %r12,%rdi
   0.05%    │ ││    0x00007efdaec5d40c:   add    %r14,%rcx
   0.05%    │ ││    0x00007efdaec5d40f:   add    %r15,%r10
   0.07%    │ ││    0x00007efdaec5d412:   add    %r15,%rcx
   0.08%    │ ││    0x00007efdaec5d415:   mov    %r11,%r15
   0.04%    │ ││    0x00007efdaec5d418:   rorx   $0x29,%r10,%r13
   0.07%    │ ││    0x00007efdaec5d41e:   rorx   $0x12,%r10,%r14
   0.09%    │ ││    0x00007efdaec5d424:   xor    %rax,%r15
   0.08%    │ ││    0x00007efdaec5d427:   xor    %r14,%r13
   0.07%    │ ││    0x00007efdaec5d42a:   rorx   $0xe,%r10,%r14
   0.08%    │ ││    0x00007efdaec5d430:   and    %r10,%r15
   0.07%    │ ││    0x00007efdaec5d433:   add    %rdi,%rcx
   0.06%    │ ││    0x00007efdaec5d436:   xor    %r14,%r13
   0.08%    │ ││    0x00007efdaec5d439:   rorx   $0x22,%rcx,%r12
   0.05%    │ ││    0x00007efdaec5d43f:   xor    %rax,%r15
   0.08%    │ ││    0x00007efdaec5d442:   rorx   $0x27,%rcx,%r14
   0.06%    │ ││    0x00007efdaec5d448:   mov    %rcx,%rdi
   0.05%    │ ││    0x00007efdaec5d44b:   xor    %r12,%r14
   0.08%    │ ││    0x00007efdaec5d44e:   rorx   $0x1c,%rcx,%r12
   0.06%    │ ││    0x00007efdaec5d454:   add    0x10(%rsp),%rbx
   0.09%    │ ││    0x00007efdaec5d459:   or     %rdx,%rdi
   0.08%    │ ││    0x00007efdaec5d45c:   xor    %r12,%r14
   0.06%    │ ││    0x00007efdaec5d45f:   mov    %rcx,%r12
   0.07%    │ ││    0x00007efdaec5d462:   and    %r8,%rdi
   0.06%    │ ││    0x00007efdaec5d465:   and    %rdx,%r12
   0.06%    │ ││    0x00007efdaec5d468:   add    %r13,%r15
   0.08%    │ ││    0x00007efdaec5d46b:   add    %rbx,%r9
   0.06%    │ ││    0x00007efdaec5d46e:   or     %r12,%rdi
   0.06%    │ ││    0x00007efdaec5d471:   add    %r14,%rbx
   0.05%    │ ││    0x00007efdaec5d474:   add    %r15,%r9
   0.09%    │ ││    0x00007efdaec5d477:   add    %r15,%rbx
   0.09%    │ ││    0x00007efdaec5d47a:   mov    %r10,%r15
   0.08%    │ ││    0x00007efdaec5d47d:   rorx   $0x29,%r9,%r13
   0.09%    │ ││    0x00007efdaec5d483:   rorx   $0x12,%r9,%r14
   0.07%    │ ││    0x00007efdaec5d489:   xor    %r11,%r15
   0.08%    │ ││    0x00007efdaec5d48c:   xor    %r14,%r13
   0.07%    │ ││    0x00007efdaec5d48f:   rorx   $0xe,%r9,%r14
   0.06%    │ ││    0x00007efdaec5d495:   and    %r9,%r15
   0.11%    │ ││    0x00007efdaec5d498:   add    %rdi,%rbx
   0.08%    │ ││    0x00007efdaec5d49b:   xor    %r14,%r13
   0.08%    │ ││    0x00007efdaec5d49e:   rorx   $0x22,%rbx,%r12
   0.05%    │ ││    0x00007efdaec5d4a4:   xor    %r11,%r15
   0.11%    │ ││    0x00007efdaec5d4a7:   rorx   $0x27,%rbx,%r14
   0.08%    │ ││    0x00007efdaec5d4ad:   mov    %rbx,%rdi
   0.06%    │ ││    0x00007efdaec5d4b0:   xor    %r12,%r14
   0.08%    │ ││    0x00007efdaec5d4b3:   rorx   $0x1c,%rbx,%r12
   0.06%    │ ││    0x00007efdaec5d4b9:   add    0x18(%rsp),%rax
   0.06%    │ ││    0x00007efdaec5d4be:   or     %r8,%rdi
   0.05%    │ ││    0x00007efdaec5d4c1:   xor    %r12,%r14
   0.07%    │ ││    0x00007efdaec5d4c4:   mov    %rbx,%r12
   0.06%    │ ││    0x00007efdaec5d4c7:   and    %rcx,%rdi
   0.05%    │ ││    0x00007efdaec5d4ca:   and    %r8,%r12
   0.08%    │ ││    0x00007efdaec5d4cd:   add    %r13,%r15
   0.09%    │ ││    0x00007efdaec5d4d0:   add    %rax,%rdx
   0.07%    │ ││    0x00007efdaec5d4d3:   or     %r12,%rdi
   0.06%    │ ││    0x00007efdaec5d4d6:   add    %r14,%rax
   0.08%    │ ││    0x00007efdaec5d4d9:   add    %r15,%rdx
   0.07%    │ ││    0x00007efdaec5d4dc:   add    %r15,%rax
   0.03%    │ ││    0x00007efdaec5d4df:   add    %rdi,%rax
   0.10%    │ ││    0x00007efdaec5d4e2:   vmovdqu %ymm6,%ymm4
   0.07%    │ ││    0x00007efdaec5d4e6:   vmovdqu %ymm7,%ymm5
   0.04%    │ ││    0x00007efdaec5d4ea:   subq   $0x1,0x20(%rsp)
   0.17%    │ ╰│    0x00007efdaec5d4f0:   jne    0x00007efdaec5d1a4
   0.04%    │  │    0x00007efdaec5d4f6:   add    (%rsi),%rax
   0.01%    │  │    0x00007efdaec5d4f9:   mov    %rax,(%rsi)
   0.22%    │  │    0x00007efdaec5d4fc:   add    0x8(%rsi),%rbx
   0.00%    │  │    0x00007efdaec5d500:   mov    %rbx,0x8(%rsi)
   0.01%    │  │    0x00007efdaec5d504:   add    0x10(%rsi),%rcx
   0.00%    │  │    0x00007efdaec5d508:   mov    %rcx,0x10(%rsi)
   0.13%    │  │    0x00007efdaec5d50c:   add    0x18(%rsi),%r8
   0.00%    │  │    0x00007efdaec5d510:   mov    %r8,0x18(%rsi)
   0.01%    │  │    0x00007efdaec5d514:   add    0x20(%rsi),%rdx
            │  │    0x00007efdaec5d518:   mov    %rdx,0x20(%rsi)
   0.14%    │  │    0x00007efdaec5d51c:   add    0x28(%rsi),%r9
            │  │    0x00007efdaec5d520:   mov    %r9,0x28(%rsi)
   0.03%    │  │    0x00007efdaec5d524:   add    0x30(%rsi),%r10
            │  │    0x00007efdaec5d528:   mov    %r10,0x30(%rsi)
   0.11%    │  │    0x00007efdaec5d52c:   add    0x38(%rsi),%r11
            │  │    0x00007efdaec5d530:   mov    %r11,0x38(%rsi)
   0.03%    │  │    0x00007efdaec5d534:   mov    0x28(%rsp),%rdi
            │  │    0x00007efdaec5d539:   add    $0x80,%rdi
   0.13%    │  │    0x00007efdaec5d540:   cmp    0x30(%rsp),%rdi
            │  ╰    0x00007efdaec5d545:   jne    0x00007efdaec5c7db
   0.01%    ↘       0x00007efdaec5d54b:   mov    0x40(%rsp),%rbp
   0.01%            0x00007efdaec5d550:   mov    0x48(%rsp),%rbx
                    0x00007efdaec5d555:   mov    0x50(%rsp),%r12
                    0x00007efdaec5d55a:   mov    0x58(%rsp),%r13
                    0x00007efdaec5d55f:   mov    0x60(%rsp),%r14
                    0x00007efdaec5d564:   mov    0x68(%rsp),%r15
                    0x00007efdaec5d569:   mov    0x38(%rsp),%rsp
                    0x00007efdaec5d56e:   pop    %rcx
   0.00%            0x00007efdaec5d56f:   pop    %rdx
                    0x00007efdaec5d570:   mov    %rdx,%rax
   0.22%         ↗  0x00007efdaec5d573:   cmp    %rcx,%rax
                ╭│  0x00007efdaec5d576:   jae    0x00007efdaec5d580
   0.00%        ││  0x00007efdaec5d578:   add    $0x80,%rax
                │╰  0x00007efdaec5d57e:   jmp    0x00007efdaec5d573
   0.01%        ↘   0x00007efdaec5d580:   vzeroupper 
   0.00%            0x00007efdaec5d583:   leave  
   0.01%            0x00007efdaec5d584:   ret    
                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::avx2_shuffle_base64 [0x00007efdaec5d5c0, 0x00007efdaec5d5e0] (32 bytes)
                  --------------------------------------------------------------------------------
....................................................................................................
  95.04%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.04%         runtime stub  StubRoutines::sha512_implCompressMB 
   1.46%                       <unknown> 
   1.20%               kernel  [unknown] 
   0.20%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1064 
   0.16%                       <unknown> 
   0.12%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1064 
   0.03%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1064 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1063 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1063 
   1.23%  <...other 327 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.04%         runtime stub  StubRoutines::sha512_implCompressMB 
   2.32%               kernel  [unknown] 
   1.67%                       <unknown> 
   0.39%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1064 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1063 
   0.06%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%         runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.02%            libjvm.so  defaultStream::write 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%       jvmci, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 1023 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         runtime stub  StubRoutines::jbyte_arraycopy 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1089 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.25%  <...other 102 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.14%         runtime stub
   2.32%               kernel
   1.67%                     
   0.51%       jvmci, level 4
   0.16%            libjvm.so
   0.08%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.00%          c1, level 3
   0.00%       libz.so.1.2.11
   0.00%     perf-2116648.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-512/256, length = 16384)

# Run progress: 54.55% complete, ETA 00:09:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 42.799 us/op
# Warmup Iteration   2: 37.955 us/op
# Warmup Iteration   3: 37.923 us/op
# Warmup Iteration   4: 37.929 us/op
# Warmup Iteration   5: 37.926 us/op
Iteration   1: 37.933 us/op
Iteration   2: 37.932 us/op
Iteration   3: 37.924 us/op
Iteration   4: 37.925 us/op
Iteration   5: 37.933 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  37.930 ±(99.9%) 0.018 us/op [Average]
  (min, avg, max) = (37.924, 37.930, 37.933), stdev = 0.005
  CI (99.9%): [37.912, 37.947] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 240316 total address lines.
Perf output processed (skipped 60.253 seconds):
 Column 1: cycles (50697 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                    0x00007f652ac5b8f1:   mov    %rax,0x38(%rsp)
                    0x00007f652ac5b8f6:   mov    %rbp,0x40(%rsp)
                    0x00007f652ac5b8fb:   mov    %rbx,0x48(%rsp)
                    0x00007f652ac5b900:   mov    %r12,0x50(%rsp)
                    0x00007f652ac5b905:   mov    %r13,0x58(%rsp)
                    0x00007f652ac5b90a:   mov    %r14,0x60(%rsp)
                    0x00007f652ac5b90f:   mov    %r15,0x68(%rsp)
                    0x00007f652ac5b914:   vpblendd $0xf0,%xmm1,%xmm0,%xmm0
                    0x00007f652ac5b91a:   vpblendd $0xf0,%ymm1,%ymm0,%ymm0
                    0x00007f652ac5b920:   xor    %rax,%rax
   0.02%   ↗        0x00007f652ac5b923:   cmp    %rcx,%rdx
          ╭│        0x00007f652ac5b926:   jae    0x00007f652ac5b937
   0.06%  ││        0x00007f652ac5b928:   add    $0x80,%rdx
   0.05%  ││        0x00007f652ac5b92f:   add    $0x80,%rax
   0.01%  │╰        0x00007f652ac5b935:   jmp    0x00007f652ac5b923
   0.02%  ↘         0x00007f652ac5b937:   mov    %rax,%rdx
   0.00%            0x00007f652ac5b93a:   cmp    $0x0,%rdx
            ╭       0x00007f652ac5b93e:   je     0x00007f652ac5c6eb
   0.01%    │       0x00007f652ac5b944:   add    %rdi,%rdx
            │       0x00007f652ac5b947:   mov    %rdx,0x30(%rsp)
   0.01%    │       0x00007f652ac5b94c:   mov    (%rsi),%rax
            │       0x00007f652ac5b94f:   mov    0x8(%rsi),%rbx
            │       0x00007f652ac5b953:   mov    0x10(%rsi),%rcx
   0.00%    │       0x00007f652ac5b957:   mov    0x18(%rsi),%r8
            │       0x00007f652ac5b95b:   mov    0x20(%rsi),%rdx
            │       0x00007f652ac5b95f:   mov    0x28(%rsi),%r9
            │       0x00007f652ac5b963:   mov    0x38(%rsi),%r11
   0.00%    │       0x00007f652ac5b967:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007f652ac5aa80
            │       0x00007f652ac5b96f:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007f652ac5aaa0
   0.00%    │       0x00007f652ac5b977:   mov    0x30(%rsi),%r10
            │  ↗    0x00007f652ac5b97b:   movabs $0x7f65420f0840,%rbp
   0.03%    │  │    0x00007f652ac5b985:   vmovdqu (%rdi),%ymm4
   0.01%    │  │    0x00007f652ac5b989:   vpshufb %ymm9,%ymm4,%ymm4
   0.15%    │  │    0x00007f652ac5b98e:   vmovdqu 0x20(%rdi),%ymm5
   0.14%    │  │    0x00007f652ac5b993:   vpshufb %ymm9,%ymm5,%ymm5
   0.35%    │  │    0x00007f652ac5b998:   vmovdqu 0x40(%rdi),%ymm6
   0.02%    │  │    0x00007f652ac5b99d:   vpshufb %ymm9,%ymm6,%ymm6
   0.03%    │  │    0x00007f652ac5b9a2:   vmovdqu 0x60(%rdi),%ymm7
   0.07%    │  │    0x00007f652ac5b9a7:   vpshufb %ymm9,%ymm7,%ymm7
   0.33%    │  │    0x00007f652ac5b9ac:   mov    %rdi,0x28(%rsp)
            │  │    0x00007f652ac5b9b1:   movq   $0x4,0x20(%rsp)
   0.01%    │  │    0x00007f652ac5b9ba:   nopw   0x0(%rax,%rax,1)
   0.04%    │↗ │    0x00007f652ac5b9c0:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.30%    ││ │    0x00007f652ac5b9c5:   vmovdqu %ymm0,(%rsp)
   0.12%    ││ │    0x00007f652ac5b9ca:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.26%    ││ │    0x00007f652ac5b9d0:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.18%    ││ │    0x00007f652ac5b9d6:   vpaddq %ymm4,%ymm0,%ymm0
   0.74%    ││ │    0x00007f652ac5b9da:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.09%    ││ │    0x00007f652ac5b9e0:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.07%    ││ │    0x00007f652ac5b9e6:   vpsrlq $0x1,%ymm1,%ymm2
   0.09%    ││ │    0x00007f652ac5b9eb:   vpsllq $0x3f,%ymm1,%ymm3
   0.33%    ││ │    0x00007f652ac5b9f0:   vpor   %ymm2,%ymm3,%ymm3
   0.12%    ││ │    0x00007f652ac5b9f4:   vpsrlq $0x7,%ymm1,%ymm8
   0.06%    ││ │    0x00007f652ac5b9f9:   mov    %rax,%rdi
   0.04%    ││ │    0x00007f652ac5b9fc:   rorx   $0x29,%rdx,%r13
   0.31%    ││ │    0x00007f652ac5ba02:   rorx   $0x12,%rdx,%r14
   0.12%    ││ │    0x00007f652ac5ba08:   add    (%rsp),%r11
   0.08%    ││ │    0x00007f652ac5ba0c:   or     %rcx,%rdi
   0.04%    ││ │    0x00007f652ac5ba0f:   mov    %r9,%r15
   0.30%    ││ │    0x00007f652ac5ba12:   xor    %r10,%r15
   0.14%    ││ │    0x00007f652ac5ba15:   rorx   $0x22,%rax,%r12
   0.06%    ││ │    0x00007f652ac5ba1b:   xor    %r14,%r13
   0.03%    ││ │    0x00007f652ac5ba1e:   rorx   $0xe,%rdx,%r14
   0.29%    ││ │    0x00007f652ac5ba24:   and    %rdx,%r15
   0.13%    ││ │    0x00007f652ac5ba27:   add    %r11,%r8
   0.05%    ││ │    0x00007f652ac5ba2a:   and    %rbx,%rdi
   0.04%    ││ │    0x00007f652ac5ba2d:   xor    %r14,%r13
   0.27%    ││ │    0x00007f652ac5ba30:   rorx   $0x27,%rax,%r14
   0.09%    ││ │    0x00007f652ac5ba36:   xor    %r12,%r14
   0.05%    ││ │    0x00007f652ac5ba39:   rorx   $0x1c,%rax,%r12
   0.04%    ││ │    0x00007f652ac5ba3f:   xor    %r10,%r15
   0.35%    ││ │    0x00007f652ac5ba42:   xor    %r12,%r14
   0.14%    ││ │    0x00007f652ac5ba45:   mov    %rax,%r12
   0.05%    ││ │    0x00007f652ac5ba48:   and    %rcx,%r12
   0.04%    ││ │    0x00007f652ac5ba4b:   add    %r13,%r15
   0.29%    ││ │    0x00007f652ac5ba4e:   or     %r12,%rdi
   0.13%    ││ │    0x00007f652ac5ba51:   add    %r14,%r11
   0.07%    ││ │    0x00007f652ac5ba54:   add    %r15,%r8
   0.05%    ││ │    0x00007f652ac5ba57:   add    %r15,%r11
   0.30%    ││ │    0x00007f652ac5ba5a:   add    %rdi,%r11
   0.12%    ││ │    0x00007f652ac5ba5d:   vpsrlq $0x8,%ymm1,%ymm2
   0.07%    ││ │    0x00007f652ac5ba62:   vpsllq $0x38,%ymm1,%ymm1
   0.03%    ││ │    0x00007f652ac5ba67:   vpor   %ymm2,%ymm1,%ymm1
   0.28%    ││ │    0x00007f652ac5ba6b:   vpxor  %ymm8,%ymm3,%ymm3
   0.11%    ││ │    0x00007f652ac5ba70:   vpxor  %ymm1,%ymm3,%ymm1
   0.03%    ││ │    0x00007f652ac5ba74:   vpaddq %ymm1,%ymm0,%ymm0
   0.05%    ││ │    0x00007f652ac5ba78:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.29%    ││ │    0x00007f652ac5ba7e:   vpand  %ymm10,%ymm0,%ymm0
   0.12%    ││ │    0x00007f652ac5ba83:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.05%    ││ │    0x00007f652ac5ba89:   vpsrlq $0x6,%ymm2,%ymm8
   0.04%    ││ │    0x00007f652ac5ba8e:   mov    %r11,%rdi
   0.29%    ││ │    0x00007f652ac5ba91:   rorx   $0x29,%r8,%r13
   0.15%    ││ │    0x00007f652ac5ba97:   rorx   $0x12,%r8,%r14
   0.06%    ││ │    0x00007f652ac5ba9d:   add    0x8(%rsp),%r10
   0.05%    ││ │    0x00007f652ac5baa2:   or     %rbx,%rdi
   0.29%    ││ │    0x00007f652ac5baa5:   mov    %rdx,%r15
   0.11%    ││ │    0x00007f652ac5baa8:   xor    %r9,%r15
   0.07%    ││ │    0x00007f652ac5baab:   rorx   $0x22,%r11,%r12
   0.04%    ││ │    0x00007f652ac5bab1:   xor    %r14,%r13
   0.26%    ││ │    0x00007f652ac5bab4:   rorx   $0xe,%r8,%r14
   0.14%    ││ │    0x00007f652ac5baba:   and    %r8,%r15
   0.05%    ││ │    0x00007f652ac5babd:   add    %r10,%rcx
   0.05%    ││ │    0x00007f652ac5bac0:   and    %rax,%rdi
   0.31%    ││ │    0x00007f652ac5bac3:   xor    %r14,%r13
   0.12%    ││ │    0x00007f652ac5bac6:   rorx   $0x27,%r11,%r14
   0.05%    ││ │    0x00007f652ac5bacc:   xor    %r12,%r14
   0.04%    ││ │    0x00007f652ac5bacf:   rorx   $0x1c,%r11,%r12
   0.30%    ││ │    0x00007f652ac5bad5:   xor    %r9,%r15
   0.09%    ││ │    0x00007f652ac5bad8:   xor    %r12,%r14
   0.05%    ││ │    0x00007f652ac5badb:   mov    %r11,%r12
   0.06%    ││ │    0x00007f652ac5bade:   and    %rbx,%r12
   0.32%    ││ │    0x00007f652ac5bae1:   add    %r13,%r15
   0.14%    ││ │    0x00007f652ac5bae4:   or     %r12,%rdi
   0.05%    ││ │    0x00007f652ac5bae7:   add    %r14,%r10
   0.03%    ││ │    0x00007f652ac5baea:   add    %r15,%rcx
   0.31%    ││ │    0x00007f652ac5baed:   add    %r15,%r10
   0.13%    ││ │    0x00007f652ac5baf0:   add    %rdi,%r10
   0.06%    ││ │    0x00007f652ac5baf3:   vpsrlq $0x13,%ymm2,%ymm3
   0.04%    ││ │    0x00007f652ac5baf8:   vpsllq $0x2d,%ymm2,%ymm1
   0.27%    ││ │    0x00007f652ac5bafd:   vpor   %ymm1,%ymm3,%ymm3
   0.10%    ││ │    0x00007f652ac5bb01:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │    0x00007f652ac5bb05:   vpsrlq $0x3d,%ymm2,%ymm3
   0.03%    ││ │    0x00007f652ac5bb0a:   vpsllq $0x3,%ymm2,%ymm1
   0.31%    ││ │    0x00007f652ac5bb0f:   vpor   %ymm1,%ymm3,%ymm3
   0.14%    ││ │    0x00007f652ac5bb13:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f652ac5bb17:   vpaddq %ymm8,%ymm4,%ymm4
   0.04%    ││ │    0x00007f652ac5bb1c:   vpsrlq $0x6,%ymm4,%ymm8
   0.30%    ││ │    0x00007f652ac5bb21:   mov    %r10,%rdi
   0.15%    ││ │    0x00007f652ac5bb24:   rorx   $0x29,%rcx,%r13
   0.07%    ││ │    0x00007f652ac5bb2a:   rorx   $0x12,%rcx,%r14
   0.03%    ││ │    0x00007f652ac5bb30:   add    0x10(%rsp),%r9
   0.28%    ││ │    0x00007f652ac5bb35:   or     %rax,%rdi
   0.10%    ││ │    0x00007f652ac5bb38:   mov    %r8,%r15
   0.06%    ││ │    0x00007f652ac5bb3b:   xor    %rdx,%r15
   0.04%    ││ │    0x00007f652ac5bb3e:   rorx   $0x22,%r10,%r12
   0.28%    ││ │    0x00007f652ac5bb44:   xor    %r14,%r13
   0.13%    ││ │    0x00007f652ac5bb47:   rorx   $0xe,%rcx,%r14
   0.06%    ││ │    0x00007f652ac5bb4d:   and    %rcx,%r15
   0.05%    ││ │    0x00007f652ac5bb50:   add    %r9,%rbx
   0.32%    ││ │    0x00007f652ac5bb53:   and    %r11,%rdi
   0.11%    ││ │    0x00007f652ac5bb56:   xor    %r14,%r13
   0.06%    ││ │    0x00007f652ac5bb59:   rorx   $0x27,%r10,%r14
   0.04%    ││ │    0x00007f652ac5bb5f:   xor    %r12,%r14
   0.27%    ││ │    0x00007f652ac5bb62:   rorx   $0x1c,%r10,%r12
   0.13%    ││ │    0x00007f652ac5bb68:   xor    %rdx,%r15
   0.04%    ││ │    0x00007f652ac5bb6b:   xor    %r12,%r14
   0.04%    ││ │    0x00007f652ac5bb6e:   mov    %r10,%r12
   0.29%    ││ │    0x00007f652ac5bb71:   and    %rax,%r12
   0.14%    ││ │    0x00007f652ac5bb74:   add    %r13,%r15
   0.03%    ││ │    0x00007f652ac5bb77:   or     %r12,%rdi
   0.03%    ││ │    0x00007f652ac5bb7a:   add    %r14,%r9
   0.31%    ││ │    0x00007f652ac5bb7d:   add    %r15,%rbx
   0.13%    ││ │    0x00007f652ac5bb80:   add    %r15,%r9
   0.06%    ││ │    0x00007f652ac5bb83:   add    %rdi,%r9
   0.04%    ││ │    0x00007f652ac5bb86:   vpsrlq $0x13,%ymm4,%ymm3
   0.27%    ││ │    0x00007f652ac5bb8b:   vpsllq $0x2d,%ymm4,%ymm1
   0.11%    ││ │    0x00007f652ac5bb90:   vpor   %ymm1,%ymm3,%ymm3
   0.03%    ││ │    0x00007f652ac5bb94:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f652ac5bb98:   vpsrlq $0x3d,%ymm4,%ymm3
   0.25%    ││ │    0x00007f652ac5bb9d:   vpsllq $0x3,%ymm4,%ymm1
   0.13%    ││ │    0x00007f652ac5bba2:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007f652ac5bba6:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007f652ac5bbaa:   vpaddq %ymm8,%ymm0,%ymm2
   0.26%    ││ │    0x00007f652ac5bbaf:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.20%    ││ │    0x00007f652ac5bbb5:   mov    %r9,%rdi
   0.05%    ││ │    0x00007f652ac5bbb8:   rorx   $0x29,%rbx,%r13
   0.04%    ││ │    0x00007f652ac5bbbe:   rorx   $0x12,%rbx,%r14
   0.22%    ││ │    0x00007f652ac5bbc4:   add    0x18(%rsp),%rdx
   0.16%    ││ │    0x00007f652ac5bbc9:   or     %r11,%rdi
   0.04%    ││ │    0x00007f652ac5bbcc:   mov    %rcx,%r15
   0.04%    ││ │    0x00007f652ac5bbcf:   xor    %r8,%r15
   0.22%    ││ │    0x00007f652ac5bbd2:   rorx   $0x22,%r9,%r12
   0.16%    ││ │    0x00007f652ac5bbd8:   xor    %r14,%r13
   0.07%    ││ │    0x00007f652ac5bbdb:   rorx   $0xe,%rbx,%r14
   0.05%    ││ │    0x00007f652ac5bbe1:   and    %rbx,%r15
   0.23%    ││ │    0x00007f652ac5bbe4:   add    %rdx,%rax
   0.15%    ││ │    0x00007f652ac5bbe7:   and    %r10,%rdi
   0.06%    ││ │    0x00007f652ac5bbea:   xor    %r14,%r13
   0.06%    ││ │    0x00007f652ac5bbed:   rorx   $0x27,%r9,%r14
   0.27%    ││ │    0x00007f652ac5bbf3:   xor    %r12,%r14
   0.17%    ││ │    0x00007f652ac5bbf6:   rorx   $0x1c,%r9,%r12
   0.03%    ││ │    0x00007f652ac5bbfc:   xor    %r8,%r15
   0.04%    ││ │    0x00007f652ac5bbff:   xor    %r12,%r14
   0.24%    ││ │    0x00007f652ac5bc02:   mov    %r9,%r12
   0.14%    ││ │    0x00007f652ac5bc05:   and    %r11,%r12
   0.07%    ││ │    0x00007f652ac5bc08:   add    %r13,%r15
   0.04%    ││ │    0x00007f652ac5bc0b:   or     %r12,%rdi
   0.25%    ││ │    0x00007f652ac5bc0e:   add    %r14,%rdx
   0.19%    ││ │    0x00007f652ac5bc11:   add    %r15,%rax
   0.06%    ││ │    0x00007f652ac5bc14:   add    %r15,%rdx
   0.03%    ││ │    0x00007f652ac5bc17:   add    %rdi,%rdx
   0.23%    ││ │    0x00007f652ac5bc1a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.16%    ││ │    0x00007f652ac5bc1f:   vmovdqu %ymm0,(%rsp)
   0.05%    ││ │    0x00007f652ac5bc24:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.04%    ││ │    0x00007f652ac5bc2a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.29%    ││ │    0x00007f652ac5bc30:   vpaddq %ymm5,%ymm0,%ymm0
   0.24%    ││ │    0x00007f652ac5bc34:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.03%    ││ │    0x00007f652ac5bc3a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.04%    ││ │    0x00007f652ac5bc40:   vpsrlq $0x1,%ymm1,%ymm2
   0.32%    ││ │    0x00007f652ac5bc45:   vpsllq $0x3f,%ymm1,%ymm3
   0.18%    ││ │    0x00007f652ac5bc4a:   vpor   %ymm2,%ymm3,%ymm3
   0.06%    ││ │    0x00007f652ac5bc4e:   vpsrlq $0x7,%ymm1,%ymm8
   0.04%    ││ │    0x00007f652ac5bc53:   mov    %rdx,%rdi
   0.29%    ││ │    0x00007f652ac5bc56:   rorx   $0x29,%rax,%r13
   0.14%    ││ │    0x00007f652ac5bc5c:   rorx   $0x12,%rax,%r14
   0.06%    ││ │    0x00007f652ac5bc62:   add    (%rsp),%r8
   0.05%    ││ │    0x00007f652ac5bc66:   or     %r10,%rdi
   0.28%    ││ │    0x00007f652ac5bc69:   mov    %rbx,%r15
   0.15%    ││ │    0x00007f652ac5bc6c:   xor    %rcx,%r15
   0.06%    ││ │    0x00007f652ac5bc6f:   rorx   $0x22,%rdx,%r12
   0.04%    ││ │    0x00007f652ac5bc75:   xor    %r14,%r13
   0.24%    ││ │    0x00007f652ac5bc78:   rorx   $0xe,%rax,%r14
   0.14%    ││ │    0x00007f652ac5bc7e:   and    %rax,%r15
   0.09%    ││ │    0x00007f652ac5bc81:   add    %r8,%r11
   0.04%    ││ │    0x00007f652ac5bc84:   and    %r9,%rdi
   0.26%    ││ │    0x00007f652ac5bc87:   xor    %r14,%r13
   0.20%    ││ │    0x00007f652ac5bc8a:   rorx   $0x27,%rdx,%r14
   0.05%    ││ │    0x00007f652ac5bc90:   xor    %r12,%r14
   0.03%    ││ │    0x00007f652ac5bc93:   rorx   $0x1c,%rdx,%r12
   0.26%    ││ │    0x00007f652ac5bc99:   xor    %rcx,%r15
   0.15%    ││ │    0x00007f652ac5bc9c:   xor    %r12,%r14
   0.08%    ││ │    0x00007f652ac5bc9f:   mov    %rdx,%r12
   0.03%    ││ │    0x00007f652ac5bca2:   and    %r10,%r12
   0.29%    ││ │    0x00007f652ac5bca5:   add    %r13,%r15
   0.18%    ││ │    0x00007f652ac5bca8:   or     %r12,%rdi
   0.06%    ││ │    0x00007f652ac5bcab:   add    %r14,%r8
   0.04%    ││ │    0x00007f652ac5bcae:   add    %r15,%r11
   0.22%    ││ │    0x00007f652ac5bcb1:   add    %r15,%r8
   0.14%    ││ │    0x00007f652ac5bcb4:   add    %rdi,%r8
   0.07%    ││ │    0x00007f652ac5bcb7:   vpsrlq $0x8,%ymm1,%ymm2
   0.03%    ││ │    0x00007f652ac5bcbc:   vpsllq $0x38,%ymm1,%ymm1
   0.22%    ││ │    0x00007f652ac5bcc1:   vpor   %ymm2,%ymm1,%ymm1
   0.20%    ││ │    0x00007f652ac5bcc5:   vpxor  %ymm8,%ymm3,%ymm3
   0.06%    ││ │    0x00007f652ac5bcca:   vpxor  %ymm1,%ymm3,%ymm1
   0.05%    ││ │    0x00007f652ac5bcce:   vpaddq %ymm1,%ymm0,%ymm0
   0.26%    ││ │    0x00007f652ac5bcd2:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.14%    ││ │    0x00007f652ac5bcd8:   vpand  %ymm10,%ymm0,%ymm0
   0.08%    ││ │    0x00007f652ac5bcdd:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.05%    ││ │    0x00007f652ac5bce3:   vpsrlq $0x6,%ymm2,%ymm8
   0.26%    ││ │    0x00007f652ac5bce8:   mov    %r8,%rdi
   0.17%    ││ │    0x00007f652ac5bceb:   rorx   $0x29,%r11,%r13
   0.05%    ││ │    0x00007f652ac5bcf1:   rorx   $0x12,%r11,%r14
   0.03%    ││ │    0x00007f652ac5bcf7:   add    0x8(%rsp),%rcx
   0.22%    ││ │    0x00007f652ac5bcfc:   or     %r9,%rdi
   0.15%    ││ │    0x00007f652ac5bcff:   mov    %rax,%r15
   0.08%    ││ │    0x00007f652ac5bd02:   xor    %rbx,%r15
   0.03%    ││ │    0x00007f652ac5bd05:   rorx   $0x22,%r8,%r12
   0.25%    ││ │    0x00007f652ac5bd0b:   xor    %r14,%r13
   0.16%    ││ │    0x00007f652ac5bd0e:   rorx   $0xe,%r11,%r14
   0.05%    ││ │    0x00007f652ac5bd14:   and    %r11,%r15
   0.02%    ││ │    0x00007f652ac5bd17:   add    %rcx,%r10
   0.28%    ││ │    0x00007f652ac5bd1a:   and    %rdx,%rdi
   0.16%    ││ │    0x00007f652ac5bd1d:   xor    %r14,%r13
   0.08%    ││ │    0x00007f652ac5bd20:   rorx   $0x27,%r8,%r14
   0.03%    ││ │    0x00007f652ac5bd26:   xor    %r12,%r14
   0.28%    ││ │    0x00007f652ac5bd29:   rorx   $0x1c,%r8,%r12
   0.18%    ││ │    0x00007f652ac5bd2f:   xor    %rbx,%r15
   0.07%    ││ │    0x00007f652ac5bd32:   xor    %r12,%r14
   0.03%    ││ │    0x00007f652ac5bd35:   mov    %r8,%r12
   0.22%    ││ │    0x00007f652ac5bd38:   and    %r9,%r12
   0.15%    ││ │    0x00007f652ac5bd3b:   add    %r13,%r15
   0.07%    ││ │    0x00007f652ac5bd3e:   or     %r12,%rdi
   0.04%    ││ │    0x00007f652ac5bd41:   add    %r14,%rcx
   0.22%    ││ │    0x00007f652ac5bd44:   add    %r15,%r10
   0.17%    ││ │    0x00007f652ac5bd47:   add    %r15,%rcx
   0.08%    ││ │    0x00007f652ac5bd4a:   add    %rdi,%rcx
   0.04%    ││ │    0x00007f652ac5bd4d:   vpsrlq $0x13,%ymm2,%ymm3
   0.22%    ││ │    0x00007f652ac5bd52:   vpsllq $0x2d,%ymm2,%ymm1
   0.16%    ││ │    0x00007f652ac5bd57:   vpor   %ymm1,%ymm3,%ymm3
   0.06%    ││ │    0x00007f652ac5bd5b:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007f652ac5bd5f:   vpsrlq $0x3d,%ymm2,%ymm3
   0.22%    ││ │    0x00007f652ac5bd64:   vpsllq $0x3,%ymm2,%ymm1
   0.15%    ││ │    0x00007f652ac5bd69:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007f652ac5bd6d:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f652ac5bd71:   vpaddq %ymm8,%ymm5,%ymm5
   0.24%    ││ │    0x00007f652ac5bd76:   vpsrlq $0x6,%ymm5,%ymm8
   0.17%    ││ │    0x00007f652ac5bd7b:   mov    %rcx,%rdi
   0.05%    ││ │    0x00007f652ac5bd7e:   rorx   $0x29,%r10,%r13
   0.01%    ││ │    0x00007f652ac5bd84:   rorx   $0x12,%r10,%r14
   0.25%    ││ │    0x00007f652ac5bd8a:   add    0x10(%rsp),%rbx
   0.18%    ││ │    0x00007f652ac5bd8f:   or     %rdx,%rdi
   0.07%    ││ │    0x00007f652ac5bd92:   mov    %r11,%r15
   0.03%    ││ │    0x00007f652ac5bd95:   xor    %rax,%r15
   0.27%    ││ │    0x00007f652ac5bd98:   rorx   $0x22,%rcx,%r12
   0.15%    ││ │    0x00007f652ac5bd9e:   xor    %r14,%r13
   0.05%    ││ │    0x00007f652ac5bda1:   rorx   $0xe,%r10,%r14
   0.03%    ││ │    0x00007f652ac5bda7:   and    %r10,%r15
   0.29%    ││ │    0x00007f652ac5bdaa:   add    %rbx,%r9
   0.16%    ││ │    0x00007f652ac5bdad:   and    %r8,%rdi
   0.07%    ││ │    0x00007f652ac5bdb0:   xor    %r14,%r13
   0.03%    ││ │    0x00007f652ac5bdb3:   rorx   $0x27,%rcx,%r14
   0.24%    ││ │    0x00007f652ac5bdb9:   xor    %r12,%r14
   0.18%    ││ │    0x00007f652ac5bdbc:   rorx   $0x1c,%rcx,%r12
   0.06%    ││ │    0x00007f652ac5bdc2:   xor    %rax,%r15
   0.02%    ││ │    0x00007f652ac5bdc5:   xor    %r12,%r14
   0.24%    ││ │    0x00007f652ac5bdc8:   mov    %rcx,%r12
   0.20%    ││ │    0x00007f652ac5bdcb:   and    %rdx,%r12
   0.06%    ││ │    0x00007f652ac5bdce:   add    %r13,%r15
   0.03%    ││ │    0x00007f652ac5bdd1:   or     %r12,%rdi
   0.24%    ││ │    0x00007f652ac5bdd4:   add    %r14,%rbx
   0.12%    ││ │    0x00007f652ac5bdd7:   add    %r15,%r9
   0.07%    ││ │    0x00007f652ac5bdda:   add    %r15,%rbx
   0.02%    ││ │    0x00007f652ac5bddd:   add    %rdi,%rbx
   0.23%    ││ │    0x00007f652ac5bde0:   vpsrlq $0x13,%ymm5,%ymm3
   0.17%    ││ │    0x00007f652ac5bde5:   vpsllq $0x2d,%ymm5,%ymm1
   0.05%    ││ │    0x00007f652ac5bdea:   vpor   %ymm1,%ymm3,%ymm3
   0.03%    ││ │    0x00007f652ac5bdee:   vpxor  %ymm3,%ymm8,%ymm8
   0.23%    ││ │    0x00007f652ac5bdf2:   vpsrlq $0x3d,%ymm5,%ymm3
   0.17%    ││ │    0x00007f652ac5bdf7:   vpsllq $0x3,%ymm5,%ymm1
   0.07%    ││ │    0x00007f652ac5bdfc:   vpor   %ymm1,%ymm3,%ymm3
   0.03%    ││ │    0x00007f652ac5be00:   vpxor  %ymm3,%ymm8,%ymm8
   0.29%    ││ │    0x00007f652ac5be04:   vpaddq %ymm8,%ymm0,%ymm2
   0.20%    ││ │    0x00007f652ac5be09:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.12%    ││ │    0x00007f652ac5be0f:   mov    %rbx,%rdi
   0.02%    ││ │    0x00007f652ac5be12:   rorx   $0x29,%r9,%r13
   0.20%    ││ │    0x00007f652ac5be18:   rorx   $0x12,%r9,%r14
   0.16%    ││ │    0x00007f652ac5be1e:   add    0x18(%rsp),%rax
   0.09%    ││ │    0x00007f652ac5be23:   or     %r8,%rdi
   0.03%    ││ │    0x00007f652ac5be26:   mov    %r10,%r15
   0.23%    ││ │    0x00007f652ac5be29:   xor    %r11,%r15
   0.18%    ││ │    0x00007f652ac5be2c:   rorx   $0x22,%rbx,%r12
   0.11%    ││ │    0x00007f652ac5be32:   xor    %r14,%r13
   0.04%    ││ │    0x00007f652ac5be35:   rorx   $0xe,%r9,%r14
   0.19%    ││ │    0x00007f652ac5be3b:   and    %r9,%r15
   0.15%    ││ │    0x00007f652ac5be3e:   add    %rax,%rdx
   0.10%    ││ │    0x00007f652ac5be41:   and    %rcx,%rdi
   0.03%    ││ │    0x00007f652ac5be44:   xor    %r14,%r13
   0.24%    ││ │    0x00007f652ac5be47:   rorx   $0x27,%rbx,%r14
   0.13%    ││ │    0x00007f652ac5be4d:   xor    %r12,%r14
   0.12%    ││ │    0x00007f652ac5be50:   rorx   $0x1c,%rbx,%r12
   0.03%    ││ │    0x00007f652ac5be56:   xor    %r11,%r15
   0.26%    ││ │    0x00007f652ac5be59:   xor    %r12,%r14
   0.18%    ││ │    0x00007f652ac5be5c:   mov    %rbx,%r12
   0.11%    ││ │    0x00007f652ac5be5f:   and    %r8,%r12
   0.03%    ││ │    0x00007f652ac5be62:   add    %r13,%r15
   0.23%    ││ │    0x00007f652ac5be65:   or     %r12,%rdi
   0.18%    ││ │    0x00007f652ac5be68:   add    %r14,%rax
   0.09%    ││ │    0x00007f652ac5be6b:   add    %r15,%rdx
   0.03%    ││ │    0x00007f652ac5be6e:   add    %r15,%rax
   0.19%    ││ │    0x00007f652ac5be71:   add    %rdi,%rax
   0.15%    ││ │    0x00007f652ac5be74:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.09%    ││ │    0x00007f652ac5be79:   vmovdqu %ymm0,(%rsp)
   0.03%    ││ │    0x00007f652ac5be7e:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.22%    ││ │    0x00007f652ac5be84:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.15%    ││ │    0x00007f652ac5be8a:   vpaddq %ymm6,%ymm0,%ymm0
   0.19%    ││ │    0x00007f652ac5be8e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.02%    ││ │    0x00007f652ac5be94:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.23%    ││ │    0x00007f652ac5be9a:   vpsrlq $0x1,%ymm1,%ymm2
   0.15%    ││ │    0x00007f652ac5be9f:   vpsllq $0x3f,%ymm1,%ymm3
   0.16%    ││ │    0x00007f652ac5bea4:   vpor   %ymm2,%ymm3,%ymm3
   0.03%    ││ │    0x00007f652ac5bea8:   vpsrlq $0x7,%ymm1,%ymm8
   0.20%    ││ │    0x00007f652ac5bead:   mov    %rax,%rdi
   0.15%    ││ │    0x00007f652ac5beb0:   rorx   $0x29,%rdx,%r13
   0.12%    ││ │    0x00007f652ac5beb6:   rorx   $0x12,%rdx,%r14
   0.04%    ││ │    0x00007f652ac5bebc:   add    (%rsp),%r11
   0.26%    ││ │    0x00007f652ac5bec0:   or     %rcx,%rdi
   0.16%    ││ │    0x00007f652ac5bec3:   mov    %r9,%r15
   0.16%    ││ │    0x00007f652ac5bec6:   xor    %r10,%r15
   0.04%    ││ │    0x00007f652ac5bec9:   rorx   $0x22,%rax,%r12
   0.21%    ││ │    0x00007f652ac5becf:   xor    %r14,%r13
   0.12%    ││ │    0x00007f652ac5bed2:   rorx   $0xe,%rdx,%r14
   0.10%    ││ │    0x00007f652ac5bed8:   and    %rdx,%r15
   0.03%    ││ │    0x00007f652ac5bedb:   add    %r11,%r8
   0.24%    ││ │    0x00007f652ac5bede:   and    %rbx,%rdi
   0.14%    ││ │    0x00007f652ac5bee1:   xor    %r14,%r13
   0.13%    ││ │    0x00007f652ac5bee4:   rorx   $0x27,%rax,%r14
   0.03%    ││ │    0x00007f652ac5beea:   xor    %r12,%r14
   0.24%    ││ │    0x00007f652ac5beed:   rorx   $0x1c,%rax,%r12
   0.13%    ││ │    0x00007f652ac5bef3:   xor    %r10,%r15
   0.13%    ││ │    0x00007f652ac5bef6:   xor    %r12,%r14
   0.02%    ││ │    0x00007f652ac5bef9:   mov    %rax,%r12
   0.20%    ││ │    0x00007f652ac5befc:   and    %rcx,%r12
   0.13%    ││ │    0x00007f652ac5beff:   add    %r13,%r15
   0.12%    ││ │    0x00007f652ac5bf02:   or     %r12,%rdi
   0.04%    ││ │    0x00007f652ac5bf05:   add    %r14,%r11
   0.23%    ││ │    0x00007f652ac5bf08:   add    %r15,%r8
   0.12%    ││ │    0x00007f652ac5bf0b:   add    %r15,%r11
   0.14%    ││ │    0x00007f652ac5bf0e:   add    %rdi,%r11
   0.05%    ││ │    0x00007f652ac5bf11:   vpsrlq $0x8,%ymm1,%ymm2
   0.21%    ││ │    0x00007f652ac5bf16:   vpsllq $0x38,%ymm1,%ymm1
   0.14%    ││ │    0x00007f652ac5bf1b:   vpor   %ymm2,%ymm1,%ymm1
   0.12%    ││ │    0x00007f652ac5bf1f:   vpxor  %ymm8,%ymm3,%ymm3
   0.04%    ││ │    0x00007f652ac5bf24:   vpxor  %ymm1,%ymm3,%ymm1
   0.24%    ││ │    0x00007f652ac5bf28:   vpaddq %ymm1,%ymm0,%ymm0
   0.11%    ││ │    0x00007f652ac5bf2c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.12%    ││ │    0x00007f652ac5bf32:   vpand  %ymm10,%ymm0,%ymm0
   0.04%    ││ │    0x00007f652ac5bf37:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.24%    ││ │    0x00007f652ac5bf3d:   vpsrlq $0x6,%ymm2,%ymm8
   0.13%    ││ │    0x00007f652ac5bf42:   mov    %r11,%rdi
   0.13%    ││ │    0x00007f652ac5bf45:   rorx   $0x29,%r8,%r13
   0.05%    ││ │    0x00007f652ac5bf4b:   rorx   $0x12,%r8,%r14
   0.22%    ││ │    0x00007f652ac5bf51:   add    0x8(%rsp),%r10
   0.12%    ││ │    0x00007f652ac5bf56:   or     %rbx,%rdi
   0.10%    ││ │    0x00007f652ac5bf59:   mov    %rdx,%r15
   0.03%    ││ │    0x00007f652ac5bf5c:   xor    %r9,%r15
   0.21%    ││ │    0x00007f652ac5bf5f:   rorx   $0x22,%r11,%r12
   0.12%    ││ │    0x00007f652ac5bf65:   xor    %r14,%r13
   0.14%    ││ │    0x00007f652ac5bf68:   rorx   $0xe,%r8,%r14
   0.04%    ││ │    0x00007f652ac5bf6e:   and    %r8,%r15
   0.24%    ││ │    0x00007f652ac5bf71:   add    %r10,%rcx
   0.11%    ││ │    0x00007f652ac5bf74:   and    %rax,%rdi
   0.09%    ││ │    0x00007f652ac5bf77:   xor    %r14,%r13
   0.04%    ││ │    0x00007f652ac5bf7a:   rorx   $0x27,%r11,%r14
   0.22%    ││ │    0x00007f652ac5bf80:   xor    %r12,%r14
   0.15%    ││ │    0x00007f652ac5bf83:   rorx   $0x1c,%r11,%r12
   0.11%    ││ │    0x00007f652ac5bf89:   xor    %r9,%r15
   0.04%    ││ │    0x00007f652ac5bf8c:   xor    %r12,%r14
   0.22%    ││ │    0x00007f652ac5bf8f:   mov    %r11,%r12
   0.13%    ││ │    0x00007f652ac5bf92:   and    %rbx,%r12
   0.14%    ││ │    0x00007f652ac5bf95:   add    %r13,%r15
   0.06%    ││ │    0x00007f652ac5bf98:   or     %r12,%rdi
   0.23%    ││ │    0x00007f652ac5bf9b:   add    %r14,%r10
   0.13%    ││ │    0x00007f652ac5bf9e:   add    %r15,%rcx
   0.14%    ││ │    0x00007f652ac5bfa1:   add    %r15,%r10
   0.04%    ││ │    0x00007f652ac5bfa4:   add    %rdi,%r10
   0.21%    ││ │    0x00007f652ac5bfa7:   vpsrlq $0x13,%ymm2,%ymm3
   0.12%    ││ │    0x00007f652ac5bfac:   vpsllq $0x2d,%ymm2,%ymm1
   0.10%    ││ │    0x00007f652ac5bfb1:   vpor   %ymm1,%ymm3,%ymm3
   0.03%    ││ │    0x00007f652ac5bfb5:   vpxor  %ymm3,%ymm8,%ymm8
   0.23%    ││ │    0x00007f652ac5bfb9:   vpsrlq $0x3d,%ymm2,%ymm3
   0.11%    ││ │    0x00007f652ac5bfbe:   vpsllq $0x3,%ymm2,%ymm1
   0.12%    ││ │    0x00007f652ac5bfc3:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007f652ac5bfc7:   vpxor  %ymm3,%ymm8,%ymm8
   0.18%    ││ │    0x00007f652ac5bfcb:   vpaddq %ymm8,%ymm6,%ymm6
   0.11%    ││ │    0x00007f652ac5bfd0:   vpsrlq $0x6,%ymm6,%ymm8
   0.13%    ││ │    0x00007f652ac5bfd5:   mov    %r10,%rdi
   0.06%    ││ │    0x00007f652ac5bfd8:   rorx   $0x29,%rcx,%r13
   0.20%    ││ │    0x00007f652ac5bfde:   rorx   $0x12,%rcx,%r14
   0.13%    ││ │    0x00007f652ac5bfe4:   add    0x10(%rsp),%r9
   0.12%    ││ │    0x00007f652ac5bfe9:   or     %rax,%rdi
   0.05%    ││ │    0x00007f652ac5bfec:   mov    %r8,%r15
   0.24%    ││ │    0x00007f652ac5bfef:   xor    %rdx,%r15
   0.14%    ││ │    0x00007f652ac5bff2:   rorx   $0x22,%r10,%r12
   0.12%    ││ │    0x00007f652ac5bff8:   xor    %r14,%r13
   0.03%    ││ │    0x00007f652ac5bffb:   rorx   $0xe,%rcx,%r14
   0.18%    ││ │    0x00007f652ac5c001:   and    %rcx,%r15
   0.11%    ││ │    0x00007f652ac5c004:   add    %r9,%rbx
   0.14%    ││ │    0x00007f652ac5c007:   and    %r11,%rdi
   0.04%    ││ │    0x00007f652ac5c00a:   xor    %r14,%r13
   0.21%    ││ │    0x00007f652ac5c00d:   rorx   $0x27,%r10,%r14
   0.11%    ││ │    0x00007f652ac5c013:   xor    %r12,%r14
   0.15%    ││ │    0x00007f652ac5c016:   rorx   $0x1c,%r10,%r12
   0.03%    ││ │    0x00007f652ac5c01c:   xor    %rdx,%r15
   0.22%    ││ │    0x00007f652ac5c01f:   xor    %r12,%r14
   0.11%    ││ │    0x00007f652ac5c022:   mov    %r10,%r12
   0.14%    ││ │    0x00007f652ac5c025:   and    %rax,%r12
   0.04%    ││ │    0x00007f652ac5c028:   add    %r13,%r15
   0.21%    ││ │    0x00007f652ac5c02b:   or     %r12,%rdi
   0.11%    ││ │    0x00007f652ac5c02e:   add    %r14,%r9
   0.13%    ││ │    0x00007f652ac5c031:   add    %r15,%rbx
   0.03%    ││ │    0x00007f652ac5c034:   add    %r15,%r9
   0.21%    ││ │    0x00007f652ac5c037:   add    %rdi,%r9
   0.10%    ││ │    0x00007f652ac5c03a:   vpsrlq $0x13,%ymm6,%ymm3
   0.15%    ││ │    0x00007f652ac5c03f:   vpsllq $0x2d,%ymm6,%ymm1
   0.04%    ││ │    0x00007f652ac5c044:   vpor   %ymm1,%ymm3,%ymm3
   0.21%    ││ │    0x00007f652ac5c048:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%    ││ │    0x00007f652ac5c04c:   vpsrlq $0x3d,%ymm6,%ymm3
   0.14%    ││ │    0x00007f652ac5c051:   vpsllq $0x3,%ymm6,%ymm1
   0.05%    ││ │    0x00007f652ac5c056:   vpor   %ymm1,%ymm3,%ymm3
   0.22%    ││ │    0x00007f652ac5c05a:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%    ││ │    0x00007f652ac5c05e:   vpaddq %ymm8,%ymm0,%ymm2
   0.17%    ││ │    0x00007f652ac5c063:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.13%    ││ │    0x00007f652ac5c069:   mov    %r9,%rdi
   0.24%    ││ │    0x00007f652ac5c06c:   rorx   $0x29,%rbx,%r13
   0.09%    ││ │    0x00007f652ac5c072:   rorx   $0x12,%rbx,%r14
   0.08%    ││ │    0x00007f652ac5c078:   add    0x18(%rsp),%rdx
   0.08%    ││ │    0x00007f652ac5c07d:   or     %r11,%rdi
   0.21%    ││ │    0x00007f652ac5c080:   mov    %rcx,%r15
   0.10%    ││ │    0x00007f652ac5c083:   xor    %r8,%r15
   0.11%    ││ │    0x00007f652ac5c086:   rorx   $0x22,%r9,%r12
   0.08%    ││ │    0x00007f652ac5c08c:   xor    %r14,%r13
   0.23%    ││ │    0x00007f652ac5c08f:   rorx   $0xe,%rbx,%r14
   0.11%    ││ │    0x00007f652ac5c095:   and    %rbx,%r15
   0.12%    ││ │    0x00007f652ac5c098:   add    %rdx,%rax
   0.10%    ││ │    0x00007f652ac5c09b:   and    %r10,%rdi
   0.21%    ││ │    0x00007f652ac5c09e:   xor    %r14,%r13
   0.12%    ││ │    0x00007f652ac5c0a1:   rorx   $0x27,%r9,%r14
   0.12%    ││ │    0x00007f652ac5c0a7:   xor    %r12,%r14
   0.10%    ││ │    0x00007f652ac5c0aa:   rorx   $0x1c,%r9,%r12
   0.20%    ││ │    0x00007f652ac5c0b0:   xor    %r8,%r15
   0.10%    ││ │    0x00007f652ac5c0b3:   xor    %r12,%r14
   0.08%    ││ │    0x00007f652ac5c0b6:   mov    %r9,%r12
   0.11%    ││ │    0x00007f652ac5c0b9:   and    %r11,%r12
   0.23%    ││ │    0x00007f652ac5c0bc:   add    %r13,%r15
   0.10%    ││ │    0x00007f652ac5c0bf:   or     %r12,%rdi
   0.13%    ││ │    0x00007f652ac5c0c2:   add    %r14,%rdx
   0.08%    ││ │    0x00007f652ac5c0c5:   add    %r15,%rax
   0.19%    ││ │    0x00007f652ac5c0c8:   add    %r15,%rdx
   0.08%    ││ │    0x00007f652ac5c0cb:   add    %rdi,%rdx
   0.10%    ││ │    0x00007f652ac5c0ce:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.11%    ││ │    0x00007f652ac5c0d3:   vmovdqu %ymm0,(%rsp)
   0.19%    ││ │    0x00007f652ac5c0d8:   add    $0x80,%rbp
   0.13%    ││ │    0x00007f652ac5c0df:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.12%    ││ │    0x00007f652ac5c0e5:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.08%    ││ │    0x00007f652ac5c0eb:   vpaddq %ymm7,%ymm0,%ymm0
   0.34%    ││ │    0x00007f652ac5c0ef:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.11%    ││ │    0x00007f652ac5c0f5:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.11%    ││ │    0x00007f652ac5c0fb:   vpsrlq $0x1,%ymm1,%ymm2
   0.12%    ││ │    0x00007f652ac5c100:   vpsllq $0x3f,%ymm1,%ymm3
   0.25%    ││ │    0x00007f652ac5c105:   vpor   %ymm2,%ymm3,%ymm3
   0.11%    ││ │    0x00007f652ac5c109:   vpsrlq $0x7,%ymm1,%ymm8
   0.11%    ││ │    0x00007f652ac5c10e:   mov    %rdx,%rdi
   0.09%    ││ │    0x00007f652ac5c111:   rorx   $0x29,%rax,%r13
   0.23%    ││ │    0x00007f652ac5c117:   rorx   $0x12,%rax,%r14
   0.10%    ││ │    0x00007f652ac5c11d:   add    (%rsp),%r8
   0.07%    ││ │    0x00007f652ac5c121:   or     %r10,%rdi
   0.08%    ││ │    0x00007f652ac5c124:   mov    %rbx,%r15
   0.26%    ││ │    0x00007f652ac5c127:   xor    %rcx,%r15
   0.09%    ││ │    0x00007f652ac5c12a:   rorx   $0x22,%rdx,%r12
   0.12%    ││ │    0x00007f652ac5c130:   xor    %r14,%r13
   0.08%    ││ │    0x00007f652ac5c133:   rorx   $0xe,%rax,%r14
   0.22%    ││ │    0x00007f652ac5c139:   and    %rax,%r15
   0.13%    ││ │    0x00007f652ac5c13c:   add    %r8,%r11
   0.11%    ││ │    0x00007f652ac5c13f:   and    %r9,%rdi
   0.10%    ││ │    0x00007f652ac5c142:   xor    %r14,%r13
   0.25%    ││ │    0x00007f652ac5c145:   rorx   $0x27,%rdx,%r14
   0.09%    ││ │    0x00007f652ac5c14b:   xor    %r12,%r14
   0.07%    ││ │    0x00007f652ac5c14e:   rorx   $0x1c,%rdx,%r12
   0.07%    ││ │    0x00007f652ac5c154:   xor    %rcx,%r15
   0.24%    ││ │    0x00007f652ac5c157:   xor    %r12,%r14
   0.09%    ││ │    0x00007f652ac5c15a:   mov    %rdx,%r12
   0.11%    ││ │    0x00007f652ac5c15d:   and    %r10,%r12
   0.07%    ││ │    0x00007f652ac5c160:   add    %r13,%r15
   0.19%    ││ │    0x00007f652ac5c163:   or     %r12,%rdi
   0.10%    ││ │    0x00007f652ac5c166:   add    %r14,%r8
   0.11%    ││ │    0x00007f652ac5c169:   add    %r15,%r11
   0.08%    ││ │    0x00007f652ac5c16c:   add    %r15,%r8
   0.25%    ││ │    0x00007f652ac5c16f:   add    %rdi,%r8
   0.11%    ││ │    0x00007f652ac5c172:   vpsrlq $0x8,%ymm1,%ymm2
   0.10%    ││ │    0x00007f652ac5c177:   vpsllq $0x38,%ymm1,%ymm1
   0.09%    ││ │    0x00007f652ac5c17c:   vpor   %ymm2,%ymm1,%ymm1
   0.26%    ││ │    0x00007f652ac5c180:   vpxor  %ymm8,%ymm3,%ymm3
   0.13%    ││ │    0x00007f652ac5c185:   vpxor  %ymm1,%ymm3,%ymm1
   0.08%    ││ │    0x00007f652ac5c189:   vpaddq %ymm1,%ymm0,%ymm0
   0.10%    ││ │    0x00007f652ac5c18d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.25%    ││ │    0x00007f652ac5c193:   vpand  %ymm10,%ymm0,%ymm0
   0.13%    ││ │    0x00007f652ac5c198:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.08%    ││ │    0x00007f652ac5c19e:   vpsrlq $0x6,%ymm2,%ymm8
   0.07%    ││ │    0x00007f652ac5c1a3:   mov    %r8,%rdi
   0.21%    ││ │    0x00007f652ac5c1a6:   rorx   $0x29,%r11,%r13
   0.13%    ││ │    0x00007f652ac5c1ac:   rorx   $0x12,%r11,%r14
   0.06%    ││ │    0x00007f652ac5c1b2:   add    0x8(%rsp),%rcx
   0.10%    ││ │    0x00007f652ac5c1b7:   or     %r9,%rdi
   0.20%    ││ │    0x00007f652ac5c1ba:   mov    %rax,%r15
   0.11%    ││ │    0x00007f652ac5c1bd:   xor    %rbx,%r15
   0.08%    ││ │    0x00007f652ac5c1c0:   rorx   $0x22,%r8,%r12
   0.08%    ││ │    0x00007f652ac5c1c6:   xor    %r14,%r13
   0.24%    ││ │    0x00007f652ac5c1c9:   rorx   $0xe,%r11,%r14
   0.10%    ││ │    0x00007f652ac5c1cf:   and    %r11,%r15
   0.10%    ││ │    0x00007f652ac5c1d2:   add    %rcx,%r10
   0.08%    ││ │    0x00007f652ac5c1d5:   and    %rdx,%rdi
   0.22%    ││ │    0x00007f652ac5c1d8:   xor    %r14,%r13
   0.10%    ││ │    0x00007f652ac5c1db:   rorx   $0x27,%r8,%r14
   0.07%    ││ │    0x00007f652ac5c1e1:   xor    %r12,%r14
   0.07%    ││ │    0x00007f652ac5c1e4:   rorx   $0x1c,%r8,%r12
   0.20%    ││ │    0x00007f652ac5c1ea:   xor    %rbx,%r15
   0.10%    ││ │    0x00007f652ac5c1ed:   xor    %r12,%r14
   0.09%    ││ │    0x00007f652ac5c1f0:   mov    %r8,%r12
   0.07%    ││ │    0x00007f652ac5c1f3:   and    %r9,%r12
   0.19%    ││ │    0x00007f652ac5c1f6:   add    %r13,%r15
   0.12%    ││ │    0x00007f652ac5c1f9:   or     %r12,%rdi
   0.08%    ││ │    0x00007f652ac5c1fc:   add    %r14,%rcx
   0.09%    ││ │    0x00007f652ac5c1ff:   add    %r15,%r10
   0.20%    ││ │    0x00007f652ac5c202:   add    %r15,%rcx
   0.09%    ││ │    0x00007f652ac5c205:   add    %rdi,%rcx
   0.11%    ││ │    0x00007f652ac5c208:   vpsrlq $0x13,%ymm2,%ymm3
   0.10%    ││ │    0x00007f652ac5c20d:   vpsllq $0x2d,%ymm2,%ymm1
   0.22%    ││ │    0x00007f652ac5c212:   vpor   %ymm1,%ymm3,%ymm3
   0.12%    ││ │    0x00007f652ac5c216:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%    ││ │    0x00007f652ac5c21a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.08%    ││ │    0x00007f652ac5c21f:   vpsllq $0x3,%ymm2,%ymm1
   0.22%    ││ │    0x00007f652ac5c224:   vpor   %ymm1,%ymm3,%ymm3
   0.14%    ││ │    0x00007f652ac5c228:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%    ││ │    0x00007f652ac5c22c:   vpaddq %ymm8,%ymm7,%ymm7
   0.08%    ││ │    0x00007f652ac5c231:   vpsrlq $0x6,%ymm7,%ymm8
   0.21%    ││ │    0x00007f652ac5c236:   mov    %rcx,%rdi
   0.10%    ││ │    0x00007f652ac5c239:   rorx   $0x29,%r10,%r13
   0.09%    ││ │    0x00007f652ac5c23f:   rorx   $0x12,%r10,%r14
   0.06%    ││ │    0x00007f652ac5c245:   add    0x10(%rsp),%rbx
   0.24%    ││ │    0x00007f652ac5c24a:   or     %rdx,%rdi
   0.09%    ││ │    0x00007f652ac5c24d:   mov    %r11,%r15
   0.11%    ││ │    0x00007f652ac5c250:   xor    %rax,%r15
   0.07%    ││ │    0x00007f652ac5c253:   rorx   $0x22,%rcx,%r12
   0.26%    ││ │    0x00007f652ac5c259:   xor    %r14,%r13
   0.10%    ││ │    0x00007f652ac5c25c:   rorx   $0xe,%r10,%r14
   0.08%    ││ │    0x00007f652ac5c262:   and    %r10,%r15
   0.05%    ││ │    0x00007f652ac5c265:   add    %rbx,%r9
   0.23%    ││ │    0x00007f652ac5c268:   and    %r8,%rdi
   0.11%    ││ │    0x00007f652ac5c26b:   xor    %r14,%r13
   0.10%    ││ │    0x00007f652ac5c26e:   rorx   $0x27,%rcx,%r14
   0.06%    ││ │    0x00007f652ac5c274:   xor    %r12,%r14
   0.26%    ││ │    0x00007f652ac5c277:   rorx   $0x1c,%rcx,%r12
   0.08%    ││ │    0x00007f652ac5c27d:   xor    %rax,%r15
   0.08%    ││ │    0x00007f652ac5c280:   xor    %r12,%r14
   0.08%    ││ │    0x00007f652ac5c283:   mov    %rcx,%r12
   0.29%    ││ │    0x00007f652ac5c286:   and    %rdx,%r12
   0.10%    ││ │    0x00007f652ac5c289:   add    %r13,%r15
   0.08%    ││ │    0x00007f652ac5c28c:   or     %r12,%rdi
   0.07%    ││ │    0x00007f652ac5c28f:   add    %r14,%rbx
   0.28%    ││ │    0x00007f652ac5c292:   add    %r15,%r9
   0.10%    ││ │    0x00007f652ac5c295:   add    %r15,%rbx
   0.09%    ││ │    0x00007f652ac5c298:   add    %rdi,%rbx
   0.06%    ││ │    0x00007f652ac5c29b:   vpsrlq $0x13,%ymm7,%ymm3
   0.23%    ││ │    0x00007f652ac5c2a0:   vpsllq $0x2d,%ymm7,%ymm1
   0.13%    ││ │    0x00007f652ac5c2a5:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │    0x00007f652ac5c2a9:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007f652ac5c2ad:   vpsrlq $0x3d,%ymm7,%ymm3
   0.27%    ││ │    0x00007f652ac5c2b2:   vpsllq $0x3,%ymm7,%ymm1
   0.11%    ││ │    0x00007f652ac5c2b7:   vpor   %ymm1,%ymm3,%ymm3
   0.10%    ││ │    0x00007f652ac5c2bb:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007f652ac5c2bf:   vpaddq %ymm8,%ymm0,%ymm2
   0.28%    ││ │    0x00007f652ac5c2c4:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.20%    ││ │    0x00007f652ac5c2ca:   mov    %rbx,%rdi
   0.08%    ││ │    0x00007f652ac5c2cd:   rorx   $0x29,%r9,%r13
   0.06%    ││ │    0x00007f652ac5c2d3:   rorx   $0x12,%r9,%r14
   0.22%    ││ │    0x00007f652ac5c2d9:   add    0x18(%rsp),%rax
   0.14%    ││ │    0x00007f652ac5c2de:   or     %r8,%rdi
   0.07%    ││ │    0x00007f652ac5c2e1:   mov    %r10,%r15
   0.05%    ││ │    0x00007f652ac5c2e4:   xor    %r11,%r15
   0.21%    ││ │    0x00007f652ac5c2e7:   rorx   $0x22,%rbx,%r12
   0.15%    ││ │    0x00007f652ac5c2ed:   xor    %r14,%r13
   0.07%    ││ │    0x00007f652ac5c2f0:   rorx   $0xe,%r9,%r14
   0.06%    ││ │    0x00007f652ac5c2f6:   and    %r9,%r15
   0.23%    ││ │    0x00007f652ac5c2f9:   add    %rax,%rdx
   0.16%    ││ │    0x00007f652ac5c2fc:   and    %rcx,%rdi
   0.06%    ││ │    0x00007f652ac5c2ff:   xor    %r14,%r13
   0.06%    ││ │    0x00007f652ac5c302:   rorx   $0x27,%rbx,%r14
   0.19%    ││ │    0x00007f652ac5c308:   xor    %r12,%r14
   0.16%    ││ │    0x00007f652ac5c30b:   rorx   $0x1c,%rbx,%r12
   0.07%    ││ │    0x00007f652ac5c311:   xor    %r11,%r15
   0.07%    ││ │    0x00007f652ac5c314:   xor    %r12,%r14
   0.20%    ││ │    0x00007f652ac5c317:   mov    %rbx,%r12
   0.20%    ││ │    0x00007f652ac5c31a:   and    %r8,%r12
   0.05%    ││ │    0x00007f652ac5c31d:   add    %r13,%r15
   0.07%    ││ │    0x00007f652ac5c320:   or     %r12,%rdi
   0.21%    ││ │    0x00007f652ac5c323:   add    %r14,%rax
   0.16%    ││ │    0x00007f652ac5c326:   add    %r15,%rdx
   0.09%    ││ │    0x00007f652ac5c329:   add    %r15,%rax
   0.04%    ││ │    0x00007f652ac5c32c:   add    %rdi,%rax
   0.19%    ││ │    0x00007f652ac5c32f:   subq   $0x1,0x20(%rsp)
   0.30%    │╰ │    0x00007f652ac5c335:   jne    0x00007f652ac5b9c0
   0.03%    │  │    0x00007f652ac5c33b:   movq   $0x2,0x20(%rsp)
   0.07%    │ ↗│    0x00007f652ac5c344:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.06%    │ ││    0x00007f652ac5c349:   vmovdqu %ymm0,(%rsp)
   0.06%    │ ││    0x00007f652ac5c34e:   mov    %r9,%r15
   0.09%    │ ││    0x00007f652ac5c351:   rorx   $0x29,%rdx,%r13
   0.07%    │ ││    0x00007f652ac5c357:   rorx   $0x12,%rdx,%r14
   0.06%    │ ││    0x00007f652ac5c35d:   xor    %r10,%r15
   0.07%    │ ││    0x00007f652ac5c360:   xor    %r14,%r13
   0.06%    │ ││    0x00007f652ac5c363:   rorx   $0xe,%rdx,%r14
   0.05%    │ ││    0x00007f652ac5c369:   and    %rdx,%r15
   0.07%    │ ││    0x00007f652ac5c36c:   xor    %r14,%r13
   0.07%    │ ││    0x00007f652ac5c36f:   rorx   $0x22,%rax,%r12
   0.08%    │ ││    0x00007f652ac5c375:   xor    %r10,%r15
   0.07%    │ ││    0x00007f652ac5c378:   rorx   $0x27,%rax,%r14
   0.07%    │ ││    0x00007f652ac5c37e:   mov    %rax,%rdi
   0.06%    │ ││    0x00007f652ac5c381:   xor    %r12,%r14
   0.06%    │ ││    0x00007f652ac5c384:   rorx   $0x1c,%rax,%r12
   0.07%    │ ││    0x00007f652ac5c38a:   add    (%rsp),%r11
   0.07%    │ ││    0x00007f652ac5c38e:   or     %rcx,%rdi
   0.06%    │ ││    0x00007f652ac5c391:   xor    %r12,%r14
   0.07%    │ ││    0x00007f652ac5c394:   mov    %rax,%r12
   0.05%    │ ││    0x00007f652ac5c397:   and    %rbx,%rdi
   0.05%    │ ││    0x00007f652ac5c39a:   and    %rcx,%r12
   0.05%    │ ││    0x00007f652ac5c39d:   add    %r13,%r15
   0.09%    │ ││    0x00007f652ac5c3a0:   add    %r11,%r8
   0.04%    │ ││    0x00007f652ac5c3a3:   or     %r12,%rdi
   0.06%    │ ││    0x00007f652ac5c3a6:   add    %r14,%r11
   0.05%    │ ││    0x00007f652ac5c3a9:   add    %r15,%r8
   0.06%    │ ││    0x00007f652ac5c3ac:   add    %r15,%r11
   0.05%    │ ││    0x00007f652ac5c3af:   mov    %rdx,%r15
   0.07%    │ ││    0x00007f652ac5c3b2:   rorx   $0x29,%r8,%r13
   0.06%    │ ││    0x00007f652ac5c3b8:   rorx   $0x12,%r8,%r14
   0.08%    │ ││    0x00007f652ac5c3be:   xor    %r9,%r15
   0.06%    │ ││    0x00007f652ac5c3c1:   xor    %r14,%r13
   0.05%    │ ││    0x00007f652ac5c3c4:   rorx   $0xe,%r8,%r14
   0.08%    │ ││    0x00007f652ac5c3ca:   and    %r8,%r15
   0.07%    │ ││    0x00007f652ac5c3cd:   add    %rdi,%r11
   0.05%    │ ││    0x00007f652ac5c3d0:   xor    %r14,%r13
   0.06%    │ ││    0x00007f652ac5c3d3:   rorx   $0x22,%r11,%r12
   0.07%    │ ││    0x00007f652ac5c3d9:   xor    %r9,%r15
   0.08%    │ ││    0x00007f652ac5c3dc:   rorx   $0x27,%r11,%r14
   0.04%    │ ││    0x00007f652ac5c3e2:   mov    %r11,%rdi
   0.07%    │ ││    0x00007f652ac5c3e5:   xor    %r12,%r14
   0.07%    │ ││    0x00007f652ac5c3e8:   rorx   $0x1c,%r11,%r12
   0.07%    │ ││    0x00007f652ac5c3ee:   add    0x8(%rsp),%r10
   0.07%    │ ││    0x00007f652ac5c3f3:   or     %rbx,%rdi
   0.07%    │ ││    0x00007f652ac5c3f6:   xor    %r12,%r14
   0.08%    │ ││    0x00007f652ac5c3f9:   mov    %r11,%r12
   0.07%    │ ││    0x00007f652ac5c3fc:   and    %rax,%rdi
   0.07%    │ ││    0x00007f652ac5c3ff:   and    %rbx,%r12
   0.08%    │ ││    0x00007f652ac5c402:   add    %r13,%r15
   0.06%    │ ││    0x00007f652ac5c405:   add    %r10,%rcx
   0.07%    │ ││    0x00007f652ac5c408:   or     %r12,%rdi
   0.06%    │ ││    0x00007f652ac5c40b:   add    %r14,%r10
   0.07%    │ ││    0x00007f652ac5c40e:   add    %r15,%rcx
   0.07%    │ ││    0x00007f652ac5c411:   add    %r15,%r10
   0.07%    │ ││    0x00007f652ac5c414:   mov    %r8,%r15
   0.08%    │ ││    0x00007f652ac5c417:   rorx   $0x29,%rcx,%r13
   0.07%    │ ││    0x00007f652ac5c41d:   rorx   $0x12,%rcx,%r14
   0.05%    │ ││    0x00007f652ac5c423:   xor    %rdx,%r15
   0.06%    │ ││    0x00007f652ac5c426:   xor    %r14,%r13
   0.06%    │ ││    0x00007f652ac5c429:   rorx   $0xe,%rcx,%r14
   0.07%    │ ││    0x00007f652ac5c42f:   and    %rcx,%r15
   0.06%    │ ││    0x00007f652ac5c432:   add    %rdi,%r10
   0.07%    │ ││    0x00007f652ac5c435:   xor    %r14,%r13
   0.08%    │ ││    0x00007f652ac5c438:   rorx   $0x22,%r10,%r12
   0.04%    │ ││    0x00007f652ac5c43e:   xor    %rdx,%r15
   0.07%    │ ││    0x00007f652ac5c441:   rorx   $0x27,%r10,%r14
   0.06%    │ ││    0x00007f652ac5c447:   mov    %r10,%rdi
   0.07%    │ ││    0x00007f652ac5c44a:   xor    %r12,%r14
   0.10%    │ ││    0x00007f652ac5c44d:   rorx   $0x1c,%r10,%r12
   0.07%    │ ││    0x00007f652ac5c453:   add    0x10(%rsp),%r9
   0.08%    │ ││    0x00007f652ac5c458:   or     %rax,%rdi
   0.06%    │ ││    0x00007f652ac5c45b:   xor    %r12,%r14
   0.06%    │ ││    0x00007f652ac5c45e:   mov    %r10,%r12
   0.06%    │ ││    0x00007f652ac5c461:   and    %r11,%rdi
   0.04%    │ ││    0x00007f652ac5c464:   and    %rax,%r12
   0.04%    │ ││    0x00007f652ac5c467:   add    %r13,%r15
   0.09%    │ ││    0x00007f652ac5c46a:   add    %r9,%rbx
   0.06%    │ ││    0x00007f652ac5c46d:   or     %r12,%rdi
   0.06%    │ ││    0x00007f652ac5c470:   add    %r14,%r9
   0.07%    │ ││    0x00007f652ac5c473:   add    %r15,%rbx
   0.08%    │ ││    0x00007f652ac5c476:   add    %r15,%r9
   0.07%    │ ││    0x00007f652ac5c479:   mov    %rcx,%r15
   0.07%    │ ││    0x00007f652ac5c47c:   rorx   $0x29,%rbx,%r13
   0.07%    │ ││    0x00007f652ac5c482:   rorx   $0x12,%rbx,%r14
   0.07%    │ ││    0x00007f652ac5c488:   xor    %r8,%r15
   0.07%    │ ││    0x00007f652ac5c48b:   xor    %r14,%r13
   0.06%    │ ││    0x00007f652ac5c48e:   rorx   $0xe,%rbx,%r14
   0.07%    │ ││    0x00007f652ac5c494:   and    %rbx,%r15
   0.09%    │ ││    0x00007f652ac5c497:   add    %rdi,%r9
   0.07%    │ ││    0x00007f652ac5c49a:   xor    %r14,%r13
   0.07%    │ ││    0x00007f652ac5c49d:   rorx   $0x22,%r9,%r12
   0.07%    │ ││    0x00007f652ac5c4a3:   xor    %r8,%r15
   0.10%    │ ││    0x00007f652ac5c4a6:   rorx   $0x27,%r9,%r14
   0.06%    │ ││    0x00007f652ac5c4ac:   mov    %r9,%rdi
   0.07%    │ ││    0x00007f652ac5c4af:   xor    %r12,%r14
   0.05%    │ ││    0x00007f652ac5c4b2:   rorx   $0x1c,%r9,%r12
   0.08%    │ ││    0x00007f652ac5c4b8:   add    0x18(%rsp),%rdx
   0.05%    │ ││    0x00007f652ac5c4bd:   or     %r11,%rdi
   0.08%    │ ││    0x00007f652ac5c4c0:   xor    %r12,%r14
   0.07%    │ ││    0x00007f652ac5c4c3:   mov    %r9,%r12
   0.07%    │ ││    0x00007f652ac5c4c6:   and    %r10,%rdi
   0.04%    │ ││    0x00007f652ac5c4c9:   and    %r11,%r12
   0.06%    │ ││    0x00007f652ac5c4cc:   add    %r13,%r15
   0.06%    │ ││    0x00007f652ac5c4cf:   add    %rdx,%rax
   0.09%    │ ││    0x00007f652ac5c4d2:   or     %r12,%rdi
   0.06%    │ ││    0x00007f652ac5c4d5:   add    %r14,%rdx
   0.07%    │ ││    0x00007f652ac5c4d8:   add    %r15,%rax
   0.07%    │ ││    0x00007f652ac5c4db:   add    %r15,%rdx
   0.07%    │ ││    0x00007f652ac5c4de:   add    %rdi,%rdx
   0.07%    │ ││    0x00007f652ac5c4e1:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.08%    │ ││    0x00007f652ac5c4e6:   vmovdqu %ymm0,(%rsp)
   0.05%    │ ││    0x00007f652ac5c4eb:   add    $0x40,%rbp
   0.06%    │ ││    0x00007f652ac5c4ef:   mov    %rbx,%r15
   0.07%    │ ││    0x00007f652ac5c4f2:   rorx   $0x29,%rax,%r13
   0.06%    │ ││    0x00007f652ac5c4f8:   rorx   $0x12,%rax,%r14
   0.05%    │ ││    0x00007f652ac5c4fe:   xor    %rcx,%r15
   0.06%    │ ││    0x00007f652ac5c501:   xor    %r14,%r13
   0.09%    │ ││    0x00007f652ac5c504:   rorx   $0xe,%rax,%r14
   0.06%    │ ││    0x00007f652ac5c50a:   and    %rax,%r15
   0.07%    │ ││    0x00007f652ac5c50d:   xor    %r14,%r13
   0.05%    │ ││    0x00007f652ac5c510:   rorx   $0x22,%rdx,%r12
   0.08%    │ ││    0x00007f652ac5c516:   xor    %rcx,%r15
   0.04%    │ ││    0x00007f652ac5c519:   rorx   $0x27,%rdx,%r14
   0.06%    │ ││    0x00007f652ac5c51f:   mov    %rdx,%rdi
   0.04%    │ ││    0x00007f652ac5c522:   xor    %r12,%r14
   0.08%    │ ││    0x00007f652ac5c525:   rorx   $0x1c,%rdx,%r12
   0.05%    │ ││    0x00007f652ac5c52b:   add    (%rsp),%r8
   0.05%    │ ││    0x00007f652ac5c52f:   or     %r10,%rdi
   0.06%    │ ││    0x00007f652ac5c532:   xor    %r12,%r14
   0.07%    │ ││    0x00007f652ac5c535:   mov    %rdx,%r12
   0.07%    │ ││    0x00007f652ac5c538:   and    %r9,%rdi
   0.04%    │ ││    0x00007f652ac5c53b:   and    %r10,%r12
   0.06%    │ ││    0x00007f652ac5c53e:   add    %r13,%r15
   0.09%    │ ││    0x00007f652ac5c541:   add    %r8,%r11
   0.07%    │ ││    0x00007f652ac5c544:   or     %r12,%rdi
   0.08%    │ ││    0x00007f652ac5c547:   add    %r14,%r8
   0.06%    │ ││    0x00007f652ac5c54a:   add    %r15,%r11
   0.07%    │ ││    0x00007f652ac5c54d:   add    %r15,%r8
   0.06%    │ ││    0x00007f652ac5c550:   mov    %rax,%r15
   0.05%    │ ││    0x00007f652ac5c553:   rorx   $0x29,%r11,%r13
   0.07%    │ ││    0x00007f652ac5c559:   rorx   $0x12,%r11,%r14
   0.08%    │ ││    0x00007f652ac5c55f:   xor    %rbx,%r15
   0.06%    │ ││    0x00007f652ac5c562:   xor    %r14,%r13
   0.06%    │ ││    0x00007f652ac5c565:   rorx   $0xe,%r11,%r14
   0.07%    │ ││    0x00007f652ac5c56b:   and    %r11,%r15
   0.06%    │ ││    0x00007f652ac5c56e:   add    %rdi,%r8
   0.05%    │ ││    0x00007f652ac5c571:   xor    %r14,%r13
   0.07%    │ ││    0x00007f652ac5c574:   rorx   $0x22,%r8,%r12
   0.06%    │ ││    0x00007f652ac5c57a:   xor    %rbx,%r15
   0.10%    │ ││    0x00007f652ac5c57d:   rorx   $0x27,%r8,%r14
   0.07%    │ ││    0x00007f652ac5c583:   mov    %r8,%rdi
   0.05%    │ ││    0x00007f652ac5c586:   xor    %r12,%r14
   0.07%    │ ││    0x00007f652ac5c589:   rorx   $0x1c,%r8,%r12
   0.10%    │ ││    0x00007f652ac5c58f:   add    0x8(%rsp),%rcx
   0.06%    │ ││    0x00007f652ac5c594:   or     %r9,%rdi
   0.07%    │ ││    0x00007f652ac5c597:   xor    %r12,%r14
   0.08%    │ ││    0x00007f652ac5c59a:   mov    %r8,%r12
   0.08%    │ ││    0x00007f652ac5c59d:   and    %rdx,%rdi
   0.06%    │ ││    0x00007f652ac5c5a0:   and    %r9,%r12
   0.06%    │ ││    0x00007f652ac5c5a3:   add    %r13,%r15
   0.09%    │ ││    0x00007f652ac5c5a6:   add    %rcx,%r10
   0.07%    │ ││    0x00007f652ac5c5a9:   or     %r12,%rdi
   0.05%    │ ││    0x00007f652ac5c5ac:   add    %r14,%rcx
   0.07%    │ ││    0x00007f652ac5c5af:   add    %r15,%r10
   0.08%    │ ││    0x00007f652ac5c5b2:   add    %r15,%rcx
   0.07%    │ ││    0x00007f652ac5c5b5:   mov    %r11,%r15
   0.06%    │ ││    0x00007f652ac5c5b8:   rorx   $0x29,%r10,%r13
   0.06%    │ ││    0x00007f652ac5c5be:   rorx   $0x12,%r10,%r14
   0.06%    │ ││    0x00007f652ac5c5c4:   xor    %rax,%r15
   0.08%    │ ││    0x00007f652ac5c5c7:   xor    %r14,%r13
   0.04%    │ ││    0x00007f652ac5c5ca:   rorx   $0xe,%r10,%r14
   0.08%    │ ││    0x00007f652ac5c5d0:   and    %r10,%r15
   0.08%    │ ││    0x00007f652ac5c5d3:   add    %rdi,%rcx
   0.08%    │ ││    0x00007f652ac5c5d6:   xor    %r14,%r13
   0.07%    │ ││    0x00007f652ac5c5d9:   rorx   $0x22,%rcx,%r12
   0.07%    │ ││    0x00007f652ac5c5df:   xor    %rax,%r15
   0.08%    │ ││    0x00007f652ac5c5e2:   rorx   $0x27,%rcx,%r14
   0.07%    │ ││    0x00007f652ac5c5e8:   mov    %rcx,%rdi
   0.04%    │ ││    0x00007f652ac5c5eb:   xor    %r12,%r14
   0.07%    │ ││    0x00007f652ac5c5ee:   rorx   $0x1c,%rcx,%r12
   0.07%    │ ││    0x00007f652ac5c5f4:   add    0x10(%rsp),%rbx
   0.07%    │ ││    0x00007f652ac5c5f9:   or     %rdx,%rdi
   0.05%    │ ││    0x00007f652ac5c5fc:   xor    %r12,%r14
   0.08%    │ ││    0x00007f652ac5c5ff:   mov    %rcx,%r12
   0.08%    │ ││    0x00007f652ac5c602:   and    %r8,%rdi
   0.07%    │ ││    0x00007f652ac5c605:   and    %rdx,%r12
   0.05%    │ ││    0x00007f652ac5c608:   add    %r13,%r15
   0.07%    │ ││    0x00007f652ac5c60b:   add    %rbx,%r9
   0.06%    │ ││    0x00007f652ac5c60e:   or     %r12,%rdi
   0.06%    │ ││    0x00007f652ac5c611:   add    %r14,%rbx
   0.06%    │ ││    0x00007f652ac5c614:   add    %r15,%r9
   0.08%    │ ││    0x00007f652ac5c617:   add    %r15,%rbx
   0.07%    │ ││    0x00007f652ac5c61a:   mov    %r10,%r15
   0.07%    │ ││    0x00007f652ac5c61d:   rorx   $0x29,%r9,%r13
   0.05%    │ ││    0x00007f652ac5c623:   rorx   $0x12,%r9,%r14
   0.10%    │ ││    0x00007f652ac5c629:   xor    %r11,%r15
   0.09%    │ ││    0x00007f652ac5c62c:   xor    %r14,%r13
   0.07%    │ ││    0x00007f652ac5c62f:   rorx   $0xe,%r9,%r14
   0.04%    │ ││    0x00007f652ac5c635:   and    %r9,%r15
   0.07%    │ ││    0x00007f652ac5c638:   add    %rdi,%rbx
   0.06%    │ ││    0x00007f652ac5c63b:   xor    %r14,%r13
   0.08%    │ ││    0x00007f652ac5c63e:   rorx   $0x22,%rbx,%r12
   0.06%    │ ││    0x00007f652ac5c644:   xor    %r11,%r15
   0.07%    │ ││    0x00007f652ac5c647:   rorx   $0x27,%rbx,%r14
   0.09%    │ ││    0x00007f652ac5c64d:   mov    %rbx,%rdi
   0.09%    │ ││    0x00007f652ac5c650:   xor    %r12,%r14
   0.08%    │ ││    0x00007f652ac5c653:   rorx   $0x1c,%rbx,%r12
   0.07%    │ ││    0x00007f652ac5c659:   add    0x18(%rsp),%rax
   0.04%    │ ││    0x00007f652ac5c65e:   or     %r8,%rdi
   0.06%    │ ││    0x00007f652ac5c661:   xor    %r12,%r14
   0.06%    │ ││    0x00007f652ac5c664:   mov    %rbx,%r12
   0.06%    │ ││    0x00007f652ac5c667:   and    %rcx,%rdi
   0.06%    │ ││    0x00007f652ac5c66a:   and    %r8,%r12
   0.06%    │ ││    0x00007f652ac5c66d:   add    %r13,%r15
   0.08%    │ ││    0x00007f652ac5c670:   add    %rax,%rdx
   0.06%    │ ││    0x00007f652ac5c673:   or     %r12,%rdi
   0.07%    │ ││    0x00007f652ac5c676:   add    %r14,%rax
   0.08%    │ ││    0x00007f652ac5c679:   add    %r15,%rdx
   0.08%    │ ││    0x00007f652ac5c67c:   add    %r15,%rax
   0.07%    │ ││    0x00007f652ac5c67f:   add    %rdi,%rax
   0.10%    │ ││    0x00007f652ac5c682:   vmovdqu %ymm6,%ymm4
   0.05%    │ ││    0x00007f652ac5c686:   vmovdqu %ymm7,%ymm5
   0.01%    │ ││    0x00007f652ac5c68a:   subq   $0x1,0x20(%rsp)
   0.21%    │ ╰│    0x00007f652ac5c690:   jne    0x00007f652ac5c344
   0.04%    │  │    0x00007f652ac5c696:   add    (%rsi),%rax
   0.02%    │  │    0x00007f652ac5c699:   mov    %rax,(%rsi)
   0.24%    │  │    0x00007f652ac5c69c:   add    0x8(%rsi),%rbx
            │  │    0x00007f652ac5c6a0:   mov    %rbx,0x8(%rsi)
   0.01%    │  │    0x00007f652ac5c6a4:   add    0x10(%rsi),%rcx
            │  │    0x00007f652ac5c6a8:   mov    %rcx,0x10(%rsi)
   0.12%    │  │    0x00007f652ac5c6ac:   add    0x18(%rsi),%r8
            │  │    0x00007f652ac5c6b0:   mov    %r8,0x18(%rsi)
   0.01%    │  │    0x00007f652ac5c6b4:   add    0x20(%rsi),%rdx
            │  │    0x00007f652ac5c6b8:   mov    %rdx,0x20(%rsi)
   0.11%    │  │    0x00007f652ac5c6bc:   add    0x28(%rsi),%r9
   0.00%    │  │    0x00007f652ac5c6c0:   mov    %r9,0x28(%rsi)
   0.03%    │  │    0x00007f652ac5c6c4:   add    0x30(%rsi),%r10
   0.00%    │  │    0x00007f652ac5c6c8:   mov    %r10,0x30(%rsi)
   0.13%    │  │    0x00007f652ac5c6cc:   add    0x38(%rsi),%r11
            │  │    0x00007f652ac5c6d0:   mov    %r11,0x38(%rsi)
   0.02%    │  │    0x00007f652ac5c6d4:   mov    0x28(%rsp),%rdi
            │  │    0x00007f652ac5c6d9:   add    $0x80,%rdi
   0.10%    │  │    0x00007f652ac5c6e0:   cmp    0x30(%rsp),%rdi
            │  ╰    0x00007f652ac5c6e5:   jne    0x00007f652ac5b97b
   0.01%    ↘       0x00007f652ac5c6eb:   mov    0x40(%rsp),%rbp
   0.01%            0x00007f652ac5c6f0:   mov    0x48(%rsp),%rbx
   0.00%            0x00007f652ac5c6f5:   mov    0x50(%rsp),%r12
   0.00%            0x00007f652ac5c6fa:   mov    0x58(%rsp),%r13
                    0x00007f652ac5c6ff:   mov    0x60(%rsp),%r14
                    0x00007f652ac5c704:   mov    0x68(%rsp),%r15
   0.01%            0x00007f652ac5c709:   mov    0x38(%rsp),%rsp
                    0x00007f652ac5c70e:   pop    %rcx
   0.00%            0x00007f652ac5c70f:   pop    %rdx
                    0x00007f652ac5c710:   mov    %rdx,%rax
   0.24%         ↗  0x00007f652ac5c713:   cmp    %rcx,%rax
                ╭│  0x00007f652ac5c716:   jae    0x00007f652ac5c720
   0.01%        ││  0x00007f652ac5c718:   add    $0x80,%rax
   0.00%        │╰  0x00007f652ac5c71e:   jmp    0x00007f652ac5c713
   0.04%        ↘   0x00007f652ac5c720:   vzeroupper 
   0.00%            0x00007f652ac5c723:   leave  
   0.01%            0x00007f652ac5c724:   ret    
                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::avx2_shuffle_base64 [0x00007f652ac5c740, 0x00007f652ac5c760] (32 bytes)
                  --------------------------------------------------------------------------------
....................................................................................................
  95.86%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.86%        runtime stub  StubRoutines::sha512_implCompressMB 
   1.27%                      <unknown> 
   0.48%              kernel  [unknown] 
   0.21%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1057 
   0.21%                      <unknown> 
   0.11%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.05%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1057 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1057 
   0.03%                      <unknown> 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1056 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1057 
   0.02%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1057 
   1.30%  <...other 355 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.86%        runtime stub  StubRoutines::sha512_implCompressMB 
   1.67%                      <unknown> 
   1.53%              kernel  [unknown] 
   0.40%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1057 
   0.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1056 
   0.07%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%      jvmci, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 1010 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1080 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.01%        libc-2.31.so  syscall 
   0.19%  <...other 77 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.93%        runtime stub
   1.67%                    
   1.53%              kernel
   0.54%      jvmci, level 4
   0.15%           libjvm.so
   0.11%        libc-2.31.so
   0.02%              [vdso]
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA3-224, length = 16384)

# Run progress: 63.64% complete, ETA 00:07:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 127.462 us/op
# Warmup Iteration   2: 117.330 us/op
# Warmup Iteration   3: 117.324 us/op
# Warmup Iteration   4: 117.319 us/op
# Warmup Iteration   5: 117.322 us/op
Iteration   1: 117.321 us/op
Iteration   2: 117.338 us/op
Iteration   3: 117.318 us/op
Iteration   4: 117.309 us/op
Iteration   5: 117.318 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  117.321 ±(99.9%) 0.041 us/op [Average]
  (min, avg, max) = (117.309, 117.321, 117.338), stdev = 0.011
  CI (99.9%): [117.280, 117.361] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 238038 total address lines.
Perf output processed (skipped 60.510 seconds):
 Column 1: cycles (50453 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 994 

 <region is too big to display, has 1250 lines, but threshold is 1000>
....................................................................................................
  89.29%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.29%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 994 
   8.33%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1024 
   0.48%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1024 
   0.16%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 994 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1030 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1028 
   0.05%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1028 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1028 
   0.02%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1030 
   0.95%  <...other 287 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.38%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 994 
   8.82%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1024 
   1.17%              kernel  [unknown] 
   0.13%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1030 
   0.12%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1028 
   0.07%                      <unknown> 
   0.05%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1032 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 4, compile id 1057 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.13%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.48%      jvmci, level 4
   1.17%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.07%                    
   0.05%        runtime stub
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA3-256, length = 16384)

# Run progress: 72.73% complete, ETA 00:05:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 135.151 us/op
# Warmup Iteration   2: 124.019 us/op
# Warmup Iteration   3: 124.000 us/op
# Warmup Iteration   4: 124.001 us/op
# Warmup Iteration   5: 123.999 us/op
Iteration   1: 124.007 us/op
Iteration   2: 124.000 us/op
Iteration   3: 123.999 us/op
Iteration   4: 124.002 us/op
Iteration   5: 124.003 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  124.002 ±(99.9%) 0.012 us/op [Average]
  (min, avg, max) = (123.999, 124.002, 124.007), stdev = 0.003
  CI (99.9%): [123.991, 124.014] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 231679 total address lines.
Perf output processed (skipped 60.226 seconds):
 Column 1: cycles (50647 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 981 

 <region is too big to display, has 1250 lines, but threshold is 1000>
....................................................................................................
  89.18%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.18%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 981 
   7.95%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1011 
   0.48%               kernel  [unknown] 
   0.31%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1011 
   0.27%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1011 
   0.10%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 981 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%       jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1017 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1015 
   0.05%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1015 
   0.04%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.01%  <...other 299 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.28%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 981 
   8.53%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1011 
   1.54%               kernel  [unknown] 
   0.16%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1015 
   0.11%       jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1017 
   0.05%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1020 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.17%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.10%       jvmci, level 4
   1.54%               kernel
   0.13%            libjvm.so
   0.10%         libc-2.31.so
   0.05%         runtime stub
   0.03%                     
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.00%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA3-384, length = 16384)

# Run progress: 81.82% complete, ETA 00:03:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 172.688 us/op
# Warmup Iteration   2: 158.867 us/op
# Warmup Iteration   3: 158.859 us/op
# Warmup Iteration   4: 158.831 us/op
# Warmup Iteration   5: 158.828 us/op
Iteration   1: 158.833 us/op
Iteration   2: 158.851 us/op
Iteration   3: 158.838 us/op
Iteration   4: 158.836 us/op
Iteration   5: 158.837 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  158.839 ±(99.9%) 0.026 us/op [Average]
  (min, avg, max) = (158.833, 158.839, 158.851), stdev = 0.007
  CI (99.9%): [158.813, 158.866] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 230885 total address lines.
Perf output processed (skipped 60.254 seconds):
 Column 1: cycles (50740 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 989 

 <region is too big to display, has 1250 lines, but threshold is 1000>
....................................................................................................
  90.99%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.99%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 989 
   6.14%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1021 
   0.69%               kernel  [unknown] 
   0.27%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1021 
   0.22%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1021 
   0.11%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 989 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1025 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.04%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1027 
   0.01%               kernel  [unknown] 
   0.96%  <...other 322 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.10%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 989 
   6.64%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1021 
   1.69%               kernel  [unknown] 
   0.09%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1025 
   0.07%                       <unknown> 
   0.06%       jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1027 
   0.05%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%          interpreter  return entry points  
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1029 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  WatcherThread::run 
   0.19%  <...other 81 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.91%       jvmci, level 4
   1.69%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.07%                     
   0.05%         runtime stub
   0.02%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%           ld-2.31.so
   0.00%     perf-2116907.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA3-512, length = 16384)

# Run progress: 90.91% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 243.634 us/op
# Warmup Iteration   2: 224.902 us/op
# Warmup Iteration   3: 224.782 us/op
# Warmup Iteration   4: 224.752 us/op
# Warmup Iteration   5: 224.756 us/op
Iteration   1: 224.753 us/op
Iteration   2: 224.772 us/op
Iteration   3: 224.753 us/op
Iteration   4: 224.754 us/op
Iteration   5: 224.762 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  224.759 ±(99.9%) 0.032 us/op [Average]
  (min, avg, max) = (224.753, 224.759, 224.772), stdev = 0.008
  CI (99.9%): [224.727, 224.791] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 237972 total address lines.
Perf output processed (skipped 60.601 seconds):
 Column 1: cycles (50466 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 989 

 <region is too big to display, has 1250 lines, but threshold is 1000>
....................................................................................................
  92.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.52%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 989 
   4.66%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1018 
   0.32%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1018 
   0.26%               kernel  [unknown] 
   0.25%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1018 
   0.14%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 989 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1023 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1025 
   1.28%  <...other 415 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.67%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 989 
   5.23%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1018 
   1.63%               kernel  [unknown] 
   0.08%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1023 
   0.05%       jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1025 
   0.03%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%                       <unknown> 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  _IO_fflush 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 4, compile id 1056 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1026 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%         libc-2.31.so  __GI___libc_write 
   0.19%  <...other 83 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.04%       jvmci, level 4
   1.63%               kernel
   0.11%            libjvm.so
   0.09%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%         runtime stub
   0.02%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.00%          interpreter
   0.00%           ld-2.31.so
   0.00%          c1, level 3
   0.00%     perf-2116970.map
   0.00%       libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:20:46

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

Benchmark                          (algorithm)  (length)  Mode  Cnt    Score   Error  Units
MessageDigestBenchmark.digest              MD5     16384  avgt    5   30.460 ± 0.009  us/op
MessageDigestBenchmark.digest:asm          MD5     16384  avgt           NaN            ---
MessageDigestBenchmark.digest            SHA-1     16384  avgt    5   72.257 ± 0.060  us/op
MessageDigestBenchmark.digest:asm        SHA-1     16384  avgt           NaN            ---
MessageDigestBenchmark.digest          SHA-224     16384  avgt    5   54.326 ± 0.037  us/op
MessageDigestBenchmark.digest:asm      SHA-224     16384  avgt           NaN            ---
MessageDigestBenchmark.digest          SHA-256     16384  avgt    5   54.359 ± 0.039  us/op
MessageDigestBenchmark.digest:asm      SHA-256     16384  avgt           NaN            ---
MessageDigestBenchmark.digest          SHA-384     16384  avgt    5   37.920 ± 0.029  us/op
MessageDigestBenchmark.digest:asm      SHA-384     16384  avgt           NaN            ---
MessageDigestBenchmark.digest      SHA-512/224     16384  avgt    5   37.935 ± 0.015  us/op
MessageDigestBenchmark.digest:asm  SHA-512/224     16384  avgt           NaN            ---
MessageDigestBenchmark.digest      SHA-512/256     16384  avgt    5   37.930 ± 0.018  us/op
MessageDigestBenchmark.digest:asm  SHA-512/256     16384  avgt           NaN            ---
MessageDigestBenchmark.digest         SHA3-224     16384  avgt    5  117.321 ± 0.041  us/op
MessageDigestBenchmark.digest:asm     SHA3-224     16384  avgt           NaN            ---
MessageDigestBenchmark.digest         SHA3-256     16384  avgt    5  124.002 ± 0.012  us/op
MessageDigestBenchmark.digest:asm     SHA3-256     16384  avgt           NaN            ---
MessageDigestBenchmark.digest         SHA3-384     16384  avgt    5  158.839 ± 0.026  us/op
MessageDigestBenchmark.digest:asm     SHA3-384     16384  avgt           NaN            ---
MessageDigestBenchmark.digest         SHA3-512     16384  avgt    5  224.759 ± 0.032  us/op
MessageDigestBenchmark.digest:asm     SHA3-512     16384  avgt           NaN            ---
