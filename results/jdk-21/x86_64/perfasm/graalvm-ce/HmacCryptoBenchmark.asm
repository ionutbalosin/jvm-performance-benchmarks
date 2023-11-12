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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacMD5, length = 16384)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 34.309 us/op
# Warmup Iteration   2: 30.928 us/op
# Warmup Iteration   3: 30.922 us/op
# Warmup Iteration   4: 30.923 us/op
# Warmup Iteration   5: 30.925 us/op
Iteration   1: 30.926 us/op
Iteration   2: 30.921 us/op
Iteration   3: 30.925 us/op
Iteration   4: 30.944 us/op
Iteration   5: 30.922 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  30.928 ±(99.9%) 0.036 us/op [Average]
  (min, avg, max) = (30.921, 30.928, 30.944), stdev = 0.009
  CI (99.9%): [30.892, 30.963] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 260293 total address lines.
Perf output processed (skipped 61.335 seconds):
 Column 1: cycles (50475 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::md5_implCompressMB 

                                                                                                                                             --------------------------------------------------------------------------------
                                                                                                                                             - - - [OOP MAPS]- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                             ImmutableOopMapSet contains 1 OopMaps
                                                                                                                                             ImmutableOopMap {[1128]=Callers_rax [1120]=Callers_rcx [1112]=Callers_rdx [1104]=Callers_rbx [1080]=Callers_rsi [1072]=Callers_rdi [1064]=Callers_r8 [1056]=Callers_r9 [1048]=Callers_r10 [1040]=Callers_r11 [1032]=Callers_r12 [1024]=Callers_r13 [1016]=Callers_r14 [1008]=Callers_r15 [1132]=Callers_rax [1124]=Callers_rcx [1116]=Callers_rdx [1108]=Callers_rbx [1084]=Callers_rsi [1076]=Callers_rdi [1068]=Callers_r8 [1060]=Callers_r9 [1052]=Callers_r10 [1044]=Callers_r11 [1036]=Callers_r12 [1028]=Callers_r13 [1020]=Callers_r14 [1012]=Callers_r15 [8]=Callers_xmm0 [12]=Callers_xmm0 [16]=Callers_xmm1 [20]=Callers_xmm1 [24]=Callers_xmm2 [28]=Callers_xmm2 [32]=Callers_xmm3 [36]=Callers_xmm3 [40]=Callers_xmm4 [44]=Callers_xmm4 [48]=Callers_xmm5 [52]=Callers_xmm5 [56]=Callers_xmm6 [60]=Callers_xmm6 [64]=Callers_xmm7 [68]=Callers_xmm7 [72]=Callers_xmm8 [76]=Callers_xmm8 [80]=Callers_xmm9 [84]=Callers_xmm9 [88]=Callers_xmm10 [92]=Callers_xmm10 [96]=Callers_xmm11 [100]=Callers_xmm11 [104]=Callers_xmm12 [108]=Callers_xmm12 [112]=Callers_xmm13 [116]=Callers_xmm13 [120]=Callers_xmm14 [124]=Callers_xmm14 [128]=Callers_xmm15 [132]=Callers_xmm15 } pc offsets: 224 
                                                                                                                                             - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                             <task_queued compile_id='5' method='java.lang.String equals (Ljava/lang/Object;)Z' bytes='56' count='384' iicount='384' level='3' stamp='1.468' comment='tiered' hot_count='384'/>
                                                                                                                                             - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                             StubRoutines::md5_implCompressMB [0x00007f66f2c58140, 0x00007f66f2c587f6] (1718 bytes)
                                                                                                                                             --------------------------------------------------------------------------------
                                                                                                                                               0x00007f66f2c58140:   push   %rbp
   0.00%                                                                                                                                       0x00007f66f2c58141:   mov    %rsp,%rbp
                                                                                                                                               0x00007f66f2c58144:   push   %rbx
                                                                                                                                               0x00007f66f2c58145:   push   %rdi
   0.01%                                                                                                                                       0x00007f66f2c58146:   push   %rsi
                                                                                                                                               0x00007f66f2c58147:   push   %r15
                                                                                                                                               0x00007f66f2c58149:   sub    $0x10,%rsp
                                                                                                                                               0x00007f66f2c5814d:   mov    %rdi,%r15
                                                                                                                                               0x00007f66f2c58150:   mov    %rsi,(%rsp)
                                                                                                                                               0x00007f66f2c58154:   mov    %edx,0x8(%rsp)
                                                                                                                                               0x00007f66f2c58158:   mov    %ecx,0xc(%rsp)
                                                                                                                                               0x00007f66f2c5815c:   mov    (%rsp),%rdi
   0.00%                                                                                                                                       0x00007f66f2c58160:   mov    (%rdi),%eax
                                                                                                                                               0x00007f66f2c58162:   mov    0x4(%rdi),%ebx
                                                                                                                                               0x00007f66f2c58165:   mov    0x8(%rdi),%ecx
   0.00%                                                                                                                                       0x00007f66f2c58168:   mov    0xc(%rdi),%edx
   0.00%  ↗                                                                                                                                    0x00007f66f2c5816b:   add    $0xd76aa478,%eax
          │                                                                                                                                    0x00007f66f2c58170:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c58172:   add    (%r15),%eax
   0.36%  │                                                                                                                                    0x00007f66f2c58175:   xor    %edx,%esi
   0.00%  │                                                                                                                                    0x00007f66f2c58177:   and    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c58179:   xor    %edx,%esi
          │                                                                                                                                    0x00007f66f2c5817b:   add    %esi,%eax
   0.29%  │                                                                                                                                    0x00007f66f2c5817d:   rol    $0x7,%eax
   0.00%  │                                                                                                                                    0x00007f66f2c58180:   add    %ebx,%eax
          │                                                                                                                                    0x00007f66f2c58182:   add    $0xe8c7b756,%edx
          │                                                                                                                                    0x00007f66f2c58188:   mov    %ebx,%esi
   0.36%  │                                                                                                                                    0x00007f66f2c5818a:   add    0x4(%r15),%edx
          │                                                                                                                                    0x00007f66f2c5818e:   xor    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c58190:   and    %eax,%esi
          │                                                                                                                                    0x00007f66f2c58192:   xor    %ecx,%esi
   0.31%  │                                                                                                                                    0x00007f66f2c58194:   add    %esi,%edx
          │                                                                                                                                    0x00007f66f2c58196:   rol    $0xc,%edx
   0.32%  │                                                                                                                                    0x00007f66f2c58199:   add    %eax,%edx
   0.27%  │                                                                                                                                    0x00007f66f2c5819b:   add    $0x242070db,%ecx
   0.02%  │                                                                                                                                    0x00007f66f2c581a1:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c581a3:   add    0x8(%r15),%ecx
          │                                                                                                                                    0x00007f66f2c581a7:   xor    %ebx,%esi
   0.30%  │                                                                                                                                    0x00007f66f2c581a9:   and    %edx,%esi
   0.02%  │                                                                                                                                    0x00007f66f2c581ab:   xor    %ebx,%esi
   0.50%  │                                                                                                                                    0x00007f66f2c581ad:   add    %esi,%ecx
   0.15%  │                                                                                                                                    0x00007f66f2c581af:   rol    $0x11,%ecx
   0.25%  │                                                                                                                                    0x00007f66f2c581b2:   add    %edx,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c581b4:   add    $0xc1bdceee,%ebx
   0.01%  │                                                                                                                                    0x00007f66f2c581ba:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c581bc:   add    0xc(%r15),%ebx
          │                                                                                                                                    0x00007f66f2c581c0:   xor    %eax,%esi
   0.30%  │                                                                                                                                    0x00007f66f2c581c2:   and    %ecx,%esi
   0.00%  │                                                                                                                                    0x00007f66f2c581c4:   xor    %eax,%esi
   0.55%  │                                                                                                                                    0x00007f66f2c581c6:   add    %esi,%ebx
   0.14%  │                                                                                                                                    0x00007f66f2c581c8:   rol    $0x16,%ebx
   0.27%  │                                                                                                                                    0x00007f66f2c581cb:   add    %ecx,%ebx
   0.30%  │                                                                                                                                    0x00007f66f2c581cd:   add    $0xf57c0faf,%eax
   0.00%  │                                                                                                                                    0x00007f66f2c581d2:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c581d4:   add    0x10(%r15),%eax
   0.00%  │                                                                                                                                    0x00007f66f2c581d8:   xor    %edx,%esi
   0.29%  │                                                                                                                                    0x00007f66f2c581da:   and    %ebx,%esi
   0.00%  │                                                                                                                                    0x00007f66f2c581dc:   xor    %edx,%esi
   0.50%  │                                                                                                                                    0x00007f66f2c581de:   add    %esi,%eax
   0.12%  │                                                                                                                                    0x00007f66f2c581e0:   rol    $0x7,%eax
   0.30%  │                                                                                                                                    0x00007f66f2c581e3:   add    %ebx,%eax
   0.27%  │                                                                                                                                    0x00007f66f2c581e5:   add    $0x4787c62a,%edx
          │                                                                                                                                    0x00007f66f2c581eb:   mov    %ebx,%esi
   0.00%  │                                                                                                                                    0x00007f66f2c581ed:   add    0x14(%r15),%edx
          │                                                                                                                                    0x00007f66f2c581f1:   xor    %ecx,%esi
   0.28%  │                                                                                                                                    0x00007f66f2c581f3:   and    %eax,%esi
   0.00%  │                                                                                                                                    0x00007f66f2c581f5:   xor    %ecx,%esi
   0.54%  │                                                                                                                                    0x00007f66f2c581f7:   add    %esi,%edx
   0.16%  │                                                                                                                                    0x00007f66f2c581f9:   rol    $0xc,%edx
   0.23%  │                                                                                                                                    0x00007f66f2c581fc:   add    %eax,%edx
   0.33%  │                                                                                                                                    0x00007f66f2c581fe:   add    $0xa8304613,%ecx
   0.00%  │                                                                                                                                    0x00007f66f2c58204:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c58206:   add    0x18(%r15),%ecx
          │                                                                                                                                    0x00007f66f2c5820a:   xor    %ebx,%esi
   0.29%  │                                                                                                                                    0x00007f66f2c5820c:   and    %edx,%esi
   0.00%  │                                                                                                                                    0x00007f66f2c5820e:   xor    %ebx,%esi
   0.52%  │                                                                                                                                    0x00007f66f2c58210:   add    %esi,%ecx
   0.16%  │                                                                                                                                    0x00007f66f2c58212:   rol    $0x11,%ecx
   0.31%  │                                                                                                                                    0x00007f66f2c58215:   add    %edx,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c58217:   add    $0xfd469501,%ebx
          │                                                                                                                                    0x00007f66f2c5821d:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c5821f:   add    0x1c(%r15),%ebx
          │                                                                                                                                    0x00007f66f2c58223:   xor    %eax,%esi
   0.34%  │                                                                                                                                    0x00007f66f2c58225:   and    %ecx,%esi
   0.00%  │                                                                                                                                    0x00007f66f2c58227:   xor    %eax,%esi
   0.49%  │                                                                                                                                    0x00007f66f2c58229:   add    %esi,%ebx
   0.16%  │                                                                                                                                    0x00007f66f2c5822b:   rol    $0x16,%ebx
   0.25%  │                                                                                                                                    0x00007f66f2c5822e:   add    %ecx,%ebx
   0.29%  │                                                                                                                                    0x00007f66f2c58230:   add    $0x698098d8,%eax
          │                                                                                                                                    0x00007f66f2c58235:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c58237:   add    0x20(%r15),%eax
          │                                                                                                                                    0x00007f66f2c5823b:   xor    %edx,%esi
   0.33%  │                                                                                                                                    0x00007f66f2c5823d:   and    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c5823f:   xor    %edx,%esi
   0.52%  │                                                                                                                                    0x00007f66f2c58241:   add    %esi,%eax
   0.15%  │                                                                                                                                    0x00007f66f2c58243:   rol    $0x7,%eax
   0.28%  │                                                                                                                                    0x00007f66f2c58246:   add    %ebx,%eax
   0.32%  │                                                                                                                                    0x00007f66f2c58248:   add    $0x8b44f7af,%edx
   0.00%  │                                                                                                                                    0x00007f66f2c5824e:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c58250:   add    0x24(%r15),%edx
          │                                                                                                                                    0x00007f66f2c58254:   xor    %ecx,%esi
   0.32%  │                                                                                                                                    0x00007f66f2c58256:   and    %eax,%esi
   0.01%  │                                                                                                                                    0x00007f66f2c58258:   xor    %ecx,%esi
   0.50%  │                                                                                                                                    0x00007f66f2c5825a:   add    %esi,%edx
   0.18%  │                                                                                                                                    0x00007f66f2c5825c:   rol    $0xc,%edx
   0.28%  │                                                                                                                                    0x00007f66f2c5825f:   add    %eax,%edx
   0.33%  │                                                                                                                                    0x00007f66f2c58261:   add    $0xffff5bb1,%ecx
   0.00%  │                                                                                                                                    0x00007f66f2c58267:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c58269:   add    0x28(%r15),%ecx
          │                                                                                                                                    0x00007f66f2c5826d:   xor    %ebx,%esi
   0.32%  │                                                                                                                                    0x00007f66f2c5826f:   and    %edx,%esi
   0.01%  │                                                                                                                                    0x00007f66f2c58271:   xor    %ebx,%esi
   0.57%  │                                                                                                                                    0x00007f66f2c58273:   add    %esi,%ecx
   0.12%  │                                                                                                                                    0x00007f66f2c58275:   rol    $0x11,%ecx
   0.24%  │                                                                                                                                    0x00007f66f2c58278:   add    %edx,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c5827a:   add    $0x895cd7be,%ebx
   0.01%  │                                                                                                                                    0x00007f66f2c58280:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c58282:   add    0x2c(%r15),%ebx
          │                                                                                                                                    0x00007f66f2c58286:   xor    %eax,%esi
   0.34%  │                                                                                                                                    0x00007f66f2c58288:   and    %ecx,%esi
   0.01%  │                                                                                                                                    0x00007f66f2c5828a:   xor    %eax,%esi
   0.61%  │                                                                                                                                    0x00007f66f2c5828c:   add    %esi,%ebx
   0.08%  │                                                                                                                                    0x00007f66f2c5828e:   rol    $0x16,%ebx
   0.25%  │                                                                                                                                    0x00007f66f2c58291:   add    %ecx,%ebx
   0.30%  │                                                                                                                                    0x00007f66f2c58293:   add    $0x6b901122,%eax
   0.01%  │                                                                                                                                    0x00007f66f2c58298:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c5829a:   add    0x30(%r15),%eax
          │                                                                                                                                    0x00007f66f2c5829e:   xor    %edx,%esi
   0.28%  │                                                                                                                                    0x00007f66f2c582a0:   and    %ebx,%esi
   0.02%  │                                                                                                                                    0x00007f66f2c582a2:   xor    %edx,%esi
   0.62%  │                                                                                                                                    0x00007f66f2c582a4:   add    %esi,%eax
   0.10%  │                                                                                                                                    0x00007f66f2c582a6:   rol    $0x7,%eax
   0.21%  │                                                                                                                                    0x00007f66f2c582a9:   add    %ebx,%eax
   0.34%  │                                                                                                                                    0x00007f66f2c582ab:   add    $0xfd987193,%edx
   0.01%  │                                                                                                                                    0x00007f66f2c582b1:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c582b3:   add    0x34(%r15),%edx
          │                                                                                                                                    0x00007f66f2c582b7:   xor    %ecx,%esi
   0.32%  │                                                                                                                                    0x00007f66f2c582b9:   and    %eax,%esi
   0.02%  │                                                                                                                                    0x00007f66f2c582bb:   xor    %ecx,%esi
   0.58%  │                                                                                                                                    0x00007f66f2c582bd:   add    %esi,%edx
   0.17%  │                                                                                                                                    0x00007f66f2c582bf:   rol    $0xc,%edx
   0.22%  │                                                                                                                                    0x00007f66f2c582c2:   add    %eax,%edx
   0.30%  │                                                                                                                                    0x00007f66f2c582c4:   add    $0xa679438e,%ecx
   0.03%  │                                                                                                                                    0x00007f66f2c582ca:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c582cc:   add    0x38(%r15),%ecx
          │                                                                                                                                    0x00007f66f2c582d0:   xor    %ebx,%esi
   0.28%  │                                                                                                                                    0x00007f66f2c582d2:   and    %edx,%esi
   0.01%  │                                                                                                                                    0x00007f66f2c582d4:   xor    %ebx,%esi
   0.56%  │                                                                                                                                    0x00007f66f2c582d6:   add    %esi,%ecx
   0.16%  │                                                                                                                                    0x00007f66f2c582d8:   rol    $0x11,%ecx
   0.23%  │                                                                                                                                    0x00007f66f2c582db:   add    %edx,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c582dd:   add    $0x49b40821,%ebx
   0.02%  │                                                                                                                                    0x00007f66f2c582e3:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c582e5:   add    0x3c(%r15),%ebx
          │                                                                                                                                    0x00007f66f2c582e9:   xor    %eax,%esi
   0.37%  │                                                                                                                                    0x00007f66f2c582eb:   and    %ecx,%esi
   0.01%  │                                                                                                                                    0x00007f66f2c582ed:   xor    %eax,%esi
   0.53%  │                                                                                                                                    0x00007f66f2c582ef:   add    %esi,%ebx
   0.13%  │                                                                                                                                    0x00007f66f2c582f1:   rol    $0x16,%ebx
   0.25%  │                                                                                                                                    0x00007f66f2c582f4:   add    %ecx,%ebx
   0.24%  │                                                                                                                                    0x00007f66f2c582f6:   add    $0xf61e2562,%eax
   0.04%  │                                                                                                                                    0x00007f66f2c582fb:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c582fd:   mov    %edx,%edi
          │                                                                                                                                    0x00007f66f2c582ff:   add    0x4(%r15),%eax
   0.26%  │                                                                                                                                    0x00007f66f2c58303:   not    %esi
   0.03%  │                                                                                                                                    0x00007f66f2c58305:   and    %ebx,%edi
          │                                                                                                                                    0x00007f66f2c58307:   and    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c58309:   or     %edi,%esi
   0.32%  │                                                                                                                                    0x00007f66f2c5830b:   add    %esi,%eax
   0.30%  │                                                                                                                                    0x00007f66f2c5830d:   rol    $0x5,%eax
   0.30%  │                                                                                                                                    0x00007f66f2c58310:   add    %ebx,%eax
   0.31%  │                                                                                                                                    0x00007f66f2c58312:   add    $0xc040b340,%edx
          │                                                                                                                                    0x00007f66f2c58318:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c5831a:   mov    %ecx,%edi
          │                                                                                                                                    0x00007f66f2c5831c:   add    0x18(%r15),%edx
   0.32%  │                                                                                                                                    0x00007f66f2c58320:   not    %esi
          │                                                                                                                                    0x00007f66f2c58322:   and    %eax,%edi
          │                                                                                                                                    0x00007f66f2c58324:   and    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c58326:   or     %edi,%esi
   0.27%  │                                                                                                                                    0x00007f66f2c58328:   add    %esi,%edx
   0.30%  │                                                                                                                                    0x00007f66f2c5832a:   rol    $0x9,%edx
   0.30%  │                                                                                                                                    0x00007f66f2c5832d:   add    %eax,%edx
   0.28%  │                                                                                                                                    0x00007f66f2c5832f:   add    $0x265e5a51,%ecx
          │                                                                                                                                    0x00007f66f2c58335:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c58337:   mov    %ebx,%edi
          │                                                                                                                                    0x00007f66f2c58339:   add    0x2c(%r15),%ecx
   0.31%  │                                                                                                                                    0x00007f66f2c5833d:   not    %esi
          │                                                                                                                                    0x00007f66f2c5833f:   and    %edx,%edi
          │                                                                                                                                    0x00007f66f2c58341:   and    %eax,%esi
          │                                                                                                                                    0x00007f66f2c58343:   or     %edi,%esi
   0.29%  │                                                                                                                                    0x00007f66f2c58345:   add    %esi,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c58347:   rol    $0xe,%ecx
   0.35%  │                                                                                                                                    0x00007f66f2c5834a:   add    %edx,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c5834c:   add    $0xe9b6c7aa,%ebx
          │                                                                                                                                    0x00007f66f2c58352:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c58354:   mov    %eax,%edi
          │                                                                                                                                    0x00007f66f2c58356:   add    (%r15),%ebx
   0.31%  │                                                                                                                                    0x00007f66f2c58359:   not    %esi
          │                                                                                                                                    0x00007f66f2c5835b:   and    %ecx,%edi
          │                                                                                                                                    0x00007f66f2c5835d:   and    %edx,%esi
          │                                                                                                                                    0x00007f66f2c5835f:   or     %edi,%esi
   0.32%  │                                                                                                                                    0x00007f66f2c58361:   add    %esi,%ebx
   0.32%  │                                                                                                                                    0x00007f66f2c58363:   rol    $0x14,%ebx
   0.33%  │                                                                                                                                    0x00007f66f2c58366:   add    %ecx,%ebx
   0.25%  │                                                                                                                                    0x00007f66f2c58368:   add    $0xd62f105d,%eax
          │                                                                                                                                    0x00007f66f2c5836d:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c5836f:   mov    %edx,%edi
          │                                                                                                                                    0x00007f66f2c58371:   add    0x14(%r15),%eax
   0.29%  │                                                                                                                                    0x00007f66f2c58375:   not    %esi
          │                                                                                                                                    0x00007f66f2c58377:   and    %ebx,%edi
          │                                                                                                                                    0x00007f66f2c58379:   and    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c5837b:   or     %edi,%esi
   0.34%  │                                                                                                                                    0x00007f66f2c5837d:   add    %esi,%eax
   0.30%  │                                                                                                                                    0x00007f66f2c5837f:   rol    $0x5,%eax
   0.29%  │                                                                                                                                    0x00007f66f2c58382:   add    %ebx,%eax
   0.28%  │                                                                                                                                    0x00007f66f2c58384:   add    $0x2441453,%edx
          │                                                                                                                                    0x00007f66f2c5838a:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c5838c:   mov    %ecx,%edi
          │                                                                                                                                    0x00007f66f2c5838e:   add    0x28(%r15),%edx
   0.36%  │                                                                                                                                    0x00007f66f2c58392:   not    %esi
          │                                                                                                                                    0x00007f66f2c58394:   and    %eax,%edi
          │                                                                                                                                    0x00007f66f2c58396:   and    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c58398:   or     %edi,%esi
   0.34%  │                                                                                                                                    0x00007f66f2c5839a:   add    %esi,%edx
   0.32%  │                                                                                                                                    0x00007f66f2c5839c:   rol    $0x9,%edx
   0.33%  │                                                                                                                                    0x00007f66f2c5839f:   add    %eax,%edx
   0.34%  │                                                                                                                                    0x00007f66f2c583a1:   add    $0xd8a1e681,%ecx
          │                                                                                                                                    0x00007f66f2c583a7:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c583a9:   mov    %ebx,%edi
          │                                                                                                                                    0x00007f66f2c583ab:   add    0x3c(%r15),%ecx
   0.35%  │                                                                                                                                    0x00007f66f2c583af:   not    %esi
          │                                                                                                                                    0x00007f66f2c583b1:   and    %edx,%edi
          │                                                                                                                                    0x00007f66f2c583b3:   and    %eax,%esi
          │                                                                                                                                    0x00007f66f2c583b5:   or     %edi,%esi
   0.31%  │                                                                                                                                    0x00007f66f2c583b7:   add    %esi,%ecx
   0.28%  │                                                                                                                                    0x00007f66f2c583b9:   rol    $0xe,%ecx
   0.28%  │                                                                                                                                    0x00007f66f2c583bc:   add    %edx,%ecx
   0.30%  │                                                                                                                                    0x00007f66f2c583be:   add    $0xe7d3fbc8,%ebx
          │                                                                                                                                    0x00007f66f2c583c4:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c583c6:   mov    %eax,%edi
          │                                                                                                                                    0x00007f66f2c583c8:   add    0x10(%r15),%ebx
   0.37%  │                                                                                                                                    0x00007f66f2c583cc:   not    %esi
          │                                                                                                                                    0x00007f66f2c583ce:   and    %ecx,%edi
          │                                                                                                                                    0x00007f66f2c583d0:   and    %edx,%esi
          │                                                                                                                                    0x00007f66f2c583d2:   or     %edi,%esi
   0.39%  │                                                                                                                                    0x00007f66f2c583d4:   add    %esi,%ebx
   0.33%  │                                                                                                                                    0x00007f66f2c583d6:   rol    $0x14,%ebx
   0.32%  │                                                                                                                                    0x00007f66f2c583d9:   add    %ecx,%ebx
   0.33%  │                                                                                                                                    0x00007f66f2c583db:   add    $0x21e1cde6,%eax
          │                                                                                                                                    0x00007f66f2c583e0:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c583e2:   mov    %edx,%edi
          │                                                                                                                                    0x00007f66f2c583e4:   add    0x24(%r15),%eax
   0.32%  │                                                                                                                                    0x00007f66f2c583e8:   not    %esi
          │                                                                                                                                    0x00007f66f2c583ea:   and    %ebx,%edi
          │                                                                                                                                    0x00007f66f2c583ec:   and    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c583ee:   or     %edi,%esi
   0.32%  │                                                                                                                                    0x00007f66f2c583f0:   add    %esi,%eax
   0.28%  │                                                                                                                                    0x00007f66f2c583f2:   rol    $0x5,%eax
   0.33%  │                                                                                                                                    0x00007f66f2c583f5:   add    %ebx,%eax
   0.31%  │                                                                                                                                    0x00007f66f2c583f7:   add    $0xc33707d6,%edx
          │                                                                                                                                    0x00007f66f2c583fd:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c583ff:   mov    %ecx,%edi
          │                                                                                                                                    0x00007f66f2c58401:   add    0x38(%r15),%edx
   0.29%  │                                                                                                                                    0x00007f66f2c58405:   not    %esi
          │                                                                                                                                    0x00007f66f2c58407:   and    %eax,%edi
          │                                                                                                                                    0x00007f66f2c58409:   and    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c5840b:   or     %edi,%esi
   0.33%  │                                                                                                                                    0x00007f66f2c5840d:   add    %esi,%edx
   0.32%  │                                                                                                                                    0x00007f66f2c5840f:   rol    $0x9,%edx
   0.36%  │                                                                                                                                    0x00007f66f2c58412:   add    %eax,%edx
   0.31%  │                                                                                                                                    0x00007f66f2c58414:   add    $0xf4d50d87,%ecx
          │                                                                                                                                    0x00007f66f2c5841a:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c5841c:   mov    %ebx,%edi
          │                                                                                                                                    0x00007f66f2c5841e:   add    0xc(%r15),%ecx
   0.33%  │                                                                                                                                    0x00007f66f2c58422:   not    %esi
          │                                                                                                                                    0x00007f66f2c58424:   and    %edx,%edi
          │                                                                                                                                    0x00007f66f2c58426:   and    %eax,%esi
          │                                                                                                                                    0x00007f66f2c58428:   or     %edi,%esi
   0.28%  │                                                                                                                                    0x00007f66f2c5842a:   add    %esi,%ecx
   0.33%  │                                                                                                                                    0x00007f66f2c5842c:   rol    $0xe,%ecx
   0.35%  │                                                                                                                                    0x00007f66f2c5842f:   add    %edx,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c58431:   add    $0x455a14ed,%ebx
          │                                                                                                                                    0x00007f66f2c58437:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c58439:   mov    %eax,%edi
          │                                                                                                                                    0x00007f66f2c5843b:   add    0x20(%r15),%ebx
   0.32%  │                                                                                                                                    0x00007f66f2c5843f:   not    %esi
          │                                                                                                                                    0x00007f66f2c58441:   and    %ecx,%edi
          │                                                                                                                                    0x00007f66f2c58443:   and    %edx,%esi
          │                                                                                                                                    0x00007f66f2c58445:   or     %edi,%esi
   0.31%  │                                                                                                                                    0x00007f66f2c58447:   add    %esi,%ebx
   0.34%  │                                                                                                                                    0x00007f66f2c58449:   rol    $0x14,%ebx
   0.32%  │                                                                                                                                    0x00007f66f2c5844c:   add    %ecx,%ebx
   0.27%  │                                                                                                                                    0x00007f66f2c5844e:   add    $0xa9e3e905,%eax
          │                                                                                                                                    0x00007f66f2c58453:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c58455:   mov    %edx,%edi
          │                                                                                                                                    0x00007f66f2c58457:   add    0x34(%r15),%eax
   0.32%  │                                                                                                                                    0x00007f66f2c5845b:   not    %esi
          │                                                                                                                                    0x00007f66f2c5845d:   and    %ebx,%edi
          │                                                                                                                                    0x00007f66f2c5845f:   and    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c58461:   or     %edi,%esi
   0.32%  │                                                                                                                                    0x00007f66f2c58463:   add    %esi,%eax
   0.30%  │                                                                                                                                    0x00007f66f2c58465:   rol    $0x5,%eax
   0.31%  │                                                                                                                                    0x00007f66f2c58468:   add    %ebx,%eax
   0.33%  │                                                                                                                                    0x00007f66f2c5846a:   add    $0xfcefa3f8,%edx
          │                                                                                                                                    0x00007f66f2c58470:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c58472:   mov    %ecx,%edi
          │                                                                                                                                    0x00007f66f2c58474:   add    0x8(%r15),%edx
   0.33%  │                                                                                                                                    0x00007f66f2c58478:   not    %esi
          │                                                                                                                                    0x00007f66f2c5847a:   and    %eax,%edi
          │                                                                                                                                    0x00007f66f2c5847c:   and    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c5847e:   or     %edi,%esi
   0.31%  │                                                                                                                                    0x00007f66f2c58480:   add    %esi,%edx
   0.32%  │                                                                                                                                    0x00007f66f2c58482:   rol    $0x9,%edx
   0.32%  │                                                                                                                                    0x00007f66f2c58485:   add    %eax,%edx
   0.34%  │                                                                                                                                    0x00007f66f2c58487:   add    $0x676f02d9,%ecx
          │                                                                                                                                    0x00007f66f2c5848d:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c5848f:   mov    %ebx,%edi
          │                                                                                                                                    0x00007f66f2c58491:   add    0x1c(%r15),%ecx
   0.31%  │                                                                                                                                    0x00007f66f2c58495:   not    %esi
          │                                                                                                                                    0x00007f66f2c58497:   and    %edx,%edi
          │                                                                                                                                    0x00007f66f2c58499:   and    %eax,%esi
          │                                                                                                                                    0x00007f66f2c5849b:   or     %edi,%esi
   0.32%  │                                                                                                                                    0x00007f66f2c5849d:   add    %esi,%ecx
   0.31%  │                                                                                                                                    0x00007f66f2c5849f:   rol    $0xe,%ecx
   0.34%  │                                                                                                                                    0x00007f66f2c584a2:   add    %edx,%ecx
   0.37%  │                                                                                                                                    0x00007f66f2c584a4:   add    $0x8d2a4c8a,%ebx
          │                                                                                                                                    0x00007f66f2c584aa:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c584ac:   mov    %eax,%edi
          │                                                                                                                                    0x00007f66f2c584ae:   add    0x30(%r15),%ebx
   0.29%  │                                                                                                                                    0x00007f66f2c584b2:   not    %esi
          │                                                                                                                                    0x00007f66f2c584b4:   and    %ecx,%edi
          │                                                                                                                                    0x00007f66f2c584b6:   and    %edx,%esi
          │                                                                                                                                    0x00007f66f2c584b8:   or     %edi,%esi
   0.36%  │                                                                                                                                    0x00007f66f2c584ba:   add    %esi,%ebx
   0.38%  │                                                                                                                                    0x00007f66f2c584bc:   rol    $0x14,%ebx
   0.31%  │                                                                                                                                    0x00007f66f2c584bf:   add    %ecx,%ebx
   0.31%  │                                                                                                                                    0x00007f66f2c584c1:   add    $0xfffa3942,%eax
          │                                                                                                                                    0x00007f66f2c584c6:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c584c8:   add    0x14(%r15),%eax
          │                                                                                                                                    0x00007f66f2c584cc:   xor    %edx,%esi
   0.31%  │                                                                                                                                    0x00007f66f2c584ce:   xor    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c584d0:   add    %esi,%eax
   0.32%  │                                                                                                                                    0x00007f66f2c584d2:   rol    $0x4,%eax
   0.31%  │                                                                                                                                    0x00007f66f2c584d5:   add    %ebx,%eax
   0.26%  │                                                                                                                                    0x00007f66f2c584d7:   add    $0x8771f681,%edx
          │                                                                                                                                    0x00007f66f2c584dd:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c584df:   add    0x20(%r15),%edx
          │                                                                                                                                    0x00007f66f2c584e3:   xor    %ecx,%esi
   0.33%  │                                                                                                                                    0x00007f66f2c584e5:   xor    %eax,%esi
          │                                                                                                                                    0x00007f66f2c584e7:   add    %esi,%edx
   0.29%  │                                                                                                                                    0x00007f66f2c584e9:   rol    $0xb,%edx
   0.33%  │                                                                                                                                    0x00007f66f2c584ec:   add    %eax,%edx
   0.36%  │                                                                                                                                    0x00007f66f2c584ee:   add    $0x6d9d6122,%ecx
          │                                                                                                                                    0x00007f66f2c584f4:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c584f6:   add    0x2c(%r15),%ecx
          │                                                                                                                                    0x00007f66f2c584fa:   xor    %ebx,%esi
   0.35%  │                                                                                                                                    0x00007f66f2c584fc:   xor    %edx,%esi
          │                                                                                                                                    0x00007f66f2c584fe:   add    %esi,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c58500:   rol    $0x10,%ecx
   0.34%  │                                                                                                                                    0x00007f66f2c58503:   add    %edx,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c58505:   add    $0xfde5380c,%ebx
          │                                                                                                                                    0x00007f66f2c5850b:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c5850d:   add    0x38(%r15),%ebx
          │                                                                                                                                    0x00007f66f2c58511:   xor    %eax,%esi
   0.31%  │                                                                                                                                    0x00007f66f2c58513:   xor    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c58515:   add    %esi,%ebx
   0.29%  │                                                                                                                                    0x00007f66f2c58517:   rol    $0x17,%ebx
   0.29%  │                                                                                                                                    0x00007f66f2c5851a:   add    %ecx,%ebx
   0.34%  │                                                                                                                                    0x00007f66f2c5851c:   add    $0xa4beea44,%eax
          │                                                                                                                                    0x00007f66f2c58521:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c58523:   add    0x4(%r15),%eax
          │                                                                                                                                    0x00007f66f2c58527:   xor    %edx,%esi
   0.34%  │                                                                                                                                    0x00007f66f2c58529:   xor    %ebx,%esi
   0.00%  │                                                                                                                                    0x00007f66f2c5852b:   add    %esi,%eax
   0.30%  │                                                                                                                                    0x00007f66f2c5852d:   rol    $0x4,%eax
   0.35%  │                                                                                                                                    0x00007f66f2c58530:   add    %ebx,%eax
   0.32%  │                                                                                                                                    0x00007f66f2c58532:   add    $0x4bdecfa9,%edx
          │                                                                                                                                    0x00007f66f2c58538:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c5853a:   add    0x10(%r15),%edx
          │                                                                                                                                    0x00007f66f2c5853e:   xor    %ecx,%esi
   0.32%  │                                                                                                                                    0x00007f66f2c58540:   xor    %eax,%esi
          │                                                                                                                                    0x00007f66f2c58542:   add    %esi,%edx
   0.34%  │                                                                                                                                    0x00007f66f2c58544:   rol    $0xb,%edx
   0.28%  │                                                                                                                                    0x00007f66f2c58547:   add    %eax,%edx
   0.35%  │                                                                                                                                    0x00007f66f2c58549:   add    $0xf6bb4b60,%ecx
          │                                                                                                                                    0x00007f66f2c5854f:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c58551:   add    0x1c(%r15),%ecx
          │                                                                                                                                    0x00007f66f2c58555:   xor    %ebx,%esi
   0.32%  │                                                                                                                                    0x00007f66f2c58557:   xor    %edx,%esi
          │                                                                                                                                    0x00007f66f2c58559:   add    %esi,%ecx
   0.30%  │                                                                                                                                    0x00007f66f2c5855b:   rol    $0x10,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c5855e:   add    %edx,%ecx
   0.35%  │                                                                                                                                    0x00007f66f2c58560:   add    $0xbebfbc70,%ebx
          │                                                                                                                                    0x00007f66f2c58566:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c58568:   add    0x28(%r15),%ebx
          │                                                                                                                                    0x00007f66f2c5856c:   xor    %eax,%esi
   0.29%  │                                                                                                                                    0x00007f66f2c5856e:   xor    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c58570:   add    %esi,%ebx
   0.33%  │                                                                                                                                    0x00007f66f2c58572:   rol    $0x17,%ebx
   0.32%  │                                                                                                                                    0x00007f66f2c58575:   add    %ecx,%ebx
   0.33%  │                                                                                                                                    0x00007f66f2c58577:   add    $0x289b7ec6,%eax
          │                                                                                                                                    0x00007f66f2c5857c:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c5857e:   add    0x34(%r15),%eax
          │                                                                                                                                    0x00007f66f2c58582:   xor    %edx,%esi
   0.31%  │                                                                                                                                    0x00007f66f2c58584:   xor    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c58586:   add    %esi,%eax
   0.35%  │                                                                                                                                    0x00007f66f2c58588:   rol    $0x4,%eax
   0.33%  │                                                                                                                                    0x00007f66f2c5858b:   add    %ebx,%eax
   0.28%  │                                                                                                                                    0x00007f66f2c5858d:   add    $0xeaa127fa,%edx
          │                                                                                                                                    0x00007f66f2c58593:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c58595:   add    (%r15),%edx
          │                                                                                                                                    0x00007f66f2c58598:   xor    %ecx,%esi
   0.37%  │                                                                                                                                    0x00007f66f2c5859a:   xor    %eax,%esi
          │                                                                                                                                    0x00007f66f2c5859c:   add    %esi,%edx
   0.28%  │                                                                                                                                    0x00007f66f2c5859e:   rol    $0xb,%edx
   0.32%  │                                                                                                                                    0x00007f66f2c585a1:   add    %eax,%edx
   0.32%  │                                                                                                                                    0x00007f66f2c585a3:   add    $0xd4ef3085,%ecx
          │                                                                                                                                    0x00007f66f2c585a9:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c585ab:   add    0xc(%r15),%ecx
          │                                                                                                                                    0x00007f66f2c585af:   xor    %ebx,%esi
   0.28%  │                                                                                                                                    0x00007f66f2c585b1:   xor    %edx,%esi
   0.00%  │                                                                                                                                    0x00007f66f2c585b3:   add    %esi,%ecx
   0.31%  │                                                                                                                                    0x00007f66f2c585b5:   rol    $0x10,%ecx
   0.33%  │                                                                                                                                    0x00007f66f2c585b8:   add    %edx,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c585ba:   add    $0x4881d05,%ebx
          │                                                                                                                                    0x00007f66f2c585c0:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c585c2:   add    0x18(%r15),%ebx
          │                                                                                                                                    0x00007f66f2c585c6:   xor    %eax,%esi
   0.31%  │                                                                                                                                    0x00007f66f2c585c8:   xor    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c585ca:   add    %esi,%ebx
   0.36%  │                                                                                                                                    0x00007f66f2c585cc:   rol    $0x17,%ebx
   0.29%  │                                                                                                                                    0x00007f66f2c585cf:   add    %ecx,%ebx
   0.33%  │                                                                                                                                    0x00007f66f2c585d1:   add    $0xd9d4d039,%eax
          │                                                                                                                                    0x00007f66f2c585d6:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c585d8:   add    0x24(%r15),%eax
          │                                                                                                                                    0x00007f66f2c585dc:   xor    %edx,%esi
   0.32%  │                                                                                                                                    0x00007f66f2c585de:   xor    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c585e0:   add    %esi,%eax
   0.27%  │                                                                                                                                    0x00007f66f2c585e2:   rol    $0x4,%eax
   0.30%  │                                                                                                                                    0x00007f66f2c585e5:   add    %ebx,%eax
   0.30%  │                                                                                                                                    0x00007f66f2c585e7:   add    $0xe6db99e5,%edx
          │                                                                                                                                    0x00007f66f2c585ed:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c585ef:   add    0x30(%r15),%edx
          │                                                                                                                                    0x00007f66f2c585f3:   xor    %ecx,%esi
   0.33%  │                                                                                                                                    0x00007f66f2c585f5:   xor    %eax,%esi
          │                                                                                                                                    0x00007f66f2c585f7:   add    %esi,%edx
   0.33%  │                                                                                                                                    0x00007f66f2c585f9:   rol    $0xb,%edx
   0.33%  │                                                                                                                                    0x00007f66f2c585fc:   add    %eax,%edx
   0.32%  │                                                                                                                                    0x00007f66f2c585fe:   add    $0x1fa27cf8,%ecx
          │                                                                                                                                    0x00007f66f2c58604:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c58606:   add    0x3c(%r15),%ecx
          │                                                                                                                                    0x00007f66f2c5860a:   xor    %ebx,%esi
   0.35%  │                                                                                                                                    0x00007f66f2c5860c:   xor    %edx,%esi
          │                                                                                                                                    0x00007f66f2c5860e:   add    %esi,%ecx
   0.30%  │                                                                                                                                    0x00007f66f2c58610:   rol    $0x10,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c58613:   add    %edx,%ecx
   0.31%  │                                                                                                                                    0x00007f66f2c58615:   add    $0xc4ac5665,%ebx
          │                                                                                                                                    0x00007f66f2c5861b:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c5861d:   add    0x8(%r15),%ebx
          │                                                                                                                                    0x00007f66f2c58621:   xor    %eax,%esi
   0.31%  │                                                                                                                                    0x00007f66f2c58623:   xor    %ecx,%esi
   0.00%  │                                                                                                                                    0x00007f66f2c58625:   add    %esi,%ebx
   0.29%  │                                                                                                                                    0x00007f66f2c58627:   rol    $0x17,%ebx
   0.28%  │                                                                                                                                    0x00007f66f2c5862a:   add    %ecx,%ebx
   0.34%  │                                                                                                                                    0x00007f66f2c5862c:   add    $0xf4292244,%eax
          │                                                                                                                                    0x00007f66f2c58631:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c58633:   not    %esi
          │                                                                                                                                    0x00007f66f2c58635:   add    (%r15),%eax
   0.46%  │                                                                                                                                    0x00007f66f2c58638:   or     %ebx,%esi
          │                                                                                                                                    0x00007f66f2c5863a:   xor    %ecx,%esi
   0.16%  │                                                                                                                                    0x00007f66f2c5863c:   add    %esi,%eax
   0.31%  │                                                                                                                                    0x00007f66f2c5863e:   rol    $0x6,%eax
   0.33%  │                                                                                                                                    0x00007f66f2c58641:   add    %ebx,%eax
   0.31%  │                                                                                                                                    0x00007f66f2c58643:   add    $0x432aff97,%edx
          │                                                                                                                                    0x00007f66f2c58649:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c5864b:   not    %esi
          │                                                                                                                                    0x00007f66f2c5864d:   add    0x1c(%r15),%edx
   0.49%  │                                                                                                                                    0x00007f66f2c58651:   or     %eax,%esi
          │                                                                                                                                    0x00007f66f2c58653:   xor    %ebx,%esi
   0.15%  │                                                                                                                                    0x00007f66f2c58655:   add    %esi,%edx
   0.33%  │                                                                                                                                    0x00007f66f2c58657:   rol    $0xa,%edx
   0.30%  │                                                                                                                                    0x00007f66f2c5865a:   add    %eax,%edx
   0.29%  │                                                                                                                                    0x00007f66f2c5865c:   add    $0xab9423a7,%ecx
          │                                                                                                                                    0x00007f66f2c58662:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c58664:   not    %esi
          │                                                                                                                                    0x00007f66f2c58666:   add    0x38(%r15),%ecx
   0.43%  │                                                                                                                                    0x00007f66f2c5866a:   or     %edx,%esi
          │                                                                                                                                    0x00007f66f2c5866c:   xor    %eax,%esi
   0.16%  │                                                                                                                                    0x00007f66f2c5866e:   add    %esi,%ecx
   0.30%  │                                                                                                                                    0x00007f66f2c58670:   rol    $0xf,%ecx
   0.33%  │                                                                                                                                    0x00007f66f2c58673:   add    %edx,%ecx
   0.30%  │                                                                                                                                    0x00007f66f2c58675:   add    $0xfc93a039,%ebx
          │                                                                                                                                    0x00007f66f2c5867b:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c5867d:   not    %esi
          │                                                                                                                                    0x00007f66f2c5867f:   add    0x14(%r15),%ebx
   0.50%  │                                                                                                                                    0x00007f66f2c58683:   or     %ecx,%esi
          │                                                                                                                                    0x00007f66f2c58685:   xor    %edx,%esi
   0.15%  │                                                                                                                                    0x00007f66f2c58687:   add    %esi,%ebx
   0.31%  │                                                                                                                                    0x00007f66f2c58689:   rol    $0x15,%ebx
   0.28%  │                                                                                                                                    0x00007f66f2c5868c:   add    %ecx,%ebx
   0.33%  │                                                                                                                                    0x00007f66f2c5868e:   add    $0x655b59c3,%eax
          │                                                                                                                                    0x00007f66f2c58693:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c58695:   not    %esi
          │                                                                                                                                    0x00007f66f2c58697:   add    0x30(%r15),%eax
   0.48%  │                                                                                                                                    0x00007f66f2c5869b:   or     %ebx,%esi
          │                                                                                                                                    0x00007f66f2c5869d:   xor    %ecx,%esi
   0.18%  │                                                                                                                                    0x00007f66f2c5869f:   add    %esi,%eax
   0.30%  │                                                                                                                                    0x00007f66f2c586a1:   rol    $0x6,%eax
   0.34%  │                                                                                                                                    0x00007f66f2c586a4:   add    %ebx,%eax
   0.33%  │                                                                                                                                    0x00007f66f2c586a6:   add    $0x8f0ccc92,%edx
          │                                                                                                                                    0x00007f66f2c586ac:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c586ae:   not    %esi
          │                                                                                                                                    0x00007f66f2c586b0:   add    0xc(%r15),%edx
   0.45%  │                                                                                                                                    0x00007f66f2c586b4:   or     %eax,%esi
          │                                                                                                                                    0x00007f66f2c586b6:   xor    %ebx,%esi
   0.17%  │                                                                                                                                    0x00007f66f2c586b8:   add    %esi,%edx
   0.37%  │                                                                                                                                    0x00007f66f2c586ba:   rol    $0xa,%edx
   0.31%  │                                                                                                                                    0x00007f66f2c586bd:   add    %eax,%edx
   0.31%  │                                                                                                                                    0x00007f66f2c586bf:   add    $0xffeff47d,%ecx
          │                                                                                                                                    0x00007f66f2c586c5:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c586c7:   not    %esi
          │                                                                                                                                    0x00007f66f2c586c9:   add    0x28(%r15),%ecx
   0.50%  │                                                                                                                                    0x00007f66f2c586cd:   or     %edx,%esi
          │                                                                                                                                    0x00007f66f2c586cf:   xor    %eax,%esi
   0.16%  │                                                                                                                                    0x00007f66f2c586d1:   add    %esi,%ecx
   0.33%  │                                                                                                                                    0x00007f66f2c586d3:   rol    $0xf,%ecx
   0.30%  │                                                                                                                                    0x00007f66f2c586d6:   add    %edx,%ecx
   0.35%  │                                                                                                                                    0x00007f66f2c586d8:   add    $0x85845dd1,%ebx
          │                                                                                                                                    0x00007f66f2c586de:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c586e0:   not    %esi
          │                                                                                                                                    0x00007f66f2c586e2:   add    0x4(%r15),%ebx
   0.48%  │                                                                                                                                    0x00007f66f2c586e6:   or     %ecx,%esi
          │                                                                                                                                    0x00007f66f2c586e8:   xor    %edx,%esi
   0.13%  │                                                                                                                                    0x00007f66f2c586ea:   add    %esi,%ebx
   0.31%  │                                                                                                                                    0x00007f66f2c586ec:   rol    $0x15,%ebx
   0.30%  │                                                                                                                                    0x00007f66f2c586ef:   add    %ecx,%ebx
   0.33%  │                                                                                                                                    0x00007f66f2c586f1:   add    $0x6fa87e4f,%eax
          │                                                                                                                                    0x00007f66f2c586f6:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c586f8:   not    %esi
          │                                                                                                                                    0x00007f66f2c586fa:   add    0x20(%r15),%eax
   0.61%  │                                                                                                                                    0x00007f66f2c586fe:   or     %ebx,%esi
          │                                                                                                                                    0x00007f66f2c58700:   xor    %ecx,%esi
   0.10%  │                                                                                                                                    0x00007f66f2c58702:   add    %esi,%eax
   0.34%  │                                                                                                                                    0x00007f66f2c58704:   rol    $0x6,%eax
   0.32%  │                                                                                                                                    0x00007f66f2c58707:   add    %ebx,%eax
   0.31%  │                                                                                                                                    0x00007f66f2c58709:   add    $0xfe2ce6e0,%edx
          │                                                                                                                                    0x00007f66f2c5870f:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c58711:   not    %esi
          │                                                                                                                                    0x00007f66f2c58713:   add    0x3c(%r15),%edx
   0.53%  │                                                                                                                                    0x00007f66f2c58717:   or     %eax,%esi
          │                                                                                                                                    0x00007f66f2c58719:   xor    %ebx,%esi
   0.12%  │                                                                                                                                    0x00007f66f2c5871b:   add    %esi,%edx
   0.30%  │                                                                                                                                    0x00007f66f2c5871d:   rol    $0xa,%edx
   0.31%  │                                                                                                                                    0x00007f66f2c58720:   add    %eax,%edx
   0.36%  │                                                                                                                                    0x00007f66f2c58722:   add    $0xa3014314,%ecx
          │                                                                                                                                    0x00007f66f2c58728:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c5872a:   not    %esi
          │                                                                                                                                    0x00007f66f2c5872c:   add    0x18(%r15),%ecx
   0.50%  │                                                                                                                                    0x00007f66f2c58730:   or     %edx,%esi
          │                                                                                                                                    0x00007f66f2c58732:   xor    %eax,%esi
   0.12%  │                                                                                                                                    0x00007f66f2c58734:   add    %esi,%ecx
   0.25%  │                                                                                                                                    0x00007f66f2c58736:   rol    $0xf,%ecx
   0.30%  │                                                                                                                                    0x00007f66f2c58739:   add    %edx,%ecx
   0.32%  │                                                                                                                                    0x00007f66f2c5873b:   add    $0x4e0811a1,%ebx
          │                                                                                                                                    0x00007f66f2c58741:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c58743:   not    %esi
          │                                                                                                                                    0x00007f66f2c58745:   add    0x34(%r15),%ebx
   0.52%  │                                                                                                                                    0x00007f66f2c58749:   or     %ecx,%esi
          │                                                                                                                                    0x00007f66f2c5874b:   xor    %edx,%esi
   0.10%  │                                                                                                                                    0x00007f66f2c5874d:   add    %esi,%ebx
   0.31%  │                                                                                                                                    0x00007f66f2c5874f:   rol    $0x15,%ebx
   0.31%  │                                                                                                                                    0x00007f66f2c58752:   add    %ecx,%ebx
   0.34%  │                                                                                                                                    0x00007f66f2c58754:   add    $0xf7537e82,%eax
          │                                                                                                                                    0x00007f66f2c58759:   mov    %edx,%esi
          │                                                                                                                                    0x00007f66f2c5875b:   not    %esi
          │                                                                                                                                    0x00007f66f2c5875d:   add    0x10(%r15),%eax
   0.46%  │                                                                                                                                    0x00007f66f2c58761:   or     %ebx,%esi
          │                                                                                                                                    0x00007f66f2c58763:   xor    %ecx,%esi
   0.16%  │                                                                                                                                    0x00007f66f2c58765:   add    %esi,%eax
   0.34%  │                                                                                                                                    0x00007f66f2c58767:   rol    $0x6,%eax
   0.34%  │                                                                                                                                    0x00007f66f2c5876a:   add    %ebx,%eax
   0.28%  │                                                                                                                                    0x00007f66f2c5876c:   add    $0xbd3af235,%edx
          │                                                                                                                                    0x00007f66f2c58772:   mov    %ecx,%esi
          │                                                                                                                                    0x00007f66f2c58774:   not    %esi
          │                                                                                                                                    0x00007f66f2c58776:   add    0x2c(%r15),%edx
   0.52%  │                                                                                                                                    0x00007f66f2c5877a:   or     %eax,%esi
          │                                                                                                                                    0x00007f66f2c5877c:   xor    %ebx,%esi
   0.12%  │                                                                                                                                    0x00007f66f2c5877e:   add    %esi,%edx
   0.33%  │                                                                                                                                    0x00007f66f2c58780:   rol    $0xa,%edx
   0.29%  │                                                                                                                                    0x00007f66f2c58783:   add    %eax,%edx
   0.32%  │                                                                                                                                    0x00007f66f2c58785:   add    $0x2ad7d2bb,%ecx
          │                                                                                                                                    0x00007f66f2c5878b:   mov    %ebx,%esi
          │                                                                                                                                    0x00007f66f2c5878d:   not    %esi
          │                                                                                                                                    0x00007f66f2c5878f:   add    0x8(%r15),%ecx
   0.48%  │                                                                                                                                    0x00007f66f2c58793:   or     %edx,%esi
          │                                                                                                                                    0x00007f66f2c58795:   xor    %eax,%esi
   0.16%  │                                                                                                                                    0x00007f66f2c58797:   add    %esi,%ecx
   0.30%  │                                                                                                                                    0x00007f66f2c58799:   rol    $0xf,%ecx
   0.35%  │                                                                                                                                    0x00007f66f2c5879c:   add    %edx,%ecx
   0.34%  │                                                                                                                                    0x00007f66f2c5879e:   add    $0xeb86d391,%ebx
          │                                                                                                                                    0x00007f66f2c587a4:   mov    %eax,%esi
          │                                                                                                                                    0x00007f66f2c587a6:   not    %esi
          │                                                                                                                                    0x00007f66f2c587a8:   add    0x24(%r15),%ebx
   0.44%  │                                                                                                                                    0x00007f66f2c587ac:   or     %ecx,%esi
          │                                                                                                                                    0x00007f66f2c587ae:   xor    %edx,%esi
   0.17%  │                                                                                                                                    0x00007f66f2c587b0:   add    %esi,%ebx
   0.37%  │                                                                                                                                    0x00007f66f2c587b2:   rol    $0x15,%ebx
   0.28%  │                                                                                                                                    0x00007f66f2c587b5:   add    %ecx,%ebx
   0.34%  │                                                                                                                                    0x00007f66f2c587b7:   mov    (%rsp),%rdi
          │                                                                                                                                    0x00007f66f2c587bb:   add    (%rdi),%eax
          │                                                                                                                                    0x00007f66f2c587bd:   mov    %eax,(%rdi)
          │                                                                                                                                    0x00007f66f2c587bf:   add    0x4(%rdi),%ebx
   0.31%  │                                                                                                                                    0x00007f66f2c587c2:   mov    %ebx,0x4(%rdi)
   0.77%  │                                                                                                                                    0x00007f66f2c587c5:   add    0x8(%rdi),%ecx
          │                                                                                                                                    0x00007f66f2c587c8:   mov    %ecx,0x8(%rdi)
          │                                                                                                                                    0x00007f66f2c587cb:   add    0xc(%rdi),%edx
          │                                                                                                                                    0x00007f66f2c587ce:   mov    %edx,0xc(%rdi)
   0.26%  │                                                                                                                                    0x00007f66f2c587d1:   add    $0x40,%r15
          │                                                                                                                                    0x00007f66f2c587d5:   addl   $0x40,0x8(%rsp)
          │                                                                                                                                    0x00007f66f2c587da:   mov    0x8(%rsp),%esi
   0.36%  │                                                                                                                                    0x00007f66f2c587de:   cmp    0xc(%rsp),%esi
          ╰                                                                                                                                    0x00007f66f2c587e2:   jbe    0x00007f66f2c5816b
                                                                                                                                               0x00007f66f2c587e8:   mov    %rsi,%rax
                                                                                                                                               0x00007f66f2c587eb:   add    $0x10,%rsp
   0.00%                                                                                                                                       0x00007f66f2c587ef:   pop    %r15
   0.02%                                                                                                                                       0x00007f66f2c587f1:   pop    %rsi
                                                                                                                                               0x00007f66f2c587f2:   pop    %rdi
                                                                                                                                               0x00007f66f2c587f3:   pop    %rbx
                                                                                                                                               0x00007f66f2c587f4:   leave  
                                                                                                                                               0x00007f66f2c587f5:   ret    
                                                                                                                                             --------------------------------------------------------------------------------
                                                                                                                                             - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                             - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                             Decoding RuntimeStub - throw_div0_exception Runtime1 stub 0x00007f66f2cf4910
                                                                                                                                             --------------------------------------------------------------------------------
                                                                                                                                               0x00007f66f2cf4980:   push   %rbp
....................................................................................................
  96.84%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.84%        runtime stub  StubRoutines::md5_implCompressMB 
   0.76%                      <unknown> 
   0.24%              kernel  [unknown] 
   0.19%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1118 
   0.18%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1118 
   0.17%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1127 
   0.04%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1118 
   0.03%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%      jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1127 
   0.03%      jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1127 
   0.03%              kernel  [unknown] 
   0.02%      jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1127 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.99%  <...other 306 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.84%        runtime stub  StubRoutines::md5_implCompressMB 
   1.17%              kernel  [unknown] 
   0.80%                      <unknown> 
   0.44%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1118 
   0.23%      jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1127 
   0.20%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  stringStream::write 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1125 
   0.17%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.04%        runtime stub
   1.17%              kernel
   0.80%                    
   0.68%      jvmci, level 4
   0.17%           libjvm.so
   0.10%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         interpreter
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA1, length = 16384)

# Run progress: 8.33% complete, ETA 00:21:09
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 81.987 us/op
# Warmup Iteration   2: 73.221 us/op
# Warmup Iteration   3: 73.199 us/op
# Warmup Iteration   4: 73.203 us/op
# Warmup Iteration   5: 73.202 us/op
Iteration   1: 73.202 us/op
Iteration   2: 73.193 us/op
Iteration   3: 73.192 us/op
Iteration   4: 73.198 us/op
Iteration   5: 73.216 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  73.200 ±(99.9%) 0.037 us/op [Average]
  (min, avg, max) = (73.192, 73.200, 73.216), stdev = 0.010
  CI (99.9%): [73.163, 73.237] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 260300 total address lines.
Perf output processed (skipped 61.324 seconds):
 Column 1: cycles (50922 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.SHA::implCompress0, version 3, compile id 1055 

 <region is too big to display, has 2040 lines, but threshold is 1000>
....................................................................................................
  63.94%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, sun.security.provider.SHA::implCompress0, version 3, compile id 1055 

             # parm1:    rcx       = int
             #           [sp+0x160]  (sp of caller)
             0x00007f1c2b24e640:   mov    0x8(%rsi),%r10d
             0x00007f1c2b24e644:   movabs $0x7f1baf000000,%r12
             0x00007f1c2b24e64e:   add    %r12,%r10
             0x00007f1c2b24e651:   xor    %r12,%r12
             0x00007f1c2b24e654:   cmp    %r10,%rax
             0x00007f1c2b24e657:   jne    0x00007f1c2ac2f080           ;   {runtime_call ic_miss_stub}
             0x00007f1c2b24e65d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.12%     0x00007f1c2b24e660:   mov    %eax,-0x14000(%rsp)
   0.01%     0x00007f1c2b24e667:   sub    $0x158,%rsp
   0.00%     0x00007f1c2b24e66e:   xchg   %ax,%ax
   0.10%     0x00007f1c2b24e670:   cmpl   $0x1,0x20(%r15)
   0.00%     0x00007f1c2b24e678:   jne    0x00007f1c2b24fe9f
   0.01%     0x00007f1c2b24e67e:   mov    %rbp,0x150(%rsp)
             0x00007f1c2b24e686:   mov    0x30(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop rsi=Oop r10=NarrowOop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) sun.security.provider.SHA::implCompress0@0 (line 151)
   0.11%     0x00007f1c2b24e68a:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f1c2b24fec6
             0x00007f1c2b24e692:   cmp    $0x4d,%r11d
             0x00007f1c2b24e696:   jb     0x00007f1c2b24fe7b           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@40 (line 158)
   0.01%     0x00007f1c2b24e69c:   nopl   0x0(%rax)
             0x00007f1c2b24e6a0:   cmp    $0x50,%r11d
             0x00007f1c2b24e6a4:   jb     0x00007f1c2b24fe0e           ; ImmutableOopMap {rdx=Oop rsi=Oop r10=NarrowOop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) sun.security.provider.SHA::implCompress0@0 (line 151)
   0.13%     0x00007f1c2b24e6aa:   mov    0xc(%rdx),%r11d              ; implicit exception: dispatches to 0x00007f1c2b24feed
             0x00007f1c2b24e6ae:   cmp    $0x3,%r11d
             0x00007f1c2b24e6b2:   jb     0x00007f1c2b24fcee           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e6b8:   lea    -0x3(%r11),%r11d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@4 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e6bc:   nopl   0x0(%rax)
   0.11%     0x00007f1c2b24e6c0:   cmp    %ecx,%r11d
             0x00007f1c2b24e6c3:   jbe    0x00007f1c2b24fe8d           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e6c9:   lea    0x4(%rcx),%r8d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@19 (line 102)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e6cd:   cmp    %r8d,%r11d
             0x00007f1c2b24e6d0:   jbe    0x00007f1c2b24fe69           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@20 (line 102)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e6d6:   lea    0x8(%rcx),%r9d               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@33 (line 103)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.12%     0x00007f1c2b24e6da:   nopw   0x0(%rax,%rax,1)
   0.00%     0x00007f1c2b24e6e0:   cmp    %r9d,%r11d
             0x00007f1c2b24e6e3:   jbe    0x00007f1c2b24fe45           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@34 (line 103)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f1c2b24e6e9:   lea    0xc(%rcx),%ebx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@47 (line 104)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e6ec:   cmp    %ebx,%r11d
             0x00007f1c2b24e6ef:   jbe    0x00007f1c2b24fd16           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@48 (line 104)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.13%     0x00007f1c2b24e6f5:   lea    0x10(%rcx),%edi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@61 (line 105)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e6f8:   nopl   0x0(%rax,%rax,1)
   0.01%     0x00007f1c2b24e700:   cmp    %edi,%r11d
             0x00007f1c2b24e703:   jbe    0x00007f1c2b24fe57           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@62 (line 105)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e709:   lea    0x14(%rcx),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@75 (line 106)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.13%     0x00007f1c2b24e70c:   cmp    %eax,%r11d
             0x00007f1c2b24e70f:   jbe    0x00007f1c2b24fe32           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@76 (line 106)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e715:   lea    0x18(%rcx),%ebp              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@90 (line 107)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f1c2b24e718:   nopl   0x0(%rax,%rax,1)
             0x00007f1c2b24e720:   cmp    %ebp,%r11d
             0x00007f1c2b24e723:   jbe    0x00007f1c2b24fd39           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@91 (line 107)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.14%     0x00007f1c2b24e729:   lea    0x1c(%rcx),%r13d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@105 (line 108)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e72d:   cmp    %r13d,%r11d
             0x00007f1c2b24e730:   jbe    0x00007f1c2b24fe20           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@106 (line 108)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e736:   lea    0x20(%rcx),%r14d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@120 (line 109)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e73a:   nopw   0x0(%rax,%rax,1)
   0.13%     0x00007f1c2b24e740:   cmp    %r14d,%r11d
             0x00007f1c2b24e743:   jbe    0x00007f1c2b24fdfc           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@121 (line 109)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e749:   mov    %rsi,0x10(%rsp)
   0.02%     0x00007f1c2b24e74e:   lea    0x24(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@135 (line 110)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e751:   cmp    %esi,%r11d
             0x00007f1c2b24e754:   jbe    0x00007f1c2b24fde5           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@136 (line 110)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
                                                                       ;   {no_reloc}
   0.13%     0x00007f1c2b24e75a:   mov    %esi,0x144(%rsp)
   0.00%     0x00007f1c2b24e761:   lea    0x28(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@150 (line 111)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f1c2b24e764:   cmp    %esi,%r11d
             0x00007f1c2b24e767:   jbe    0x00007f1c2b24fdb3           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@151 (line 111)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e76d:   mov    %esi,0x140(%rsp)
   0.14%     0x00007f1c2b24e774:   lea    0x2c(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@165 (line 112)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e777:   mov    %esi,0x13c(%rsp)
   0.02%     0x00007f1c2b24e77e:   xchg   %ax,%ax
             0x00007f1c2b24e780:   cmp    %esi,%r11d
             0x00007f1c2b24e783:   jbe    0x00007f1c2b24fd25           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@166 (line 112)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.12%     0x00007f1c2b24e789:   lea    0x30(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@180 (line 113)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e78c:   mov    %esi,0x138(%rsp)
   0.01%     0x00007f1c2b24e793:   cmp    %esi,%r11d
             0x00007f1c2b24e796:   jbe    0x00007f1c2b24fdca           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@181 (line 113)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e79c:   lea    0x34(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@195 (line 114)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.10%     0x00007f1c2b24e79f:   mov    %esi,0x134(%rsp)
             0x00007f1c2b24e7a6:   cmp    %esi,%r11d
             0x00007f1c2b24e7a9:   jbe    0x00007f1c2b24fd9c           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@196 (line 114)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e7af:   lea    0x38(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@210 (line 115)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e7b2:   mov    %esi,0x130(%rsp)
   0.12%     0x00007f1c2b24e7b9:   nopl   0x0(%rax)
             0x00007f1c2b24e7c0:   cmp    %esi,%r11d
             0x00007f1c2b24e7c3:   jbe    0x00007f1c2b24fd85           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@211 (line 115)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e7c9:   lea    0x3c(%rcx),%esi              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@225 (line 116)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e7cc:   cmp    %esi,%r11d
             0x00007f1c2b24e7cf:   jbe    0x00007f1c2b24fd6d           ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@226 (line 116)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.13%     0x00007f1c2b24e7d5:   mov    %esi,0x12c(%rsp)
             0x00007f1c2b24e7dc:   mov    0x140(%rsp),%esi
   0.02%     0x00007f1c2b24e7e3:   mov    0x144(%rsp),%r11d
   0.00%     0x00007f1c2b24e7eb:   mov    0x10(%rdx,%rcx,1),%ecx       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.11%     0x00007f1c2b24e7ef:   bswap  %ecx                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e7f1:   mov    %ecx,0x10(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@10 (line 101)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e7f9:   mov    0x10(%rdx,%r8,1),%r8d        ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@20 (line 102)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e7fe:   bswap  %r8d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@20 (line 102)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.14%     0x00007f1c2b24e801:   mov    %r8d,0x14(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@23 (line 102)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e809:   mov    0x10(%rdx,%r9,1),%r8d        ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@34 (line 103)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e80e:   bswap  %r8d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@34 (line 103)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e811:   mov    %r8d,0x18(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@37 (line 103)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.15%     0x00007f1c2b24e819:   mov    0x10(%rdx,%rbx,1),%r9d       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@48 (line 104)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e81e:   bswap  %r9d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@48 (line 104)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e821:   mov    %r9d,0x1c(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@51 (line 104)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e829:   mov    0x10(%rdx,%rdi,1),%r9d       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@62 (line 105)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.10%     0x00007f1c2b24e82e:   bswap  %r9d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@62 (line 105)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e831:   mov    %r9d,0x20(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@65 (line 105)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f1c2b24e839:   mov    0x10(%rdx,%rax,1),%r9d       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@76 (line 106)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e83e:   bswap  %r9d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@76 (line 106)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.12%     0x00007f1c2b24e841:   mov    %r9d,0x24(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@79 (line 106)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e849:   mov    0x10(%rdx,%rbp,1),%r9d       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@91 (line 107)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e84e:   bswap  %r9d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@91 (line 107)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e851:   mov    %r9d,0x28(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@94 (line 107)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
                                                                       ;   {no_reloc}
   0.16%     0x00007f1c2b24e859:   mov    0x10(%rdx,%r13,1),%r9d       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@106 (line 108)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e85e:   bswap  %r9d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@106 (line 108)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f1c2b24e861:   mov    %r9d,0x2c(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@109 (line 108)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e869:   mov    0x10(%rdx,%r14,1),%r9d       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@121 (line 109)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.11%     0x00007f1c2b24e86e:   bswap  %r9d                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@121 (line 109)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e871:   mov    %r9d,0x30(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@124 (line 109)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e879:   mov    0x10(%rdx,%r11,1),%r11d      ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@136 (line 110)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e87e:   bswap  %r11d                        ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@136 (line 110)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.14%     0x00007f1c2b24e881:   mov    %r11d,0x34(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@139 (line 110)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e889:   mov    0x10(%rdx,%rsi,1),%r11d      ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@151 (line 111)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e88e:   bswap  %r11d                        ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@151 (line 111)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e891:   mov    %r11d,0x38(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@154 (line 111)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.10%     0x00007f1c2b24e899:   mov    0x13c(%rsp),%esi
   0.00%     0x00007f1c2b24e8a0:   mov    0x10(%rdx,%rsi,1),%r11d      ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@166 (line 112)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e8a5:   bswap  %r11d                        ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@166 (line 112)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%     0x00007f1c2b24e8a8:   mov    %r11d,0x3c(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@169 (line 112)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.14%     0x00007f1c2b24e8b0:   mov    0x138(%rsp),%esi
             0x00007f1c2b24e8b7:   mov    0x10(%rdx,%rsi,1),%r11d      ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@181 (line 113)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.02%     0x00007f1c2b24e8bc:   bswap  %r11d                        ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@181 (line 113)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e8bf:   mov    %r11d,0x40(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@184 (line 113)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.13%     0x00007f1c2b24e8c7:   mov    0x134(%rsp),%esi
             0x00007f1c2b24e8ce:   mov    0x10(%rdx,%rsi,1),%r11d      ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@196 (line 114)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e8d3:   bswap  %r11d                        ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@196 (line 114)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e8d6:   mov    %r11d,0x44(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@199 (line 114)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.13%     0x00007f1c2b24e8de:   mov    0x130(%rsp),%esi
   0.00%     0x00007f1c2b24e8e5:   mov    0x10(%rdx,%rsi,1),%ebx       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@211 (line 115)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e8e9:   bswap  %ebx                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@211 (line 115)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e8eb:   mov    %ebx,0x48(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@214 (line 115)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.13%     0x00007f1c2b24e8f3:   mov    0x12c(%rsp),%esi
   0.01%     0x00007f1c2b24e8fa:   mov    0x10(%rdx,%rsi,1),%ebx       ;* unwind (locked if synchronized)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@-3
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@5 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@226 (line 116)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%     0x00007f1c2b24e8fe:   bswap  %ebx                         ;* unwind (locked if synchronized)
                                                                       ; - java.lang.Integer::reverseBytes@-3
                                                                       ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
                                                                       ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
                                                                       ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
                                                                       ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@226 (line 116)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
             0x00007f1c2b24e900:   mov    %ebx,0x4c(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.ByteArrayAccess::b2iBig64@229 (line 116)
                                                                       ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.11%     0x00007f1c2b24e908:   xor    %r11d,%r9d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@50 (line 158)
             0x00007f1c2b24e90b:   xor    %r9d,%r8d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@60 (line 158)
   0.01%     0x00007f1c2b24e90e:   xor    %r8d,%ecx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@70 (line 158)
             0x00007f1c2b24e911:   rol    %ecx                         ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.Integer::rotateLeft@7 (line 1724)
                                                                       ; - sun.security.provider.SHA::implCompress0@81 (line 159)
   0.12%     0x00007f1c2b24e913:   mov    %ecx,0x50(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   0.02%     0x00007f1c2b24e91b:   mov    %r10d,%r11d
             0x00007f1c2b24e91e:   shl    $0x3,%r11                    ;*getfield W {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@1 (line 151)
   0.11%     0x00007f1c2b24e922:   mov    $0x11,%r8d
   0.00%     0x00007f1c2b24e928:   jmp    0x00007f1c2b24ea41           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@27 (line 157)
             0x00007f1c2b24e92d:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f1c2b24e938:   data16 data16 xchg %ax,%ax
             0x00007f1c2b24e93c:   nopl   0x0(%rax)                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@30 (line 157)
   0.31%  ↗  0x00007f1c2b24e940:   movslq %r8d,%r9
   1.72%  │  0x00007f1c2b24e943:   mov    -0x30(%r11,%r9,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@69 (line 158)
          │  0x00007f1c2b24e948:   mov    0x4(%r11,%r9,4),%ebx         ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@40 (line 158)
   0.24%  │  0x00007f1c2b24e94d:   xor    -0x10(%r11,%r9,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@49 (line 158)
   0.35%  │  0x00007f1c2b24e952:   xor    -0x28(%r11,%r9,4),%ebx       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@60 (line 158)
          │                                                            ;   {no_reloc}
   1.61%  │  0x00007f1c2b24e957:   xor    %ecx,%ebx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@70 (line 158)
   0.19%  │  0x00007f1c2b24e959:   rol    %ebx                         ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                            ; - sun.security.provider.SHA::implCompress0@81 (line 159)
   1.03%  │  0x00007f1c2b24e95b:   mov    %ebx,0x10(%r11,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   2.66%  │  0x00007f1c2b24e960:   mov    -0x2c(%r11,%r9,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@69 (line 158)
          │  0x00007f1c2b24e965:   mov    0x8(%r11,%r9,4),%ebx         ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@40 (line 158)
   0.17%  │  0x00007f1c2b24e96a:   xor    -0xc(%r11,%r9,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@49 (line 158)
   0.38%  │  0x00007f1c2b24e96f:   xor    -0x24(%r11,%r9,4),%ebx       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@60 (line 158)
   1.79%  │  0x00007f1c2b24e974:   xor    %ecx,%ebx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@70 (line 158)
   0.22%  │  0x00007f1c2b24e976:   rol    %ebx                         ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                            ; - sun.security.provider.SHA::implCompress0@81 (line 159)
   1.09%  │  0x00007f1c2b24e978:   mov    %ebx,0x14(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   2.70%  │  0x00007f1c2b24e97d:   mov    -0x28(%r11,%r9,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@69 (line 158)
          │  0x00007f1c2b24e982:   mov    0xc(%r11,%r9,4),%ebx         ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@40 (line 158)
   0.25%  │  0x00007f1c2b24e987:   xor    -0x8(%r11,%r9,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@49 (line 158)
   0.45%  │  0x00007f1c2b24e98c:   xor    -0x20(%r11,%r9,4),%ebx       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@60 (line 158)
   1.75%  │  0x00007f1c2b24e991:   xor    %ecx,%ebx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@70 (line 158)
   0.20%  │  0x00007f1c2b24e993:   rol    %ebx                         ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                            ; - sun.security.provider.SHA::implCompress0@81 (line 159)
   1.03%  │  0x00007f1c2b24e995:   mov    %ebx,0x18(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   2.87%  │  0x00007f1c2b24e99a:   mov    -0x24(%r11,%r9,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@69 (line 158)
          │  0x00007f1c2b24e99f:   mov    0x10(%r11,%r8,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@40 (line 158)
   0.49%  │  0x00007f1c2b24e9a4:   xor    -0x4(%r11,%r9,4),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@49 (line 158)
   0.35%  │  0x00007f1c2b24e9a9:   xor    -0x1c(%r11,%r9,4),%ebx       ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@60 (line 158)
   1.89%  │  0x00007f1c2b24e9ae:   xor    %ecx,%ebx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@70 (line 158)
   0.23%  │  0x00007f1c2b24e9b0:   rol    %ebx                         ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                            ; - sun.security.provider.SHA::implCompress0@81 (line 159)
   1.35%  │  0x00007f1c2b24e9b2:   mov    %ebx,0x1c(%r11,%r9,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   2.77%  │  0x00007f1c2b24e9b7:   lea    0x4(%r8),%r8d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - sun.security.provider.SHA::implCompress0@85 (line 157)
          │  0x00007f1c2b24e9bb:   nopl   0x0(%rax,%rax,1)
          │  0x00007f1c2b24e9c0:   cmp    $0x4c,%r8d
          ╰  0x00007f1c2b24e9c4:   jl     0x00007f1c2b24e940
             0x00007f1c2b24e9ca:   jmp    0x00007f1c2b24ea10
             0x00007f1c2b24e9cf:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f1c2b24e9da:   data16 data16 xchg %ax,%ax
             0x00007f1c2b24e9de:   xchg   %ax,%ax                      ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - sun.security.provider.SHA::implCompress0@30 (line 157)
....................................................................................................
  32.56%  <total for region 2>

....[Hottest Regions]...............................................................................
  63.94%       jvmci, level 4  sun.security.provider.SHA::implCompress0, version 3, compile id 1055 
  32.56%       jvmci, level 4  sun.security.provider.SHA::implCompress0, version 3, compile id 1055 
   0.92%               kernel  [unknown] 
   0.68%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 5, compile id 1094 
   0.11%               kernel  [unknown] 
   0.08%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1093 
   0.08%               kernel  [unknown] 
   0.08%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.07%               kernel  [unknown] 
   0.06%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1093 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1093 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.sun.crypto.provider.HmacCore::engineDoFinal, version 2, compile id 1101 
   0.02%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1093 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.09%  <...other 348 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.49%       jvmci, level 4  sun.security.provider.SHA::implCompress0, version 3, compile id 1055 
   1.96%               kernel  [unknown] 
   0.68%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 5, compile id 1094 
   0.25%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1093 
   0.10%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.07%       jvmci, level 4  com.sun.crypto.provider.HmacCore::engineDoFinal, version 2, compile id 1101 
   0.03%                       <unknown> 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1099 
   0.02%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%       hsdis-amd64.so  putop 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.25%  <...other 106 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.52%       jvmci, level 4
   1.96%               kernel
   0.14%            libjvm.so
   0.11%         libc-2.31.so
   0.10%         runtime stub
   0.08%  libjvmcicompiler.so
   0.03%                     
   0.03%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA224, length = 16384)

# Run progress: 16.67% complete, ETA 00:19:09
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 62.407 us/op
# Warmup Iteration   2: 55.629 us/op
# Warmup Iteration   3: 55.611 us/op
# Warmup Iteration   4: 55.586 us/op
# Warmup Iteration   5: 55.590 us/op
Iteration   1: 55.612 us/op
Iteration   2: 55.612 us/op
Iteration   3: 55.604 us/op
Iteration   4: 55.611 us/op
Iteration   5: 55.650 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  55.618 ±(99.9%) 0.069 us/op [Average]
  (min, avg, max) = (55.604, 55.618, 55.650), stdev = 0.018
  CI (99.9%): [55.549, 55.687] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 262398 total address lines.
Perf output processed (skipped 61.299 seconds):
 Column 1: cycles (50740 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1127 lines, but threshold is 1000>
....................................................................................................
  94.41%  <total for region 1>

....[Hottest Regions]...............................................................................
  94.41%         runtime stub  StubRoutines::sha256_implCompressMB 
   1.75%                       <unknown> 
   0.63%               kernel  [unknown] 
   0.37%                       <unknown> 
   0.19%         runtime stub  StubRoutines::sha256_implCompressMB 
   0.11%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.11%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1114 
   0.10%               kernel  [unknown] 
   0.09%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1114 
   0.09%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1114 
   0.08%               kernel  [unknown] 
   0.08%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1114 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1114 
   0.04%                       <unknown> 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1114 
   1.65%  <...other 422 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.60%         runtime stub  StubRoutines::sha256_implCompressMB 
   2.23%                       <unknown> 
   1.90%               kernel  [unknown] 
   0.54%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1114 
   0.18%       jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1118 
   0.11%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1140 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1119 
   0.02%       jvmci, level 4  sun.security.provider.SHA2::implCompress, version 2, compile id 1066 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%         libc-2.31.so  _IO_fwrite 
   0.01%         runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%            libjvm.so  defaultStream::write 
   0.23%  <...other 91 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.73%         runtime stub
   2.23%                     
   1.90%               kernel
   0.79%       jvmci, level 4
   0.14%            libjvm.so
   0.09%         libc-2.31.so
   0.06%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%     perf-2109902.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA256, length = 16384)

# Run progress: 25.00% complete, ETA 00:17:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 62.935 us/op
# Warmup Iteration   2: 55.608 us/op
# Warmup Iteration   3: 55.593 us/op
# Warmup Iteration   4: 55.603 us/op
# Warmup Iteration   5: 55.605 us/op
Iteration   1: 55.598 us/op
Iteration   2: 55.598 us/op
Iteration   3: 55.601 us/op
Iteration   4: 55.601 us/op
Iteration   5: 55.593 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  55.598 ±(99.9%) 0.012 us/op [Average]
  (min, avg, max) = (55.593, 55.598, 55.601), stdev = 0.003
  CI (99.9%): [55.586, 55.610] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 256769 total address lines.
Perf output processed (skipped 61.209 seconds):
 Column 1: cycles (50988 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1094 lines, but threshold is 1000>
....................................................................................................
  93.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.82%         runtime stub  StubRoutines::sha256_implCompressMB 
   1.93%                       <unknown> 
   1.02%               kernel  [unknown] 
   0.27%         runtime stub  StubRoutines::sha256_implCompressMB 
   0.25%         runtime stub  StubRoutines::sha256_implCompressMB 
   0.14%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.13%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1104 
   0.12%               kernel  [unknown] 
   0.11%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1104 
   0.08%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1104 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1104 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1104 
   0.04%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1133 
   0.03%       jvmci, level 4  javax.crypto.Mac::doFinal, version 1, compile id 1109 
   1.62%  <...other 408 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.36%         runtime stub  StubRoutines::sha256_implCompressMB 
   2.39%               kernel  [unknown] 
   2.02%                       <unknown> 
   0.48%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1104 
   0.20%       jvmci, level 4  javax.crypto.Mac::doFinal, version 1, compile id 1109 
   0.14%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1133 
   0.02%         runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.02%       jvmci, level 4  sun.security.provider.SHA2::implCompress, version 2, compile id 1059 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.22%  <...other 90 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.52%         runtime stub
   2.39%               kernel
   2.02%                     
   0.75%       jvmci, level 4
   0.16%            libjvm.so
   0.08%         libc-2.31.so
   0.03%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA384, length = 16384)

# Run progress: 33.33% complete, ETA 00:15:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 45.387 us/op
# Warmup Iteration   2: 39.354 us/op
# Warmup Iteration   3: 39.351 us/op
# Warmup Iteration   4: 39.344 us/op
# Warmup Iteration   5: 39.344 us/op
Iteration   1: 39.355 us/op
Iteration   2: 39.340 us/op
Iteration   3: 39.349 us/op
Iteration   4: 39.349 us/op
Iteration   5: 39.348 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  39.348 ±(99.9%) 0.020 us/op [Average]
  (min, avg, max) = (39.340, 39.348, 39.355), stdev = 0.005
  CI (99.9%): [39.328, 39.368] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 271968 total address lines.
Perf output processed (skipped 61.533 seconds):
 Column 1: cycles (50656 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::sha512_implCompressMB [0x00007f377ac5b8e0, 0x00007f377ac5c725] (3653 bytes)
                  --------------------------------------------------------------------------------
   0.00%            0x00007f377ac5b8e0:   push   %rbp
                    0x00007f377ac5b8e1:   mov    %rsp,%rbp
                    0x00007f377ac5b8e4:   push   %rdx
   0.00%            0x00007f377ac5b8e5:   push   %rcx
                    0x00007f377ac5b8e6:   mov    %rsp,%rax
   0.00%            0x00007f377ac5b8e9:   sub    $0x70,%rsp
   0.00%            0x00007f377ac5b8ed:   and    $0xffffffffffffffe0,%rsp
                    0x00007f377ac5b8f1:   mov    %rax,0x38(%rsp)
                    0x00007f377ac5b8f6:   mov    %rbp,0x40(%rsp)
                    0x00007f377ac5b8fb:   mov    %rbx,0x48(%rsp)
   0.00%            0x00007f377ac5b900:   mov    %r12,0x50(%rsp)
                    0x00007f377ac5b905:   mov    %r13,0x58(%rsp)
                    0x00007f377ac5b90a:   mov    %r14,0x60(%rsp)
   0.00%            0x00007f377ac5b90f:   mov    %r15,0x68(%rsp)
                    0x00007f377ac5b914:   vpblendd $0xf0,%xmm1,%xmm0,%xmm0
                    0x00007f377ac5b91a:   vpblendd $0xf0,%ymm1,%ymm0,%ymm0
                    0x00007f377ac5b920:   xor    %rax,%rax
   0.01%   ↗        0x00007f377ac5b923:   cmp    %rcx,%rdx
          ╭│        0x00007f377ac5b926:   jae    0x00007f377ac5b937
   0.10%  ││        0x00007f377ac5b928:   add    $0x80,%rdx
   0.03%  ││        0x00007f377ac5b92f:   add    $0x80,%rax
   0.00%  │╰        0x00007f377ac5b935:   jmp    0x00007f377ac5b923
   0.01%  ↘         0x00007f377ac5b937:   mov    %rax,%rdx
   0.00%            0x00007f377ac5b93a:   cmp    $0x0,%rdx
            ╭       0x00007f377ac5b93e:   je     0x00007f377ac5c6eb
   0.01%    │       0x00007f377ac5b944:   add    %rdi,%rdx
            │       0x00007f377ac5b947:   mov    %rdx,0x30(%rsp)
   0.00%    │       0x00007f377ac5b94c:   mov    (%rsi),%rax
            │       0x00007f377ac5b94f:   mov    0x8(%rsi),%rbx
            │       0x00007f377ac5b953:   mov    0x10(%rsi),%rcx
            │       0x00007f377ac5b957:   mov    0x18(%rsi),%r8
            │       0x00007f377ac5b95b:   mov    0x20(%rsi),%rdx
            │       0x00007f377ac5b95f:   mov    0x28(%rsi),%r9
            │       0x00007f377ac5b963:   mov    0x38(%rsi),%r11
   0.00%    │       0x00007f377ac5b967:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007f377ac5aa80
            │       0x00007f377ac5b96f:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007f377ac5aaa0
            │       0x00007f377ac5b977:   mov    0x30(%rsi),%r10
            │  ↗    0x00007f377ac5b97b:   movabs $0x7f3794bf7840,%rbp
   0.01%    │  │    0x00007f377ac5b985:   vmovdqu (%rdi),%ymm4
   0.25%    │  │    0x00007f377ac5b989:   vpshufb %ymm9,%ymm4,%ymm4
   0.38%    │  │    0x00007f377ac5b98e:   vmovdqu 0x20(%rdi),%ymm5
   0.02%    │  │    0x00007f377ac5b993:   vpshufb %ymm9,%ymm5,%ymm5
   0.01%    │  │    0x00007f377ac5b998:   vmovdqu 0x40(%rdi),%ymm6
   0.05%    │  │    0x00007f377ac5b99d:   vpshufb %ymm9,%ymm6,%ymm6
   0.35%    │  │    0x00007f377ac5b9a2:   vmovdqu 0x60(%rdi),%ymm7
            │  │    0x00007f377ac5b9a7:   vpshufb %ymm9,%ymm7,%ymm7
   0.00%    │  │    0x00007f377ac5b9ac:   mov    %rdi,0x28(%rsp)
            │  │    0x00007f377ac5b9b1:   movq   $0x4,0x20(%rsp)
   0.11%    │  │    0x00007f377ac5b9ba:   nopw   0x0(%rax,%rax,1)
   0.06%    │↗ │    0x00007f377ac5b9c0:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.18%    ││ │    0x00007f377ac5b9c5:   vmovdqu %ymm0,(%rsp)
   0.14%    ││ │    0x00007f377ac5b9ca:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.29%    ││ │    0x00007f377ac5b9d0:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.24%    ││ │    0x00007f377ac5b9d6:   vpaddq %ymm4,%ymm0,%ymm0
   0.74%    ││ │    0x00007f377ac5b9da:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.12%    ││ │    0x00007f377ac5b9e0:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.08%    ││ │    0x00007f377ac5b9e6:   vpsrlq $0x1,%ymm1,%ymm2
   0.08%    ││ │    0x00007f377ac5b9eb:   vpsllq $0x3f,%ymm1,%ymm3
   0.21%    ││ │    0x00007f377ac5b9f0:   vpor   %ymm2,%ymm3,%ymm3
   0.13%    ││ │    0x00007f377ac5b9f4:   vpsrlq $0x7,%ymm1,%ymm8
   0.06%    ││ │    0x00007f377ac5b9f9:   mov    %rax,%rdi
   0.08%    ││ │    0x00007f377ac5b9fc:   rorx   $0x29,%rdx,%r13
   0.29%    ││ │    0x00007f377ac5ba02:   rorx   $0x12,%rdx,%r14
   0.13%    ││ │    0x00007f377ac5ba08:   add    (%rsp),%r11
   0.07%    ││ │    0x00007f377ac5ba0c:   or     %rcx,%rdi
   0.05%    ││ │    0x00007f377ac5ba0f:   mov    %r9,%r15
   0.24%    ││ │    0x00007f377ac5ba12:   xor    %r10,%r15
   0.11%    ││ │    0x00007f377ac5ba15:   rorx   $0x22,%rax,%r12
   0.06%    ││ │    0x00007f377ac5ba1b:   xor    %r14,%r13
   0.07%    ││ │    0x00007f377ac5ba1e:   rorx   $0xe,%rdx,%r14
   0.24%    ││ │    0x00007f377ac5ba24:   and    %rdx,%r15
   0.11%    ││ │    0x00007f377ac5ba27:   add    %r11,%r8
   0.08%    ││ │    0x00007f377ac5ba2a:   and    %rbx,%rdi
   0.05%    ││ │    0x00007f377ac5ba2d:   xor    %r14,%r13
   0.26%    ││ │    0x00007f377ac5ba30:   rorx   $0x27,%rax,%r14
   0.11%    ││ │    0x00007f377ac5ba36:   xor    %r12,%r14
   0.07%    ││ │    0x00007f377ac5ba39:   rorx   $0x1c,%rax,%r12
   0.04%    ││ │    0x00007f377ac5ba3f:   xor    %r10,%r15
   0.21%    ││ │    0x00007f377ac5ba42:   xor    %r12,%r14
   0.11%    ││ │    0x00007f377ac5ba45:   mov    %rax,%r12
   0.06%    ││ │    0x00007f377ac5ba48:   and    %rcx,%r12
   0.06%    ││ │    0x00007f377ac5ba4b:   add    %r13,%r15
   0.25%    ││ │    0x00007f377ac5ba4e:   or     %r12,%rdi
   0.13%    ││ │    0x00007f377ac5ba51:   add    %r14,%r11
   0.07%    ││ │    0x00007f377ac5ba54:   add    %r15,%r8
   0.04%    ││ │    0x00007f377ac5ba57:   add    %r15,%r11
   0.24%    ││ │    0x00007f377ac5ba5a:   add    %rdi,%r11
   0.13%    ││ │    0x00007f377ac5ba5d:   vpsrlq $0x8,%ymm1,%ymm2
   0.06%    ││ │    0x00007f377ac5ba62:   vpsllq $0x38,%ymm1,%ymm1
   0.05%    ││ │    0x00007f377ac5ba67:   vpor   %ymm2,%ymm1,%ymm1
   0.29%    ││ │    0x00007f377ac5ba6b:   vpxor  %ymm8,%ymm3,%ymm3
   0.13%    ││ │    0x00007f377ac5ba70:   vpxor  %ymm1,%ymm3,%ymm1
   0.04%    ││ │    0x00007f377ac5ba74:   vpaddq %ymm1,%ymm0,%ymm0
   0.05%    ││ │    0x00007f377ac5ba78:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.24%    ││ │    0x00007f377ac5ba7e:   vpand  %ymm10,%ymm0,%ymm0
   0.12%    ││ │    0x00007f377ac5ba83:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.05%    ││ │    0x00007f377ac5ba89:   vpsrlq $0x6,%ymm2,%ymm8
   0.05%    ││ │    0x00007f377ac5ba8e:   mov    %r11,%rdi
   0.26%    ││ │    0x00007f377ac5ba91:   rorx   $0x29,%r8,%r13
   0.13%    ││ │    0x00007f377ac5ba97:   rorx   $0x12,%r8,%r14
   0.07%    ││ │    0x00007f377ac5ba9d:   add    0x8(%rsp),%r10
   0.06%    ││ │    0x00007f377ac5baa2:   or     %rbx,%rdi
   0.23%    ││ │    0x00007f377ac5baa5:   mov    %rdx,%r15
   0.12%    ││ │    0x00007f377ac5baa8:   xor    %r9,%r15
   0.07%    ││ │    0x00007f377ac5baab:   rorx   $0x22,%r11,%r12
   0.06%    ││ │    0x00007f377ac5bab1:   xor    %r14,%r13
   0.24%    ││ │    0x00007f377ac5bab4:   rorx   $0xe,%r8,%r14
   0.13%    ││ │    0x00007f377ac5baba:   and    %r8,%r15
   0.08%    ││ │    0x00007f377ac5babd:   add    %r10,%rcx
   0.06%    ││ │    0x00007f377ac5bac0:   and    %rax,%rdi
   0.21%    ││ │    0x00007f377ac5bac3:   xor    %r14,%r13
   0.15%    ││ │    0x00007f377ac5bac6:   rorx   $0x27,%r11,%r14
   0.07%    ││ │    0x00007f377ac5bacc:   xor    %r12,%r14
   0.04%    ││ │    0x00007f377ac5bacf:   rorx   $0x1c,%r11,%r12
   0.25%    ││ │    0x00007f377ac5bad5:   xor    %r9,%r15
   0.13%    ││ │    0x00007f377ac5bad8:   xor    %r12,%r14
   0.06%    ││ │    0x00007f377ac5badb:   mov    %r11,%r12
   0.06%    ││ │    0x00007f377ac5bade:   and    %rbx,%r12
   0.24%    ││ │    0x00007f377ac5bae1:   add    %r13,%r15
   0.15%    ││ │    0x00007f377ac5bae4:   or     %r12,%rdi
   0.06%    ││ │    0x00007f377ac5bae7:   add    %r14,%r10
   0.06%    ││ │    0x00007f377ac5baea:   add    %r15,%rcx
   0.22%    ││ │    0x00007f377ac5baed:   add    %r15,%r10
   0.13%    ││ │    0x00007f377ac5baf0:   add    %rdi,%r10
   0.07%    ││ │    0x00007f377ac5baf3:   vpsrlq $0x13,%ymm2,%ymm3
   0.04%    ││ │    0x00007f377ac5baf8:   vpsllq $0x2d,%ymm2,%ymm1
   0.26%    ││ │    0x00007f377ac5bafd:   vpor   %ymm1,%ymm3,%ymm3
   0.15%    ││ │    0x00007f377ac5bb01:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%    ││ │    0x00007f377ac5bb05:   vpsrlq $0x3d,%ymm2,%ymm3
   0.06%    ││ │    0x00007f377ac5bb0a:   vpsllq $0x3,%ymm2,%ymm1
   0.25%    ││ │    0x00007f377ac5bb0f:   vpor   %ymm1,%ymm3,%ymm3
   0.14%    ││ │    0x00007f377ac5bb13:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%    ││ │    0x00007f377ac5bb17:   vpaddq %ymm8,%ymm4,%ymm4
   0.05%    ││ │    0x00007f377ac5bb1c:   vpsrlq $0x6,%ymm4,%ymm8
   0.28%    ││ │    0x00007f377ac5bb21:   mov    %r10,%rdi
   0.15%    ││ │    0x00007f377ac5bb24:   rorx   $0x29,%rcx,%r13
   0.06%    ││ │    0x00007f377ac5bb2a:   rorx   $0x12,%rcx,%r14
   0.06%    ││ │    0x00007f377ac5bb30:   add    0x10(%rsp),%r9
   0.24%    ││ │    0x00007f377ac5bb35:   or     %rax,%rdi
   0.13%    ││ │    0x00007f377ac5bb38:   mov    %r8,%r15
   0.06%    ││ │    0x00007f377ac5bb3b:   xor    %rdx,%r15
   0.05%    ││ │    0x00007f377ac5bb3e:   rorx   $0x22,%r10,%r12
   0.23%    ││ │    0x00007f377ac5bb44:   xor    %r14,%r13
   0.10%    ││ │    0x00007f377ac5bb47:   rorx   $0xe,%rcx,%r14
   0.07%    ││ │    0x00007f377ac5bb4d:   and    %rcx,%r15
   0.04%    ││ │    0x00007f377ac5bb50:   add    %r9,%rbx
   0.25%    ││ │    0x00007f377ac5bb53:   and    %r11,%rdi
   0.17%    ││ │    0x00007f377ac5bb56:   xor    %r14,%r13
   0.08%    ││ │    0x00007f377ac5bb59:   rorx   $0x27,%r10,%r14
   0.04%    ││ │    0x00007f377ac5bb5f:   xor    %r12,%r14
   0.24%    ││ │    0x00007f377ac5bb62:   rorx   $0x1c,%r10,%r12
   0.16%    ││ │    0x00007f377ac5bb68:   xor    %rdx,%r15
   0.07%    ││ │    0x00007f377ac5bb6b:   xor    %r12,%r14
   0.05%    ││ │    0x00007f377ac5bb6e:   mov    %r10,%r12
   0.28%    ││ │    0x00007f377ac5bb71:   and    %rax,%r12
   0.14%    ││ │    0x00007f377ac5bb74:   add    %r13,%r15
   0.06%    ││ │    0x00007f377ac5bb77:   or     %r12,%rdi
   0.06%    ││ │    0x00007f377ac5bb7a:   add    %r14,%r9
   0.26%    ││ │    0x00007f377ac5bb7d:   add    %r15,%rbx
   0.11%    ││ │    0x00007f377ac5bb80:   add    %r15,%r9
   0.07%    ││ │    0x00007f377ac5bb83:   add    %rdi,%r9
   0.06%    ││ │    0x00007f377ac5bb86:   vpsrlq $0x13,%ymm4,%ymm3
   0.21%    ││ │    0x00007f377ac5bb8b:   vpsllq $0x2d,%ymm4,%ymm1
   0.11%    ││ │    0x00007f377ac5bb90:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007f377ac5bb94:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007f377ac5bb98:   vpsrlq $0x3d,%ymm4,%ymm3
   0.25%    ││ │    0x00007f377ac5bb9d:   vpsllq $0x3,%ymm4,%ymm1
   0.12%    ││ │    0x00007f377ac5bba2:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007f377ac5bba6:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f377ac5bbaa:   vpaddq %ymm8,%ymm0,%ymm2
   0.26%    ││ │    0x00007f377ac5bbaf:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.20%    ││ │    0x00007f377ac5bbb5:   mov    %r9,%rdi
   0.08%    ││ │    0x00007f377ac5bbb8:   rorx   $0x29,%rbx,%r13
   0.05%    ││ │    0x00007f377ac5bbbe:   rorx   $0x12,%rbx,%r14
   0.20%    ││ │    0x00007f377ac5bbc4:   add    0x18(%rsp),%rdx
   0.19%    ││ │    0x00007f377ac5bbc9:   or     %r11,%rdi
   0.05%    ││ │    0x00007f377ac5bbcc:   mov    %rcx,%r15
   0.03%    ││ │    0x00007f377ac5bbcf:   xor    %r8,%r15
   0.22%    ││ │    0x00007f377ac5bbd2:   rorx   $0x22,%r9,%r12
   0.19%    ││ │    0x00007f377ac5bbd8:   xor    %r14,%r13
   0.05%    ││ │    0x00007f377ac5bbdb:   rorx   $0xe,%rbx,%r14
   0.03%    ││ │    0x00007f377ac5bbe1:   and    %rbx,%r15
   0.20%    ││ │    0x00007f377ac5bbe4:   add    %rdx,%rax
   0.17%    ││ │    0x00007f377ac5bbe7:   and    %r10,%rdi
   0.07%    ││ │    0x00007f377ac5bbea:   xor    %r14,%r13
   0.05%    ││ │    0x00007f377ac5bbed:   rorx   $0x27,%r9,%r14
   0.21%    ││ │    0x00007f377ac5bbf3:   xor    %r12,%r14
   0.19%    ││ │    0x00007f377ac5bbf6:   rorx   $0x1c,%r9,%r12
   0.04%    ││ │    0x00007f377ac5bbfc:   xor    %r8,%r15
   0.06%    ││ │    0x00007f377ac5bbff:   xor    %r12,%r14
   0.20%    ││ │    0x00007f377ac5bc02:   mov    %r9,%r12
   0.15%    ││ │    0x00007f377ac5bc05:   and    %r11,%r12
   0.05%    ││ │    0x00007f377ac5bc08:   add    %r13,%r15
   0.05%    ││ │    0x00007f377ac5bc0b:   or     %r12,%rdi
   0.20%    ││ │    0x00007f377ac5bc0e:   add    %r14,%rdx
   0.13%    ││ │    0x00007f377ac5bc11:   add    %r15,%rax
   0.07%    ││ │    0x00007f377ac5bc14:   add    %r15,%rdx
   0.06%    ││ │    0x00007f377ac5bc17:   add    %rdi,%rdx
   0.21%    ││ │    0x00007f377ac5bc1a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.17%    ││ │    0x00007f377ac5bc1f:   vmovdqu %ymm0,(%rsp)
   0.08%    ││ │    0x00007f377ac5bc24:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.05%    ││ │    0x00007f377ac5bc2a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.20%    ││ │    0x00007f377ac5bc30:   vpaddq %ymm5,%ymm0,%ymm0
   0.25%    ││ │    0x00007f377ac5bc34:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.07%    ││ │    0x00007f377ac5bc3a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.05%    ││ │    0x00007f377ac5bc40:   vpsrlq $0x1,%ymm1,%ymm2
   0.28%    ││ │    0x00007f377ac5bc45:   vpsllq $0x3f,%ymm1,%ymm3
   0.20%    ││ │    0x00007f377ac5bc4a:   vpor   %ymm2,%ymm3,%ymm3
   0.07%    ││ │    0x00007f377ac5bc4e:   vpsrlq $0x7,%ymm1,%ymm8
   0.05%    ││ │    0x00007f377ac5bc53:   mov    %rdx,%rdi
   0.19%    ││ │    0x00007f377ac5bc56:   rorx   $0x29,%rax,%r13
   0.17%    ││ │    0x00007f377ac5bc5c:   rorx   $0x12,%rax,%r14
   0.07%    ││ │    0x00007f377ac5bc62:   add    (%rsp),%r8
   0.04%    ││ │    0x00007f377ac5bc66:   or     %r10,%rdi
   0.21%    ││ │    0x00007f377ac5bc69:   mov    %rbx,%r15
   0.18%    ││ │    0x00007f377ac5bc6c:   xor    %rcx,%r15
   0.09%    ││ │    0x00007f377ac5bc6f:   rorx   $0x22,%rdx,%r12
   0.03%    ││ │    0x00007f377ac5bc75:   xor    %r14,%r13
   0.17%    ││ │    0x00007f377ac5bc78:   rorx   $0xe,%rax,%r14
   0.17%    ││ │    0x00007f377ac5bc7e:   and    %rax,%r15
   0.08%    ││ │    0x00007f377ac5bc81:   add    %r8,%r11
   0.05%    ││ │    0x00007f377ac5bc84:   and    %r9,%rdi
   0.23%    ││ │    0x00007f377ac5bc87:   xor    %r14,%r13
   0.21%    ││ │    0x00007f377ac5bc8a:   rorx   $0x27,%rdx,%r14
   0.06%    ││ │    0x00007f377ac5bc90:   xor    %r12,%r14
   0.03%    ││ │    0x00007f377ac5bc93:   rorx   $0x1c,%rdx,%r12
   0.17%    ││ │    0x00007f377ac5bc99:   xor    %rcx,%r15
   0.20%    ││ │    0x00007f377ac5bc9c:   xor    %r12,%r14
   0.07%    ││ │    0x00007f377ac5bc9f:   mov    %rdx,%r12
   0.04%    ││ │    0x00007f377ac5bca2:   and    %r10,%r12
   0.20%    ││ │    0x00007f377ac5bca5:   add    %r13,%r15
   0.18%    ││ │    0x00007f377ac5bca8:   or     %r12,%rdi
   0.06%    ││ │    0x00007f377ac5bcab:   add    %r14,%r8
   0.05%    ││ │    0x00007f377ac5bcae:   add    %r15,%r11
   0.20%    ││ │    0x00007f377ac5bcb1:   add    %r15,%r8
   0.14%    ││ │    0x00007f377ac5bcb4:   add    %rdi,%r8
   0.08%    ││ │    0x00007f377ac5bcb7:   vpsrlq $0x8,%ymm1,%ymm2
   0.03%    ││ │    0x00007f377ac5bcbc:   vpsllq $0x38,%ymm1,%ymm1
   0.18%    ││ │    0x00007f377ac5bcc1:   vpor   %ymm2,%ymm1,%ymm1
   0.18%    ││ │    0x00007f377ac5bcc5:   vpxor  %ymm8,%ymm3,%ymm3
   0.08%    ││ │    0x00007f377ac5bcca:   vpxor  %ymm1,%ymm3,%ymm1
   0.05%    ││ │    0x00007f377ac5bcce:   vpaddq %ymm1,%ymm0,%ymm0
   0.23%    ││ │    0x00007f377ac5bcd2:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.18%    ││ │    0x00007f377ac5bcd8:   vpand  %ymm10,%ymm0,%ymm0
   0.09%    ││ │    0x00007f377ac5bcdd:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.02%    ││ │    0x00007f377ac5bce3:   vpsrlq $0x6,%ymm2,%ymm8
   0.19%    ││ │    0x00007f377ac5bce8:   mov    %r8,%rdi
   0.20%    ││ │    0x00007f377ac5bceb:   rorx   $0x29,%r11,%r13
   0.08%    ││ │    0x00007f377ac5bcf1:   rorx   $0x12,%r11,%r14
   0.05%    ││ │    0x00007f377ac5bcf7:   add    0x8(%rsp),%rcx
   0.18%    ││ │    0x00007f377ac5bcfc:   or     %r9,%rdi
   0.18%    ││ │    0x00007f377ac5bcff:   mov    %rax,%r15
   0.09%    ││ │    0x00007f377ac5bd02:   xor    %rbx,%r15
   0.03%    ││ │    0x00007f377ac5bd05:   rorx   $0x22,%r8,%r12
   0.22%    ││ │    0x00007f377ac5bd0b:   xor    %r14,%r13
   0.17%    ││ │    0x00007f377ac5bd0e:   rorx   $0xe,%r11,%r14
   0.09%    ││ │    0x00007f377ac5bd14:   and    %r11,%r15
   0.03%    ││ │    0x00007f377ac5bd17:   add    %rcx,%r10
   0.20%    ││ │    0x00007f377ac5bd1a:   and    %rdx,%rdi
   0.17%    ││ │    0x00007f377ac5bd1d:   xor    %r14,%r13
   0.11%    ││ │    0x00007f377ac5bd20:   rorx   $0x27,%r8,%r14
   0.04%    ││ │    0x00007f377ac5bd26:   xor    %r12,%r14
   0.18%    ││ │    0x00007f377ac5bd29:   rorx   $0x1c,%r8,%r12
   0.16%    ││ │    0x00007f377ac5bd2f:   xor    %rbx,%r15
   0.07%    ││ │    0x00007f377ac5bd32:   xor    %r12,%r14
   0.04%    ││ │    0x00007f377ac5bd35:   mov    %r8,%r12
   0.18%    ││ │    0x00007f377ac5bd38:   and    %r9,%r12
   0.14%    ││ │    0x00007f377ac5bd3b:   add    %r13,%r15
   0.12%    ││ │    0x00007f377ac5bd3e:   or     %r12,%rdi
   0.05%    ││ │    0x00007f377ac5bd41:   add    %r14,%rcx
   0.18%    ││ │    0x00007f377ac5bd44:   add    %r15,%r10
   0.16%    ││ │    0x00007f377ac5bd47:   add    %r15,%rcx
   0.09%    ││ │    0x00007f377ac5bd4a:   add    %rdi,%rcx
   0.04%    ││ │    0x00007f377ac5bd4d:   vpsrlq $0x13,%ymm2,%ymm3
   0.19%    ││ │    0x00007f377ac5bd52:   vpsllq $0x2d,%ymm2,%ymm1
   0.15%    ││ │    0x00007f377ac5bd57:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007f377ac5bd5b:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f377ac5bd5f:   vpsrlq $0x3d,%ymm2,%ymm3
   0.16%    ││ │    0x00007f377ac5bd64:   vpsllq $0x3,%ymm2,%ymm1
   0.17%    ││ │    0x00007f377ac5bd69:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007f377ac5bd6d:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%    ││ │    0x00007f377ac5bd71:   vpaddq %ymm8,%ymm5,%ymm5
   0.19%    ││ │    0x00007f377ac5bd76:   vpsrlq $0x6,%ymm5,%ymm8
   0.17%    ││ │    0x00007f377ac5bd7b:   mov    %rcx,%rdi
   0.08%    ││ │    0x00007f377ac5bd7e:   rorx   $0x29,%r10,%r13
   0.04%    ││ │    0x00007f377ac5bd84:   rorx   $0x12,%r10,%r14
   0.18%    ││ │    0x00007f377ac5bd8a:   add    0x10(%rsp),%rbx
   0.22%    ││ │    0x00007f377ac5bd8f:   or     %rdx,%rdi
   0.08%    ││ │    0x00007f377ac5bd92:   mov    %r11,%r15
   0.04%    ││ │    0x00007f377ac5bd95:   xor    %rax,%r15
   0.18%    ││ │    0x00007f377ac5bd98:   rorx   $0x22,%rcx,%r12
   0.18%    ││ │    0x00007f377ac5bd9e:   xor    %r14,%r13
   0.08%    ││ │    0x00007f377ac5bda1:   rorx   $0xe,%r10,%r14
   0.03%    ││ │    0x00007f377ac5bda7:   and    %r10,%r15
   0.16%    ││ │    0x00007f377ac5bdaa:   add    %rbx,%r9
   0.17%    ││ │    0x00007f377ac5bdad:   and    %r8,%rdi
   0.09%    ││ │    0x00007f377ac5bdb0:   xor    %r14,%r13
   0.05%    ││ │    0x00007f377ac5bdb3:   rorx   $0x27,%rcx,%r14
   0.21%    ││ │    0x00007f377ac5bdb9:   xor    %r12,%r14
   0.18%    ││ │    0x00007f377ac5bdbc:   rorx   $0x1c,%rcx,%r12
   0.10%    ││ │    0x00007f377ac5bdc2:   xor    %rax,%r15
   0.03%    ││ │    0x00007f377ac5bdc5:   xor    %r12,%r14
   0.19%    ││ │    0x00007f377ac5bdc8:   mov    %rcx,%r12
   0.14%    ││ │    0x00007f377ac5bdcb:   and    %rdx,%r12
   0.07%    ││ │    0x00007f377ac5bdce:   add    %r13,%r15
   0.04%    ││ │    0x00007f377ac5bdd1:   or     %r12,%rdi
   0.18%    ││ │    0x00007f377ac5bdd4:   add    %r14,%rbx
   0.16%    ││ │    0x00007f377ac5bdd7:   add    %r15,%r9
   0.07%    ││ │    0x00007f377ac5bdda:   add    %r15,%rbx
   0.04%    ││ │    0x00007f377ac5bddd:   add    %rdi,%rbx
   0.18%    ││ │    0x00007f377ac5bde0:   vpsrlq $0x13,%ymm5,%ymm3
   0.18%    ││ │    0x00007f377ac5bde5:   vpsllq $0x2d,%ymm5,%ymm1
   0.09%    ││ │    0x00007f377ac5bdea:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │    0x00007f377ac5bdee:   vpxor  %ymm3,%ymm8,%ymm8
   0.18%    ││ │    0x00007f377ac5bdf2:   vpsrlq $0x3d,%ymm5,%ymm3
   0.19%    ││ │    0x00007f377ac5bdf7:   vpsllq $0x3,%ymm5,%ymm1
   0.09%    ││ │    0x00007f377ac5bdfc:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │    0x00007f377ac5be00:   vpxor  %ymm3,%ymm8,%ymm8
   0.19%    ││ │    0x00007f377ac5be04:   vpaddq %ymm8,%ymm0,%ymm2
   0.21%    ││ │    0x00007f377ac5be09:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.14%    ││ │    0x00007f377ac5be0f:   mov    %rbx,%rdi
   0.03%    ││ │    0x00007f377ac5be12:   rorx   $0x29,%r9,%r13
   0.20%    ││ │    0x00007f377ac5be18:   rorx   $0x12,%r9,%r14
   0.21%    ││ │    0x00007f377ac5be1e:   add    0x18(%rsp),%rax
   0.11%    ││ │    0x00007f377ac5be23:   or     %r8,%rdi
   0.05%    ││ │    0x00007f377ac5be26:   mov    %r10,%r15
   0.16%    ││ │    0x00007f377ac5be29:   xor    %r11,%r15
   0.15%    ││ │    0x00007f377ac5be2c:   rorx   $0x22,%rbx,%r12
   0.12%    ││ │    0x00007f377ac5be32:   xor    %r14,%r13
   0.05%    ││ │    0x00007f377ac5be35:   rorx   $0xe,%r9,%r14
   0.18%    ││ │    0x00007f377ac5be3b:   and    %r9,%r15
   0.17%    ││ │    0x00007f377ac5be3e:   add    %rax,%rdx
   0.13%    ││ │    0x00007f377ac5be41:   and    %rcx,%rdi
   0.04%    ││ │    0x00007f377ac5be44:   xor    %r14,%r13
   0.15%    ││ │    0x00007f377ac5be47:   rorx   $0x27,%rbx,%r14
   0.20%    ││ │    0x00007f377ac5be4d:   xor    %r12,%r14
   0.13%    ││ │    0x00007f377ac5be50:   rorx   $0x1c,%rbx,%r12
   0.03%    ││ │    0x00007f377ac5be56:   xor    %r11,%r15
   0.21%    ││ │    0x00007f377ac5be59:   xor    %r12,%r14
   0.17%    ││ │    0x00007f377ac5be5c:   mov    %rbx,%r12
   0.11%    ││ │    0x00007f377ac5be5f:   and    %r8,%r12
   0.04%    ││ │    0x00007f377ac5be62:   add    %r13,%r15
   0.14%    ││ │    0x00007f377ac5be65:   or     %r12,%rdi
   0.18%    ││ │    0x00007f377ac5be68:   add    %r14,%rax
   0.13%    ││ │    0x00007f377ac5be6b:   add    %r15,%rdx
   0.03%    ││ │    0x00007f377ac5be6e:   add    %r15,%rax
   0.17%    ││ │    0x00007f377ac5be71:   add    %rdi,%rax
   0.15%    ││ │    0x00007f377ac5be74:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.11%    ││ │    0x00007f377ac5be79:   vmovdqu %ymm0,(%rsp)
   0.04%    ││ │    0x00007f377ac5be7e:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.15%    ││ │    0x00007f377ac5be84:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.17%    ││ │    0x00007f377ac5be8a:   vpaddq %ymm6,%ymm0,%ymm0
   0.20%    ││ │    0x00007f377ac5be8e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.04%    ││ │    0x00007f377ac5be94:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.16%    ││ │    0x00007f377ac5be9a:   vpsrlq $0x1,%ymm1,%ymm2
   0.17%    ││ │    0x00007f377ac5be9f:   vpsllq $0x3f,%ymm1,%ymm3
   0.15%    ││ │    0x00007f377ac5bea4:   vpor   %ymm2,%ymm3,%ymm3
   0.04%    ││ │    0x00007f377ac5bea8:   vpsrlq $0x7,%ymm1,%ymm8
   0.17%    ││ │    0x00007f377ac5bead:   mov    %rax,%rdi
   0.17%    ││ │    0x00007f377ac5beb0:   rorx   $0x29,%rdx,%r13
   0.16%    ││ │    0x00007f377ac5beb6:   rorx   $0x12,%rdx,%r14
   0.04%    ││ │    0x00007f377ac5bebc:   add    (%rsp),%r11
   0.16%    ││ │    0x00007f377ac5bec0:   or     %rcx,%rdi
   0.16%    ││ │    0x00007f377ac5bec3:   mov    %r9,%r15
   0.14%    ││ │    0x00007f377ac5bec6:   xor    %r10,%r15
   0.04%    ││ │    0x00007f377ac5bec9:   rorx   $0x22,%rax,%r12
   0.15%    ││ │    0x00007f377ac5becf:   xor    %r14,%r13
   0.13%    ││ │    0x00007f377ac5bed2:   rorx   $0xe,%rdx,%r14
   0.14%    ││ │    0x00007f377ac5bed8:   and    %rdx,%r15
   0.05%    ││ │    0x00007f377ac5bedb:   add    %r11,%r8
   0.13%    ││ │    0x00007f377ac5bede:   and    %rbx,%rdi
   0.16%    ││ │    0x00007f377ac5bee1:   xor    %r14,%r13
   0.15%    ││ │    0x00007f377ac5bee4:   rorx   $0x27,%rax,%r14
   0.04%    ││ │    0x00007f377ac5beea:   xor    %r12,%r14
   0.13%    ││ │    0x00007f377ac5beed:   rorx   $0x1c,%rax,%r12
   0.16%    ││ │    0x00007f377ac5bef3:   xor    %r10,%r15
   0.16%    ││ │    0x00007f377ac5bef6:   xor    %r12,%r14
   0.03%    ││ │    0x00007f377ac5bef9:   mov    %rax,%r12
   0.12%    ││ │    0x00007f377ac5befc:   and    %rcx,%r12
   0.16%    ││ │    0x00007f377ac5beff:   add    %r13,%r15
   0.15%    ││ │    0x00007f377ac5bf02:   or     %r12,%rdi
   0.05%    ││ │    0x00007f377ac5bf05:   add    %r14,%r11
   0.17%    ││ │    0x00007f377ac5bf08:   add    %r15,%r8
   0.18%    ││ │    0x00007f377ac5bf0b:   add    %r15,%r11
   0.14%    ││ │    0x00007f377ac5bf0e:   add    %rdi,%r11
   0.05%    ││ │    0x00007f377ac5bf11:   vpsrlq $0x8,%ymm1,%ymm2
   0.15%    ││ │    0x00007f377ac5bf16:   vpsllq $0x38,%ymm1,%ymm1
   0.17%    ││ │    0x00007f377ac5bf1b:   vpor   %ymm2,%ymm1,%ymm1
   0.17%    ││ │    0x00007f377ac5bf1f:   vpxor  %ymm8,%ymm3,%ymm3
   0.03%    ││ │    0x00007f377ac5bf24:   vpxor  %ymm1,%ymm3,%ymm1
   0.17%    ││ │    0x00007f377ac5bf28:   vpaddq %ymm1,%ymm0,%ymm0
   0.17%    ││ │    0x00007f377ac5bf2c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.16%    ││ │    0x00007f377ac5bf32:   vpand  %ymm10,%ymm0,%ymm0
   0.06%    ││ │    0x00007f377ac5bf37:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.12%    ││ │    0x00007f377ac5bf3d:   vpsrlq $0x6,%ymm2,%ymm8
   0.14%    ││ │    0x00007f377ac5bf42:   mov    %r11,%rdi
   0.12%    ││ │    0x00007f377ac5bf45:   rorx   $0x29,%r8,%r13
   0.05%    ││ │    0x00007f377ac5bf4b:   rorx   $0x12,%r8,%r14
   0.16%    ││ │    0x00007f377ac5bf51:   add    0x8(%rsp),%r10
   0.14%    ││ │    0x00007f377ac5bf56:   or     %rbx,%rdi
   0.16%    ││ │    0x00007f377ac5bf59:   mov    %rdx,%r15
   0.05%    ││ │    0x00007f377ac5bf5c:   xor    %r9,%r15
   0.15%    ││ │    0x00007f377ac5bf5f:   rorx   $0x22,%r11,%r12
   0.12%    ││ │    0x00007f377ac5bf65:   xor    %r14,%r13
   0.13%    ││ │    0x00007f377ac5bf68:   rorx   $0xe,%r8,%r14
   0.06%    ││ │    0x00007f377ac5bf6e:   and    %r8,%r15
   0.10%    ││ │    0x00007f377ac5bf71:   add    %r10,%rcx
   0.13%    ││ │    0x00007f377ac5bf74:   and    %rax,%rdi
   0.13%    ││ │    0x00007f377ac5bf77:   xor    %r14,%r13
   0.05%    ││ │    0x00007f377ac5bf7a:   rorx   $0x27,%r11,%r14
   0.16%    ││ │    0x00007f377ac5bf80:   xor    %r12,%r14
   0.13%    ││ │    0x00007f377ac5bf83:   rorx   $0x1c,%r11,%r12
   0.18%    ││ │    0x00007f377ac5bf89:   xor    %r9,%r15
   0.05%    ││ │    0x00007f377ac5bf8c:   xor    %r12,%r14
   0.16%    ││ │    0x00007f377ac5bf8f:   mov    %r11,%r12
   0.14%    ││ │    0x00007f377ac5bf92:   and    %rbx,%r12
   0.14%    ││ │    0x00007f377ac5bf95:   add    %r13,%r15
   0.05%    ││ │    0x00007f377ac5bf98:   or     %r12,%rdi
   0.15%    ││ │    0x00007f377ac5bf9b:   add    %r14,%r10
   0.14%    ││ │    0x00007f377ac5bf9e:   add    %r15,%rcx
   0.13%    ││ │    0x00007f377ac5bfa1:   add    %r15,%r10
   0.06%    ││ │    0x00007f377ac5bfa4:   add    %rdi,%r10
   0.15%    ││ │    0x00007f377ac5bfa7:   vpsrlq $0x13,%ymm2,%ymm3
   0.15%    ││ │    0x00007f377ac5bfac:   vpsllq $0x2d,%ymm2,%ymm1
   0.16%    ││ │    0x00007f377ac5bfb1:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │    0x00007f377ac5bfb5:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%    ││ │    0x00007f377ac5bfb9:   vpsrlq $0x3d,%ymm2,%ymm3
   0.17%    ││ │    0x00007f377ac5bfbe:   vpsllq $0x3,%ymm2,%ymm1
   0.17%    ││ │    0x00007f377ac5bfc3:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007f377ac5bfc7:   vpxor  %ymm3,%ymm8,%ymm8
   0.16%    ││ │    0x00007f377ac5bfcb:   vpaddq %ymm8,%ymm6,%ymm6
   0.14%    ││ │    0x00007f377ac5bfd0:   vpsrlq $0x6,%ymm6,%ymm8
   0.14%    ││ │    0x00007f377ac5bfd5:   mov    %r10,%rdi
   0.05%    ││ │    0x00007f377ac5bfd8:   rorx   $0x29,%rcx,%r13
   0.14%    ││ │    0x00007f377ac5bfde:   rorx   $0x12,%rcx,%r14
   0.11%    ││ │    0x00007f377ac5bfe4:   add    0x10(%rsp),%r9
   0.16%    ││ │    0x00007f377ac5bfe9:   or     %rax,%rdi
   0.05%    ││ │    0x00007f377ac5bfec:   mov    %r8,%r15
   0.15%    ││ │    0x00007f377ac5bfef:   xor    %rdx,%r15
   0.16%    ││ │    0x00007f377ac5bff2:   rorx   $0x22,%r10,%r12
   0.18%    ││ │    0x00007f377ac5bff8:   xor    %r14,%r13
   0.04%    ││ │    0x00007f377ac5bffb:   rorx   $0xe,%rcx,%r14
   0.16%    ││ │    0x00007f377ac5c001:   and    %rcx,%r15
   0.13%    ││ │    0x00007f377ac5c004:   add    %r9,%rbx
   0.16%    ││ │    0x00007f377ac5c007:   and    %r11,%rdi
   0.05%    ││ │    0x00007f377ac5c00a:   xor    %r14,%r13
   0.11%    ││ │    0x00007f377ac5c00d:   rorx   $0x27,%r10,%r14
   0.13%    ││ │    0x00007f377ac5c013:   xor    %r12,%r14
   0.15%    ││ │    0x00007f377ac5c016:   rorx   $0x1c,%r10,%r12
   0.04%    ││ │    0x00007f377ac5c01c:   xor    %rdx,%r15
   0.17%    ││ │    0x00007f377ac5c01f:   xor    %r12,%r14
   0.13%    ││ │    0x00007f377ac5c022:   mov    %r10,%r12
   0.20%    ││ │    0x00007f377ac5c025:   and    %rax,%r12
   0.05%    ││ │    0x00007f377ac5c028:   add    %r13,%r15
   0.13%    ││ │    0x00007f377ac5c02b:   or     %r12,%rdi
   0.13%    ││ │    0x00007f377ac5c02e:   add    %r14,%r9
   0.17%    ││ │    0x00007f377ac5c031:   add    %r15,%rbx
   0.05%    ││ │    0x00007f377ac5c034:   add    %r15,%r9
   0.12%    ││ │    0x00007f377ac5c037:   add    %rdi,%r9
   0.17%    ││ │    0x00007f377ac5c03a:   vpsrlq $0x13,%ymm6,%ymm3
   0.16%    ││ │    0x00007f377ac5c03f:   vpsllq $0x2d,%ymm6,%ymm1
   0.06%    ││ │    0x00007f377ac5c044:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007f377ac5c048:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%    ││ │    0x00007f377ac5c04c:   vpsrlq $0x3d,%ymm6,%ymm3
   0.17%    ││ │    0x00007f377ac5c051:   vpsllq $0x3,%ymm6,%ymm1
   0.06%    ││ │    0x00007f377ac5c056:   vpor   %ymm1,%ymm3,%ymm3
   0.17%    ││ │    0x00007f377ac5c05a:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%    ││ │    0x00007f377ac5c05e:   vpaddq %ymm8,%ymm0,%ymm2
   0.18%    ││ │    0x00007f377ac5c063:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.11%    ││ │    0x00007f377ac5c069:   mov    %r9,%rdi
   0.12%    ││ │    0x00007f377ac5c06c:   rorx   $0x29,%rbx,%r13
   0.08%    ││ │    0x00007f377ac5c072:   rorx   $0x12,%rbx,%r14
   0.13%    ││ │    0x00007f377ac5c078:   add    0x18(%rsp),%rdx
   0.10%    ││ │    0x00007f377ac5c07d:   or     %r11,%rdi
   0.12%    ││ │    0x00007f377ac5c080:   mov    %rcx,%r15
   0.11%    ││ │    0x00007f377ac5c083:   xor    %r8,%r15
   0.14%    ││ │    0x00007f377ac5c086:   rorx   $0x22,%r9,%r12
   0.14%    ││ │    0x00007f377ac5c08c:   xor    %r14,%r13
   0.15%    ││ │    0x00007f377ac5c08f:   rorx   $0xe,%rbx,%r14
   0.10%    ││ │    0x00007f377ac5c095:   and    %rbx,%r15
   0.16%    ││ │    0x00007f377ac5c098:   add    %rdx,%rax
   0.12%    ││ │    0x00007f377ac5c09b:   and    %r10,%rdi
   0.13%    ││ │    0x00007f377ac5c09e:   xor    %r14,%r13
   0.12%    ││ │    0x00007f377ac5c0a1:   rorx   $0x27,%r9,%r14
   0.13%    ││ │    0x00007f377ac5c0a7:   xor    %r12,%r14
   0.10%    ││ │    0x00007f377ac5c0aa:   rorx   $0x1c,%r9,%r12
   0.14%    ││ │    0x00007f377ac5c0b0:   xor    %r8,%r15
   0.08%    ││ │    0x00007f377ac5c0b3:   xor    %r12,%r14
   0.16%    ││ │    0x00007f377ac5c0b6:   mov    %r9,%r12
   0.12%    ││ │    0x00007f377ac5c0b9:   and    %r11,%r12
   0.17%    ││ │    0x00007f377ac5c0bc:   add    %r13,%r15
   0.11%    ││ │    0x00007f377ac5c0bf:   or     %r12,%rdi
   0.15%    ││ │    0x00007f377ac5c0c2:   add    %r14,%rdx
   0.09%    ││ │    0x00007f377ac5c0c5:   add    %r15,%rax
   0.13%    ││ │    0x00007f377ac5c0c8:   add    %r15,%rdx
   0.11%    ││ │    0x00007f377ac5c0cb:   add    %rdi,%rdx
   0.13%    ││ │    0x00007f377ac5c0ce:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.14%    ││ │    0x00007f377ac5c0d3:   vmovdqu %ymm0,(%rsp)
   0.16%    ││ │    0x00007f377ac5c0d8:   add    $0x80,%rbp
   0.12%    ││ │    0x00007f377ac5c0df:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.14%    ││ │    0x00007f377ac5c0e5:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.11%    ││ │    0x00007f377ac5c0eb:   vpaddq %ymm7,%ymm0,%ymm0
   0.29%    ││ │    0x00007f377ac5c0ef:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.08%    ││ │    0x00007f377ac5c0f5:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.15%    ││ │    0x00007f377ac5c0fb:   vpsrlq $0x1,%ymm1,%ymm2
   0.15%    ││ │    0x00007f377ac5c100:   vpsllq $0x3f,%ymm1,%ymm3
   0.20%    ││ │    0x00007f377ac5c105:   vpor   %ymm2,%ymm3,%ymm3
   0.12%    ││ │    0x00007f377ac5c109:   vpsrlq $0x7,%ymm1,%ymm8
   0.11%    ││ │    0x00007f377ac5c10e:   mov    %rdx,%rdi
   0.09%    ││ │    0x00007f377ac5c111:   rorx   $0x29,%rax,%r13
   0.14%    ││ │    0x00007f377ac5c117:   rorx   $0x12,%rax,%r14
   0.13%    ││ │    0x00007f377ac5c11d:   add    (%rsp),%r8
   0.13%    ││ │    0x00007f377ac5c121:   or     %r10,%rdi
   0.09%    ││ │    0x00007f377ac5c124:   mov    %rbx,%r15
   0.16%    ││ │    0x00007f377ac5c127:   xor    %rcx,%r15
   0.09%    ││ │    0x00007f377ac5c12a:   rorx   $0x22,%rdx,%r12
   0.10%    ││ │    0x00007f377ac5c130:   xor    %r14,%r13
   0.11%    ││ │    0x00007f377ac5c133:   rorx   $0xe,%rax,%r14
   0.14%    ││ │    0x00007f377ac5c139:   and    %rax,%r15
   0.12%    ││ │    0x00007f377ac5c13c:   add    %r8,%r11
   0.10%    ││ │    0x00007f377ac5c13f:   and    %r9,%rdi
   0.12%    ││ │    0x00007f377ac5c142:   xor    %r14,%r13
   0.16%    ││ │    0x00007f377ac5c145:   rorx   $0x27,%rdx,%r14
   0.12%    ││ │    0x00007f377ac5c14b:   xor    %r12,%r14
   0.12%    ││ │    0x00007f377ac5c14e:   rorx   $0x1c,%rdx,%r12
   0.12%    ││ │    0x00007f377ac5c154:   xor    %rcx,%r15
   0.17%    ││ │    0x00007f377ac5c157:   xor    %r12,%r14
   0.10%    ││ │    0x00007f377ac5c15a:   mov    %rdx,%r12
   0.10%    ││ │    0x00007f377ac5c15d:   and    %r10,%r12
   0.11%    ││ │    0x00007f377ac5c160:   add    %r13,%r15
   0.15%    ││ │    0x00007f377ac5c163:   or     %r12,%rdi
   0.10%    ││ │    0x00007f377ac5c166:   add    %r14,%r8
   0.09%    ││ │    0x00007f377ac5c169:   add    %r15,%r11
   0.09%    ││ │    0x00007f377ac5c16c:   add    %r15,%r8
   0.16%    ││ │    0x00007f377ac5c16f:   add    %rdi,%r8
   0.11%    ││ │    0x00007f377ac5c172:   vpsrlq $0x8,%ymm1,%ymm2
   0.08%    ││ │    0x00007f377ac5c177:   vpsllq $0x38,%ymm1,%ymm1
   0.11%    ││ │    0x00007f377ac5c17c:   vpor   %ymm2,%ymm1,%ymm1
   0.19%    ││ │    0x00007f377ac5c180:   vpxor  %ymm8,%ymm3,%ymm3
   0.15%    ││ │    0x00007f377ac5c185:   vpxor  %ymm1,%ymm3,%ymm1
   0.13%    ││ │    0x00007f377ac5c189:   vpaddq %ymm1,%ymm0,%ymm0
   0.08%    ││ │    0x00007f377ac5c18d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.17%    ││ │    0x00007f377ac5c193:   vpand  %ymm10,%ymm0,%ymm0
   0.11%    ││ │    0x00007f377ac5c198:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.11%    ││ │    0x00007f377ac5c19e:   vpsrlq $0x6,%ymm2,%ymm8
   0.09%    ││ │    0x00007f377ac5c1a3:   mov    %r8,%rdi
   0.14%    ││ │    0x00007f377ac5c1a6:   rorx   $0x29,%r11,%r13
   0.11%    ││ │    0x00007f377ac5c1ac:   rorx   $0x12,%r11,%r14
   0.12%    ││ │    0x00007f377ac5c1b2:   add    0x8(%rsp),%rcx
   0.12%    ││ │    0x00007f377ac5c1b7:   or     %r9,%rdi
   0.19%    ││ │    0x00007f377ac5c1ba:   mov    %rax,%r15
   0.15%    ││ │    0x00007f377ac5c1bd:   xor    %rbx,%r15
   0.12%    ││ │    0x00007f377ac5c1c0:   rorx   $0x22,%r8,%r12
   0.12%    ││ │    0x00007f377ac5c1c6:   xor    %r14,%r13
   0.20%    ││ │    0x00007f377ac5c1c9:   rorx   $0xe,%r11,%r14
   0.11%    ││ │    0x00007f377ac5c1cf:   and    %r11,%r15
   0.13%    ││ │    0x00007f377ac5c1d2:   add    %rcx,%r10
   0.08%    ││ │    0x00007f377ac5c1d5:   and    %rdx,%rdi
   0.16%    ││ │    0x00007f377ac5c1d8:   xor    %r14,%r13
   0.09%    ││ │    0x00007f377ac5c1db:   rorx   $0x27,%r8,%r14
   0.12%    ││ │    0x00007f377ac5c1e1:   xor    %r12,%r14
   0.11%    ││ │    0x00007f377ac5c1e4:   rorx   $0x1c,%r8,%r12
   0.16%    ││ │    0x00007f377ac5c1ea:   xor    %rbx,%r15
   0.14%    ││ │    0x00007f377ac5c1ed:   xor    %r12,%r14
   0.11%    ││ │    0x00007f377ac5c1f0:   mov    %r8,%r12
   0.09%    ││ │    0x00007f377ac5c1f3:   and    %r9,%r12
   0.20%    ││ │    0x00007f377ac5c1f6:   add    %r13,%r15
   0.11%    ││ │    0x00007f377ac5c1f9:   or     %r12,%rdi
   0.11%    ││ │    0x00007f377ac5c1fc:   add    %r14,%rcx
   0.08%    ││ │    0x00007f377ac5c1ff:   add    %r15,%r10
   0.16%    ││ │    0x00007f377ac5c202:   add    %r15,%rcx
   0.14%    ││ │    0x00007f377ac5c205:   add    %rdi,%rcx
   0.11%    ││ │    0x00007f377ac5c208:   vpsrlq $0x13,%ymm2,%ymm3
   0.12%    ││ │    0x00007f377ac5c20d:   vpsllq $0x2d,%ymm2,%ymm1
   0.21%    ││ │    0x00007f377ac5c212:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007f377ac5c216:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%    ││ │    0x00007f377ac5c21a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.09%    ││ │    0x00007f377ac5c21f:   vpsllq $0x3,%ymm2,%ymm1
   0.19%    ││ │    0x00007f377ac5c224:   vpor   %ymm1,%ymm3,%ymm3
   0.11%    ││ │    0x00007f377ac5c228:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%    ││ │    0x00007f377ac5c22c:   vpaddq %ymm8,%ymm7,%ymm7
   0.09%    ││ │    0x00007f377ac5c231:   vpsrlq $0x6,%ymm7,%ymm8
   0.19%    ││ │    0x00007f377ac5c236:   mov    %rcx,%rdi
   0.11%    ││ │    0x00007f377ac5c239:   rorx   $0x29,%r10,%r13
   0.09%    ││ │    0x00007f377ac5c23f:   rorx   $0x12,%r10,%r14
   0.09%    ││ │    0x00007f377ac5c245:   add    0x10(%rsp),%rbx
   0.20%    ││ │    0x00007f377ac5c24a:   or     %rdx,%rdi
   0.10%    ││ │    0x00007f377ac5c24d:   mov    %r11,%r15
   0.09%    ││ │    0x00007f377ac5c250:   xor    %rax,%r15
   0.08%    ││ │    0x00007f377ac5c253:   rorx   $0x22,%rcx,%r12
   0.20%    ││ │    0x00007f377ac5c259:   xor    %r14,%r13
   0.11%    ││ │    0x00007f377ac5c25c:   rorx   $0xe,%r10,%r14
   0.11%    ││ │    0x00007f377ac5c262:   and    %r10,%r15
   0.07%    ││ │    0x00007f377ac5c265:   add    %rbx,%r9
   0.19%    ││ │    0x00007f377ac5c268:   and    %r8,%rdi
   0.10%    ││ │    0x00007f377ac5c26b:   xor    %r14,%r13
   0.11%    ││ │    0x00007f377ac5c26e:   rorx   $0x27,%rcx,%r14
   0.08%    ││ │    0x00007f377ac5c274:   xor    %r12,%r14
   0.15%    ││ │    0x00007f377ac5c277:   rorx   $0x1c,%rcx,%r12
   0.11%    ││ │    0x00007f377ac5c27d:   xor    %rax,%r15
   0.08%    ││ │    0x00007f377ac5c280:   xor    %r12,%r14
   0.11%    ││ │    0x00007f377ac5c283:   mov    %rcx,%r12
   0.23%    ││ │    0x00007f377ac5c286:   and    %rdx,%r12
   0.10%    ││ │    0x00007f377ac5c289:   add    %r13,%r15
   0.09%    ││ │    0x00007f377ac5c28c:   or     %r12,%rdi
   0.08%    ││ │    0x00007f377ac5c28f:   add    %r14,%rbx
   0.20%    ││ │    0x00007f377ac5c292:   add    %r15,%r9
   0.13%    ││ │    0x00007f377ac5c295:   add    %r15,%rbx
   0.09%    ││ │    0x00007f377ac5c298:   add    %rdi,%rbx
   0.08%    ││ │    0x00007f377ac5c29b:   vpsrlq $0x13,%ymm7,%ymm3
   0.19%    ││ │    0x00007f377ac5c2a0:   vpsllq $0x2d,%ymm7,%ymm1
   0.12%    ││ │    0x00007f377ac5c2a5:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │    0x00007f377ac5c2a9:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │    0x00007f377ac5c2ad:   vpsrlq $0x3d,%ymm7,%ymm3
   0.21%    ││ │    0x00007f377ac5c2b2:   vpsllq $0x3,%ymm7,%ymm1
   0.13%    ││ │    0x00007f377ac5c2b7:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007f377ac5c2bb:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%    ││ │    0x00007f377ac5c2bf:   vpaddq %ymm8,%ymm0,%ymm2
   0.18%    ││ │    0x00007f377ac5c2c4:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.22%    ││ │    0x00007f377ac5c2ca:   mov    %rbx,%rdi
   0.11%    ││ │    0x00007f377ac5c2cd:   rorx   $0x29,%r9,%r13
   0.08%    ││ │    0x00007f377ac5c2d3:   rorx   $0x12,%r9,%r14
   0.14%    ││ │    0x00007f377ac5c2d9:   add    0x18(%rsp),%rax
   0.15%    ││ │    0x00007f377ac5c2de:   or     %r8,%rdi
   0.08%    ││ │    0x00007f377ac5c2e1:   mov    %r10,%r15
   0.07%    ││ │    0x00007f377ac5c2e4:   xor    %r11,%r15
   0.14%    ││ │    0x00007f377ac5c2e7:   rorx   $0x22,%rbx,%r12
   0.18%    ││ │    0x00007f377ac5c2ed:   xor    %r14,%r13
   0.10%    ││ │    0x00007f377ac5c2f0:   rorx   $0xe,%r9,%r14
   0.06%    ││ │    0x00007f377ac5c2f6:   and    %r9,%r15
   0.15%    ││ │    0x00007f377ac5c2f9:   add    %rax,%rdx
   0.21%    ││ │    0x00007f377ac5c2fc:   and    %rcx,%rdi
   0.12%    ││ │    0x00007f377ac5c2ff:   xor    %r14,%r13
   0.08%    ││ │    0x00007f377ac5c302:   rorx   $0x27,%rbx,%r14
   0.16%    ││ │    0x00007f377ac5c308:   xor    %r12,%r14
   0.16%    ││ │    0x00007f377ac5c30b:   rorx   $0x1c,%rbx,%r12
   0.09%    ││ │    0x00007f377ac5c311:   xor    %r11,%r15
   0.06%    ││ │    0x00007f377ac5c314:   xor    %r12,%r14
   0.16%    ││ │    0x00007f377ac5c317:   mov    %rbx,%r12
   0.17%    ││ │    0x00007f377ac5c31a:   and    %r8,%r12
   0.11%    ││ │    0x00007f377ac5c31d:   add    %r13,%r15
   0.06%    ││ │    0x00007f377ac5c320:   or     %r12,%rdi
   0.17%    ││ │    0x00007f377ac5c323:   add    %r14,%rax
   0.14%    ││ │    0x00007f377ac5c326:   add    %r15,%rdx
   0.11%    ││ │    0x00007f377ac5c329:   add    %r15,%rax
   0.07%    ││ │    0x00007f377ac5c32c:   add    %rdi,%rax
   0.14%    ││ │    0x00007f377ac5c32f:   subq   $0x1,0x20(%rsp)
   0.32%    │╰ │    0x00007f377ac5c335:   jne    0x00007f377ac5b9c0
   0.03%    │  │    0x00007f377ac5c33b:   movq   $0x2,0x20(%rsp)
   0.04%    │ ↗│    0x00007f377ac5c344:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.06%    │ ││    0x00007f377ac5c349:   vmovdqu %ymm0,(%rsp)
   0.05%    │ ││    0x00007f377ac5c34e:   mov    %r9,%r15
   0.07%    │ ││    0x00007f377ac5c351:   rorx   $0x29,%rdx,%r13
   0.08%    │ ││    0x00007f377ac5c357:   rorx   $0x12,%rdx,%r14
   0.06%    │ ││    0x00007f377ac5c35d:   xor    %r10,%r15
   0.06%    │ ││    0x00007f377ac5c360:   xor    %r14,%r13
   0.07%    │ ││    0x00007f377ac5c363:   rorx   $0xe,%rdx,%r14
   0.05%    │ ││    0x00007f377ac5c369:   and    %rdx,%r15
   0.06%    │ ││    0x00007f377ac5c36c:   xor    %r14,%r13
   0.06%    │ ││    0x00007f377ac5c36f:   rorx   $0x22,%rax,%r12
   0.10%    │ ││    0x00007f377ac5c375:   xor    %r10,%r15
   0.05%    │ ││    0x00007f377ac5c378:   rorx   $0x27,%rax,%r14
   0.07%    │ ││    0x00007f377ac5c37e:   mov    %rax,%rdi
   0.06%    │ ││    0x00007f377ac5c381:   xor    %r12,%r14
   0.09%    │ ││    0x00007f377ac5c384:   rorx   $0x1c,%rax,%r12
   0.04%    │ ││    0x00007f377ac5c38a:   add    (%rsp),%r11
   0.07%    │ ││    0x00007f377ac5c38e:   or     %rcx,%rdi
   0.06%    │ ││    0x00007f377ac5c391:   xor    %r12,%r14
   0.07%    │ ││    0x00007f377ac5c394:   mov    %rax,%r12
   0.03%    │ ││    0x00007f377ac5c397:   and    %rbx,%rdi
   0.07%    │ ││    0x00007f377ac5c39a:   and    %rcx,%r12
   0.06%    │ ││    0x00007f377ac5c39d:   add    %r13,%r15
   0.06%    │ ││    0x00007f377ac5c3a0:   add    %r11,%r8
   0.08%    │ ││    0x00007f377ac5c3a3:   or     %r12,%rdi
   0.07%    │ ││    0x00007f377ac5c3a6:   add    %r14,%r11
   0.06%    │ ││    0x00007f377ac5c3a9:   add    %r15,%r8
   0.07%    │ ││    0x00007f377ac5c3ac:   add    %r15,%r11
   0.05%    │ ││    0x00007f377ac5c3af:   mov    %rdx,%r15
   0.06%    │ ││    0x00007f377ac5c3b2:   rorx   $0x29,%r8,%r13
   0.06%    │ ││    0x00007f377ac5c3b8:   rorx   $0x12,%r8,%r14
   0.07%    │ ││    0x00007f377ac5c3be:   xor    %r9,%r15
   0.05%    │ ││    0x00007f377ac5c3c1:   xor    %r14,%r13
   0.07%    │ ││    0x00007f377ac5c3c4:   rorx   $0xe,%r8,%r14
   0.04%    │ ││    0x00007f377ac5c3ca:   and    %r8,%r15
   0.09%    │ ││    0x00007f377ac5c3cd:   add    %rdi,%r11
   0.06%    │ ││    0x00007f377ac5c3d0:   xor    %r14,%r13
   0.07%    │ ││    0x00007f377ac5c3d3:   rorx   $0x22,%r11,%r12
   0.07%    │ ││    0x00007f377ac5c3d9:   xor    %r9,%r15
   0.09%    │ ││    0x00007f377ac5c3dc:   rorx   $0x27,%r11,%r14
   0.05%    │ ││    0x00007f377ac5c3e2:   mov    %r11,%rdi
   0.07%    │ ││    0x00007f377ac5c3e5:   xor    %r12,%r14
   0.06%    │ ││    0x00007f377ac5c3e8:   rorx   $0x1c,%r11,%r12
   0.08%    │ ││    0x00007f377ac5c3ee:   add    0x8(%rsp),%r10
   0.04%    │ ││    0x00007f377ac5c3f3:   or     %rbx,%rdi
   0.07%    │ ││    0x00007f377ac5c3f6:   xor    %r12,%r14
   0.07%    │ ││    0x00007f377ac5c3f9:   mov    %r11,%r12
   0.06%    │ ││    0x00007f377ac5c3fc:   and    %rax,%rdi
   0.04%    │ ││    0x00007f377ac5c3ff:   and    %rbx,%r12
   0.07%    │ ││    0x00007f377ac5c402:   add    %r13,%r15
   0.08%    │ ││    0x00007f377ac5c405:   add    %r10,%rcx
   0.07%    │ ││    0x00007f377ac5c408:   or     %r12,%rdi
   0.06%    │ ││    0x00007f377ac5c40b:   add    %r14,%r10
   0.07%    │ ││    0x00007f377ac5c40e:   add    %r15,%rcx
   0.06%    │ ││    0x00007f377ac5c411:   add    %r15,%r10
   0.08%    │ ││    0x00007f377ac5c414:   mov    %r8,%r15
   0.06%    │ ││    0x00007f377ac5c417:   rorx   $0x29,%rcx,%r13
   0.08%    │ ││    0x00007f377ac5c41d:   rorx   $0x12,%rcx,%r14
   0.06%    │ ││    0x00007f377ac5c423:   xor    %rdx,%r15
   0.07%    │ ││    0x00007f377ac5c426:   xor    %r14,%r13
   0.09%    │ ││    0x00007f377ac5c429:   rorx   $0xe,%rcx,%r14
   0.07%    │ ││    0x00007f377ac5c42f:   and    %rcx,%r15
   0.06%    │ ││    0x00007f377ac5c432:   add    %rdi,%r10
   0.06%    │ ││    0x00007f377ac5c435:   xor    %r14,%r13
   0.06%    │ ││    0x00007f377ac5c438:   rorx   $0x22,%r10,%r12
   0.08%    │ ││    0x00007f377ac5c43e:   xor    %rdx,%r15
   0.06%    │ ││    0x00007f377ac5c441:   rorx   $0x27,%r10,%r14
   0.07%    │ ││    0x00007f377ac5c447:   mov    %r10,%rdi
   0.06%    │ ││    0x00007f377ac5c44a:   xor    %r12,%r14
   0.08%    │ ││    0x00007f377ac5c44d:   rorx   $0x1c,%r10,%r12
   0.06%    │ ││    0x00007f377ac5c453:   add    0x10(%rsp),%r9
   0.04%    │ ││    0x00007f377ac5c458:   or     %rax,%rdi
   0.05%    │ ││    0x00007f377ac5c45b:   xor    %r12,%r14
   0.08%    │ ││    0x00007f377ac5c45e:   mov    %r10,%r12
   0.07%    │ ││    0x00007f377ac5c461:   and    %r11,%rdi
   0.06%    │ ││    0x00007f377ac5c464:   and    %rax,%r12
   0.07%    │ ││    0x00007f377ac5c467:   add    %r13,%r15
   0.08%    │ ││    0x00007f377ac5c46a:   add    %r9,%rbx
   0.07%    │ ││    0x00007f377ac5c46d:   or     %r12,%rdi
   0.07%    │ ││    0x00007f377ac5c470:   add    %r14,%r9
   0.04%    │ ││    0x00007f377ac5c473:   add    %r15,%rbx
   0.08%    │ ││    0x00007f377ac5c476:   add    %r15,%r9
   0.06%    │ ││    0x00007f377ac5c479:   mov    %rcx,%r15
   0.05%    │ ││    0x00007f377ac5c47c:   rorx   $0x29,%rbx,%r13
   0.06%    │ ││    0x00007f377ac5c482:   rorx   $0x12,%rbx,%r14
   0.09%    │ ││    0x00007f377ac5c488:   xor    %r8,%r15
   0.07%    │ ││    0x00007f377ac5c48b:   xor    %r14,%r13
   0.06%    │ ││    0x00007f377ac5c48e:   rorx   $0xe,%rbx,%r14
   0.06%    │ ││    0x00007f377ac5c494:   and    %rbx,%r15
   0.06%    │ ││    0x00007f377ac5c497:   add    %rdi,%r9
   0.04%    │ ││    0x00007f377ac5c49a:   xor    %r14,%r13
   0.06%    │ ││    0x00007f377ac5c49d:   rorx   $0x22,%r9,%r12
   0.06%    │ ││    0x00007f377ac5c4a3:   xor    %r8,%r15
   0.09%    │ ││    0x00007f377ac5c4a6:   rorx   $0x27,%r9,%r14
   0.05%    │ ││    0x00007f377ac5c4ac:   mov    %r9,%rdi
   0.07%    │ ││    0x00007f377ac5c4af:   xor    %r12,%r14
   0.06%    │ ││    0x00007f377ac5c4b2:   rorx   $0x1c,%r9,%r12
   0.07%    │ ││    0x00007f377ac5c4b8:   add    0x18(%rsp),%rdx
   0.05%    │ ││    0x00007f377ac5c4bd:   or     %r11,%rdi
   0.05%    │ ││    0x00007f377ac5c4c0:   xor    %r12,%r14
   0.08%    │ ││    0x00007f377ac5c4c3:   mov    %r9,%r12
   0.08%    │ ││    0x00007f377ac5c4c6:   and    %r10,%rdi
   0.07%    │ ││    0x00007f377ac5c4c9:   and    %r11,%r12
   0.06%    │ ││    0x00007f377ac5c4cc:   add    %r13,%r15
   0.06%    │ ││    0x00007f377ac5c4cf:   add    %rdx,%rax
   0.07%    │ ││    0x00007f377ac5c4d2:   or     %r12,%rdi
   0.07%    │ ││    0x00007f377ac5c4d5:   add    %r14,%rdx
   0.04%    │ ││    0x00007f377ac5c4d8:   add    %r15,%rax
   0.07%    │ ││    0x00007f377ac5c4db:   add    %r15,%rdx
   0.06%    │ ││    0x00007f377ac5c4de:   add    %rdi,%rdx
   0.08%    │ ││    0x00007f377ac5c4e1:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.05%    │ ││    0x00007f377ac5c4e6:   vmovdqu %ymm0,(%rsp)
   0.03%    │ ││    0x00007f377ac5c4eb:   add    $0x40,%rbp
   0.08%    │ ││    0x00007f377ac5c4ef:   mov    %rbx,%r15
   0.08%    │ ││    0x00007f377ac5c4f2:   rorx   $0x29,%rax,%r13
   0.04%    │ ││    0x00007f377ac5c4f8:   rorx   $0x12,%rax,%r14
   0.04%    │ ││    0x00007f377ac5c4fe:   xor    %rcx,%r15
   0.08%    │ ││    0x00007f377ac5c501:   xor    %r14,%r13
   0.10%    │ ││    0x00007f377ac5c504:   rorx   $0xe,%rax,%r14
   0.06%    │ ││    0x00007f377ac5c50a:   and    %rax,%r15
   0.03%    │ ││    0x00007f377ac5c50d:   xor    %r14,%r13
   0.05%    │ ││    0x00007f377ac5c510:   rorx   $0x22,%rdx,%r12
   0.09%    │ ││    0x00007f377ac5c516:   xor    %rcx,%r15
   0.06%    │ ││    0x00007f377ac5c519:   rorx   $0x27,%rdx,%r14
   0.05%    │ ││    0x00007f377ac5c51f:   mov    %rdx,%rdi
   0.06%    │ ││    0x00007f377ac5c522:   xor    %r12,%r14
   0.07%    │ ││    0x00007f377ac5c525:   rorx   $0x1c,%rdx,%r12
   0.07%    │ ││    0x00007f377ac5c52b:   add    (%rsp),%r8
   0.04%    │ ││    0x00007f377ac5c52f:   or     %r10,%rdi
   0.06%    │ ││    0x00007f377ac5c532:   xor    %r12,%r14
   0.09%    │ ││    0x00007f377ac5c535:   mov    %rdx,%r12
   0.06%    │ ││    0x00007f377ac5c538:   and    %r9,%rdi
   0.04%    │ ││    0x00007f377ac5c53b:   and    %r10,%r12
   0.08%    │ ││    0x00007f377ac5c53e:   add    %r13,%r15
   0.08%    │ ││    0x00007f377ac5c541:   add    %r8,%r11
   0.06%    │ ││    0x00007f377ac5c544:   or     %r12,%rdi
   0.05%    │ ││    0x00007f377ac5c547:   add    %r14,%r8
   0.06%    │ ││    0x00007f377ac5c54a:   add    %r15,%r11
   0.10%    │ ││    0x00007f377ac5c54d:   add    %r15,%r8
   0.06%    │ ││    0x00007f377ac5c550:   mov    %rax,%r15
   0.05%    │ ││    0x00007f377ac5c553:   rorx   $0x29,%r11,%r13
   0.06%    │ ││    0x00007f377ac5c559:   rorx   $0x12,%r11,%r14
   0.08%    │ ││    0x00007f377ac5c55f:   xor    %rbx,%r15
   0.05%    │ ││    0x00007f377ac5c562:   xor    %r14,%r13
   0.05%    │ ││    0x00007f377ac5c565:   rorx   $0xe,%r11,%r14
   0.07%    │ ││    0x00007f377ac5c56b:   and    %r11,%r15
   0.09%    │ ││    0x00007f377ac5c56e:   add    %rdi,%r8
   0.06%    │ ││    0x00007f377ac5c571:   xor    %r14,%r13
   0.06%    │ ││    0x00007f377ac5c574:   rorx   $0x22,%r8,%r12
   0.06%    │ ││    0x00007f377ac5c57a:   xor    %rbx,%r15
   0.08%    │ ││    0x00007f377ac5c57d:   rorx   $0x27,%r8,%r14
   0.07%    │ ││    0x00007f377ac5c583:   mov    %r8,%rdi
   0.05%    │ ││    0x00007f377ac5c586:   xor    %r12,%r14
   0.07%    │ ││    0x00007f377ac5c589:   rorx   $0x1c,%r8,%r12
   0.06%    │ ││    0x00007f377ac5c58f:   add    0x8(%rsp),%rcx
   0.05%    │ ││    0x00007f377ac5c594:   or     %r9,%rdi
   0.05%    │ ││    0x00007f377ac5c597:   xor    %r12,%r14
   0.08%    │ ││    0x00007f377ac5c59a:   mov    %r8,%r12
   0.05%    │ ││    0x00007f377ac5c59d:   and    %rdx,%rdi
   0.04%    │ ││    0x00007f377ac5c5a0:   and    %r9,%r12
   0.04%    │ ││    0x00007f377ac5c5a3:   add    %r13,%r15
   0.08%    │ ││    0x00007f377ac5c5a6:   add    %rcx,%r10
   0.06%    │ ││    0x00007f377ac5c5a9:   or     %r12,%rdi
   0.08%    │ ││    0x00007f377ac5c5ac:   add    %r14,%rcx
   0.04%    │ ││    0x00007f377ac5c5af:   add    %r15,%r10
   0.07%    │ ││    0x00007f377ac5c5b2:   add    %r15,%rcx
   0.09%    │ ││    0x00007f377ac5c5b5:   mov    %r11,%r15
   0.06%    │ ││    0x00007f377ac5c5b8:   rorx   $0x29,%r10,%r13
   0.06%    │ ││    0x00007f377ac5c5be:   rorx   $0x12,%r10,%r14
   0.06%    │ ││    0x00007f377ac5c5c4:   xor    %rax,%r15
   0.08%    │ ││    0x00007f377ac5c5c7:   xor    %r14,%r13
   0.06%    │ ││    0x00007f377ac5c5ca:   rorx   $0xe,%r10,%r14
   0.04%    │ ││    0x00007f377ac5c5d0:   and    %r10,%r15
   0.12%    │ ││    0x00007f377ac5c5d3:   add    %rdi,%rcx
   0.06%    │ ││    0x00007f377ac5c5d6:   xor    %r14,%r13
   0.06%    │ ││    0x00007f377ac5c5d9:   rorx   $0x22,%rcx,%r12
   0.06%    │ ││    0x00007f377ac5c5df:   xor    %rax,%r15
   0.07%    │ ││    0x00007f377ac5c5e2:   rorx   $0x27,%rcx,%r14
   0.05%    │ ││    0x00007f377ac5c5e8:   mov    %rcx,%rdi
   0.05%    │ ││    0x00007f377ac5c5eb:   xor    %r12,%r14
   0.08%    │ ││    0x00007f377ac5c5ee:   rorx   $0x1c,%rcx,%r12
   0.08%    │ ││    0x00007f377ac5c5f4:   add    0x10(%rsp),%rbx
   0.03%    │ ││    0x00007f377ac5c5f9:   or     %rdx,%rdi
   0.05%    │ ││    0x00007f377ac5c5fc:   xor    %r12,%r14
   0.06%    │ ││    0x00007f377ac5c5ff:   mov    %rcx,%r12
   0.07%    │ ││    0x00007f377ac5c602:   and    %r8,%rdi
   0.06%    │ ││    0x00007f377ac5c605:   and    %rdx,%r12
   0.04%    │ ││    0x00007f377ac5c608:   add    %r13,%r15
   0.06%    │ ││    0x00007f377ac5c60b:   add    %rbx,%r9
   0.06%    │ ││    0x00007f377ac5c60e:   or     %r12,%rdi
   0.05%    │ ││    0x00007f377ac5c611:   add    %r14,%rbx
   0.05%    │ ││    0x00007f377ac5c614:   add    %r15,%r9
   0.07%    │ ││    0x00007f377ac5c617:   add    %r15,%rbx
   0.08%    │ ││    0x00007f377ac5c61a:   mov    %r10,%r15
   0.05%    │ ││    0x00007f377ac5c61d:   rorx   $0x29,%r9,%r13
   0.07%    │ ││    0x00007f377ac5c623:   rorx   $0x12,%r9,%r14
   0.08%    │ ││    0x00007f377ac5c629:   xor    %r11,%r15
   0.08%    │ ││    0x00007f377ac5c62c:   xor    %r14,%r13
   0.07%    │ ││    0x00007f377ac5c62f:   rorx   $0xe,%r9,%r14
   0.04%    │ ││    0x00007f377ac5c635:   and    %r9,%r15
   0.08%    │ ││    0x00007f377ac5c638:   add    %rdi,%rbx
   0.08%    │ ││    0x00007f377ac5c63b:   xor    %r14,%r13
   0.10%    │ ││    0x00007f377ac5c63e:   rorx   $0x22,%rbx,%r12
   0.06%    │ ││    0x00007f377ac5c644:   xor    %r11,%r15
   0.06%    │ ││    0x00007f377ac5c647:   rorx   $0x27,%rbx,%r14
   0.07%    │ ││    0x00007f377ac5c64d:   mov    %rbx,%rdi
   0.05%    │ ││    0x00007f377ac5c650:   xor    %r12,%r14
   0.08%    │ ││    0x00007f377ac5c653:   rorx   $0x1c,%rbx,%r12
   0.07%    │ ││    0x00007f377ac5c659:   add    0x18(%rsp),%rax
   0.07%    │ ││    0x00007f377ac5c65e:   or     %r8,%rdi
   0.07%    │ ││    0x00007f377ac5c661:   xor    %r12,%r14
   0.06%    │ ││    0x00007f377ac5c664:   mov    %rbx,%r12
   0.06%    │ ││    0x00007f377ac5c667:   and    %rcx,%rdi
   0.05%    │ ││    0x00007f377ac5c66a:   and    %r8,%r12
   0.07%    │ ││    0x00007f377ac5c66d:   add    %r13,%r15
   0.09%    │ ││    0x00007f377ac5c670:   add    %rax,%rdx
   0.04%    │ ││    0x00007f377ac5c673:   or     %r12,%rdi
   0.06%    │ ││    0x00007f377ac5c676:   add    %r14,%rax
   0.11%    │ ││    0x00007f377ac5c679:   add    %r15,%rdx
   0.09%    │ ││    0x00007f377ac5c67c:   add    %r15,%rax
   0.05%    │ ││    0x00007f377ac5c67f:   add    %rdi,%rax
   0.12%    │ ││    0x00007f377ac5c682:   vmovdqu %ymm6,%ymm4
   0.05%    │ ││    0x00007f377ac5c686:   vmovdqu %ymm7,%ymm5
   0.02%    │ ││    0x00007f377ac5c68a:   subq   $0x1,0x20(%rsp)
   0.21%    │ ╰│    0x00007f377ac5c690:   jne    0x00007f377ac5c344
   0.01%    │  │    0x00007f377ac5c696:   add    (%rsi),%rax
   0.00%    │  │    0x00007f377ac5c699:   mov    %rax,(%rsi)
   0.21%    │  │    0x00007f377ac5c69c:   add    0x8(%rsi),%rbx
   0.00%    │  │    0x00007f377ac5c6a0:   mov    %rbx,0x8(%rsi)
   0.00%    │  │    0x00007f377ac5c6a4:   add    0x10(%rsi),%rcx
   0.00%    │  │    0x00007f377ac5c6a8:   mov    %rcx,0x10(%rsi)
   0.12%    │  │    0x00007f377ac5c6ac:   add    0x18(%rsi),%r8
            │  │    0x00007f377ac5c6b0:   mov    %r8,0x18(%rsi)
   0.02%    │  │    0x00007f377ac5c6b4:   add    0x20(%rsi),%rdx
            │  │    0x00007f377ac5c6b8:   mov    %rdx,0x20(%rsi)
   0.13%    │  │    0x00007f377ac5c6bc:   add    0x28(%rsi),%r9
            │  │    0x00007f377ac5c6c0:   mov    %r9,0x28(%rsi)
   0.03%    │  │    0x00007f377ac5c6c4:   add    0x30(%rsi),%r10
            │  │    0x00007f377ac5c6c8:   mov    %r10,0x30(%rsi)
   0.11%    │  │    0x00007f377ac5c6cc:   add    0x38(%rsi),%r11
            │  │    0x00007f377ac5c6d0:   mov    %r11,0x38(%rsi)
   0.03%    │  │    0x00007f377ac5c6d4:   mov    0x28(%rsp),%rdi
            │  │    0x00007f377ac5c6d9:   add    $0x80,%rdi
   0.08%    │  │    0x00007f377ac5c6e0:   cmp    0x30(%rsp),%rdi
            │  ╰    0x00007f377ac5c6e5:   jne    0x00007f377ac5b97b
   0.01%    ↘       0x00007f377ac5c6eb:   mov    0x40(%rsp),%rbp
   0.00%            0x00007f377ac5c6f0:   mov    0x48(%rsp),%rbx
   0.00%            0x00007f377ac5c6f5:   mov    0x50(%rsp),%r12
                    0x00007f377ac5c6fa:   mov    0x58(%rsp),%r13
   0.00%            0x00007f377ac5c6ff:   mov    0x60(%rsp),%r14
   0.00%            0x00007f377ac5c704:   mov    0x68(%rsp),%r15
   0.00%            0x00007f377ac5c709:   mov    0x38(%rsp),%rsp
                    0x00007f377ac5c70e:   pop    %rcx
   0.01%            0x00007f377ac5c70f:   pop    %rdx
                    0x00007f377ac5c710:   mov    %rdx,%rax
   0.24%         ↗  0x00007f377ac5c713:   cmp    %rcx,%rax
                ╭│  0x00007f377ac5c716:   jae    0x00007f377ac5c720
   0.01%        ││  0x00007f377ac5c718:   add    $0x80,%rax
   0.01%        │╰  0x00007f377ac5c71e:   jmp    0x00007f377ac5c713
   0.03%        ↘   0x00007f377ac5c720:   vzeroupper 
   0.00%            0x00007f377ac5c723:   leave  
   0.01%            0x00007f377ac5c724:   ret    
                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::avx2_shuffle_base64 [0x00007f377ac5c740, 0x00007f377ac5c760] (32 bytes)
                  --------------------------------------------------------------------------------
....................................................................................................
  92.83%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.83%        runtime stub  StubRoutines::sha512_implCompressMB 
   3.87%                      <unknown> 
   0.47%              kernel  [unknown] 
   0.35%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1180 
   0.20%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.15%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1180 
   0.13%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1180 
   0.09%              kernel  [unknown] 
   0.08%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1180 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1183 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 1137 
   0.03%              kernel  [unknown] 
   0.03%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1208 
   1.37%  <...other 353 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.83%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.01%                      <unknown> 
   1.53%              kernel  [unknown] 
   0.76%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1180 
   0.20%      jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1185 
   0.20%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.10%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1183 
   0.04%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.04%      jvmci, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 1137 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1208 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1184 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.17%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.06%        runtime stub
   4.01%                    
   1.53%              kernel
   1.14%      jvmci, level 4
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA512, length = 16384)

# Run progress: 41.67% complete, ETA 00:13:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 45.331 us/op
# Warmup Iteration   2: 39.272 us/op
# Warmup Iteration   3: 39.264 us/op
# Warmup Iteration   4: 39.261 us/op
# Warmup Iteration   5: 39.253 us/op
Iteration   1: 39.252 us/op
Iteration   2: 39.255 us/op
Iteration   3: 39.256 us/op
Iteration   4: 39.259 us/op
Iteration   5: 39.262 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  39.257 ±(99.9%) 0.014 us/op [Average]
  (min, avg, max) = (39.252, 39.257, 39.262), stdev = 0.004
  CI (99.9%): [39.243, 39.271] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 268159 total address lines.
Perf output processed (skipped 61.324 seconds):
 Column 1: cycles (51015 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                                                                                                                                             --------------------------------------------------------------------------------
                                                                                                                                             - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                             <task_queued compile_id='9' method='java.lang.module.ModuleDescriptor$Exports &lt;init&gt; (Ljava/util/Set;Ljava/lang/String;Ljava/util/Set;Z)V' bytes='20' count='384' iicount='384' level='3' stamp='1.688' comment='tiered' hot_count='384'/>
                                                                                                                                             - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                             StubRoutines::sha512_implCompressMB [0x00007fa85ac5b8e0, 0x00007fa85ac5c725] (3653 bytes)
                                                                                                                                             --------------------------------------------------------------------------------
   0.00%                                                                                                                                       0x00007fa85ac5b8e0:   push   %rbp
                                                                                                                                               0x00007fa85ac5b8e1:   mov    %rsp,%rbp
   0.00%                                                                                                                                       0x00007fa85ac5b8e4:   push   %rdx
   0.00%                                                                                                                                       0x00007fa85ac5b8e5:   push   %rcx
   0.00%                                                                                                                                       0x00007fa85ac5b8e6:   mov    %rsp,%rax
                                                                                                                                               0x00007fa85ac5b8e9:   sub    $0x70,%rsp
   0.00%                                                                                                                                       0x00007fa85ac5b8ed:   and    $0xffffffffffffffe0,%rsp
                                                                                                                                               0x00007fa85ac5b8f1:   mov    %rax,0x38(%rsp)
   0.00%                                                                                                                                       0x00007fa85ac5b8f6:   mov    %rbp,0x40(%rsp)
   0.00%                                                                                                                                       0x00007fa85ac5b8fb:   mov    %rbx,0x48(%rsp)
                                                                                                                                               0x00007fa85ac5b900:   mov    %r12,0x50(%rsp)
                                                                                                                                               0x00007fa85ac5b905:   mov    %r13,0x58(%rsp)
                                                                                                                                               0x00007fa85ac5b90a:   mov    %r14,0x60(%rsp)
   0.00%                                                                                                                                       0x00007fa85ac5b90f:   mov    %r15,0x68(%rsp)
                                                                                                                                               0x00007fa85ac5b914:   vpblendd $0xf0,%xmm1,%xmm0,%xmm0
                                                                                                                                               0x00007fa85ac5b91a:   vpblendd $0xf0,%ymm1,%ymm0,%ymm0
                                                                                                                                               0x00007fa85ac5b920:   xor    %rax,%rax
   0.00%   ↗                                                                                                                                   0x00007fa85ac5b923:   cmp    %rcx,%rdx
          ╭│                                                                                                                                   0x00007fa85ac5b926:   jae    0x00007fa85ac5b937
   0.10%  ││                                                                                                                                   0x00007fa85ac5b928:   add    $0x80,%rdx
   0.05%  ││                                                                                                                                   0x00007fa85ac5b92f:   add    $0x80,%rax
   0.01%  │╰                                                                                                                                   0x00007fa85ac5b935:   jmp    0x00007fa85ac5b923
   0.01%  ↘                                                                                                                                    0x00007fa85ac5b937:   mov    %rax,%rdx
   0.00%                                                                                                                                       0x00007fa85ac5b93a:   cmp    $0x0,%rdx
            ╭                                                                                                                                  0x00007fa85ac5b93e:   je     0x00007fa85ac5c6eb
   0.01%    │                                                                                                                                  0x00007fa85ac5b944:   add    %rdi,%rdx
   0.00%    │                                                                                                                                  0x00007fa85ac5b947:   mov    %rdx,0x30(%rsp)
   0.01%    │                                                                                                                                  0x00007fa85ac5b94c:   mov    (%rsi),%rax
            │                                                                                                                                  0x00007fa85ac5b94f:   mov    0x8(%rsi),%rbx
            │                                                                                                                                  0x00007fa85ac5b953:   mov    0x10(%rsi),%rcx
            │                                                                                                                                  0x00007fa85ac5b957:   mov    0x18(%rsi),%r8
            │                                                                                                                                  0x00007fa85ac5b95b:   mov    0x20(%rsi),%rdx
            │                                                                                                                                  0x00007fa85ac5b95f:   mov    0x28(%rsi),%r9
            │                                                                                                                                  0x00007fa85ac5b963:   mov    0x38(%rsi),%r11
   0.00%    │                                                                                                                                  0x00007fa85ac5b967:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007fa85ac5aa80
   0.01%    │                                                                                                                                  0x00007fa85ac5b96f:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007fa85ac5aaa0
   0.00%    │                                                                                                                                  0x00007fa85ac5b977:   mov    0x30(%rsi),%r10
            │  ↗                                                                                                                               0x00007fa85ac5b97b:   movabs $0x7fa87394b840,%rbp
   0.03%    │  │                                                                                                                               0x00007fa85ac5b985:   vmovdqu (%rdi),%ymm4
   0.08%    │  │                                                                                                                               0x00007fa85ac5b989:   vpshufb %ymm9,%ymm4,%ymm4
   0.12%    │  │                                                                                                                               0x00007fa85ac5b98e:   vmovdqu 0x20(%rdi),%ymm5
   0.18%    │  │                                                                                                                               0x00007fa85ac5b993:   vpshufb %ymm9,%ymm5,%ymm5
   0.31%    │  │                                                                                                                               0x00007fa85ac5b998:   vmovdqu 0x40(%rdi),%ymm6
   0.00%    │  │                                                                                                                               0x00007fa85ac5b99d:   vpshufb %ymm9,%ymm6,%ymm6
   0.03%    │  │                                                                                                                               0x00007fa85ac5b9a2:   vmovdqu 0x60(%rdi),%ymm7
   0.14%    │  │                                                                                                                               0x00007fa85ac5b9a7:   vpshufb %ymm9,%ymm7,%ymm7
   0.33%    │  │                                                                                                                               0x00007fa85ac5b9ac:   mov    %rdi,0x28(%rsp)
            │  │                                                                                                                               0x00007fa85ac5b9b1:   movq   $0x4,0x20(%rsp)
   0.01%    │  │                                                                                                                               0x00007fa85ac5b9ba:   nopw   0x0(%rax,%rax,1)
   0.03%    │↗ │                                                                                                                               0x00007fa85ac5b9c0:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.30%    ││ │                                                                                                                               0x00007fa85ac5b9c5:   vmovdqu %ymm0,(%rsp)
   0.09%    ││ │                                                                                                                               0x00007fa85ac5b9ca:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.25%    ││ │                                                                                                                               0x00007fa85ac5b9d0:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.23%    ││ │                                                                                                                               0x00007fa85ac5b9d6:   vpaddq %ymm4,%ymm0,%ymm0
   0.68%    ││ │                                                                                                                               0x00007fa85ac5b9da:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.13%    ││ │                                                                                                                               0x00007fa85ac5b9e0:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.06%    ││ │                                                                                                                               0x00007fa85ac5b9e6:   vpsrlq $0x1,%ymm1,%ymm2
   0.05%    ││ │                                                                                                                               0x00007fa85ac5b9eb:   vpsllq $0x3f,%ymm1,%ymm3
   0.34%    ││ │                                                                                                                               0x00007fa85ac5b9f0:   vpor   %ymm2,%ymm3,%ymm3
   0.13%    ││ │                                                                                                                               0x00007fa85ac5b9f4:   vpsrlq $0x7,%ymm1,%ymm8
   0.04%    ││ │                                                                                                                               0x00007fa85ac5b9f9:   mov    %rax,%rdi
   0.05%    ││ │                                                                                                                               0x00007fa85ac5b9fc:   rorx   $0x29,%rdx,%r13
   0.26%    ││ │                                                                                                                               0x00007fa85ac5ba02:   rorx   $0x12,%rdx,%r14
   0.14%    ││ │                                                                                                                               0x00007fa85ac5ba08:   add    (%rsp),%r11
   0.06%    ││ │                                                                                                                               0x00007fa85ac5ba0c:   or     %rcx,%rdi
   0.03%    ││ │                                                                                                                               0x00007fa85ac5ba0f:   mov    %r9,%r15
   0.26%    ││ │                                                                                                                               0x00007fa85ac5ba12:   xor    %r10,%r15
   0.08%    ││ │                                                                                                                               0x00007fa85ac5ba15:   rorx   $0x22,%rax,%r12
   0.05%    ││ │                                                                                                                               0x00007fa85ac5ba1b:   xor    %r14,%r13
   0.04%    ││ │                                                                                                                               0x00007fa85ac5ba1e:   rorx   $0xe,%rdx,%r14
   0.29%    ││ │                                                                                                                               0x00007fa85ac5ba24:   and    %rdx,%r15
   0.13%    ││ │                                                                                                                               0x00007fa85ac5ba27:   add    %r11,%r8
   0.04%    ││ │                                                                                                                               0x00007fa85ac5ba2a:   and    %rbx,%rdi
   0.05%    ││ │                                                                                                                               0x00007fa85ac5ba2d:   xor    %r14,%r13
   0.29%    ││ │                                                                                                                               0x00007fa85ac5ba30:   rorx   $0x27,%rax,%r14
   0.13%    ││ │                                                                                                                               0x00007fa85ac5ba36:   xor    %r12,%r14
   0.05%    ││ │                                                                                                                               0x00007fa85ac5ba39:   rorx   $0x1c,%rax,%r12
   0.03%    ││ │                                                                                                                               0x00007fa85ac5ba3f:   xor    %r10,%r15
   0.27%    ││ │                                                                                                                               0x00007fa85ac5ba42:   xor    %r12,%r14
   0.11%    ││ │                                                                                                                               0x00007fa85ac5ba45:   mov    %rax,%r12
   0.05%    ││ │                                                                                                                               0x00007fa85ac5ba48:   and    %rcx,%r12
   0.03%    ││ │                                                                                                                               0x00007fa85ac5ba4b:   add    %r13,%r15
   0.25%    ││ │                                                                                                                               0x00007fa85ac5ba4e:   or     %r12,%rdi
   0.12%    ││ │                                                                                                                               0x00007fa85ac5ba51:   add    %r14,%r11
   0.05%    ││ │                                                                                                                               0x00007fa85ac5ba54:   add    %r15,%r8
   0.04%    ││ │                                                                                                                               0x00007fa85ac5ba57:   add    %r15,%r11
   0.31%    ││ │                                                                                                                               0x00007fa85ac5ba5a:   add    %rdi,%r11
   0.11%    ││ │                                                                                                                               0x00007fa85ac5ba5d:   vpsrlq $0x8,%ymm1,%ymm2
   0.05%    ││ │                                                                                                                               0x00007fa85ac5ba62:   vpsllq $0x38,%ymm1,%ymm1
   0.02%    ││ │                                                                                                                               0x00007fa85ac5ba67:   vpor   %ymm2,%ymm1,%ymm1
   0.30%    ││ │                                                                                                                               0x00007fa85ac5ba6b:   vpxor  %ymm8,%ymm3,%ymm3
   0.13%    ││ │                                                                                                                               0x00007fa85ac5ba70:   vpxor  %ymm1,%ymm3,%ymm1
   0.04%    ││ │                                                                                                                               0x00007fa85ac5ba74:   vpaddq %ymm1,%ymm0,%ymm0
   0.03%    ││ │                                                                                                                               0x00007fa85ac5ba78:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.30%    ││ │                                                                                                                               0x00007fa85ac5ba7e:   vpand  %ymm10,%ymm0,%ymm0
   0.12%    ││ │                                                                                                                               0x00007fa85ac5ba83:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.05%    ││ │                                                                                                                               0x00007fa85ac5ba89:   vpsrlq $0x6,%ymm2,%ymm8
   0.03%    ││ │                                                                                                                               0x00007fa85ac5ba8e:   mov    %r11,%rdi
   0.30%    ││ │                                                                                                                               0x00007fa85ac5ba91:   rorx   $0x29,%r8,%r13
   0.09%    ││ │                                                                                                                               0x00007fa85ac5ba97:   rorx   $0x12,%r8,%r14
   0.05%    ││ │                                                                                                                               0x00007fa85ac5ba9d:   add    0x8(%rsp),%r10
   0.03%    ││ │                                                                                                                               0x00007fa85ac5baa2:   or     %rbx,%rdi
   0.27%    ││ │                                                                                                                               0x00007fa85ac5baa5:   mov    %rdx,%r15
   0.14%    ││ │                                                                                                                               0x00007fa85ac5baa8:   xor    %r9,%r15
   0.05%    ││ │                                                                                                                               0x00007fa85ac5baab:   rorx   $0x22,%r11,%r12
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bab1:   xor    %r14,%r13
   0.28%    ││ │                                                                                                                               0x00007fa85ac5bab4:   rorx   $0xe,%r8,%r14
   0.12%    ││ │                                                                                                                               0x00007fa85ac5baba:   and    %r8,%r15
   0.04%    ││ │                                                                                                                               0x00007fa85ac5babd:   add    %r10,%rcx
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bac0:   and    %rax,%rdi
   0.30%    ││ │                                                                                                                               0x00007fa85ac5bac3:   xor    %r14,%r13
   0.14%    ││ │                                                                                                                               0x00007fa85ac5bac6:   rorx   $0x27,%r11,%r14
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bacc:   xor    %r12,%r14
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bacf:   rorx   $0x1c,%r11,%r12
   0.23%    ││ │                                                                                                                               0x00007fa85ac5bad5:   xor    %r9,%r15
   0.14%    ││ │                                                                                                                               0x00007fa85ac5bad8:   xor    %r12,%r14
   0.04%    ││ │                                                                                                                               0x00007fa85ac5badb:   mov    %r11,%r12
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bade:   and    %rbx,%r12
   0.29%    ││ │                                                                                                                               0x00007fa85ac5bae1:   add    %r13,%r15
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bae4:   or     %r12,%rdi
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bae7:   add    %r14,%r10
   0.04%    ││ │                                                                                                                               0x00007fa85ac5baea:   add    %r15,%rcx
   0.26%    ││ │                                                                                                                               0x00007fa85ac5baed:   add    %r15,%r10
   0.09%    ││ │                                                                                                                               0x00007fa85ac5baf0:   add    %rdi,%r10
   0.03%    ││ │                                                                                                                               0x00007fa85ac5baf3:   vpsrlq $0x13,%ymm2,%ymm3
   0.03%    ││ │                                                                                                                               0x00007fa85ac5baf8:   vpsllq $0x2d,%ymm2,%ymm1
   0.27%    ││ │                                                                                                                               0x00007fa85ac5bafd:   vpor   %ymm1,%ymm3,%ymm3
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bb01:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bb05:   vpsrlq $0x3d,%ymm2,%ymm3
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb0a:   vpsllq $0x3,%ymm2,%ymm1
   0.29%    ││ │                                                                                                                               0x00007fa85ac5bb0f:   vpor   %ymm1,%ymm3,%ymm3
   0.14%    ││ │                                                                                                                               0x00007fa85ac5bb13:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb17:   vpaddq %ymm8,%ymm4,%ymm4
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb1c:   vpsrlq $0x6,%ymm4,%ymm8
   0.28%    ││ │                                                                                                                               0x00007fa85ac5bb21:   mov    %r10,%rdi
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bb24:   rorx   $0x29,%rcx,%r13
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bb2a:   rorx   $0x12,%rcx,%r14
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb30:   add    0x10(%rsp),%r9
   0.26%    ││ │                                                                                                                               0x00007fa85ac5bb35:   or     %rax,%rdi
   0.09%    ││ │                                                                                                                               0x00007fa85ac5bb38:   mov    %r8,%r15
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bb3b:   xor    %rdx,%r15
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb3e:   rorx   $0x22,%r10,%r12
   0.26%    ││ │                                                                                                                               0x00007fa85ac5bb44:   xor    %r14,%r13
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bb47:   rorx   $0xe,%rcx,%r14
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb4d:   and    %rcx,%r15
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb50:   add    %r9,%rbx
   0.32%    ││ │                                                                                                                               0x00007fa85ac5bb53:   and    %r11,%rdi
   0.09%    ││ │                                                                                                                               0x00007fa85ac5bb56:   xor    %r14,%r13
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bb59:   rorx   $0x27,%r10,%r14
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bb5f:   xor    %r12,%r14
   0.31%    ││ │                                                                                                                               0x00007fa85ac5bb62:   rorx   $0x1c,%r10,%r12
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bb68:   xor    %rdx,%r15
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb6b:   xor    %r12,%r14
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb6e:   mov    %r10,%r12
   0.29%    ││ │                                                                                                                               0x00007fa85ac5bb71:   and    %rax,%r12
   0.09%    ││ │                                                                                                                               0x00007fa85ac5bb74:   add    %r13,%r15
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb77:   or     %r12,%rdi
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb7a:   add    %r14,%r9
   0.27%    ││ │                                                                                                                               0x00007fa85ac5bb7d:   add    %r15,%rbx
   0.10%    ││ │                                                                                                                               0x00007fa85ac5bb80:   add    %r15,%r9
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bb83:   add    %rdi,%r9
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb86:   vpsrlq $0x13,%ymm4,%ymm3
   0.31%    ││ │                                                                                                                               0x00007fa85ac5bb8b:   vpsllq $0x2d,%ymm4,%ymm1
   0.10%    ││ │                                                                                                                               0x00007fa85ac5bb90:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb94:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bb98:   vpsrlq $0x3d,%ymm4,%ymm3
   0.29%    ││ │                                                                                                                               0x00007fa85ac5bb9d:   vpsllq $0x3,%ymm4,%ymm1
   0.09%    ││ │                                                                                                                               0x00007fa85ac5bba2:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bba6:   vpxor  %ymm3,%ymm8,%ymm8
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bbaa:   vpaddq %ymm8,%ymm0,%ymm2
   0.30%    ││ │                                                                                                                               0x00007fa85ac5bbaf:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.17%    ││ │                                                                                                                               0x00007fa85ac5bbb5:   mov    %r9,%rdi
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bbb8:   rorx   $0x29,%rbx,%r13
   0.02%    ││ │                                                                                                                               0x00007fa85ac5bbbe:   rorx   $0x12,%rbx,%r14
   0.26%    ││ │                                                                                                                               0x00007fa85ac5bbc4:   add    0x18(%rsp),%rdx
   0.14%    ││ │                                                                                                                               0x00007fa85ac5bbc9:   or     %r11,%rdi
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bbcc:   mov    %rcx,%r15
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bbcf:   xor    %r8,%r15
   0.29%    ││ │                                                                                                                               0x00007fa85ac5bbd2:   rorx   $0x22,%r9,%r12
   0.16%    ││ │                                                                                                                               0x00007fa85ac5bbd8:   xor    %r14,%r13
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bbdb:   rorx   $0xe,%rbx,%r14
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bbe1:   and    %rbx,%r15
   0.25%    ││ │                                                                                                                               0x00007fa85ac5bbe4:   add    %rdx,%rax
   0.11%    ││ │                                                                                                                               0x00007fa85ac5bbe7:   and    %r10,%rdi
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bbea:   xor    %r14,%r13
   0.02%    ││ │                                                                                                                               0x00007fa85ac5bbed:   rorx   $0x27,%r9,%r14
   0.29%    ││ │                                                                                                                               0x00007fa85ac5bbf3:   xor    %r12,%r14
   0.17%    ││ │                                                                                                                               0x00007fa85ac5bbf6:   rorx   $0x1c,%r9,%r12
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bbfc:   xor    %r8,%r15
   0.02%    ││ │                                                                                                                               0x00007fa85ac5bbff:   xor    %r12,%r14
   0.23%    ││ │                                                                                                                               0x00007fa85ac5bc02:   mov    %r9,%r12
   0.14%    ││ │                                                                                                                               0x00007fa85ac5bc05:   and    %r11,%r12
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bc08:   add    %r13,%r15
   0.02%    ││ │                                                                                                                               0x00007fa85ac5bc0b:   or     %r12,%rdi
   0.24%    ││ │                                                                                                                               0x00007fa85ac5bc0e:   add    %r14,%rdx
   0.15%    ││ │                                                                                                                               0x00007fa85ac5bc11:   add    %r15,%rax
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bc14:   add    %r15,%rdx
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bc17:   add    %rdi,%rdx
   0.25%    ││ │                                                                                                                               0x00007fa85ac5bc1a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.15%    ││ │                                                                                                                               0x00007fa85ac5bc1f:   vmovdqu %ymm0,(%rsp)
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bc24:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.02%    ││ │                                                                                                                               0x00007fa85ac5bc2a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.27%    ││ │                                                                                                                               0x00007fa85ac5bc30:   vpaddq %ymm5,%ymm0,%ymm0
   0.18%    ││ │                                                                                                                               0x00007fa85ac5bc34:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bc3a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bc40:   vpsrlq $0x1,%ymm1,%ymm2
   0.29%    ││ │                                                                                                                               0x00007fa85ac5bc45:   vpsllq $0x3f,%ymm1,%ymm3
   0.15%    ││ │                                                                                                                               0x00007fa85ac5bc4a:   vpor   %ymm2,%ymm3,%ymm3
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bc4e:   vpsrlq $0x7,%ymm1,%ymm8
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bc53:   mov    %rdx,%rdi
   0.27%    ││ │                                                                                                                               0x00007fa85ac5bc56:   rorx   $0x29,%rax,%r13
   0.14%    ││ │                                                                                                                               0x00007fa85ac5bc5c:   rorx   $0x12,%rax,%r14
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bc62:   add    (%rsp),%r8
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bc66:   or     %r10,%rdi
   0.25%    ││ │                                                                                                                               0x00007fa85ac5bc69:   mov    %rbx,%r15
   0.16%    ││ │                                                                                                                               0x00007fa85ac5bc6c:   xor    %rcx,%r15
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bc6f:   rorx   $0x22,%rdx,%r12
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bc75:   xor    %r14,%r13
   0.25%    ││ │                                                                                                                               0x00007fa85ac5bc78:   rorx   $0xe,%rax,%r14
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bc7e:   and    %rax,%r15
   0.07%    ││ │                                                                                                                               0x00007fa85ac5bc81:   add    %r8,%r11
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bc84:   and    %r9,%rdi
   0.25%    ││ │                                                                                                                               0x00007fa85ac5bc87:   xor    %r14,%r13
   0.14%    ││ │                                                                                                                               0x00007fa85ac5bc8a:   rorx   $0x27,%rdx,%r14
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bc90:   xor    %r12,%r14
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bc93:   rorx   $0x1c,%rdx,%r12
   0.24%    ││ │                                                                                                                               0x00007fa85ac5bc99:   xor    %rcx,%r15
   0.15%    ││ │                                                                                                                               0x00007fa85ac5bc9c:   xor    %r12,%r14
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bc9f:   mov    %rdx,%r12
   0.02%    ││ │                                                                                                                               0x00007fa85ac5bca2:   and    %r10,%r12
   0.20%    ││ │                                                                                                                               0x00007fa85ac5bca5:   add    %r13,%r15
   0.16%    ││ │                                                                                                                               0x00007fa85ac5bca8:   or     %r12,%rdi
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bcab:   add    %r14,%r8
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bcae:   add    %r15,%r11
   0.26%    ││ │                                                                                                                               0x00007fa85ac5bcb1:   add    %r15,%r8
   0.15%    ││ │                                                                                                                               0x00007fa85ac5bcb4:   add    %rdi,%r8
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bcb7:   vpsrlq $0x8,%ymm1,%ymm2
   0.01%    ││ │                                                                                                                               0x00007fa85ac5bcbc:   vpsllq $0x38,%ymm1,%ymm1
   0.29%    ││ │                                                                                                                               0x00007fa85ac5bcc1:   vpor   %ymm2,%ymm1,%ymm1
   0.15%    ││ │                                                                                                                               0x00007fa85ac5bcc5:   vpxor  %ymm8,%ymm3,%ymm3
   0.07%    ││ │                                                                                                                               0x00007fa85ac5bcca:   vpxor  %ymm1,%ymm3,%ymm1
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bcce:   vpaddq %ymm1,%ymm0,%ymm0
   0.24%    ││ │                                                                                                                               0x00007fa85ac5bcd2:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.17%    ││ │                                                                                                                               0x00007fa85ac5bcd8:   vpand  %ymm10,%ymm0,%ymm0
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bcdd:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bce3:   vpsrlq $0x6,%ymm2,%ymm8
   0.26%    ││ │                                                                                                                               0x00007fa85ac5bce8:   mov    %r8,%rdi
   0.14%    ││ │                                                                                                                               0x00007fa85ac5bceb:   rorx   $0x29,%r11,%r13
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bcf1:   rorx   $0x12,%r11,%r14
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bcf7:   add    0x8(%rsp),%rcx
   0.21%    ││ │                                                                                                                               0x00007fa85ac5bcfc:   or     %r9,%rdi
   0.11%    ││ │                                                                                                                               0x00007fa85ac5bcff:   mov    %rax,%r15
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bd02:   xor    %rbx,%r15
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bd05:   rorx   $0x22,%r8,%r12
   0.20%    ││ │                                                                                                                               0x00007fa85ac5bd0b:   xor    %r14,%r13
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bd0e:   rorx   $0xe,%r11,%r14
   0.07%    ││ │                                                                                                                               0x00007fa85ac5bd14:   and    %r11,%r15
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bd17:   add    %rcx,%r10
   0.27%    ││ │                                                                                                                               0x00007fa85ac5bd1a:   and    %rdx,%rdi
   0.17%    ││ │                                                                                                                               0x00007fa85ac5bd1d:   xor    %r14,%r13
   0.08%    ││ │                                                                                                                               0x00007fa85ac5bd20:   rorx   $0x27,%r8,%r14
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bd26:   xor    %r12,%r14
   0.27%    ││ │                                                                                                                               0x00007fa85ac5bd29:   rorx   $0x1c,%r8,%r12
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bd2f:   xor    %rbx,%r15
   0.07%    ││ │                                                                                                                               0x00007fa85ac5bd32:   xor    %r12,%r14
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bd35:   mov    %r8,%r12
   0.23%    ││ │                                                                                                                               0x00007fa85ac5bd38:   and    %r9,%r12
   0.17%    ││ │                                                                                                                               0x00007fa85ac5bd3b:   add    %r13,%r15
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bd3e:   or     %r12,%rdi
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bd41:   add    %r14,%rcx
   0.25%    ││ │                                                                                                                               0x00007fa85ac5bd44:   add    %r15,%r10
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bd47:   add    %r15,%rcx
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bd4a:   add    %rdi,%rcx
   0.02%    ││ │                                                                                                                               0x00007fa85ac5bd4d:   vpsrlq $0x13,%ymm2,%ymm3
   0.23%    ││ │                                                                                                                               0x00007fa85ac5bd52:   vpsllq $0x2d,%ymm2,%ymm1
   0.16%    ││ │                                                                                                                               0x00007fa85ac5bd57:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bd5b:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bd5f:   vpsrlq $0x3d,%ymm2,%ymm3
   0.25%    ││ │                                                                                                                               0x00007fa85ac5bd64:   vpsllq $0x3,%ymm2,%ymm1
   0.17%    ││ │                                                                                                                               0x00007fa85ac5bd69:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │                                                                                                                               0x00007fa85ac5bd6d:   vpxor  %ymm3,%ymm8,%ymm8
   0.02%    ││ │                                                                                                                               0x00007fa85ac5bd71:   vpaddq %ymm8,%ymm5,%ymm5
   0.26%    ││ │                                                                                                                               0x00007fa85ac5bd76:   vpsrlq $0x6,%ymm5,%ymm8
   0.18%    ││ │                                                                                                                               0x00007fa85ac5bd7b:   mov    %rcx,%rdi
   0.07%    ││ │                                                                                                                               0x00007fa85ac5bd7e:   rorx   $0x29,%r10,%r13
   0.01%    ││ │                                                                                                                               0x00007fa85ac5bd84:   rorx   $0x12,%r10,%r14
   0.20%    ││ │                                                                                                                               0x00007fa85ac5bd8a:   add    0x10(%rsp),%rbx
   0.15%    ││ │                                                                                                                               0x00007fa85ac5bd8f:   or     %rdx,%rdi
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bd92:   mov    %r11,%r15
   0.02%    ││ │                                                                                                                               0x00007fa85ac5bd95:   xor    %rax,%r15
   0.24%    ││ │                                                                                                                               0x00007fa85ac5bd98:   rorx   $0x22,%rcx,%r12
   0.16%    ││ │                                                                                                                               0x00007fa85ac5bd9e:   xor    %r14,%r13
   0.07%    ││ │                                                                                                                               0x00007fa85ac5bda1:   rorx   $0xe,%r10,%r14
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bda7:   and    %r10,%r15
   0.24%    ││ │                                                                                                                               0x00007fa85ac5bdaa:   add    %rbx,%r9
   0.14%    ││ │                                                                                                                               0x00007fa85ac5bdad:   and    %r8,%rdi
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bdb0:   xor    %r14,%r13
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bdb3:   rorx   $0x27,%rcx,%r14
   0.24%    ││ │                                                                                                                               0x00007fa85ac5bdb9:   xor    %r12,%r14
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bdbc:   rorx   $0x1c,%rcx,%r12
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bdc2:   xor    %rax,%r15
   0.02%    ││ │                                                                                                                               0x00007fa85ac5bdc5:   xor    %r12,%r14
   0.26%    ││ │                                                                                                                               0x00007fa85ac5bdc8:   mov    %rcx,%r12
   0.17%    ││ │                                                                                                                               0x00007fa85ac5bdcb:   and    %rdx,%r12
   0.07%    ││ │                                                                                                                               0x00007fa85ac5bdce:   add    %r13,%r15
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bdd1:   or     %r12,%rdi
   0.25%    ││ │                                                                                                                               0x00007fa85ac5bdd4:   add    %r14,%rbx
   0.16%    ││ │                                                                                                                               0x00007fa85ac5bdd7:   add    %r15,%r9
   0.06%    ││ │                                                                                                                               0x00007fa85ac5bdda:   add    %r15,%rbx
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bddd:   add    %rdi,%rbx
   0.29%    ││ │                                                                                                                               0x00007fa85ac5bde0:   vpsrlq $0x13,%ymm5,%ymm3
   0.15%    ││ │                                                                                                                               0x00007fa85ac5bde5:   vpsllq $0x2d,%ymm5,%ymm1
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bdea:   vpor   %ymm1,%ymm3,%ymm3
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bdee:   vpxor  %ymm3,%ymm8,%ymm8
   0.24%    ││ │                                                                                                                               0x00007fa85ac5bdf2:   vpsrlq $0x3d,%ymm5,%ymm3
   0.21%    ││ │                                                                                                                               0x00007fa85ac5bdf7:   vpsllq $0x3,%ymm5,%ymm1
   0.08%    ││ │                                                                                                                               0x00007fa85ac5bdfc:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │                                                                                                                               0x00007fa85ac5be00:   vpxor  %ymm3,%ymm8,%ymm8
   0.24%    ││ │                                                                                                                               0x00007fa85ac5be04:   vpaddq %ymm8,%ymm0,%ymm2
   0.19%    ││ │                                                                                                                               0x00007fa85ac5be09:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.09%    ││ │                                                                                                                               0x00007fa85ac5be0f:   mov    %rbx,%rdi
   0.04%    ││ │                                                                                                                               0x00007fa85ac5be12:   rorx   $0x29,%r9,%r13
   0.21%    ││ │                                                                                                                               0x00007fa85ac5be18:   rorx   $0x12,%r9,%r14
   0.18%    ││ │                                                                                                                               0x00007fa85ac5be1e:   add    0x18(%rsp),%rax
   0.08%    ││ │                                                                                                                               0x00007fa85ac5be23:   or     %r8,%rdi
   0.04%    ││ │                                                                                                                               0x00007fa85ac5be26:   mov    %r10,%r15
   0.26%    ││ │                                                                                                                               0x00007fa85ac5be29:   xor    %r11,%r15
   0.17%    ││ │                                                                                                                               0x00007fa85ac5be2c:   rorx   $0x22,%rbx,%r12
   0.08%    ││ │                                                                                                                               0x00007fa85ac5be32:   xor    %r14,%r13
   0.02%    ││ │                                                                                                                               0x00007fa85ac5be35:   rorx   $0xe,%r9,%r14
   0.24%    ││ │                                                                                                                               0x00007fa85ac5be3b:   and    %r9,%r15
   0.12%    ││ │                                                                                                                               0x00007fa85ac5be3e:   add    %rax,%rdx
   0.09%    ││ │                                                                                                                               0x00007fa85ac5be41:   and    %rcx,%rdi
   0.02%    ││ │                                                                                                                               0x00007fa85ac5be44:   xor    %r14,%r13
   0.23%    ││ │                                                                                                                               0x00007fa85ac5be47:   rorx   $0x27,%rbx,%r14
   0.15%    ││ │                                                                                                                               0x00007fa85ac5be4d:   xor    %r12,%r14
   0.09%    ││ │                                                                                                                               0x00007fa85ac5be50:   rorx   $0x1c,%rbx,%r12
   0.02%    ││ │                                                                                                                               0x00007fa85ac5be56:   xor    %r11,%r15
   0.21%    ││ │                                                                                                                               0x00007fa85ac5be59:   xor    %r12,%r14
   0.15%    ││ │                                                                                                                               0x00007fa85ac5be5c:   mov    %rbx,%r12
   0.11%    ││ │                                                                                                                               0x00007fa85ac5be5f:   and    %r8,%r12
   0.03%    ││ │                                                                                                                               0x00007fa85ac5be62:   add    %r13,%r15
   0.21%    ││ │                                                                                                                               0x00007fa85ac5be65:   or     %r12,%rdi
   0.14%    ││ │                                                                                                                               0x00007fa85ac5be68:   add    %r14,%rax
   0.09%    ││ │                                                                                                                               0x00007fa85ac5be6b:   add    %r15,%rdx
   0.04%    ││ │                                                                                                                               0x00007fa85ac5be6e:   add    %r15,%rax
   0.25%    ││ │                                                                                                                               0x00007fa85ac5be71:   add    %rdi,%rax
   0.15%    ││ │                                                                                                                               0x00007fa85ac5be74:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.07%    ││ │                                                                                                                               0x00007fa85ac5be79:   vmovdqu %ymm0,(%rsp)
   0.02%    ││ │                                                                                                                               0x00007fa85ac5be7e:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.23%    ││ │                                                                                                                               0x00007fa85ac5be84:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.16%    ││ │                                                                                                                               0x00007fa85ac5be8a:   vpaddq %ymm6,%ymm0,%ymm0
   0.15%    ││ │                                                                                                                               0x00007fa85ac5be8e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.02%    ││ │                                                                                                                               0x00007fa85ac5be94:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.27%    ││ │                                                                                                                               0x00007fa85ac5be9a:   vpsrlq $0x1,%ymm1,%ymm2
   0.12%    ││ │                                                                                                                               0x00007fa85ac5be9f:   vpsllq $0x3f,%ymm1,%ymm3
   0.10%    ││ │                                                                                                                               0x00007fa85ac5bea4:   vpor   %ymm2,%ymm3,%ymm3
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bea8:   vpsrlq $0x7,%ymm1,%ymm8
   0.24%    ││ │                                                                                                                               0x00007fa85ac5bead:   mov    %rax,%rdi
   0.11%    ││ │                                                                                                                               0x00007fa85ac5beb0:   rorx   $0x29,%rdx,%r13
   0.13%    ││ │                                                                                                                               0x00007fa85ac5beb6:   rorx   $0x12,%rdx,%r14
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bebc:   add    (%rsp),%r11
   0.23%    ││ │                                                                                                                               0x00007fa85ac5bec0:   or     %rcx,%rdi
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bec3:   mov    %r9,%r15
   0.11%    ││ │                                                                                                                               0x00007fa85ac5bec6:   xor    %r10,%r15
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bec9:   rorx   $0x22,%rax,%r12
   0.20%    ││ │                                                                                                                               0x00007fa85ac5becf:   xor    %r14,%r13
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bed2:   rorx   $0xe,%rdx,%r14
   0.09%    ││ │                                                                                                                               0x00007fa85ac5bed8:   and    %rdx,%r15
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bedb:   add    %r11,%r8
   0.21%    ││ │                                                                                                                               0x00007fa85ac5bede:   and    %rbx,%rdi
   0.14%    ││ │                                                                                                                               0x00007fa85ac5bee1:   xor    %r14,%r13
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bee4:   rorx   $0x27,%rax,%r14
   0.03%    ││ │                                                                                                                               0x00007fa85ac5beea:   xor    %r12,%r14
   0.25%    ││ │                                                                                                                               0x00007fa85ac5beed:   rorx   $0x1c,%rax,%r12
   0.11%    ││ │                                                                                                                               0x00007fa85ac5bef3:   xor    %r10,%r15
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bef6:   xor    %r12,%r14
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bef9:   mov    %rax,%r12
   0.23%    ││ │                                                                                                                               0x00007fa85ac5befc:   and    %rcx,%r12
   0.12%    ││ │                                                                                                                               0x00007fa85ac5beff:   add    %r13,%r15
   0.16%    ││ │                                                                                                                               0x00007fa85ac5bf02:   or     %r12,%rdi
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bf05:   add    %r14,%r11
   0.21%    ││ │                                                                                                                               0x00007fa85ac5bf08:   add    %r15,%r8
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bf0b:   add    %r15,%r11
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bf0e:   add    %rdi,%r11
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bf11:   vpsrlq $0x8,%ymm1,%ymm2
   0.22%    ││ │                                                                                                                               0x00007fa85ac5bf16:   vpsllq $0x38,%ymm1,%ymm1
   0.11%    ││ │                                                                                                                               0x00007fa85ac5bf1b:   vpor   %ymm2,%ymm1,%ymm1
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bf1f:   vpxor  %ymm8,%ymm3,%ymm3
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bf24:   vpxor  %ymm1,%ymm3,%ymm1
   0.23%    ││ │                                                                                                                               0x00007fa85ac5bf28:   vpaddq %ymm1,%ymm0,%ymm0
   0.14%    ││ │                                                                                                                               0x00007fa85ac5bf2c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bf32:   vpand  %ymm10,%ymm0,%ymm0
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bf37:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.21%    ││ │                                                                                                                               0x00007fa85ac5bf3d:   vpsrlq $0x6,%ymm2,%ymm8
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bf42:   mov    %r11,%rdi
   0.10%    ││ │                                                                                                                               0x00007fa85ac5bf45:   rorx   $0x29,%r8,%r13
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bf4b:   rorx   $0x12,%r8,%r14
   0.19%    ││ │                                                                                                                               0x00007fa85ac5bf51:   add    0x8(%rsp),%r10
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bf56:   or     %rbx,%rdi
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bf59:   mov    %rdx,%r15
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bf5c:   xor    %r9,%r15
   0.23%    ││ │                                                                                                                               0x00007fa85ac5bf5f:   rorx   $0x22,%r11,%r12
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bf65:   xor    %r14,%r13
   0.11%    ││ │                                                                                                                               0x00007fa85ac5bf68:   rorx   $0xe,%r8,%r14
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bf6e:   and    %r8,%r15
   0.23%    ││ │                                                                                                                               0x00007fa85ac5bf71:   add    %r10,%rcx
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bf74:   and    %rax,%rdi
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bf77:   xor    %r14,%r13
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bf7a:   rorx   $0x27,%r11,%r14
   0.18%    ││ │                                                                                                                               0x00007fa85ac5bf80:   xor    %r12,%r14
   0.11%    ││ │                                                                                                                               0x00007fa85ac5bf83:   rorx   $0x1c,%r11,%r12
   0.11%    ││ │                                                                                                                               0x00007fa85ac5bf89:   xor    %r9,%r15
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bf8c:   xor    %r12,%r14
   0.22%    ││ │                                                                                                                               0x00007fa85ac5bf8f:   mov    %r11,%r12
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bf92:   and    %rbx,%r12
   0.15%    ││ │                                                                                                                               0x00007fa85ac5bf95:   add    %r13,%r15
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bf98:   or     %r12,%rdi
   0.18%    ││ │                                                                                                                               0x00007fa85ac5bf9b:   add    %r14,%r10
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bf9e:   add    %r15,%rcx
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bfa1:   add    %r15,%r10
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bfa4:   add    %rdi,%r10
   0.22%    ││ │                                                                                                                               0x00007fa85ac5bfa7:   vpsrlq $0x13,%ymm2,%ymm3
   0.11%    ││ │                                                                                                                               0x00007fa85ac5bfac:   vpsllq $0x2d,%ymm2,%ymm1
   0.11%    ││ │                                                                                                                               0x00007fa85ac5bfb1:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bfb5:   vpxor  %ymm3,%ymm8,%ymm8
   0.21%    ││ │                                                                                                                               0x00007fa85ac5bfb9:   vpsrlq $0x3d,%ymm2,%ymm3
   0.09%    ││ │                                                                                                                               0x00007fa85ac5bfbe:   vpsllq $0x3,%ymm2,%ymm1
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bfc3:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │                                                                                                                               0x00007fa85ac5bfc7:   vpxor  %ymm3,%ymm8,%ymm8
   0.28%    ││ │                                                                                                                               0x00007fa85ac5bfcb:   vpaddq %ymm8,%ymm6,%ymm6
   0.15%    ││ │                                                                                                                               0x00007fa85ac5bfd0:   vpsrlq $0x6,%ymm6,%ymm8
   0.13%    ││ │                                                                                                                               0x00007fa85ac5bfd5:   mov    %r10,%rdi
   0.03%    ││ │                                                                                                                               0x00007fa85ac5bfd8:   rorx   $0x29,%rcx,%r13
   0.22%    ││ │                                                                                                                               0x00007fa85ac5bfde:   rorx   $0x12,%rcx,%r14
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bfe4:   add    0x10(%rsp),%r9
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bfe9:   or     %rax,%rdi
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bfec:   mov    %r8,%r15
   0.19%    ││ │                                                                                                                               0x00007fa85ac5bfef:   xor    %rdx,%r15
   0.12%    ││ │                                                                                                                               0x00007fa85ac5bff2:   rorx   $0x22,%r10,%r12
   0.15%    ││ │                                                                                                                               0x00007fa85ac5bff8:   xor    %r14,%r13
   0.04%    ││ │                                                                                                                               0x00007fa85ac5bffb:   rorx   $0xe,%rcx,%r14
   0.20%    ││ │                                                                                                                               0x00007fa85ac5c001:   and    %rcx,%r15
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c004:   add    %r9,%rbx
   0.14%    ││ │                                                                                                                               0x00007fa85ac5c007:   and    %r11,%rdi
   0.05%    ││ │                                                                                                                               0x00007fa85ac5c00a:   xor    %r14,%r13
   0.21%    ││ │                                                                                                                               0x00007fa85ac5c00d:   rorx   $0x27,%r10,%r14
   0.13%    ││ │                                                                                                                               0x00007fa85ac5c013:   xor    %r12,%r14
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c016:   rorx   $0x1c,%r10,%r12
   0.04%    ││ │                                                                                                                               0x00007fa85ac5c01c:   xor    %rdx,%r15
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c01f:   xor    %r12,%r14
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c022:   mov    %r10,%r12
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c025:   and    %rax,%r12
   0.04%    ││ │                                                                                                                               0x00007fa85ac5c028:   add    %r13,%r15
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c02b:   or     %r12,%rdi
   0.12%    ││ │                                                                                                                               0x00007fa85ac5c02e:   add    %r14,%r9
   0.12%    ││ │                                                                                                                               0x00007fa85ac5c031:   add    %r15,%rbx
   0.06%    ││ │                                                                                                                               0x00007fa85ac5c034:   add    %r15,%r9
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c037:   add    %rdi,%r9
   0.13%    ││ │                                                                                                                               0x00007fa85ac5c03a:   vpsrlq $0x13,%ymm6,%ymm3
   0.14%    ││ │                                                                                                                               0x00007fa85ac5c03f:   vpsllq $0x2d,%ymm6,%ymm1
   0.04%    ││ │                                                                                                                               0x00007fa85ac5c044:   vpor   %ymm1,%ymm3,%ymm3
   0.21%    ││ │                                                                                                                               0x00007fa85ac5c048:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c04c:   vpsrlq $0x3d,%ymm6,%ymm3
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c051:   vpsllq $0x3,%ymm6,%ymm1
   0.01%    ││ │                                                                                                                               0x00007fa85ac5c056:   vpor   %ymm1,%ymm3,%ymm3
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c05a:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c05e:   vpaddq %ymm8,%ymm0,%ymm2
   0.15%    ││ │                                                                                                                               0x00007fa85ac5c063:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.12%    ││ │                                                                                                                               0x00007fa85ac5c069:   mov    %r9,%rdi
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c06c:   rorx   $0x29,%rbx,%r13
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c072:   rorx   $0x12,%rbx,%r14
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c078:   add    0x18(%rsp),%rdx
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c07d:   or     %r11,%rdi
   0.21%    ││ │                                                                                                                               0x00007fa85ac5c080:   mov    %rcx,%r15
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c083:   xor    %r8,%r15
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c086:   rorx   $0x22,%r9,%r12
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c08c:   xor    %r14,%r13
   0.17%    ││ │                                                                                                                               0x00007fa85ac5c08f:   rorx   $0xe,%rbx,%r14
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c095:   and    %rbx,%r15
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c098:   add    %rdx,%rax
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c09b:   and    %r10,%rdi
   0.21%    ││ │                                                                                                                               0x00007fa85ac5c09e:   xor    %r14,%r13
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c0a1:   rorx   $0x27,%r9,%r14
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c0a7:   xor    %r12,%r14
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c0aa:   rorx   $0x1c,%r9,%r12
   0.19%    ││ │                                                                                                                               0x00007fa85ac5c0b0:   xor    %r8,%r15
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c0b3:   xor    %r12,%r14
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c0b6:   mov    %r9,%r12
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c0b9:   and    %r11,%r12
   0.19%    ││ │                                                                                                                               0x00007fa85ac5c0bc:   add    %r13,%r15
   0.06%    ││ │                                                                                                                               0x00007fa85ac5c0bf:   or     %r12,%rdi
   0.12%    ││ │                                                                                                                               0x00007fa85ac5c0c2:   add    %r14,%rdx
   0.12%    ││ │                                                                                                                               0x00007fa85ac5c0c5:   add    %r15,%rax
   0.23%    ││ │                                                                                                                               0x00007fa85ac5c0c8:   add    %r15,%rdx
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c0cb:   add    %rdi,%rdx
   0.12%    ││ │                                                                                                                               0x00007fa85ac5c0ce:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c0d3:   vmovdqu %ymm0,(%rsp)
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c0d8:   add    $0x80,%rbp
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c0df:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c0e5:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c0eb:   vpaddq %ymm7,%ymm0,%ymm0
   0.29%    ││ │                                                                                                                               0x00007fa85ac5c0ef:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c0f5:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c0fb:   vpsrlq $0x1,%ymm1,%ymm2
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c100:   vpsllq $0x3f,%ymm1,%ymm3
   0.26%    ││ │                                                                                                                               0x00007fa85ac5c105:   vpor   %ymm2,%ymm3,%ymm3
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c109:   vpsrlq $0x7,%ymm1,%ymm8
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c10e:   mov    %rdx,%rdi
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c111:   rorx   $0x29,%rax,%r13
   0.21%    ││ │                                                                                                                               0x00007fa85ac5c117:   rorx   $0x12,%rax,%r14
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c11d:   add    (%rsp),%r8
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c121:   or     %r10,%rdi
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c124:   mov    %rbx,%r15
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c127:   xor    %rcx,%r15
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c12a:   rorx   $0x22,%rdx,%r12
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c130:   xor    %r14,%r13
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c133:   rorx   $0xe,%rax,%r14
   0.24%    ││ │                                                                                                                               0x00007fa85ac5c139:   and    %rax,%r15
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c13c:   add    %r8,%r11
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c13f:   and    %r9,%rdi
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c142:   xor    %r14,%r13
   0.25%    ││ │                                                                                                                               0x00007fa85ac5c145:   rorx   $0x27,%rdx,%r14
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c14b:   xor    %r12,%r14
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c14e:   rorx   $0x1c,%rdx,%r12
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c154:   xor    %rcx,%r15
   0.26%    ││ │                                                                                                                               0x00007fa85ac5c157:   xor    %r12,%r14
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c15a:   mov    %rdx,%r12
   0.06%    ││ │                                                                                                                               0x00007fa85ac5c15d:   and    %r10,%r12
   0.07%    ││ │                                                                                                                               0x00007fa85ac5c160:   add    %r13,%r15
   0.24%    ││ │                                                                                                                               0x00007fa85ac5c163:   or     %r12,%rdi
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c166:   add    %r14,%r8
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c169:   add    %r15,%r11
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c16c:   add    %r15,%r8
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c16f:   add    %rdi,%r8
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c172:   vpsrlq $0x8,%ymm1,%ymm2
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c177:   vpsllq $0x38,%ymm1,%ymm1
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c17c:   vpor   %ymm2,%ymm1,%ymm1
   0.24%    ││ │                                                                                                                               0x00007fa85ac5c180:   vpxor  %ymm8,%ymm3,%ymm3
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c185:   vpxor  %ymm1,%ymm3,%ymm1
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c189:   vpaddq %ymm1,%ymm0,%ymm0
   0.07%    ││ │                                                                                                                               0x00007fa85ac5c18d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.28%    ││ │                                                                                                                               0x00007fa85ac5c193:   vpand  %ymm10,%ymm0,%ymm0
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c198:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c19e:   vpsrlq $0x6,%ymm2,%ymm8
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c1a3:   mov    %r8,%rdi
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c1a6:   rorx   $0x29,%r11,%r13
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c1ac:   rorx   $0x12,%r11,%r14
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c1b2:   add    0x8(%rsp),%rcx
   0.05%    ││ │                                                                                                                               0x00007fa85ac5c1b7:   or     %r9,%rdi
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c1ba:   mov    %rax,%r15
   0.12%    ││ │                                                                                                                               0x00007fa85ac5c1bd:   xor    %rbx,%r15
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c1c0:   rorx   $0x22,%r8,%r12
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c1c6:   xor    %r14,%r13
   0.23%    ││ │                                                                                                                               0x00007fa85ac5c1c9:   rorx   $0xe,%r11,%r14
   0.13%    ││ │                                                                                                                               0x00007fa85ac5c1cf:   and    %r11,%r15
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c1d2:   add    %rcx,%r10
   0.06%    ││ │                                                                                                                               0x00007fa85ac5c1d5:   and    %rdx,%rdi
   0.23%    ││ │                                                                                                                               0x00007fa85ac5c1d8:   xor    %r14,%r13
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c1db:   rorx   $0x27,%r8,%r14
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c1e1:   xor    %r12,%r14
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c1e4:   rorx   $0x1c,%r8,%r12
   0.21%    ││ │                                                                                                                               0x00007fa85ac5c1ea:   xor    %rbx,%r15
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c1ed:   xor    %r12,%r14
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c1f0:   mov    %r8,%r12
   0.06%    ││ │                                                                                                                               0x00007fa85ac5c1f3:   and    %r9,%r12
   0.19%    ││ │                                                                                                                               0x00007fa85ac5c1f6:   add    %r13,%r15
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c1f9:   or     %r12,%rdi
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c1fc:   add    %r14,%rcx
   0.07%    ││ │                                                                                                                               0x00007fa85ac5c1ff:   add    %r15,%r10
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c202:   add    %r15,%rcx
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c205:   add    %rdi,%rcx
   0.07%    ││ │                                                                                                                               0x00007fa85ac5c208:   vpsrlq $0x13,%ymm2,%ymm3
   0.06%    ││ │                                                                                                                               0x00007fa85ac5c20d:   vpsllq $0x2d,%ymm2,%ymm1
   0.23%    ││ │                                                                                                                               0x00007fa85ac5c212:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │                                                                                                                               0x00007fa85ac5c216:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c21a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c21f:   vpsllq $0x3,%ymm2,%ymm1
   0.27%    ││ │                                                                                                                               0x00007fa85ac5c224:   vpor   %ymm1,%ymm3,%ymm3
   0.14%    ││ │                                                                                                                               0x00007fa85ac5c228:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c22c:   vpaddq %ymm8,%ymm7,%ymm7
   0.07%    ││ │                                                                                                                               0x00007fa85ac5c231:   vpsrlq $0x6,%ymm7,%ymm8
   0.23%    ││ │                                                                                                                               0x00007fa85ac5c236:   mov    %rcx,%rdi
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c239:   rorx   $0x29,%r10,%r13
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c23f:   rorx   $0x12,%r10,%r14
   0.06%    ││ │                                                                                                                               0x00007fa85ac5c245:   add    0x10(%rsp),%rbx
   0.25%    ││ │                                                                                                                               0x00007fa85ac5c24a:   or     %rdx,%rdi
   0.12%    ││ │                                                                                                                               0x00007fa85ac5c24d:   mov    %r11,%r15
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c250:   xor    %rax,%r15
   0.05%    ││ │                                                                                                                               0x00007fa85ac5c253:   rorx   $0x22,%rcx,%r12
   0.25%    ││ │                                                                                                                               0x00007fa85ac5c259:   xor    %r14,%r13
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c25c:   rorx   $0xe,%r10,%r14
   0.07%    ││ │                                                                                                                               0x00007fa85ac5c262:   and    %r10,%r15
   0.05%    ││ │                                                                                                                               0x00007fa85ac5c265:   add    %rbx,%r9
   0.23%    ││ │                                                                                                                               0x00007fa85ac5c268:   and    %r8,%rdi
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c26b:   xor    %r14,%r13
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c26e:   rorx   $0x27,%rcx,%r14
   0.07%    ││ │                                                                                                                               0x00007fa85ac5c274:   xor    %r12,%r14
   0.25%    ││ │                                                                                                                               0x00007fa85ac5c277:   rorx   $0x1c,%rcx,%r12
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c27d:   xor    %rax,%r15
   0.06%    ││ │                                                                                                                               0x00007fa85ac5c280:   xor    %r12,%r14
   0.05%    ││ │                                                                                                                               0x00007fa85ac5c283:   mov    %rcx,%r12
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c286:   and    %rdx,%r12
   0.10%    ││ │                                                                                                                               0x00007fa85ac5c289:   add    %r13,%r15
   0.06%    ││ │                                                                                                                               0x00007fa85ac5c28c:   or     %r12,%rdi
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c28f:   add    %r14,%rbx
   0.27%    ││ │                                                                                                                               0x00007fa85ac5c292:   add    %r15,%r9
   0.11%    ││ │                                                                                                                               0x00007fa85ac5c295:   add    %r15,%rbx
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c298:   add    %rdi,%rbx
   0.07%    ││ │                                                                                                                               0x00007fa85ac5c29b:   vpsrlq $0x13,%ymm7,%ymm3
   0.25%    ││ │                                                                                                                               0x00007fa85ac5c2a0:   vpsllq $0x2d,%ymm7,%ymm1
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c2a5:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c2a9:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c2ad:   vpsrlq $0x3d,%ymm7,%ymm3
   0.26%    ││ │                                                                                                                               0x00007fa85ac5c2b2:   vpsllq $0x3,%ymm7,%ymm1
   0.12%    ││ │                                                                                                                               0x00007fa85ac5c2b7:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c2bb:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%    ││ │                                                                                                                               0x00007fa85ac5c2bf:   vpaddq %ymm8,%ymm0,%ymm2
   0.25%    ││ │                                                                                                                               0x00007fa85ac5c2c4:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.20%    ││ │                                                                                                                               0x00007fa85ac5c2ca:   mov    %rbx,%rdi
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c2cd:   rorx   $0x29,%r9,%r13
   0.07%    ││ │                                                                                                                               0x00007fa85ac5c2d3:   rorx   $0x12,%r9,%r14
   0.16%    ││ │                                                                                                                               0x00007fa85ac5c2d9:   add    0x18(%rsp),%rax
   0.12%    ││ │                                                                                                                               0x00007fa85ac5c2de:   or     %r8,%rdi
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c2e1:   mov    %r10,%r15
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c2e4:   xor    %r11,%r15
   0.22%    ││ │                                                                                                                               0x00007fa85ac5c2e7:   rorx   $0x22,%rbx,%r12
   0.14%    ││ │                                                                                                                               0x00007fa85ac5c2ed:   xor    %r14,%r13
   0.06%    ││ │                                                                                                                               0x00007fa85ac5c2f0:   rorx   $0xe,%r9,%r14
   0.06%    ││ │                                                                                                                               0x00007fa85ac5c2f6:   and    %r9,%r15
   0.18%    ││ │                                                                                                                               0x00007fa85ac5c2f9:   add    %rax,%rdx
   0.15%    ││ │                                                                                                                               0x00007fa85ac5c2fc:   and    %rcx,%rdi
   0.07%    ││ │                                                                                                                               0x00007fa85ac5c2ff:   xor    %r14,%r13
   0.07%    ││ │                                                                                                                               0x00007fa85ac5c302:   rorx   $0x27,%rbx,%r14
   0.21%    ││ │                                                                                                                               0x00007fa85ac5c308:   xor    %r12,%r14
   0.17%    ││ │                                                                                                                               0x00007fa85ac5c30b:   rorx   $0x1c,%rbx,%r12
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c311:   xor    %r11,%r15
   0.05%    ││ │                                                                                                                               0x00007fa85ac5c314:   xor    %r12,%r14
   0.19%    ││ │                                                                                                                               0x00007fa85ac5c317:   mov    %rbx,%r12
   0.15%    ││ │                                                                                                                               0x00007fa85ac5c31a:   and    %r8,%r12
   0.09%    ││ │                                                                                                                               0x00007fa85ac5c31d:   add    %r13,%r15
   0.05%    ││ │                                                                                                                               0x00007fa85ac5c320:   or     %r12,%rdi
   0.21%    ││ │                                                                                                                               0x00007fa85ac5c323:   add    %r14,%rax
   0.17%    ││ │                                                                                                                               0x00007fa85ac5c326:   add    %r15,%rdx
   0.08%    ││ │                                                                                                                               0x00007fa85ac5c329:   add    %r15,%rax
   0.05%    ││ │                                                                                                                               0x00007fa85ac5c32c:   add    %rdi,%rax
   0.20%    ││ │                                                                                                                               0x00007fa85ac5c32f:   subq   $0x1,0x20(%rsp)
   0.23%    │╰ │                                                                                                                               0x00007fa85ac5c335:   jne    0x00007fa85ac5b9c0
   0.02%    │  │                                                                                                                               0x00007fa85ac5c33b:   movq   $0x2,0x20(%rsp)
   0.07%    │ ↗│                                                                                                                               0x00007fa85ac5c344:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c349:   vmovdqu %ymm0,(%rsp)
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c34e:   mov    %r9,%r15
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c351:   rorx   $0x29,%rdx,%r13
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c357:   rorx   $0x12,%rdx,%r14
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c35d:   xor    %r10,%r15
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c360:   xor    %r14,%r13
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c363:   rorx   $0xe,%rdx,%r14
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c369:   and    %rdx,%r15
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c36c:   xor    %r14,%r13
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c36f:   rorx   $0x22,%rax,%r12
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c375:   xor    %r10,%r15
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c378:   rorx   $0x27,%rax,%r14
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c37e:   mov    %rax,%rdi
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c381:   xor    %r12,%r14
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c384:   rorx   $0x1c,%rax,%r12
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c38a:   add    (%rsp),%r11
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c38e:   or     %rcx,%rdi
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c391:   xor    %r12,%r14
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c394:   mov    %rax,%r12
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c397:   and    %rbx,%rdi
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c39a:   and    %rcx,%r12
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c39d:   add    %r13,%r15
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c3a0:   add    %r11,%r8
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c3a3:   or     %r12,%rdi
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c3a6:   add    %r14,%r11
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c3a9:   add    %r15,%r8
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c3ac:   add    %r15,%r11
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c3af:   mov    %rdx,%r15
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c3b2:   rorx   $0x29,%r8,%r13
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c3b8:   rorx   $0x12,%r8,%r14
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c3be:   xor    %r9,%r15
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c3c1:   xor    %r14,%r13
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c3c4:   rorx   $0xe,%r8,%r14
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c3ca:   and    %r8,%r15
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c3cd:   add    %rdi,%r11
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c3d0:   xor    %r14,%r13
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c3d3:   rorx   $0x22,%r11,%r12
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c3d9:   xor    %r9,%r15
   0.10%    │ ││                                                                                                                               0x00007fa85ac5c3dc:   rorx   $0x27,%r11,%r14
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c3e2:   mov    %r11,%rdi
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c3e5:   xor    %r12,%r14
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c3e8:   rorx   $0x1c,%r11,%r12
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c3ee:   add    0x8(%rsp),%r10
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c3f3:   or     %rbx,%rdi
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c3f6:   xor    %r12,%r14
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c3f9:   mov    %r11,%r12
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c3fc:   and    %rax,%rdi
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c3ff:   and    %rbx,%r12
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c402:   add    %r13,%r15
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c405:   add    %r10,%rcx
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c408:   or     %r12,%rdi
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c40b:   add    %r14,%r10
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c40e:   add    %r15,%rcx
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c411:   add    %r15,%r10
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c414:   mov    %r8,%r15
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c417:   rorx   $0x29,%rcx,%r13
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c41d:   rorx   $0x12,%rcx,%r14
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c423:   xor    %rdx,%r15
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c426:   xor    %r14,%r13
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c429:   rorx   $0xe,%rcx,%r14
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c42f:   and    %rcx,%r15
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c432:   add    %rdi,%r10
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c435:   xor    %r14,%r13
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c438:   rorx   $0x22,%r10,%r12
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c43e:   xor    %rdx,%r15
   0.09%    │ ││                                                                                                                               0x00007fa85ac5c441:   rorx   $0x27,%r10,%r14
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c447:   mov    %r10,%rdi
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c44a:   xor    %r12,%r14
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c44d:   rorx   $0x1c,%r10,%r12
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c453:   add    0x10(%rsp),%r9
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c458:   or     %rax,%rdi
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c45b:   xor    %r12,%r14
   0.09%    │ ││                                                                                                                               0x00007fa85ac5c45e:   mov    %r10,%r12
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c461:   and    %r11,%rdi
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c464:   and    %rax,%r12
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c467:   add    %r13,%r15
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c46a:   add    %r9,%rbx
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c46d:   or     %r12,%rdi
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c470:   add    %r14,%r9
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c473:   add    %r15,%rbx
   0.09%    │ ││                                                                                                                               0x00007fa85ac5c476:   add    %r15,%r9
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c479:   mov    %rcx,%r15
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c47c:   rorx   $0x29,%rbx,%r13
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c482:   rorx   $0x12,%rbx,%r14
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c488:   xor    %r8,%r15
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c48b:   xor    %r14,%r13
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c48e:   rorx   $0xe,%rbx,%r14
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c494:   and    %rbx,%r15
   0.10%    │ ││                                                                                                                               0x00007fa85ac5c497:   add    %rdi,%r9
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c49a:   xor    %r14,%r13
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c49d:   rorx   $0x22,%r9,%r12
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c4a3:   xor    %r8,%r15
   0.11%    │ ││                                                                                                                               0x00007fa85ac5c4a6:   rorx   $0x27,%r9,%r14
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c4ac:   mov    %r9,%rdi
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c4af:   xor    %r12,%r14
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c4b2:   rorx   $0x1c,%r9,%r12
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c4b8:   add    0x18(%rsp),%rdx
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c4bd:   or     %r11,%rdi
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c4c0:   xor    %r12,%r14
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c4c3:   mov    %r9,%r12
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c4c6:   and    %r10,%rdi
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c4c9:   and    %r11,%r12
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c4cc:   add    %r13,%r15
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c4cf:   add    %rdx,%rax
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c4d2:   or     %r12,%rdi
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c4d5:   add    %r14,%rdx
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c4d8:   add    %r15,%rax
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c4db:   add    %r15,%rdx
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c4de:   add    %rdi,%rdx
   0.11%    │ ││                                                                                                                               0x00007fa85ac5c4e1:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c4e6:   vmovdqu %ymm0,(%rsp)
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c4eb:   add    $0x40,%rbp
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c4ef:   mov    %rbx,%r15
   0.09%    │ ││                                                                                                                               0x00007fa85ac5c4f2:   rorx   $0x29,%rax,%r13
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c4f8:   rorx   $0x12,%rax,%r14
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c4fe:   xor    %rcx,%r15
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c501:   xor    %r14,%r13
   0.09%    │ ││                                                                                                                               0x00007fa85ac5c504:   rorx   $0xe,%rax,%r14
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c50a:   and    %rax,%r15
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c50d:   xor    %r14,%r13
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c510:   rorx   $0x22,%rdx,%r12
   0.10%    │ ││                                                                                                                               0x00007fa85ac5c516:   xor    %rcx,%r15
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c519:   rorx   $0x27,%rdx,%r14
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c51f:   mov    %rdx,%rdi
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c522:   xor    %r12,%r14
   0.11%    │ ││                                                                                                                               0x00007fa85ac5c525:   rorx   $0x1c,%rdx,%r12
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c52b:   add    (%rsp),%r8
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c52f:   or     %r10,%rdi
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c532:   xor    %r12,%r14
   0.09%    │ ││                                                                                                                               0x00007fa85ac5c535:   mov    %rdx,%r12
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c538:   and    %r9,%rdi
   0.03%    │ ││                                                                                                                               0x00007fa85ac5c53b:   and    %r10,%r12
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c53e:   add    %r13,%r15
   0.09%    │ ││                                                                                                                               0x00007fa85ac5c541:   add    %r8,%r11
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c544:   or     %r12,%rdi
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c547:   add    %r14,%r8
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c54a:   add    %r15,%r11
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c54d:   add    %r15,%r8
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c550:   mov    %rax,%r15
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c553:   rorx   $0x29,%r11,%r13
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c559:   rorx   $0x12,%r11,%r14
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c55f:   xor    %rbx,%r15
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c562:   xor    %r14,%r13
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c565:   rorx   $0xe,%r11,%r14
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c56b:   and    %r11,%r15
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c56e:   add    %rdi,%r8
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c571:   xor    %r14,%r13
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c574:   rorx   $0x22,%r8,%r12
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c57a:   xor    %rbx,%r15
   0.10%    │ ││                                                                                                                               0x00007fa85ac5c57d:   rorx   $0x27,%r8,%r14
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c583:   mov    %r8,%rdi
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c586:   xor    %r12,%r14
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c589:   rorx   $0x1c,%r8,%r12
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c58f:   add    0x8(%rsp),%rcx
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c594:   or     %r9,%rdi
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c597:   xor    %r12,%r14
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c59a:   mov    %r8,%r12
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c59d:   and    %rdx,%rdi
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c5a0:   and    %r9,%r12
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c5a3:   add    %r13,%r15
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c5a6:   add    %rcx,%r10
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c5a9:   or     %r12,%rdi
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c5ac:   add    %r14,%rcx
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c5af:   add    %r15,%r10
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c5b2:   add    %r15,%rcx
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c5b5:   mov    %r11,%r15
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c5b8:   rorx   $0x29,%r10,%r13
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c5be:   rorx   $0x12,%r10,%r14
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c5c4:   xor    %rax,%r15
   0.10%    │ ││                                                                                                                               0x00007fa85ac5c5c7:   xor    %r14,%r13
   0.09%    │ ││                                                                                                                               0x00007fa85ac5c5ca:   rorx   $0xe,%r10,%r14
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c5d0:   and    %r10,%r15
   0.10%    │ ││                                                                                                                               0x00007fa85ac5c5d3:   add    %rdi,%rcx
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c5d6:   xor    %r14,%r13
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c5d9:   rorx   $0x22,%rcx,%r12
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c5df:   xor    %rax,%r15
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c5e2:   rorx   $0x27,%rcx,%r14
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c5e8:   mov    %rcx,%rdi
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c5eb:   xor    %r12,%r14
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c5ee:   rorx   $0x1c,%rcx,%r12
   0.10%    │ ││                                                                                                                               0x00007fa85ac5c5f4:   add    0x10(%rsp),%rbx
   0.04%    │ ││                                                                                                                               0x00007fa85ac5c5f9:   or     %rdx,%rdi
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c5fc:   xor    %r12,%r14
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c5ff:   mov    %rcx,%r12
   0.10%    │ ││                                                                                                                               0x00007fa85ac5c602:   and    %r8,%rdi
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c605:   and    %rdx,%r12
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c608:   add    %r13,%r15
   0.09%    │ ││                                                                                                                               0x00007fa85ac5c60b:   add    %rbx,%r9
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c60e:   or     %r12,%rdi
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c611:   add    %r14,%rbx
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c614:   add    %r15,%r9
   0.10%    │ ││                                                                                                                               0x00007fa85ac5c617:   add    %r15,%rbx
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c61a:   mov    %r10,%r15
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c61d:   rorx   $0x29,%r9,%r13
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c623:   rorx   $0x12,%r9,%r14
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c629:   xor    %r11,%r15
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c62c:   xor    %r14,%r13
   0.09%    │ ││                                                                                                                               0x00007fa85ac5c62f:   rorx   $0xe,%r9,%r14
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c635:   and    %r9,%r15
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c638:   add    %rdi,%rbx
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c63b:   xor    %r14,%r13
   0.10%    │ ││                                                                                                                               0x00007fa85ac5c63e:   rorx   $0x22,%rbx,%r12
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c644:   xor    %r11,%r15
   0.08%    │ ││                                                                                                                               0x00007fa85ac5c647:   rorx   $0x27,%rbx,%r14
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c64d:   mov    %rbx,%rdi
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c650:   xor    %r12,%r14
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c653:   rorx   $0x1c,%rbx,%r12
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c659:   add    0x18(%rsp),%rax
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c65e:   or     %r8,%rdi
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c661:   xor    %r12,%r14
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c664:   mov    %rbx,%r12
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c667:   and    %rcx,%rdi
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c66a:   and    %r8,%r12
   0.05%    │ ││                                                                                                                               0x00007fa85ac5c66d:   add    %r13,%r15
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c670:   add    %rax,%rdx
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c673:   or     %r12,%rdi
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c676:   add    %r14,%rax
   0.09%    │ ││                                                                                                                               0x00007fa85ac5c679:   add    %r15,%rdx
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c67c:   add    %r15,%rax
   0.07%    │ ││                                                                                                                               0x00007fa85ac5c67f:   add    %rdi,%rax
   0.10%    │ ││                                                                                                                               0x00007fa85ac5c682:   vmovdqu %ymm6,%ymm4
   0.06%    │ ││                                                                                                                               0x00007fa85ac5c686:   vmovdqu %ymm7,%ymm5
   0.02%    │ ││                                                                                                                               0x00007fa85ac5c68a:   subq   $0x1,0x20(%rsp)
   0.17%    │ ╰│                                                                                                                               0x00007fa85ac5c690:   jne    0x00007fa85ac5c344
   0.03%    │  │                                                                                                                               0x00007fa85ac5c696:   add    (%rsi),%rax
   0.00%    │  │                                                                                                                               0x00007fa85ac5c699:   mov    %rax,(%rsi)
   0.19%    │  │                                                                                                                               0x00007fa85ac5c69c:   add    0x8(%rsi),%rbx
   0.00%    │  │                                                                                                                               0x00007fa85ac5c6a0:   mov    %rbx,0x8(%rsi)
   0.01%    │  │                                                                                                                               0x00007fa85ac5c6a4:   add    0x10(%rsi),%rcx
   0.00%    │  │                                                                                                                               0x00007fa85ac5c6a8:   mov    %rcx,0x10(%rsi)
   0.09%    │  │                                                                                                                               0x00007fa85ac5c6ac:   add    0x18(%rsi),%r8
            │  │                                                                                                                               0x00007fa85ac5c6b0:   mov    %r8,0x18(%rsi)
   0.01%    │  │                                                                                                                               0x00007fa85ac5c6b4:   add    0x20(%rsi),%rdx
   0.00%    │  │                                                                                                                               0x00007fa85ac5c6b8:   mov    %rdx,0x20(%rsi)
   0.10%    │  │                                                                                                                               0x00007fa85ac5c6bc:   add    0x28(%rsi),%r9
            │  │                                                                                                                               0x00007fa85ac5c6c0:   mov    %r9,0x28(%rsi)
   0.02%    │  │                                                                                                                               0x00007fa85ac5c6c4:   add    0x30(%rsi),%r10
            │  │                                                                                                                               0x00007fa85ac5c6c8:   mov    %r10,0x30(%rsi)
   0.15%    │  │                                                                                                                               0x00007fa85ac5c6cc:   add    0x38(%rsi),%r11
            │  │                                                                                                                               0x00007fa85ac5c6d0:   mov    %r11,0x38(%rsi)
   0.03%    │  │                                                                                                                               0x00007fa85ac5c6d4:   mov    0x28(%rsp),%rdi
            │  │                                                                                                                               0x00007fa85ac5c6d9:   add    $0x80,%rdi
   0.10%    │  │                                                                                                                               0x00007fa85ac5c6e0:   cmp    0x30(%rsp),%rdi
            │  ╰                                                                                                                               0x00007fa85ac5c6e5:   jne    0x00007fa85ac5b97b
   0.01%    ↘                                                                                                                                  0x00007fa85ac5c6eb:   mov    0x40(%rsp),%rbp
   0.01%                                                                                                                                       0x00007fa85ac5c6f0:   mov    0x48(%rsp),%rbx
   0.01%                                                                                                                                       0x00007fa85ac5c6f5:   mov    0x50(%rsp),%r12
                                                                                                                                               0x00007fa85ac5c6fa:   mov    0x58(%rsp),%r13
                                                                                                                                               0x00007fa85ac5c6ff:   mov    0x60(%rsp),%r14
                                                                                                                                               0x00007fa85ac5c704:   mov    0x68(%rsp),%r15
                                                                                                                                               0x00007fa85ac5c709:   mov    0x38(%rsp),%rsp
                                                                                                                                               0x00007fa85ac5c70e:   pop    %rcx
   0.01%                                                                                                                                       0x00007fa85ac5c70f:   pop    %rdx
                                                                                                                                               0x00007fa85ac5c710:   mov    %rdx,%rax
   0.23%         ↗                                                                                                                             0x00007fa85ac5c713:   cmp    %rcx,%rax
                ╭│                                                                                                                             0x00007fa85ac5c716:   jae    0x00007fa85ac5c720
                ││                                                                                                                             0x00007fa85ac5c718:   add    $0x80,%rax
   0.01%        │╰                                                                                                                             0x00007fa85ac5c71e:   jmp    0x00007fa85ac5c713
   0.01%        ↘                                                                                                                              0x00007fa85ac5c720:   vzeroupper 
   0.00%                                                                                                                                       0x00007fa85ac5c723:   leave  
   0.02%                                                                                                                                       0x00007fa85ac5c724:   ret    
                                                                                                                                             --------------------------------------------------------------------------------
                                                                                                                                             - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                             - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                             Decoding RuntimeStub - access_field_patching Runtime1 stub 0x00007fa85acf8810
                                                                                                                                             --------------------------------------------------------------------------------
                                                                                                                                               0x00007fa85acf8880:   push   %rbp
                                                                                                                                               0x00007fa85acf8881:   mov    %rsp,%rbp
                                                                                                                                               0x00007fa85acf8884:   sub    $0x80,%rsp
                                                                                                                                               0x00007fa85acf888b:   mov    %rax,0x78(%rsp)
                                                                                                                                               0x00007fa85acf8890:   mov    %rcx,0x70(%rsp)
....................................................................................................
  92.18%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.18%         runtime stub  StubRoutines::sha512_implCompressMB 
   3.84%                       <unknown> 
   0.97%               kernel  [unknown] 
   0.28%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 4, compile id 1135 
   0.19%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 4, compile id 1135 
   0.18%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.12%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.10%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 4, compile id 1135 
   0.09%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 4, compile id 1135 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 4, compile id 1135 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1141 
   0.04%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 4, compile id 1135 
   0.04%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 4, compile id 1135 
   0.03%               kernel  [unknown] 
   0.03%         runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.03%               kernel  [unknown] 
   1.50%  <...other 387 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.18%         runtime stub  StubRoutines::sha512_implCompressMB 
   3.87%                       <unknown> 
   2.08%               kernel  [unknown] 
   0.82%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 4, compile id 1135 
   0.22%       jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1141 
   0.18%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.09%       jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1138 
   0.05%         runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.03%       jvmci, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 1090 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%            libjvm.so  fileStream::write 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strncmp_avx2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1165 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.31%  <...other 125 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.41%         runtime stub
   3.87%                     
   2.08%               kernel
   1.18%       jvmci, level 4
   0.22%            libjvm.so
   0.10%         libc-2.31.so
   0.07%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA512/224, length = 16384)

# Run progress: 50.00% complete, ETA 00:11:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 45.407 us/op
# Warmup Iteration   2: 39.293 us/op
# Warmup Iteration   3: 39.283 us/op
# Warmup Iteration   4: 39.277 us/op
# Warmup Iteration   5: 39.281 us/op
Iteration   1: 39.279 us/op
Iteration   2: 39.280 us/op
Iteration   3: 39.278 us/op
Iteration   4: 39.287 us/op
Iteration   5: 39.281 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  39.281 ±(99.9%) 0.014 us/op [Average]
  (min, avg, max) = (39.278, 39.281, 39.287), stdev = 0.004
  CI (99.9%): [39.267, 39.295] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 271348 total address lines.
Perf output processed (skipped 61.656 seconds):
 Column 1: cycles (50713 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                                                                                                                                          0x00007fde7ec5c6cf:   mov    0x8(%rsi),%rbx
                                                                                                                                          0x00007fde7ec5c6d3:   mov    0x10(%rsi),%rcx
                                                                                                                                          0x00007fde7ec5c6d7:   mov    0x18(%rsi),%r8
                                                                                                                                          0x00007fde7ec5c6db:   mov    0x20(%rsi),%rdx
                                                                                                                                          0x00007fde7ec5c6df:   mov    0x28(%rsi),%r9
                                                                                                                                          0x00007fde7ec5c6e3:   mov    0x38(%rsi),%r11
                                                                                                                                          0x00007fde7ec5c6e7:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007fde7ec5b800
                                                                                                                                          0x00007fde7ec5c6ef:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007fde7ec5b820
                                                                                                                                          0x00007fde7ec5c6f7:   mov    0x30(%rsi),%r10
            ↗                                                                                                                             0x00007fde7ec5c6fb:   movabs $0x7fde97d81840,%rbp
   0.02%    │                                                                                                                             0x00007fde7ec5c705:   vmovdqu (%rdi),%ymm4
   0.21%    │                                                                                                                             0x00007fde7ec5c709:   vpshufb %ymm9,%ymm4,%ymm4
   0.36%    │                                                                                                                             0x00007fde7ec5c70e:   vmovdqu 0x20(%rdi),%ymm5
   0.00%    │                                                                                                                             0x00007fde7ec5c713:   vpshufb %ymm9,%ymm5,%ymm5
   0.01%    │                                                                                                                             0x00007fde7ec5c718:   vmovdqu 0x40(%rdi),%ymm6
   0.05%    │                                                                                                                             0x00007fde7ec5c71d:   vpshufb %ymm9,%ymm6,%ymm6
   0.36%    │                                                                                                                             0x00007fde7ec5c722:   vmovdqu 0x60(%rdi),%ymm7
   0.00%    │                                                                                                                             0x00007fde7ec5c727:   vpshufb %ymm9,%ymm7,%ymm7
   0.01%    │                                                                                                                             0x00007fde7ec5c72c:   mov    %rdi,0x28(%rsp)
            │                                                                                                                             0x00007fde7ec5c731:   movq   $0x4,0x20(%rsp)
   0.13%    │                                                                                                                             0x00007fde7ec5c73a:   nopw   0x0(%rax,%rax,1)
   0.05%  ↗ │                                                                                                                             0x00007fde7ec5c740:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.19%  │ │                                                                                                                             0x00007fde7ec5c745:   vmovdqu %ymm0,(%rsp)
   0.14%  │ │                                                                                                                             0x00007fde7ec5c74a:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.29%  │ │                                                                                                                             0x00007fde7ec5c750:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.29%  │ │                                                                                                                             0x00007fde7ec5c756:   vpaddq %ymm4,%ymm0,%ymm0
   0.71%  │ │                                                                                                                             0x00007fde7ec5c75a:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.10%  │ │                                                                                                                             0x00007fde7ec5c760:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.07%  │ │                                                                                                                             0x00007fde7ec5c766:   vpsrlq $0x1,%ymm1,%ymm2
   0.13%  │ │                                                                                                                             0x00007fde7ec5c76b:   vpsllq $0x3f,%ymm1,%ymm3
   0.27%  │ │                                                                                                                             0x00007fde7ec5c770:   vpor   %ymm2,%ymm3,%ymm3
   0.11%  │ │                                                                                                                             0x00007fde7ec5c774:   vpsrlq $0x7,%ymm1,%ymm8
   0.07%  │ │                                                                                                                             0x00007fde7ec5c779:   mov    %rax,%rdi
   0.06%  │ │                                                                                                                             0x00007fde7ec5c77c:   rorx   $0x29,%rdx,%r13
   0.25%  │ │                                                                                                                             0x00007fde7ec5c782:   rorx   $0x12,%rdx,%r14
   0.14%  │ │                                                                                                                             0x00007fde7ec5c788:   add    (%rsp),%r11
   0.08%  │ │                                                                                                                             0x00007fde7ec5c78c:   or     %rcx,%rdi
   0.06%  │ │                                                                                                                             0x00007fde7ec5c78f:   mov    %r9,%r15
   0.20%  │ │                                                                                                                             0x00007fde7ec5c792:   xor    %r10,%r15
   0.12%  │ │                                                                                                                             0x00007fde7ec5c795:   rorx   $0x22,%rax,%r12
   0.05%  │ │                                                                                                                             0x00007fde7ec5c79b:   xor    %r14,%r13
   0.05%  │ │                                                                                                                             0x00007fde7ec5c79e:   rorx   $0xe,%rdx,%r14
   0.28%  │ │                                                                                                                             0x00007fde7ec5c7a4:   and    %rdx,%r15
   0.12%  │ │                                                                                                                             0x00007fde7ec5c7a7:   add    %r11,%r8
   0.07%  │ │                                                                                                                             0x00007fde7ec5c7aa:   and    %rbx,%rdi
   0.07%  │ │                                                                                                                             0x00007fde7ec5c7ad:   xor    %r14,%r13
   0.18%  │ │                                                                                                                             0x00007fde7ec5c7b0:   rorx   $0x27,%rax,%r14
   0.13%  │ │                                                                                                                             0x00007fde7ec5c7b6:   xor    %r12,%r14
   0.07%  │ │                                                                                                                             0x00007fde7ec5c7b9:   rorx   $0x1c,%rax,%r12
   0.05%  │ │                                                                                                                             0x00007fde7ec5c7bf:   xor    %r10,%r15
   0.26%  │ │                                                                                                                             0x00007fde7ec5c7c2:   xor    %r12,%r14
   0.12%  │ │                                                                                                                             0x00007fde7ec5c7c5:   mov    %rax,%r12
   0.06%  │ │                                                                                                                             0x00007fde7ec5c7c8:   and    %rcx,%r12
   0.07%  │ │                                                                                                                             0x00007fde7ec5c7cb:   add    %r13,%r15
   0.20%  │ │                                                                                                                             0x00007fde7ec5c7ce:   or     %r12,%rdi
   0.13%  │ │                                                                                                                             0x00007fde7ec5c7d1:   add    %r14,%r11
   0.07%  │ │                                                                                                                             0x00007fde7ec5c7d4:   add    %r15,%r8
   0.05%  │ │                                                                                                                             0x00007fde7ec5c7d7:   add    %r15,%r11
   0.28%  │ │                                                                                                                             0x00007fde7ec5c7da:   add    %rdi,%r11
   0.14%  │ │                                                                                                                             0x00007fde7ec5c7dd:   vpsrlq $0x8,%ymm1,%ymm2
   0.05%  │ │                                                                                                                             0x00007fde7ec5c7e2:   vpsllq $0x38,%ymm1,%ymm1
   0.06%  │ │                                                                                                                             0x00007fde7ec5c7e7:   vpor   %ymm2,%ymm1,%ymm1
   0.26%  │ │                                                                                                                             0x00007fde7ec5c7eb:   vpxor  %ymm8,%ymm3,%ymm3
   0.10%  │ │                                                                                                                             0x00007fde7ec5c7f0:   vpxor  %ymm1,%ymm3,%ymm1
   0.07%  │ │                                                                                                                             0x00007fde7ec5c7f4:   vpaddq %ymm1,%ymm0,%ymm0
   0.07%  │ │                                                                                                                             0x00007fde7ec5c7f8:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.24%  │ │                                                                                                                             0x00007fde7ec5c7fe:   vpand  %ymm10,%ymm0,%ymm0
   0.13%  │ │                                                                                                                             0x00007fde7ec5c803:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.06%  │ │                                                                                                                             0x00007fde7ec5c809:   vpsrlq $0x6,%ymm2,%ymm8
   0.05%  │ │                                                                                                                             0x00007fde7ec5c80e:   mov    %r11,%rdi
   0.22%  │ │                                                                                                                             0x00007fde7ec5c811:   rorx   $0x29,%r8,%r13
   0.11%  │ │                                                                                                                             0x00007fde7ec5c817:   rorx   $0x12,%r8,%r14
   0.07%  │ │                                                                                                                             0x00007fde7ec5c81d:   add    0x8(%rsp),%r10
   0.03%  │ │                                                                                                                             0x00007fde7ec5c822:   or     %rbx,%rdi
   0.19%  │ │                                                                                                                             0x00007fde7ec5c825:   mov    %rdx,%r15
   0.16%  │ │                                                                                                                             0x00007fde7ec5c828:   xor    %r9,%r15
   0.06%  │ │                                                                                                                             0x00007fde7ec5c82b:   rorx   $0x22,%r11,%r12
   0.05%  │ │                                                                                                                             0x00007fde7ec5c831:   xor    %r14,%r13
   0.25%  │ │                                                                                                                             0x00007fde7ec5c834:   rorx   $0xe,%r8,%r14
   0.16%  │ │                                                                                                                             0x00007fde7ec5c83a:   and    %r8,%r15
   0.04%  │ │                                                                                                                             0x00007fde7ec5c83d:   add    %r10,%rcx
   0.04%  │ │                                                                                                                             0x00007fde7ec5c840:   and    %rax,%rdi
   0.26%  │ │                                                                                                                             0x00007fde7ec5c843:   xor    %r14,%r13
   0.15%  │ │                                                                                                                             0x00007fde7ec5c846:   rorx   $0x27,%r11,%r14
   0.06%  │ │                                                                                                                             0x00007fde7ec5c84c:   xor    %r12,%r14
   0.05%  │ │                                                                                                                             0x00007fde7ec5c84f:   rorx   $0x1c,%r11,%r12
   0.26%  │ │                                                                                                                             0x00007fde7ec5c855:   xor    %r9,%r15
   0.13%  │ │                                                                                                                             0x00007fde7ec5c858:   xor    %r12,%r14
   0.07%  │ │                                                                                                                             0x00007fde7ec5c85b:   mov    %r11,%r12
   0.06%  │ │                                                                                                                             0x00007fde7ec5c85e:   and    %rbx,%r12
   0.23%  │ │                                                                                                                             0x00007fde7ec5c861:   add    %r13,%r15
   0.11%  │ │                                                                                                                             0x00007fde7ec5c864:   or     %r12,%rdi
   0.05%  │ │                                                                                                                             0x00007fde7ec5c867:   add    %r14,%r10
   0.08%  │ │                                                                                                                             0x00007fde7ec5c86a:   add    %r15,%rcx
   0.24%  │ │                                                                                                                             0x00007fde7ec5c86d:   add    %r15,%r10
   0.16%  │ │                                                                                                                             0x00007fde7ec5c870:   add    %rdi,%r10
   0.08%  │ │                                                                                                                             0x00007fde7ec5c873:   vpsrlq $0x13,%ymm2,%ymm3
   0.04%  │ │                                                                                                                             0x00007fde7ec5c878:   vpsllq $0x2d,%ymm2,%ymm1
   0.21%  │ │                                                                                                                             0x00007fde7ec5c87d:   vpor   %ymm1,%ymm3,%ymm3
   0.14%  │ │                                                                                                                             0x00007fde7ec5c881:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%  │ │                                                                                                                             0x00007fde7ec5c885:   vpsrlq $0x3d,%ymm2,%ymm3
   0.05%  │ │                                                                                                                             0x00007fde7ec5c88a:   vpsllq $0x3,%ymm2,%ymm1
   0.26%  │ │                                                                                                                             0x00007fde7ec5c88f:   vpor   %ymm1,%ymm3,%ymm3
   0.13%  │ │                                                                                                                             0x00007fde7ec5c893:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%  │ │                                                                                                                             0x00007fde7ec5c897:   vpaddq %ymm8,%ymm4,%ymm4
   0.05%  │ │                                                                                                                             0x00007fde7ec5c89c:   vpsrlq $0x6,%ymm4,%ymm8
   0.25%  │ │                                                                                                                             0x00007fde7ec5c8a1:   mov    %r10,%rdi
   0.13%  │ │                                                                                                                             0x00007fde7ec5c8a4:   rorx   $0x29,%rcx,%r13
   0.08%  │ │                                                                                                                             0x00007fde7ec5c8aa:   rorx   $0x12,%rcx,%r14
   0.06%  │ │                                                                                                                             0x00007fde7ec5c8b0:   add    0x10(%rsp),%r9
   0.22%  │ │                                                                                                                             0x00007fde7ec5c8b5:   or     %rax,%rdi
   0.14%  │ │                                                                                                                             0x00007fde7ec5c8b8:   mov    %r8,%r15
   0.07%  │ │                                                                                                                             0x00007fde7ec5c8bb:   xor    %rdx,%r15
   0.03%  │ │                                                                                                                             0x00007fde7ec5c8be:   rorx   $0x22,%r10,%r12
   0.25%  │ │                                                                                                                             0x00007fde7ec5c8c4:   xor    %r14,%r13
   0.13%  │ │                                                                                                                             0x00007fde7ec5c8c7:   rorx   $0xe,%rcx,%r14
   0.10%  │ │                                                                                                                             0x00007fde7ec5c8cd:   and    %rcx,%r15
   0.07%  │ │                                                                                                                             0x00007fde7ec5c8d0:   add    %r9,%rbx
   0.26%  │ │                                                                                                                             0x00007fde7ec5c8d3:   and    %r11,%rdi
   0.13%  │ │                                                                                                                             0x00007fde7ec5c8d6:   xor    %r14,%r13
   0.05%  │ │                                                                                                                             0x00007fde7ec5c8d9:   rorx   $0x27,%r10,%r14
   0.05%  │ │                                                                                                                             0x00007fde7ec5c8df:   xor    %r12,%r14
   0.25%  │ │                                                                                                                             0x00007fde7ec5c8e2:   rorx   $0x1c,%r10,%r12
   0.16%  │ │                                                                                                                             0x00007fde7ec5c8e8:   xor    %rdx,%r15
   0.07%  │ │                                                                                                                             0x00007fde7ec5c8eb:   xor    %r12,%r14
   0.05%  │ │                                                                                                                             0x00007fde7ec5c8ee:   mov    %r10,%r12
   0.25%  │ │                                                                                                                             0x00007fde7ec5c8f1:   and    %rax,%r12
   0.16%  │ │                                                                                                                             0x00007fde7ec5c8f4:   add    %r13,%r15
   0.07%  │ │                                                                                                                             0x00007fde7ec5c8f7:   or     %r12,%rdi
   0.06%  │ │                                                                                                                             0x00007fde7ec5c8fa:   add    %r14,%r9
   0.25%  │ │                                                                                                                             0x00007fde7ec5c8fd:   add    %r15,%rbx
   0.14%  │ │                                                                                                                             0x00007fde7ec5c900:   add    %r15,%r9
   0.05%  │ │                                                                                                                             0x00007fde7ec5c903:   add    %rdi,%r9
   0.05%  │ │                                                                                                                             0x00007fde7ec5c906:   vpsrlq $0x13,%ymm4,%ymm3
   0.21%  │ │                                                                                                                             0x00007fde7ec5c90b:   vpsllq $0x2d,%ymm4,%ymm1
   0.14%  │ │                                                                                                                             0x00007fde7ec5c910:   vpor   %ymm1,%ymm3,%ymm3
   0.08%  │ │                                                                                                                             0x00007fde7ec5c914:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │                                                                                                                             0x00007fde7ec5c918:   vpsrlq $0x3d,%ymm4,%ymm3
   0.27%  │ │                                                                                                                             0x00007fde7ec5c91d:   vpsllq $0x3,%ymm4,%ymm1
   0.14%  │ │                                                                                                                             0x00007fde7ec5c922:   vpor   %ymm1,%ymm3,%ymm3
   0.10%  │ │                                                                                                                             0x00007fde7ec5c926:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │                                                                                                                             0x00007fde7ec5c92a:   vpaddq %ymm8,%ymm0,%ymm2
   0.27%  │ │                                                                                                                             0x00007fde7ec5c92f:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.21%  │ │                                                                                                                             0x00007fde7ec5c935:   mov    %r9,%rdi
   0.06%  │ │                                                                                                                             0x00007fde7ec5c938:   rorx   $0x29,%rbx,%r13
   0.02%  │ │                                                                                                                             0x00007fde7ec5c93e:   rorx   $0x12,%rbx,%r14
   0.21%  │ │                                                                                                                             0x00007fde7ec5c944:   add    0x18(%rsp),%rdx
   0.18%  │ │                                                                                                                             0x00007fde7ec5c949:   or     %r11,%rdi
   0.06%  │ │                                                                                                                             0x00007fde7ec5c94c:   mov    %rcx,%r15
   0.06%  │ │                                                                                                                             0x00007fde7ec5c94f:   xor    %r8,%r15
   0.22%  │ │                                                                                                                             0x00007fde7ec5c952:   rorx   $0x22,%r9,%r12
   0.17%  │ │                                                                                                                             0x00007fde7ec5c958:   xor    %r14,%r13
   0.07%  │ │                                                                                                                             0x00007fde7ec5c95b:   rorx   $0xe,%rbx,%r14
   0.05%  │ │                                                                                                                             0x00007fde7ec5c961:   and    %rbx,%r15
   0.22%  │ │                                                                                                                             0x00007fde7ec5c964:   add    %rdx,%rax
   0.17%  │ │                                                                                                                             0x00007fde7ec5c967:   and    %r10,%rdi
   0.06%  │ │                                                                                                                             0x00007fde7ec5c96a:   xor    %r14,%r13
   0.04%  │ │                                                                                                                             0x00007fde7ec5c96d:   rorx   $0x27,%r9,%r14
   0.22%  │ │                                                                                                                             0x00007fde7ec5c973:   xor    %r12,%r14
   0.18%  │ │                                                                                                                             0x00007fde7ec5c976:   rorx   $0x1c,%r9,%r12
   0.06%  │ │                                                                                                                             0x00007fde7ec5c97c:   xor    %r8,%r15
   0.03%  │ │                                                                                                                             0x00007fde7ec5c97f:   xor    %r12,%r14
   0.23%  │ │                                                                                                                             0x00007fde7ec5c982:   mov    %r9,%r12
   0.18%  │ │                                                                                                                             0x00007fde7ec5c985:   and    %r11,%r12
   0.06%  │ │                                                                                                                             0x00007fde7ec5c988:   add    %r13,%r15
   0.04%  │ │                                                                                                                             0x00007fde7ec5c98b:   or     %r12,%rdi
   0.19%  │ │                                                                                                                             0x00007fde7ec5c98e:   add    %r14,%rdx
   0.17%  │ │                                                                                                                             0x00007fde7ec5c991:   add    %r15,%rax
   0.08%  │ │                                                                                                                             0x00007fde7ec5c994:   add    %r15,%rdx
   0.04%  │ │                                                                                                                             0x00007fde7ec5c997:   add    %rdi,%rdx
   0.22%  │ │                                                                                                                             0x00007fde7ec5c99a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.16%  │ │                                                                                                                             0x00007fde7ec5c99f:   vmovdqu %ymm0,(%rsp)
   0.08%  │ │                                                                                                                             0x00007fde7ec5c9a4:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.04%  │ │                                                                                                                             0x00007fde7ec5c9aa:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.19%  │ │                                                                                                                             0x00007fde7ec5c9b0:   vpaddq %ymm5,%ymm0,%ymm0
   0.22%  │ │                                                                                                                             0x00007fde7ec5c9b4:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.06%  │ │                                                                                                                             0x00007fde7ec5c9ba:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.06%  │ │                                                                                                                             0x00007fde7ec5c9c0:   vpsrlq $0x1,%ymm1,%ymm2
   0.21%  │ │                                                                                                                             0x00007fde7ec5c9c5:   vpsllq $0x3f,%ymm1,%ymm3
   0.17%  │ │                                                                                                                             0x00007fde7ec5c9ca:   vpor   %ymm2,%ymm3,%ymm3
   0.09%  │ │                                                                                                                             0x00007fde7ec5c9ce:   vpsrlq $0x7,%ymm1,%ymm8
   0.04%  │ │                                                                                                                             0x00007fde7ec5c9d3:   mov    %rdx,%rdi
   0.20%  │ │                                                                                                                             0x00007fde7ec5c9d6:   rorx   $0x29,%rax,%r13
   0.16%  │ │                                                                                                                             0x00007fde7ec5c9dc:   rorx   $0x12,%rax,%r14
   0.07%  │ │                                                                                                                             0x00007fde7ec5c9e2:   add    (%rsp),%r8
   0.03%  │ │                                                                                                                             0x00007fde7ec5c9e6:   or     %r10,%rdi
   0.21%  │ │                                                                                                                             0x00007fde7ec5c9e9:   mov    %rbx,%r15
   0.21%  │ │                                                                                                                             0x00007fde7ec5c9ec:   xor    %rcx,%r15
   0.09%  │ │                                                                                                                             0x00007fde7ec5c9ef:   rorx   $0x22,%rdx,%r12
   0.05%  │ │                                                                                                                             0x00007fde7ec5c9f5:   xor    %r14,%r13
   0.18%  │ │                                                                                                                             0x00007fde7ec5c9f8:   rorx   $0xe,%rax,%r14
   0.21%  │ │                                                                                                                             0x00007fde7ec5c9fe:   and    %rax,%r15
   0.07%  │ │                                                                                                                             0x00007fde7ec5ca01:   add    %r8,%r11
   0.04%  │ │                                                                                                                             0x00007fde7ec5ca04:   and    %r9,%rdi
   0.21%  │ │                                                                                                                             0x00007fde7ec5ca07:   xor    %r14,%r13
   0.19%  │ │                                                                                                                             0x00007fde7ec5ca0a:   rorx   $0x27,%rdx,%r14
   0.09%  │ │                                                                                                                             0x00007fde7ec5ca10:   xor    %r12,%r14
   0.04%  │ │                                                                                                                             0x00007fde7ec5ca13:   rorx   $0x1c,%rdx,%r12
   0.15%  │ │                                                                                                                             0x00007fde7ec5ca19:   xor    %rcx,%r15
   0.14%  │ │                                                                                                                             0x00007fde7ec5ca1c:   xor    %r12,%r14
   0.10%  │ │                                                                                                                             0x00007fde7ec5ca1f:   mov    %rdx,%r12
   0.07%  │ │                                                                                                                             0x00007fde7ec5ca22:   and    %r10,%r12
   0.24%  │ │                                                                                                                             0x00007fde7ec5ca25:   add    %r13,%r15
   0.18%  │ │                                                                                                                             0x00007fde7ec5ca28:   or     %r12,%rdi
   0.08%  │ │                                                                                                                             0x00007fde7ec5ca2b:   add    %r14,%r8
   0.03%  │ │                                                                                                                             0x00007fde7ec5ca2e:   add    %r15,%r11
   0.18%  │ │                                                                                                                             0x00007fde7ec5ca31:   add    %r15,%r8
   0.16%  │ │                                                                                                                             0x00007fde7ec5ca34:   add    %rdi,%r8
   0.08%  │ │                                                                                                                             0x00007fde7ec5ca37:   vpsrlq $0x8,%ymm1,%ymm2
   0.04%  │ │                                                                                                                             0x00007fde7ec5ca3c:   vpsllq $0x38,%ymm1,%ymm1
   0.20%  │ │                                                                                                                             0x00007fde7ec5ca41:   vpor   %ymm2,%ymm1,%ymm1
   0.18%  │ │                                                                                                                             0x00007fde7ec5ca45:   vpxor  %ymm8,%ymm3,%ymm3
   0.09%  │ │                                                                                                                             0x00007fde7ec5ca4a:   vpxor  %ymm1,%ymm3,%ymm1
   0.06%  │ │                                                                                                                             0x00007fde7ec5ca4e:   vpaddq %ymm1,%ymm0,%ymm0
   0.21%  │ │                                                                                                                             0x00007fde7ec5ca52:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.17%  │ │                                                                                                                             0x00007fde7ec5ca58:   vpand  %ymm10,%ymm0,%ymm0
   0.06%  │ │                                                                                                                             0x00007fde7ec5ca5d:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.04%  │ │                                                                                                                             0x00007fde7ec5ca63:   vpsrlq $0x6,%ymm2,%ymm8
   0.19%  │ │                                                                                                                             0x00007fde7ec5ca68:   mov    %r8,%rdi
   0.18%  │ │                                                                                                                             0x00007fde7ec5ca6b:   rorx   $0x29,%r11,%r13
   0.09%  │ │                                                                                                                             0x00007fde7ec5ca71:   rorx   $0x12,%r11,%r14
   0.05%  │ │                                                                                                                             0x00007fde7ec5ca77:   add    0x8(%rsp),%rcx
   0.16%  │ │                                                                                                                             0x00007fde7ec5ca7c:   or     %r9,%rdi
   0.19%  │ │                                                                                                                             0x00007fde7ec5ca7f:   mov    %rax,%r15
   0.07%  │ │                                                                                                                             0x00007fde7ec5ca82:   xor    %rbx,%r15
   0.05%  │ │                                                                                                                             0x00007fde7ec5ca85:   rorx   $0x22,%r8,%r12
   0.18%  │ │                                                                                                                             0x00007fde7ec5ca8b:   xor    %r14,%r13
   0.17%  │ │                                                                                                                             0x00007fde7ec5ca8e:   rorx   $0xe,%r11,%r14
   0.08%  │ │                                                                                                                             0x00007fde7ec5ca94:   and    %r11,%r15
   0.05%  │ │                                                                                                                             0x00007fde7ec5ca97:   add    %rcx,%r10
   0.23%  │ │                                                                                                                             0x00007fde7ec5ca9a:   and    %rdx,%rdi
   0.23%  │ │                                                                                                                             0x00007fde7ec5ca9d:   xor    %r14,%r13
   0.09%  │ │                                                                                                                             0x00007fde7ec5caa0:   rorx   $0x27,%r8,%r14
   0.02%  │ │                                                                                                                             0x00007fde7ec5caa6:   xor    %r12,%r14
   0.19%  │ │                                                                                                                             0x00007fde7ec5caa9:   rorx   $0x1c,%r8,%r12
   0.16%  │ │                                                                                                                             0x00007fde7ec5caaf:   xor    %rbx,%r15
   0.09%  │ │                                                                                                                             0x00007fde7ec5cab2:   xor    %r12,%r14
   0.04%  │ │                                                                                                                             0x00007fde7ec5cab5:   mov    %r8,%r12
   0.19%  │ │                                                                                                                             0x00007fde7ec5cab8:   and    %r9,%r12
   0.20%  │ │                                                                                                                             0x00007fde7ec5cabb:   add    %r13,%r15
   0.07%  │ │                                                                                                                             0x00007fde7ec5cabe:   or     %r12,%rdi
   0.04%  │ │                                                                                                                             0x00007fde7ec5cac1:   add    %r14,%rcx
   0.21%  │ │                                                                                                                             0x00007fde7ec5cac4:   add    %r15,%r10
   0.12%  │ │                                                                                                                             0x00007fde7ec5cac7:   add    %r15,%rcx
   0.08%  │ │                                                                                                                             0x00007fde7ec5caca:   add    %rdi,%rcx
   0.05%  │ │                                                                                                                             0x00007fde7ec5cacd:   vpsrlq $0x13,%ymm2,%ymm3
   0.21%  │ │                                                                                                                             0x00007fde7ec5cad2:   vpsllq $0x2d,%ymm2,%ymm1
   0.13%  │ │                                                                                                                             0x00007fde7ec5cad7:   vpor   %ymm1,%ymm3,%ymm3
   0.09%  │ │                                                                                                                             0x00007fde7ec5cadb:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │                                                                                                                             0x00007fde7ec5cadf:   vpsrlq $0x3d,%ymm2,%ymm3
   0.20%  │ │                                                                                                                             0x00007fde7ec5cae4:   vpsllq $0x3,%ymm2,%ymm1
   0.19%  │ │                                                                                                                             0x00007fde7ec5cae9:   vpor   %ymm1,%ymm3,%ymm3
   0.10%  │ │                                                                                                                             0x00007fde7ec5caed:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%  │ │                                                                                                                             0x00007fde7ec5caf1:   vpaddq %ymm8,%ymm5,%ymm5
   0.20%  │ │                                                                                                                             0x00007fde7ec5caf6:   vpsrlq $0x6,%ymm5,%ymm8
   0.21%  │ │                                                                                                                             0x00007fde7ec5cafb:   mov    %rcx,%rdi
   0.11%  │ │                                                                                                                             0x00007fde7ec5cafe:   rorx   $0x29,%r10,%r13
   0.03%  │ │                                                                                                                             0x00007fde7ec5cb04:   rorx   $0x12,%r10,%r14
   0.19%  │ │                                                                                                                             0x00007fde7ec5cb0a:   add    0x10(%rsp),%rbx
   0.16%  │ │                                                                                                                             0x00007fde7ec5cb0f:   or     %rdx,%rdi
   0.07%  │ │                                                                                                                             0x00007fde7ec5cb12:   mov    %r11,%r15
   0.06%  │ │                                                                                                                             0x00007fde7ec5cb15:   xor    %rax,%r15
   0.19%  │ │                                                                                                                             0x00007fde7ec5cb18:   rorx   $0x22,%rcx,%r12
   0.19%  │ │                                                                                                                             0x00007fde7ec5cb1e:   xor    %r14,%r13
   0.09%  │ │                                                                                                                             0x00007fde7ec5cb21:   rorx   $0xe,%r10,%r14
   0.04%  │ │                                                                                                                             0x00007fde7ec5cb27:   and    %r10,%r15
   0.17%  │ │                                                                                                                             0x00007fde7ec5cb2a:   add    %rbx,%r9
   0.16%  │ │                                                                                                                             0x00007fde7ec5cb2d:   and    %r8,%rdi
   0.09%  │ │                                                                                                                             0x00007fde7ec5cb30:   xor    %r14,%r13
   0.04%  │ │                                                                                                                             0x00007fde7ec5cb33:   rorx   $0x27,%rcx,%r14
   0.17%  │ │                                                                                                                             0x00007fde7ec5cb39:   xor    %r12,%r14
   0.17%  │ │                                                                                                                             0x00007fde7ec5cb3c:   rorx   $0x1c,%rcx,%r12
   0.07%  │ │                                                                                                                             0x00007fde7ec5cb42:   xor    %rax,%r15
   0.03%  │ │                                                                                                                             0x00007fde7ec5cb45:   xor    %r12,%r14
   0.19%  │ │                                                                                                                             0x00007fde7ec5cb48:   mov    %rcx,%r12
   0.17%  │ │                                                                                                                             0x00007fde7ec5cb4b:   and    %rdx,%r12
   0.08%  │ │                                                                                                                             0x00007fde7ec5cb4e:   add    %r13,%r15
   0.02%  │ │                                                                                                                             0x00007fde7ec5cb51:   or     %r12,%rdi
   0.17%  │ │                                                                                                                             0x00007fde7ec5cb54:   add    %r14,%rbx
   0.17%  │ │                                                                                                                             0x00007fde7ec5cb57:   add    %r15,%r9
   0.07%  │ │                                                                                                                             0x00007fde7ec5cb5a:   add    %r15,%rbx
   0.02%  │ │                                                                                                                             0x00007fde7ec5cb5d:   add    %rdi,%rbx
   0.18%  │ │                                                                                                                             0x00007fde7ec5cb60:   vpsrlq $0x13,%ymm5,%ymm3
   0.19%  │ │                                                                                                                             0x00007fde7ec5cb65:   vpsllq $0x2d,%ymm5,%ymm1
   0.10%  │ │                                                                                                                             0x00007fde7ec5cb6a:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │                                                                                                                             0x00007fde7ec5cb6e:   vpxor  %ymm3,%ymm8,%ymm8
   0.18%  │ │                                                                                                                             0x00007fde7ec5cb72:   vpsrlq $0x3d,%ymm5,%ymm3
   0.20%  │ │                                                                                                                             0x00007fde7ec5cb77:   vpsllq $0x3,%ymm5,%ymm1
   0.11%  │ │                                                                                                                             0x00007fde7ec5cb7c:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │                                                                                                                             0x00007fde7ec5cb80:   vpxor  %ymm3,%ymm8,%ymm8
   0.19%  │ │                                                                                                                             0x00007fde7ec5cb84:   vpaddq %ymm8,%ymm0,%ymm2
   0.19%  │ │                                                                                                                             0x00007fde7ec5cb89:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.15%  │ │                                                                                                                             0x00007fde7ec5cb8f:   mov    %rbx,%rdi
   0.04%  │ │                                                                                                                             0x00007fde7ec5cb92:   rorx   $0x29,%r9,%r13
   0.15%  │ │                                                                                                                             0x00007fde7ec5cb98:   rorx   $0x12,%r9,%r14
   0.15%  │ │                                                                                                                             0x00007fde7ec5cb9e:   add    0x18(%rsp),%rax
   0.12%  │ │                                                                                                                             0x00007fde7ec5cba3:   or     %r8,%rdi
   0.03%  │ │                                                                                                                             0x00007fde7ec5cba6:   mov    %r10,%r15
   0.16%  │ │                                                                                                                             0x00007fde7ec5cba9:   xor    %r11,%r15
   0.16%  │ │                                                                                                                             0x00007fde7ec5cbac:   rorx   $0x22,%rbx,%r12
   0.10%  │ │                                                                                                                             0x00007fde7ec5cbb2:   xor    %r14,%r13
   0.04%  │ │                                                                                                                             0x00007fde7ec5cbb5:   rorx   $0xe,%r9,%r14
   0.15%  │ │                                                                                                                             0x00007fde7ec5cbbb:   and    %r9,%r15
   0.19%  │ │                                                                                                                             0x00007fde7ec5cbbe:   add    %rax,%rdx
   0.12%  │ │                                                                                                                             0x00007fde7ec5cbc1:   and    %rcx,%rdi
   0.04%  │ │                                                                                                                             0x00007fde7ec5cbc4:   xor    %r14,%r13
   0.16%  │ │                                                                                                                             0x00007fde7ec5cbc7:   rorx   $0x27,%rbx,%r14
   0.16%  │ │                                                                                                                             0x00007fde7ec5cbcd:   xor    %r12,%r14
   0.12%  │ │                                                                                                                             0x00007fde7ec5cbd0:   rorx   $0x1c,%rbx,%r12
   0.03%  │ │                                                                                                                             0x00007fde7ec5cbd6:   xor    %r11,%r15
   0.15%  │ │                                                                                                                             0x00007fde7ec5cbd9:   xor    %r12,%r14
   0.19%  │ │                                                                                                                             0x00007fde7ec5cbdc:   mov    %rbx,%r12
   0.12%  │ │                                                                                                                             0x00007fde7ec5cbdf:   and    %r8,%r12
   0.04%  │ │                                                                                                                             0x00007fde7ec5cbe2:   add    %r13,%r15
   0.14%  │ │                                                                                                                             0x00007fde7ec5cbe5:   or     %r12,%rdi
   0.16%  │ │                                                                                                                             0x00007fde7ec5cbe8:   add    %r14,%rax
   0.10%  │ │                                                                                                                             0x00007fde7ec5cbeb:   add    %r15,%rdx
   0.04%  │ │                                                                                                                             0x00007fde7ec5cbee:   add    %r15,%rax
   0.16%  │ │                                                                                                                             0x00007fde7ec5cbf1:   add    %rdi,%rax
   0.17%  │ │                                                                                                                             0x00007fde7ec5cbf4:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.12%  │ │                                                                                                                             0x00007fde7ec5cbf9:   vmovdqu %ymm0,(%rsp)
   0.04%  │ │                                                                                                                             0x00007fde7ec5cbfe:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.16%  │ │                                                                                                                             0x00007fde7ec5cc04:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.20%  │ │                                                                                                                             0x00007fde7ec5cc0a:   vpaddq %ymm6,%ymm0,%ymm0
   0.18%  │ │                                                                                                                             0x00007fde7ec5cc0e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.04%  │ │                                                                                                                             0x00007fde7ec5cc14:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.15%  │ │                                                                                                                             0x00007fde7ec5cc1a:   vpsrlq $0x1,%ymm1,%ymm2
   0.21%  │ │                                                                                                                             0x00007fde7ec5cc1f:   vpsllq $0x3f,%ymm1,%ymm3
   0.16%  │ │                                                                                                                             0x00007fde7ec5cc24:   vpor   %ymm2,%ymm3,%ymm3
   0.04%  │ │                                                                                                                             0x00007fde7ec5cc28:   vpsrlq $0x7,%ymm1,%ymm8
   0.13%  │ │                                                                                                                             0x00007fde7ec5cc2d:   mov    %rax,%rdi
   0.14%  │ │                                                                                                                             0x00007fde7ec5cc30:   rorx   $0x29,%rdx,%r13
   0.17%  │ │                                                                                                                             0x00007fde7ec5cc36:   rorx   $0x12,%rdx,%r14
   0.03%  │ │                                                                                                                             0x00007fde7ec5cc3c:   add    (%rsp),%r11
   0.18%  │ │                                                                                                                             0x00007fde7ec5cc40:   or     %rcx,%rdi
   0.16%  │ │                                                                                                                             0x00007fde7ec5cc43:   mov    %r9,%r15
   0.15%  │ │                                                                                                                             0x00007fde7ec5cc46:   xor    %r10,%r15
   0.06%  │ │                                                                                                                             0x00007fde7ec5cc49:   rorx   $0x22,%rax,%r12
   0.13%  │ │                                                                                                                             0x00007fde7ec5cc4f:   xor    %r14,%r13
   0.13%  │ │                                                                                                                             0x00007fde7ec5cc52:   rorx   $0xe,%rdx,%r14
   0.16%  │ │                                                                                                                             0x00007fde7ec5cc58:   and    %rdx,%r15
   0.04%  │ │                                                                                                                             0x00007fde7ec5cc5b:   add    %r11,%r8
   0.12%  │ │                                                                                                                             0x00007fde7ec5cc5e:   and    %rbx,%rdi
   0.16%  │ │                                                                                                                             0x00007fde7ec5cc61:   xor    %r14,%r13
   0.15%  │ │                                                                                                                             0x00007fde7ec5cc64:   rorx   $0x27,%rax,%r14
   0.04%  │ │                                                                                                                             0x00007fde7ec5cc6a:   xor    %r12,%r14
   0.15%  │ │                                                                                                                             0x00007fde7ec5cc6d:   rorx   $0x1c,%rax,%r12
   0.14%  │ │                                                                                                                             0x00007fde7ec5cc73:   xor    %r10,%r15
   0.16%  │ │                                                                                                                             0x00007fde7ec5cc76:   xor    %r12,%r14
   0.05%  │ │                                                                                                                             0x00007fde7ec5cc79:   mov    %rax,%r12
   0.17%  │ │                                                                                                                             0x00007fde7ec5cc7c:   and    %rcx,%r12
   0.19%  │ │                                                                                                                             0x00007fde7ec5cc7f:   add    %r13,%r15
   0.16%  │ │                                                                                                                             0x00007fde7ec5cc82:   or     %r12,%rdi
   0.05%  │ │                                                                                                                             0x00007fde7ec5cc85:   add    %r14,%r11
   0.15%  │ │                                                                                                                             0x00007fde7ec5cc88:   add    %r15,%r8
   0.16%  │ │                                                                                                                             0x00007fde7ec5cc8b:   add    %r15,%r11
   0.13%  │ │                                                                                                                             0x00007fde7ec5cc8e:   add    %rdi,%r11
   0.02%  │ │                                                                                                                             0x00007fde7ec5cc91:   vpsrlq $0x8,%ymm1,%ymm2
   0.18%  │ │                                                                                                                             0x00007fde7ec5cc96:   vpsllq $0x38,%ymm1,%ymm1
   0.12%  │ │                                                                                                                             0x00007fde7ec5cc9b:   vpor   %ymm2,%ymm1,%ymm1
   0.17%  │ │                                                                                                                             0x00007fde7ec5cc9f:   vpxor  %ymm8,%ymm3,%ymm3
   0.04%  │ │                                                                                                                             0x00007fde7ec5cca4:   vpxor  %ymm1,%ymm3,%ymm1
   0.14%  │ │                                                                                                                             0x00007fde7ec5cca8:   vpaddq %ymm1,%ymm0,%ymm0
   0.16%  │ │                                                                                                                             0x00007fde7ec5ccac:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.17%  │ │                                                                                                                             0x00007fde7ec5ccb2:   vpand  %ymm10,%ymm0,%ymm0
   0.05%  │ │                                                                                                                             0x00007fde7ec5ccb7:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.18%  │ │                                                                                                                             0x00007fde7ec5ccbd:   vpsrlq $0x6,%ymm2,%ymm8
   0.13%  │ │                                                                                                                             0x00007fde7ec5ccc2:   mov    %r11,%rdi
   0.14%  │ │                                                                                                                             0x00007fde7ec5ccc5:   rorx   $0x29,%r8,%r13
   0.05%  │ │                                                                                                                             0x00007fde7ec5cccb:   rorx   $0x12,%r8,%r14
   0.15%  │ │                                                                                                                             0x00007fde7ec5ccd1:   add    0x8(%rsp),%r10
   0.15%  │ │                                                                                                                             0x00007fde7ec5ccd6:   or     %rbx,%rdi
   0.12%  │ │                                                                                                                             0x00007fde7ec5ccd9:   mov    %rdx,%r15
   0.06%  │ │                                                                                                                             0x00007fde7ec5ccdc:   xor    %r9,%r15
   0.12%  │ │                                                                                                                             0x00007fde7ec5ccdf:   rorx   $0x22,%r11,%r12
   0.16%  │ │                                                                                                                             0x00007fde7ec5cce5:   xor    %r14,%r13
   0.16%  │ │                                                                                                                             0x00007fde7ec5cce8:   rorx   $0xe,%r8,%r14
   0.07%  │ │                                                                                                                             0x00007fde7ec5ccee:   and    %r8,%r15
   0.13%  │ │                                                                                                                             0x00007fde7ec5ccf1:   add    %r10,%rcx
   0.20%  │ │                                                                                                                             0x00007fde7ec5ccf4:   and    %rax,%rdi
   0.19%  │ │                                                                                                                             0x00007fde7ec5ccf7:   xor    %r14,%r13
   0.04%  │ │                                                                                                                             0x00007fde7ec5ccfa:   rorx   $0x27,%r11,%r14
   0.15%  │ │                                                                                                                             0x00007fde7ec5cd00:   xor    %r12,%r14
   0.17%  │ │                                                                                                                             0x00007fde7ec5cd03:   rorx   $0x1c,%r11,%r12
   0.15%  │ │                                                                                                                             0x00007fde7ec5cd09:   xor    %r9,%r15
   0.06%  │ │                                                                                                                             0x00007fde7ec5cd0c:   xor    %r12,%r14
   0.18%  │ │                                                                                                                             0x00007fde7ec5cd0f:   mov    %r11,%r12
   0.13%  │ │                                                                                                                             0x00007fde7ec5cd12:   and    %rbx,%r12
   0.16%  │ │                                                                                                                             0x00007fde7ec5cd15:   add    %r13,%r15
   0.04%  │ │                                                                                                                             0x00007fde7ec5cd18:   or     %r12,%rdi
   0.16%  │ │                                                                                                                             0x00007fde7ec5cd1b:   add    %r14,%r10
   0.12%  │ │                                                                                                                             0x00007fde7ec5cd1e:   add    %r15,%rcx
   0.16%  │ │                                                                                                                             0x00007fde7ec5cd21:   add    %r15,%r10
   0.05%  │ │                                                                                                                             0x00007fde7ec5cd24:   add    %rdi,%r10
   0.15%  │ │                                                                                                                             0x00007fde7ec5cd27:   vpsrlq $0x13,%ymm2,%ymm3
   0.14%  │ │                                                                                                                             0x00007fde7ec5cd2c:   vpsllq $0x2d,%ymm2,%ymm1
   0.14%  │ │                                                                                                                             0x00007fde7ec5cd31:   vpor   %ymm1,%ymm3,%ymm3
   0.07%  │ │                                                                                                                             0x00007fde7ec5cd35:   vpxor  %ymm3,%ymm8,%ymm8
   0.16%  │ │                                                                                                                             0x00007fde7ec5cd39:   vpsrlq $0x3d,%ymm2,%ymm3
   0.14%  │ │                                                                                                                             0x00007fde7ec5cd3e:   vpsllq $0x3,%ymm2,%ymm1
   0.14%  │ │                                                                                                                             0x00007fde7ec5cd43:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │                                                                                                                             0x00007fde7ec5cd47:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%  │ │                                                                                                                             0x00007fde7ec5cd4b:   vpaddq %ymm8,%ymm6,%ymm6
   0.11%  │ │                                                                                                                             0x00007fde7ec5cd50:   vpsrlq $0x6,%ymm6,%ymm8
   0.17%  │ │                                                                                                                             0x00007fde7ec5cd55:   mov    %r10,%rdi
   0.07%  │ │                                                                                                                             0x00007fde7ec5cd58:   rorx   $0x29,%rcx,%r13
   0.15%  │ │                                                                                                                             0x00007fde7ec5cd5e:   rorx   $0x12,%rcx,%r14
   0.12%  │ │                                                                                                                             0x00007fde7ec5cd64:   add    0x10(%rsp),%r9
   0.17%  │ │                                                                                                                             0x00007fde7ec5cd69:   or     %rax,%rdi
   0.06%  │ │                                                                                                                             0x00007fde7ec5cd6c:   mov    %r8,%r15
   0.14%  │ │                                                                                                                             0x00007fde7ec5cd6f:   xor    %rdx,%r15
   0.15%  │ │                                                                                                                             0x00007fde7ec5cd72:   rorx   $0x22,%r10,%r12
   0.18%  │ │                                                                                                                             0x00007fde7ec5cd78:   xor    %r14,%r13
   0.07%  │ │                                                                                                                             0x00007fde7ec5cd7b:   rorx   $0xe,%rcx,%r14
   0.14%  │ │                                                                                                                             0x00007fde7ec5cd81:   and    %rcx,%r15
   0.14%  │ │                                                                                                                             0x00007fde7ec5cd84:   add    %r9,%rbx
   0.16%  │ │                                                                                                                             0x00007fde7ec5cd87:   and    %r11,%rdi
   0.06%  │ │                                                                                                                             0x00007fde7ec5cd8a:   xor    %r14,%r13
   0.14%  │ │                                                                                                                             0x00007fde7ec5cd8d:   rorx   $0x27,%r10,%r14
   0.15%  │ │                                                                                                                             0x00007fde7ec5cd93:   xor    %r12,%r14
   0.16%  │ │                                                                                                                             0x00007fde7ec5cd96:   rorx   $0x1c,%r10,%r12
   0.05%  │ │                                                                                                                             0x00007fde7ec5cd9c:   xor    %rdx,%r15
   0.14%  │ │                                                                                                                             0x00007fde7ec5cd9f:   xor    %r12,%r14
   0.14%  │ │                                                                                                                             0x00007fde7ec5cda2:   mov    %r10,%r12
   0.17%  │ │                                                                                                                             0x00007fde7ec5cda5:   and    %rax,%r12
   0.06%  │ │                                                                                                                             0x00007fde7ec5cda8:   add    %r13,%r15
   0.15%  │ │                                                                                                                             0x00007fde7ec5cdab:   or     %r12,%rdi
   0.14%  │ │                                                                                                                             0x00007fde7ec5cdae:   add    %r14,%r9
   0.19%  │ │                                                                                                                             0x00007fde7ec5cdb1:   add    %r15,%rbx
   0.03%  │ │                                                                                                                             0x00007fde7ec5cdb4:   add    %r15,%r9
   0.13%  │ │                                                                                                                             0x00007fde7ec5cdb7:   add    %rdi,%r9
   0.16%  │ │                                                                                                                             0x00007fde7ec5cdba:   vpsrlq $0x13,%ymm6,%ymm3
   0.21%  │ │                                                                                                                             0x00007fde7ec5cdbf:   vpsllq $0x2d,%ymm6,%ymm1
   0.05%  │ │                                                                                                                             0x00007fde7ec5cdc4:   vpor   %ymm1,%ymm3,%ymm3
   0.15%  │ │                                                                                                                             0x00007fde7ec5cdc8:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%  │ │                                                                                                                             0x00007fde7ec5cdcc:   vpsrlq $0x3d,%ymm6,%ymm3
   0.18%  │ │                                                                                                                             0x00007fde7ec5cdd1:   vpsllq $0x3,%ymm6,%ymm1
   0.04%  │ │                                                                                                                             0x00007fde7ec5cdd6:   vpor   %ymm1,%ymm3,%ymm3
   0.16%  │ │                                                                                                                             0x00007fde7ec5cdda:   vpxor  %ymm3,%ymm8,%ymm8
   0.16%  │ │                                                                                                                             0x00007fde7ec5cdde:   vpaddq %ymm8,%ymm0,%ymm2
   0.17%  │ │                                                                                                                             0x00007fde7ec5cde3:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.16%  │ │                                                                                                                             0x00007fde7ec5cde9:   mov    %r9,%rdi
   0.16%  │ │                                                                                                                             0x00007fde7ec5cdec:   rorx   $0x29,%rbx,%r13
   0.11%  │ │                                                                                                                             0x00007fde7ec5cdf2:   rorx   $0x12,%rbx,%r14
   0.13%  │ │                                                                                                                             0x00007fde7ec5cdf8:   add    0x18(%rsp),%rdx
   0.11%  │ │                                                                                                                             0x00007fde7ec5cdfd:   or     %r11,%rdi
   0.15%  │ │                                                                                                                             0x00007fde7ec5ce00:   mov    %rcx,%r15
   0.10%  │ │                                                                                                                             0x00007fde7ec5ce03:   xor    %r8,%r15
   0.12%  │ │                                                                                                                             0x00007fde7ec5ce06:   rorx   $0x22,%r9,%r12
   0.13%  │ │                                                                                                                             0x00007fde7ec5ce0c:   xor    %r14,%r13
   0.14%  │ │                                                                                                                             0x00007fde7ec5ce0f:   rorx   $0xe,%rbx,%r14
   0.09%  │ │                                                                                                                             0x00007fde7ec5ce15:   and    %rbx,%r15
   0.18%  │ │                                                                                                                             0x00007fde7ec5ce18:   add    %rdx,%rax
   0.11%  │ │                                                                                                                             0x00007fde7ec5ce1b:   and    %r10,%rdi
   0.12%  │ │                                                                                                                             0x00007fde7ec5ce1e:   xor    %r14,%r13
   0.11%  │ │                                                                                                                             0x00007fde7ec5ce21:   rorx   $0x27,%r9,%r14
   0.14%  │ │                                                                                                                             0x00007fde7ec5ce27:   xor    %r12,%r14
   0.11%  │ │                                                                                                                             0x00007fde7ec5ce2a:   rorx   $0x1c,%r9,%r12
   0.11%  │ │                                                                                                                             0x00007fde7ec5ce30:   xor    %r8,%r15
   0.10%  │ │                                                                                                                             0x00007fde7ec5ce33:   xor    %r12,%r14
   0.12%  │ │                                                                                                                             0x00007fde7ec5ce36:   mov    %r9,%r12
   0.10%  │ │                                                                                                                             0x00007fde7ec5ce39:   and    %r11,%r12
   0.14%  │ │                                                                                                                             0x00007fde7ec5ce3c:   add    %r13,%r15
   0.11%  │ │                                                                                                                             0x00007fde7ec5ce3f:   or     %r12,%rdi
   0.16%  │ │                                                                                                                             0x00007fde7ec5ce42:   add    %r14,%rdx
   0.09%  │ │                                                                                                                             0x00007fde7ec5ce45:   add    %r15,%rax
   0.14%  │ │                                                                                                                             0x00007fde7ec5ce48:   add    %r15,%rdx
   0.07%  │ │                                                                                                                             0x00007fde7ec5ce4b:   add    %rdi,%rdx
   0.16%  │ │                                                                                                                             0x00007fde7ec5ce4e:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.10%  │ │                                                                                                                             0x00007fde7ec5ce53:   vmovdqu %ymm0,(%rsp)
   0.14%  │ │                                                                                                                             0x00007fde7ec5ce58:   add    $0x80,%rbp
   0.09%  │ │                                                                                                                             0x00007fde7ec5ce5f:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.14%  │ │                                                                                                                             0x00007fde7ec5ce65:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.13%  │ │                                                                                                                             0x00007fde7ec5ce6b:   vpaddq %ymm7,%ymm0,%ymm0
   0.25%  │ │                                                                                                                             0x00007fde7ec5ce6f:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.11%  │ │                                                                                                                             0x00007fde7ec5ce75:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.14%  │ │                                                                                                                             0x00007fde7ec5ce7b:   vpsrlq $0x1,%ymm1,%ymm2
   0.13%  │ │                                                                                                                             0x00007fde7ec5ce80:   vpsllq $0x3f,%ymm1,%ymm3
   0.17%  │ │                                                                                                                             0x00007fde7ec5ce85:   vpor   %ymm2,%ymm3,%ymm3
   0.10%  │ │                                                                                                                             0x00007fde7ec5ce89:   vpsrlq $0x7,%ymm1,%ymm8
   0.13%  │ │                                                                                                                             0x00007fde7ec5ce8e:   mov    %rdx,%rdi
   0.09%  │ │                                                                                                                             0x00007fde7ec5ce91:   rorx   $0x29,%rax,%r13
   0.19%  │ │                                                                                                                             0x00007fde7ec5ce97:   rorx   $0x12,%rax,%r14
   0.12%  │ │                                                                                                                             0x00007fde7ec5ce9d:   add    (%rsp),%r8
   0.11%  │ │                                                                                                                             0x00007fde7ec5cea1:   or     %r10,%rdi
   0.09%  │ │                                                                                                                             0x00007fde7ec5cea4:   mov    %rbx,%r15
   0.15%  │ │                                                                                                                             0x00007fde7ec5cea7:   xor    %rcx,%r15
   0.09%  │ │                                                                                                                             0x00007fde7ec5ceaa:   rorx   $0x22,%rdx,%r12
   0.10%  │ │                                                                                                                             0x00007fde7ec5ceb0:   xor    %r14,%r13
   0.10%  │ │                                                                                                                             0x00007fde7ec5ceb3:   rorx   $0xe,%rax,%r14
   0.13%  │ │                                                                                                                             0x00007fde7ec5ceb9:   and    %rax,%r15
   0.13%  │ │                                                                                                                             0x00007fde7ec5cebc:   add    %r8,%r11
   0.10%  │ │                                                                                                                             0x00007fde7ec5cebf:   and    %r9,%rdi
   0.12%  │ │                                                                                                                             0x00007fde7ec5cec2:   xor    %r14,%r13
   0.17%  │ │                                                                                                                             0x00007fde7ec5cec5:   rorx   $0x27,%rdx,%r14
   0.09%  │ │                                                                                                                             0x00007fde7ec5cecb:   xor    %r12,%r14
   0.12%  │ │                                                                                                                             0x00007fde7ec5cece:   rorx   $0x1c,%rdx,%r12
   0.09%  │ │                                                                                                                             0x00007fde7ec5ced4:   xor    %rcx,%r15
   0.19%  │ │                                                                                                                             0x00007fde7ec5ced7:   xor    %r12,%r14
   0.10%  │ │                                                                                                                             0x00007fde7ec5ceda:   mov    %rdx,%r12
   0.13%  │ │                                                                                                                             0x00007fde7ec5cedd:   and    %r10,%r12
   0.08%  │ │                                                                                                                             0x00007fde7ec5cee0:   add    %r13,%r15
   0.17%  │ │                                                                                                                             0x00007fde7ec5cee3:   or     %r12,%rdi
   0.12%  │ │                                                                                                                             0x00007fde7ec5cee6:   add    %r14,%r8
   0.12%  │ │                                                                                                                             0x00007fde7ec5cee9:   add    %r15,%r11
   0.10%  │ │                                                                                                                             0x00007fde7ec5ceec:   add    %r15,%r8
   0.15%  │ │                                                                                                                             0x00007fde7ec5ceef:   add    %rdi,%r8
   0.12%  │ │                                                                                                                             0x00007fde7ec5cef2:   vpsrlq $0x8,%ymm1,%ymm2
   0.10%  │ │                                                                                                                             0x00007fde7ec5cef7:   vpsllq $0x38,%ymm1,%ymm1
   0.09%  │ │                                                                                                                             0x00007fde7ec5cefc:   vpor   %ymm2,%ymm1,%ymm1
   0.16%  │ │                                                                                                                             0x00007fde7ec5cf00:   vpxor  %ymm8,%ymm3,%ymm3
   0.11%  │ │                                                                                                                             0x00007fde7ec5cf05:   vpxor  %ymm1,%ymm3,%ymm1
   0.13%  │ │                                                                                                                             0x00007fde7ec5cf09:   vpaddq %ymm1,%ymm0,%ymm0
   0.08%  │ │                                                                                                                             0x00007fde7ec5cf0d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.19%  │ │                                                                                                                             0x00007fde7ec5cf13:   vpand  %ymm10,%ymm0,%ymm0
   0.11%  │ │                                                                                                                             0x00007fde7ec5cf18:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.09%  │ │                                                                                                                             0x00007fde7ec5cf1e:   vpsrlq $0x6,%ymm2,%ymm8
   0.12%  │ │                                                                                                                             0x00007fde7ec5cf23:   mov    %r8,%rdi
   0.18%  │ │                                                                                                                             0x00007fde7ec5cf26:   rorx   $0x29,%r11,%r13
   0.12%  │ │                                                                                                                             0x00007fde7ec5cf2c:   rorx   $0x12,%r11,%r14
   0.12%  │ │                                                                                                                             0x00007fde7ec5cf32:   add    0x8(%rsp),%rcx
   0.10%  │ │                                                                                                                             0x00007fde7ec5cf37:   or     %r9,%rdi
   0.17%  │ │                                                                                                                             0x00007fde7ec5cf3a:   mov    %rax,%r15
   0.11%  │ │                                                                                                                             0x00007fde7ec5cf3d:   xor    %rbx,%r15
   0.13%  │ │                                                                                                                             0x00007fde7ec5cf40:   rorx   $0x22,%r8,%r12
   0.10%  │ │                                                                                                                             0x00007fde7ec5cf46:   xor    %r14,%r13
   0.15%  │ │                                                                                                                             0x00007fde7ec5cf49:   rorx   $0xe,%r11,%r14
   0.11%  │ │                                                                                                                             0x00007fde7ec5cf4f:   and    %r11,%r15
   0.10%  │ │                                                                                                                             0x00007fde7ec5cf52:   add    %rcx,%r10
   0.11%  │ │                                                                                                                             0x00007fde7ec5cf55:   and    %rdx,%rdi
   0.19%  │ │                                                                                                                             0x00007fde7ec5cf58:   xor    %r14,%r13
   0.13%  │ │                                                                                                                             0x00007fde7ec5cf5b:   rorx   $0x27,%r8,%r14
   0.11%  │ │                                                                                                                             0x00007fde7ec5cf61:   xor    %r12,%r14
   0.08%  │ │                                                                                                                             0x00007fde7ec5cf64:   rorx   $0x1c,%r8,%r12
   0.16%  │ │                                                                                                                             0x00007fde7ec5cf6a:   xor    %rbx,%r15
   0.12%  │ │                                                                                                                             0x00007fde7ec5cf6d:   xor    %r12,%r14
   0.09%  │ │                                                                                                                             0x00007fde7ec5cf70:   mov    %r8,%r12
   0.11%  │ │                                                                                                                             0x00007fde7ec5cf73:   and    %r9,%r12
   0.16%  │ │                                                                                                                             0x00007fde7ec5cf76:   add    %r13,%r15
   0.08%  │ │                                                                                                                             0x00007fde7ec5cf79:   or     %r12,%rdi
   0.14%  │ │                                                                                                                             0x00007fde7ec5cf7c:   add    %r14,%rcx
   0.08%  │ │                                                                                                                             0x00007fde7ec5cf7f:   add    %r15,%r10
   0.19%  │ │                                                                                                                             0x00007fde7ec5cf82:   add    %r15,%rcx
   0.14%  │ │                                                                                                                             0x00007fde7ec5cf85:   add    %rdi,%rcx
   0.11%  │ │                                                                                                                             0x00007fde7ec5cf88:   vpsrlq $0x13,%ymm2,%ymm3
   0.07%  │ │                                                                                                                             0x00007fde7ec5cf8d:   vpsllq $0x2d,%ymm2,%ymm1
   0.15%  │ │                                                                                                                             0x00007fde7ec5cf92:   vpor   %ymm1,%ymm3,%ymm3
   0.13%  │ │                                                                                                                             0x00007fde7ec5cf96:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%  │ │                                                                                                                             0x00007fde7ec5cf9a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.07%  │ │                                                                                                                             0x00007fde7ec5cf9f:   vpsllq $0x3,%ymm2,%ymm1
   0.17%  │ │                                                                                                                             0x00007fde7ec5cfa4:   vpor   %ymm1,%ymm3,%ymm3
   0.14%  │ │                                                                                                                             0x00007fde7ec5cfa8:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%  │ │                                                                                                                             0x00007fde7ec5cfac:   vpaddq %ymm8,%ymm7,%ymm7
   0.10%  │ │                                                                                                                             0x00007fde7ec5cfb1:   vpsrlq $0x6,%ymm7,%ymm8
   0.19%  │ │                                                                                                                             0x00007fde7ec5cfb6:   mov    %rcx,%rdi
   0.09%  │ │                                                                                                                             0x00007fde7ec5cfb9:   rorx   $0x29,%r10,%r13
   0.12%  │ │                                                                                                                             0x00007fde7ec5cfbf:   rorx   $0x12,%r10,%r14
   0.09%  │ │                                                                                                                             0x00007fde7ec5cfc5:   add    0x10(%rsp),%rbx
   0.19%  │ │                                                                                                                             0x00007fde7ec5cfca:   or     %rdx,%rdi
   0.12%  │ │                                                                                                                             0x00007fde7ec5cfcd:   mov    %r11,%r15
   0.09%  │ │                                                                                                                             0x00007fde7ec5cfd0:   xor    %rax,%r15
   0.09%  │ │                                                                                                                             0x00007fde7ec5cfd3:   rorx   $0x22,%rcx,%r12
   0.19%  │ │                                                                                                                             0x00007fde7ec5cfd9:   xor    %r14,%r13
   0.10%  │ │                                                                                                                             0x00007fde7ec5cfdc:   rorx   $0xe,%r10,%r14
   0.12%  │ │                                                                                                                             0x00007fde7ec5cfe2:   and    %r10,%r15
   0.06%  │ │                                                                                                                             0x00007fde7ec5cfe5:   add    %rbx,%r9
   0.20%  │ │                                                                                                                             0x00007fde7ec5cfe8:   and    %r8,%rdi
   0.11%  │ │                                                                                                                             0x00007fde7ec5cfeb:   xor    %r14,%r13
   0.09%  │ │                                                                                                                             0x00007fde7ec5cfee:   rorx   $0x27,%rcx,%r14
   0.11%  │ │                                                                                                                             0x00007fde7ec5cff4:   xor    %r12,%r14
   0.19%  │ │                                                                                                                             0x00007fde7ec5cff7:   rorx   $0x1c,%rcx,%r12
   0.14%  │ │                                                                                                                             0x00007fde7ec5cffd:   xor    %rax,%r15
   0.12%  │ │                                                                                                                             0x00007fde7ec5d000:   xor    %r12,%r14
   0.08%  │ │                                                                                                                             0x00007fde7ec5d003:   mov    %rcx,%r12
   0.17%  │ │                                                                                                                             0x00007fde7ec5d006:   and    %rdx,%r12
   0.10%  │ │                                                                                                                             0x00007fde7ec5d009:   add    %r13,%r15
   0.11%  │ │                                                                                                                             0x00007fde7ec5d00c:   or     %r12,%rdi
   0.08%  │ │                                                                                                                             0x00007fde7ec5d00f:   add    %r14,%rbx
   0.19%  │ │                                                                                                                             0x00007fde7ec5d012:   add    %r15,%r9
   0.11%  │ │                                                                                                                             0x00007fde7ec5d015:   add    %r15,%rbx
   0.11%  │ │                                                                                                                             0x00007fde7ec5d018:   add    %rdi,%rbx
   0.10%  │ │                                                                                                                             0x00007fde7ec5d01b:   vpsrlq $0x13,%ymm7,%ymm3
   0.20%  │ │                                                                                                                             0x00007fde7ec5d020:   vpsllq $0x2d,%ymm7,%ymm1
   0.11%  │ │                                                                                                                             0x00007fde7ec5d025:   vpor   %ymm1,%ymm3,%ymm3
   0.11%  │ │                                                                                                                             0x00007fde7ec5d029:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%  │ │                                                                                                                             0x00007fde7ec5d02d:   vpsrlq $0x3d,%ymm7,%ymm3
   0.20%  │ │                                                                                                                             0x00007fde7ec5d032:   vpsllq $0x3,%ymm7,%ymm1
   0.10%  │ │                                                                                                                             0x00007fde7ec5d037:   vpor   %ymm1,%ymm3,%ymm3
   0.13%  │ │                                                                                                                             0x00007fde7ec5d03b:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%  │ │                                                                                                                             0x00007fde7ec5d03f:   vpaddq %ymm8,%ymm0,%ymm2
   0.19%  │ │                                                                                                                             0x00007fde7ec5d044:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.19%  │ │                                                                                                                             0x00007fde7ec5d04a:   mov    %rbx,%rdi
   0.07%  │ │                                                                                                                             0x00007fde7ec5d04d:   rorx   $0x29,%r9,%r13
   0.08%  │ │                                                                                                                             0x00007fde7ec5d053:   rorx   $0x12,%r9,%r14
   0.16%  │ │                                                                                                                             0x00007fde7ec5d059:   add    0x18(%rsp),%rax
   0.16%  │ │                                                                                                                             0x00007fde7ec5d05e:   or     %r8,%rdi
   0.09%  │ │                                                                                                                             0x00007fde7ec5d061:   mov    %r10,%r15
   0.06%  │ │                                                                                                                             0x00007fde7ec5d064:   xor    %r11,%r15
   0.12%  │ │                                                                                                                             0x00007fde7ec5d067:   rorx   $0x22,%rbx,%r12
   0.16%  │ │                                                                                                                             0x00007fde7ec5d06d:   xor    %r14,%r13
   0.11%  │ │                                                                                                                             0x00007fde7ec5d070:   rorx   $0xe,%r9,%r14
   0.08%  │ │                                                                                                                             0x00007fde7ec5d076:   and    %r9,%r15
   0.16%  │ │                                                                                                                             0x00007fde7ec5d079:   add    %rax,%rdx
   0.17%  │ │                                                                                                                             0x00007fde7ec5d07c:   and    %rcx,%rdi
   0.13%  │ │                                                                                                                             0x00007fde7ec5d07f:   xor    %r14,%r13
   0.08%  │ │                                                                                                                             0x00007fde7ec5d082:   rorx   $0x27,%rbx,%r14
   0.16%  │ │                                                                                                                             0x00007fde7ec5d088:   xor    %r12,%r14
   0.17%  │ │                                                                                                                             0x00007fde7ec5d08b:   rorx   $0x1c,%rbx,%r12
   0.10%  │ │                                                                                                                             0x00007fde7ec5d091:   xor    %r11,%r15
   0.08%  │ │                                                                                                                             0x00007fde7ec5d094:   xor    %r12,%r14
   0.13%  │ │                                                                                                                             0x00007fde7ec5d097:   mov    %rbx,%r12
   0.15%  │ │                                                                                                                             0x00007fde7ec5d09a:   and    %r8,%r12
   0.09%  │ │                                                                                                                             0x00007fde7ec5d09d:   add    %r13,%r15
   0.07%  │ │                                                                                                                             0x00007fde7ec5d0a0:   or     %r12,%rdi
   0.16%  │ │                                                                                                                             0x00007fde7ec5d0a3:   add    %r14,%rax
   0.14%  │ │                                                                                                                             0x00007fde7ec5d0a6:   add    %r15,%rdx
   0.11%  │ │                                                                                                                             0x00007fde7ec5d0a9:   add    %r15,%rax
   0.07%  │ │                                                                                                                             0x00007fde7ec5d0ac:   add    %rdi,%rax
   0.15%  │ │                                                                                                                             0x00007fde7ec5d0af:   subq   $0x1,0x20(%rsp)
   0.26%  ╰ │                                                                                                                             0x00007fde7ec5d0b5:   jne    0x00007fde7ec5c740
   0.02%    │                                                                                                                             0x00007fde7ec5d0bb:   movq   $0x2,0x20(%rsp)
   0.05%   ↗│                                                                                                                             0x00007fde7ec5d0c4:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.07%   ││                                                                                                                             0x00007fde7ec5d0c9:   vmovdqu %ymm0,(%rsp)
   0.06%   ││                                                                                                                             0x00007fde7ec5d0ce:   mov    %r9,%r15
   0.08%   ││                                                                                                                             0x00007fde7ec5d0d1:   rorx   $0x29,%rdx,%r13
   0.07%   ││                                                                                                                             0x00007fde7ec5d0d7:   rorx   $0x12,%rdx,%r14
   0.05%   ││                                                                                                                             0x00007fde7ec5d0dd:   xor    %r10,%r15
   0.06%   ││                                                                                                                             0x00007fde7ec5d0e0:   xor    %r14,%r13
   0.07%   ││                                                                                                                             0x00007fde7ec5d0e3:   rorx   $0xe,%rdx,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d0e9:   and    %rdx,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d0ec:   xor    %r14,%r13
   0.04%   ││                                                                                                                             0x00007fde7ec5d0ef:   rorx   $0x22,%rax,%r12
   0.07%   ││                                                                                                                             0x00007fde7ec5d0f5:   xor    %r10,%r15
   0.05%   ││                                                                                                                             0x00007fde7ec5d0f8:   rorx   $0x27,%rax,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d0fe:   mov    %rax,%rdi
   0.05%   ││                                                                                                                             0x00007fde7ec5d101:   xor    %r12,%r14
   0.05%   ││                                                                                                                             0x00007fde7ec5d104:   rorx   $0x1c,%rax,%r12
   0.07%   ││                                                                                                                             0x00007fde7ec5d10a:   add    (%rsp),%r11
   0.08%   ││                                                                                                                             0x00007fde7ec5d10e:   or     %rcx,%rdi
   0.08%   ││                                                                                                                             0x00007fde7ec5d111:   xor    %r12,%r14
   0.10%   ││                                                                                                                             0x00007fde7ec5d114:   mov    %rax,%r12
   0.06%   ││                                                                                                                             0x00007fde7ec5d117:   and    %rbx,%rdi
   0.07%   ││                                                                                                                             0x00007fde7ec5d11a:   and    %rcx,%r12
   0.05%   ││                                                                                                                             0x00007fde7ec5d11d:   add    %r13,%r15
   0.06%   ││                                                                                                                             0x00007fde7ec5d120:   add    %r11,%r8
   0.06%   ││                                                                                                                             0x00007fde7ec5d123:   or     %r12,%rdi
   0.08%   ││                                                                                                                             0x00007fde7ec5d126:   add    %r14,%r11
   0.05%   ││                                                                                                                             0x00007fde7ec5d129:   add    %r15,%r8
   0.07%   ││                                                                                                                             0x00007fde7ec5d12c:   add    %r15,%r11
   0.05%   ││                                                                                                                             0x00007fde7ec5d12f:   mov    %rdx,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d132:   rorx   $0x29,%r8,%r13
   0.06%   ││                                                                                                                             0x00007fde7ec5d138:   rorx   $0x12,%r8,%r14
   0.08%   ││                                                                                                                             0x00007fde7ec5d13e:   xor    %r9,%r15
   0.06%   ││                                                                                                                             0x00007fde7ec5d141:   xor    %r14,%r13
   0.09%   ││                                                                                                                             0x00007fde7ec5d144:   rorx   $0xe,%r8,%r14
   0.05%   ││                                                                                                                             0x00007fde7ec5d14a:   and    %r8,%r15
   0.09%   ││                                                                                                                             0x00007fde7ec5d14d:   add    %rdi,%r11
   0.04%   ││                                                                                                                             0x00007fde7ec5d150:   xor    %r14,%r13
   0.08%   ││                                                                                                                             0x00007fde7ec5d153:   rorx   $0x22,%r11,%r12
   0.06%   ││                                                                                                                             0x00007fde7ec5d159:   xor    %r9,%r15
   0.08%   ││                                                                                                                             0x00007fde7ec5d15c:   rorx   $0x27,%r11,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d162:   mov    %r11,%rdi
   0.06%   ││                                                                                                                             0x00007fde7ec5d165:   xor    %r12,%r14
   0.09%   ││                                                                                                                             0x00007fde7ec5d168:   rorx   $0x1c,%r11,%r12
   0.08%   ││                                                                                                                             0x00007fde7ec5d16e:   add    0x8(%rsp),%r10
   0.05%   ││                                                                                                                             0x00007fde7ec5d173:   or     %rbx,%rdi
   0.06%   ││                                                                                                                             0x00007fde7ec5d176:   xor    %r12,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d179:   mov    %r11,%r12
   0.06%   ││                                                                                                                             0x00007fde7ec5d17c:   and    %rax,%rdi
   0.06%   ││                                                                                                                             0x00007fde7ec5d17f:   and    %rbx,%r12
   0.06%   ││                                                                                                                             0x00007fde7ec5d182:   add    %r13,%r15
   0.06%   ││                                                                                                                             0x00007fde7ec5d185:   add    %r10,%rcx
   0.06%   ││                                                                                                                             0x00007fde7ec5d188:   or     %r12,%rdi
   0.06%   ││                                                                                                                             0x00007fde7ec5d18b:   add    %r14,%r10
   0.05%   ││                                                                                                                             0x00007fde7ec5d18e:   add    %r15,%rcx
   0.06%   ││                                                                                                                             0x00007fde7ec5d191:   add    %r15,%r10
   0.07%   ││                                                                                                                             0x00007fde7ec5d194:   mov    %r8,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d197:   rorx   $0x29,%rcx,%r13
   0.06%   ││                                                                                                                             0x00007fde7ec5d19d:   rorx   $0x12,%rcx,%r14
   0.05%   ││                                                                                                                             0x00007fde7ec5d1a3:   xor    %rdx,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d1a6:   xor    %r14,%r13
   0.06%   ││                                                                                                                             0x00007fde7ec5d1a9:   rorx   $0xe,%rcx,%r14
   0.07%   ││                                                                                                                             0x00007fde7ec5d1af:   and    %rcx,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d1b2:   add    %rdi,%r10
   0.08%   ││                                                                                                                             0x00007fde7ec5d1b5:   xor    %r14,%r13
   0.07%   ││                                                                                                                             0x00007fde7ec5d1b8:   rorx   $0x22,%r10,%r12
   0.06%   ││                                                                                                                             0x00007fde7ec5d1be:   xor    %rdx,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d1c1:   rorx   $0x27,%r10,%r14
   0.05%   ││                                                                                                                             0x00007fde7ec5d1c7:   mov    %r10,%rdi
   0.06%   ││                                                                                                                             0x00007fde7ec5d1ca:   xor    %r12,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d1cd:   rorx   $0x1c,%r10,%r12
   0.04%   ││                                                                                                                             0x00007fde7ec5d1d3:   add    0x10(%rsp),%r9
   0.07%   ││                                                                                                                             0x00007fde7ec5d1d8:   or     %rax,%rdi
   0.07%   ││                                                                                                                             0x00007fde7ec5d1db:   xor    %r12,%r14
   0.07%   ││                                                                                                                             0x00007fde7ec5d1de:   mov    %r10,%r12
   0.05%   ││                                                                                                                             0x00007fde7ec5d1e1:   and    %r11,%rdi
   0.06%   ││                                                                                                                             0x00007fde7ec5d1e4:   and    %rax,%r12
   0.06%   ││                                                                                                                             0x00007fde7ec5d1e7:   add    %r13,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d1ea:   add    %r9,%rbx
   0.03%   ││                                                                                                                             0x00007fde7ec5d1ed:   or     %r12,%rdi
   0.06%   ││                                                                                                                             0x00007fde7ec5d1f0:   add    %r14,%r9
   0.05%   ││                                                                                                                             0x00007fde7ec5d1f3:   add    %r15,%rbx
   0.09%   ││                                                                                                                             0x00007fde7ec5d1f6:   add    %r15,%r9
   0.04%   ││                                                                                                                             0x00007fde7ec5d1f9:   mov    %rcx,%r15
   0.08%   ││                                                                                                                             0x00007fde7ec5d1fc:   rorx   $0x29,%rbx,%r13
   0.06%   ││                                                                                                                             0x00007fde7ec5d202:   rorx   $0x12,%rbx,%r14
   0.08%   ││                                                                                                                             0x00007fde7ec5d208:   xor    %r8,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d20b:   xor    %r14,%r13
   0.07%   ││                                                                                                                             0x00007fde7ec5d20e:   rorx   $0xe,%rbx,%r14
   0.07%   ││                                                                                                                             0x00007fde7ec5d214:   and    %rbx,%r15
   0.08%   ││                                                                                                                             0x00007fde7ec5d217:   add    %rdi,%r9
   0.04%   ││                                                                                                                             0x00007fde7ec5d21a:   xor    %r14,%r13
   0.07%   ││                                                                                                                             0x00007fde7ec5d21d:   rorx   $0x22,%r9,%r12
   0.06%   ││                                                                                                                             0x00007fde7ec5d223:   xor    %r8,%r15
   0.09%   ││                                                                                                                             0x00007fde7ec5d226:   rorx   $0x27,%r9,%r14
   0.07%   ││                                                                                                                             0x00007fde7ec5d22c:   mov    %r9,%rdi
   0.04%   ││                                                                                                                             0x00007fde7ec5d22f:   xor    %r12,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d232:   rorx   $0x1c,%r9,%r12
   0.10%   ││                                                                                                                             0x00007fde7ec5d238:   add    0x18(%rsp),%rdx
   0.04%   ││                                                                                                                             0x00007fde7ec5d23d:   or     %r11,%rdi
   0.06%   ││                                                                                                                             0x00007fde7ec5d240:   xor    %r12,%r14
   0.07%   ││                                                                                                                             0x00007fde7ec5d243:   mov    %r9,%r12
   0.06%   ││                                                                                                                             0x00007fde7ec5d246:   and    %r10,%rdi
   0.06%   ││                                                                                                                             0x00007fde7ec5d249:   and    %r11,%r12
   0.08%   ││                                                                                                                             0x00007fde7ec5d24c:   add    %r13,%r15
   0.05%   ││                                                                                                                             0x00007fde7ec5d24f:   add    %rdx,%rax
   0.07%   ││                                                                                                                             0x00007fde7ec5d252:   or     %r12,%rdi
   0.09%   ││                                                                                                                             0x00007fde7ec5d255:   add    %r14,%rdx
   0.06%   ││                                                                                                                             0x00007fde7ec5d258:   add    %r15,%rax
   0.06%   ││                                                                                                                             0x00007fde7ec5d25b:   add    %r15,%rdx
   0.06%   ││                                                                                                                             0x00007fde7ec5d25e:   add    %rdi,%rdx
   0.07%   ││                                                                                                                             0x00007fde7ec5d261:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.08%   ││                                                                                                                             0x00007fde7ec5d266:   vmovdqu %ymm0,(%rsp)
   0.03%   ││                                                                                                                             0x00007fde7ec5d26b:   add    $0x40,%rbp
   0.09%   ││                                                                                                                             0x00007fde7ec5d26f:   mov    %rbx,%r15
   0.05%   ││                                                                                                                             0x00007fde7ec5d272:   rorx   $0x29,%rax,%r13
   0.05%   ││                                                                                                                             0x00007fde7ec5d278:   rorx   $0x12,%rax,%r14
   0.04%   ││                                                                                                                             0x00007fde7ec5d27e:   xor    %rcx,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d281:   xor    %r14,%r13
   0.09%   ││                                                                                                                             0x00007fde7ec5d284:   rorx   $0xe,%rax,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d28a:   and    %rax,%r15
   0.04%   ││                                                                                                                             0x00007fde7ec5d28d:   xor    %r14,%r13
   0.07%   ││                                                                                                                             0x00007fde7ec5d290:   rorx   $0x22,%rdx,%r12
   0.08%   ││                                                                                                                             0x00007fde7ec5d296:   xor    %rcx,%r15
   0.05%   ││                                                                                                                             0x00007fde7ec5d299:   rorx   $0x27,%rdx,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d29f:   mov    %rdx,%rdi
   0.05%   ││                                                                                                                             0x00007fde7ec5d2a2:   xor    %r12,%r14
   0.07%   ││                                                                                                                             0x00007fde7ec5d2a5:   rorx   $0x1c,%rdx,%r12
   0.05%   ││                                                                                                                             0x00007fde7ec5d2ab:   add    (%rsp),%r8
   0.05%   ││                                                                                                                             0x00007fde7ec5d2af:   or     %r10,%rdi
   0.07%   ││                                                                                                                             0x00007fde7ec5d2b2:   xor    %r12,%r14
   0.08%   ││                                                                                                                             0x00007fde7ec5d2b5:   mov    %rdx,%r12
   0.06%   ││                                                                                                                             0x00007fde7ec5d2b8:   and    %r9,%rdi
   0.04%   ││                                                                                                                             0x00007fde7ec5d2bb:   and    %r10,%r12
   0.06%   ││                                                                                                                             0x00007fde7ec5d2be:   add    %r13,%r15
   0.08%   ││                                                                                                                             0x00007fde7ec5d2c1:   add    %r8,%r11
   0.04%   ││                                                                                                                             0x00007fde7ec5d2c4:   or     %r12,%rdi
   0.04%   ││                                                                                                                             0x00007fde7ec5d2c7:   add    %r14,%r8
   0.06%   ││                                                                                                                             0x00007fde7ec5d2ca:   add    %r15,%r11
   0.08%   ││                                                                                                                             0x00007fde7ec5d2cd:   add    %r15,%r8
   0.06%   ││                                                                                                                             0x00007fde7ec5d2d0:   mov    %rax,%r15
   0.05%   ││                                                                                                                             0x00007fde7ec5d2d3:   rorx   $0x29,%r11,%r13
   0.08%   ││                                                                                                                             0x00007fde7ec5d2d9:   rorx   $0x12,%r11,%r14
   0.09%   ││                                                                                                                             0x00007fde7ec5d2df:   xor    %rbx,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d2e2:   xor    %r14,%r13
   0.05%   ││                                                                                                                             0x00007fde7ec5d2e5:   rorx   $0xe,%r11,%r14
   0.09%   ││                                                                                                                             0x00007fde7ec5d2eb:   and    %r11,%r15
   0.11%   ││                                                                                                                             0x00007fde7ec5d2ee:   add    %rdi,%r8
   0.05%   ││                                                                                                                             0x00007fde7ec5d2f1:   xor    %r14,%r13
   0.06%   ││                                                                                                                             0x00007fde7ec5d2f4:   rorx   $0x22,%r8,%r12
   0.07%   ││                                                                                                                             0x00007fde7ec5d2fa:   xor    %rbx,%r15
   0.11%   ││                                                                                                                             0x00007fde7ec5d2fd:   rorx   $0x27,%r8,%r14
   0.05%   ││                                                                                                                             0x00007fde7ec5d303:   mov    %r8,%rdi
   0.05%   ││                                                                                                                             0x00007fde7ec5d306:   xor    %r12,%r14
   0.08%   ││                                                                                                                             0x00007fde7ec5d309:   rorx   $0x1c,%r8,%r12
   0.07%   ││                                                                                                                             0x00007fde7ec5d30f:   add    0x8(%rsp),%rcx
   0.05%   ││                                                                                                                             0x00007fde7ec5d314:   or     %r9,%rdi
   0.07%   ││                                                                                                                             0x00007fde7ec5d317:   xor    %r12,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d31a:   mov    %r8,%r12
   0.07%   ││                                                                                                                             0x00007fde7ec5d31d:   and    %rdx,%rdi
   0.05%   ││                                                                                                                             0x00007fde7ec5d320:   and    %r9,%r12
   0.07%   ││                                                                                                                             0x00007fde7ec5d323:   add    %r13,%r15
   0.06%   ││                                                                                                                             0x00007fde7ec5d326:   add    %rcx,%r10
   0.05%   ││                                                                                                                             0x00007fde7ec5d329:   or     %r12,%rdi
   0.06%   ││                                                                                                                             0x00007fde7ec5d32c:   add    %r14,%rcx
   0.04%   ││                                                                                                                             0x00007fde7ec5d32f:   add    %r15,%r10
   0.11%   ││                                                                                                                             0x00007fde7ec5d332:   add    %r15,%rcx
   0.08%   ││                                                                                                                             0x00007fde7ec5d335:   mov    %r11,%r15
   0.03%   ││                                                                                                                             0x00007fde7ec5d338:   rorx   $0x29,%r10,%r13
   0.06%   ││                                                                                                                             0x00007fde7ec5d33e:   rorx   $0x12,%r10,%r14
   0.07%   ││                                                                                                                             0x00007fde7ec5d344:   xor    %rax,%r15
   0.11%   ││                                                                                                                             0x00007fde7ec5d347:   xor    %r14,%r13
   0.09%   ││                                                                                                                             0x00007fde7ec5d34a:   rorx   $0xe,%r10,%r14
   0.08%   ││                                                                                                                             0x00007fde7ec5d350:   and    %r10,%r15
   0.09%   ││                                                                                                                             0x00007fde7ec5d353:   add    %rdi,%rcx
   0.07%   ││                                                                                                                             0x00007fde7ec5d356:   xor    %r14,%r13
   0.07%   ││                                                                                                                             0x00007fde7ec5d359:   rorx   $0x22,%rcx,%r12
   0.05%   ││                                                                                                                             0x00007fde7ec5d35f:   xor    %rax,%r15
   0.09%   ││                                                                                                                             0x00007fde7ec5d362:   rorx   $0x27,%rcx,%r14
   0.08%   ││                                                                                                                             0x00007fde7ec5d368:   mov    %rcx,%rdi
   0.04%   ││                                                                                                                             0x00007fde7ec5d36b:   xor    %r12,%r14
   0.09%   ││                                                                                                                             0x00007fde7ec5d36e:   rorx   $0x1c,%rcx,%r12
   0.10%   ││                                                                                                                             0x00007fde7ec5d374:   add    0x10(%rsp),%rbx
   0.05%   ││                                                                                                                             0x00007fde7ec5d379:   or     %rdx,%rdi
   0.05%   ││                                                                                                                             0x00007fde7ec5d37c:   xor    %r12,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d37f:   mov    %rcx,%r12
   0.08%   ││                                                                                                                             0x00007fde7ec5d382:   and    %r8,%rdi
   0.06%   ││                                                                                                                             0x00007fde7ec5d385:   and    %rdx,%r12
   0.05%   ││                                                                                                                             0x00007fde7ec5d388:   add    %r13,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d38b:   add    %rbx,%r9
   0.05%   ││                                                                                                                             0x00007fde7ec5d38e:   or     %r12,%rdi
   0.08%   ││                                                                                                                             0x00007fde7ec5d391:   add    %r14,%rbx
   0.05%   ││                                                                                                                             0x00007fde7ec5d394:   add    %r15,%r9
   0.08%   ││                                                                                                                             0x00007fde7ec5d397:   add    %r15,%rbx
   0.05%   ││                                                                                                                             0x00007fde7ec5d39a:   mov    %r10,%r15
   0.05%   ││                                                                                                                             0x00007fde7ec5d39d:   rorx   $0x29,%r9,%r13
   0.08%   ││                                                                                                                             0x00007fde7ec5d3a3:   rorx   $0x12,%r9,%r14
   0.08%   ││                                                                                                                             0x00007fde7ec5d3a9:   xor    %r11,%r15
   0.08%   ││                                                                                                                             0x00007fde7ec5d3ac:   xor    %r14,%r13
   0.08%   ││                                                                                                                             0x00007fde7ec5d3af:   rorx   $0xe,%r9,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d3b5:   and    %r9,%r15
   0.08%   ││                                                                                                                             0x00007fde7ec5d3b8:   add    %rdi,%rbx
   0.09%   ││                                                                                                                             0x00007fde7ec5d3bb:   xor    %r14,%r13
   0.08%   ││                                                                                                                             0x00007fde7ec5d3be:   rorx   $0x22,%rbx,%r12
   0.06%   ││                                                                                                                             0x00007fde7ec5d3c4:   xor    %r11,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d3c7:   rorx   $0x27,%rbx,%r14
   0.07%   ││                                                                                                                             0x00007fde7ec5d3cd:   mov    %rbx,%rdi
   0.07%   ││                                                                                                                             0x00007fde7ec5d3d0:   xor    %r12,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d3d3:   rorx   $0x1c,%rbx,%r12
   0.05%   ││                                                                                                                             0x00007fde7ec5d3d9:   add    0x18(%rsp),%rax
   0.06%   ││                                                                                                                             0x00007fde7ec5d3de:   or     %r8,%rdi
   0.07%   ││                                                                                                                             0x00007fde7ec5d3e1:   xor    %r12,%r14
   0.06%   ││                                                                                                                             0x00007fde7ec5d3e4:   mov    %rbx,%r12
   0.06%   ││                                                                                                                             0x00007fde7ec5d3e7:   and    %rcx,%rdi
   0.06%   ││                                                                                                                             0x00007fde7ec5d3ea:   and    %r8,%r12
   0.05%   ││                                                                                                                             0x00007fde7ec5d3ed:   add    %r13,%r15
   0.07%   ││                                                                                                                             0x00007fde7ec5d3f0:   add    %rax,%rdx
   0.06%   ││                                                                                                                             0x00007fde7ec5d3f3:   or     %r12,%rdi
   0.08%   ││                                                                                                                             0x00007fde7ec5d3f6:   add    %r14,%rax
   0.08%   ││                                                                                                                             0x00007fde7ec5d3f9:   add    %r15,%rdx
   0.09%   ││                                                                                                                             0x00007fde7ec5d3fc:   add    %r15,%rax
   0.05%   ││                                                                                                                             0x00007fde7ec5d3ff:   add    %rdi,%rax
   0.10%   ││                                                                                                                             0x00007fde7ec5d402:   vmovdqu %ymm6,%ymm4
   0.05%   ││                                                                                                                             0x00007fde7ec5d406:   vmovdqu %ymm7,%ymm5
   0.01%   ││                                                                                                                             0x00007fde7ec5d40a:   subq   $0x1,0x20(%rsp)
   0.16%   ╰│                                                                                                                             0x00007fde7ec5d410:   jne    0x00007fde7ec5d0c4
   0.02%    │                                                                                                                             0x00007fde7ec5d416:   add    (%rsi),%rax
   0.01%    │                                                                                                                             0x00007fde7ec5d419:   mov    %rax,(%rsi)
   0.21%    │                                                                                                                             0x00007fde7ec5d41c:   add    0x8(%rsi),%rbx
   0.00%    │                                                                                                                             0x00007fde7ec5d420:   mov    %rbx,0x8(%rsi)
   0.01%    │                                                                                                                             0x00007fde7ec5d424:   add    0x10(%rsi),%rcx
   0.00%    │                                                                                                                             0x00007fde7ec5d428:   mov    %rcx,0x10(%rsi)
   0.11%    │                                                                                                                             0x00007fde7ec5d42c:   add    0x18(%rsi),%r8
            │                                                                                                                             0x00007fde7ec5d430:   mov    %r8,0x18(%rsi)
   0.01%    │                                                                                                                             0x00007fde7ec5d434:   add    0x20(%rsi),%rdx
            │                                                                                                                             0x00007fde7ec5d438:   mov    %rdx,0x20(%rsi)
   0.10%    │                                                                                                                             0x00007fde7ec5d43c:   add    0x28(%rsi),%r9
            │                                                                                                                             0x00007fde7ec5d440:   mov    %r9,0x28(%rsi)
   0.02%    │                                                                                                                             0x00007fde7ec5d444:   add    0x30(%rsi),%r10
            │                                                                                                                             0x00007fde7ec5d448:   mov    %r10,0x30(%rsi)
   0.13%    │                                                                                                                             0x00007fde7ec5d44c:   add    0x38(%rsi),%r11
   0.00%    │                                                                                                                             0x00007fde7ec5d450:   mov    %r11,0x38(%rsi)
   0.04%    │                                                                                                                             0x00007fde7ec5d454:   mov    0x28(%rsp),%rdi
            │                                                                                                                             0x00007fde7ec5d459:   add    $0x80,%rdi
   0.11%    │                                                                                                                             0x00007fde7ec5d460:   cmp    0x30(%rsp),%rdi
            ╰                                                                                                                             0x00007fde7ec5d465:   jne    0x00007fde7ec5c6fb
   0.01%                                                                                                                                  0x00007fde7ec5d46b:   mov    0x40(%rsp),%rbp
   0.01%                                                                                                                                  0x00007fde7ec5d470:   mov    0x48(%rsp),%rbx
                                                                                                                                          0x00007fde7ec5d475:   mov    0x50(%rsp),%r12
                                                                                                                                          0x00007fde7ec5d47a:   mov    0x58(%rsp),%r13
                                                                                                                                          0x00007fde7ec5d47f:   mov    0x60(%rsp),%r14
   0.00%                                                                                                                                  0x00007fde7ec5d484:   mov    0x68(%rsp),%r15
                                                                                                                                          0x00007fde7ec5d489:   mov    0x38(%rsp),%rsp
                                                                                                                                          0x00007fde7ec5d48e:   pop    %rcx
   0.01%                                                                                                                                  0x00007fde7ec5d48f:   pop    %rdx
                                                                                                                                          0x00007fde7ec5d490:   mov    %rdx,%rax
   0.21%      ↗                                                                                                                           0x00007fde7ec5d493:   cmp    %rcx,%rax
             ╭│                                                                                                                           0x00007fde7ec5d496:   jae    0x00007fde7ec5d4a0
             ││                                                                                                                           0x00007fde7ec5d498:   add    $0x80,%rax
   0.00%     │╰                                                                                                                           0x00007fde7ec5d49e:   jmp    0x00007fde7ec5d493
   0.02%     ↘                                                                                                                            0x00007fde7ec5d4a0:   vzeroupper 
   0.00%                                                                                                                                  0x00007fde7ec5d4a3:   leave  
   0.01%                                                                                                                                  0x00007fde7ec5d4a4:   ret    
                                                                                                                                        --------------------------------------------------------------------------------
                                                                                                                                        - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                        <task_queued compile_id='14' method='java.util.ImmutableCollections$SetN$SetNIterator hasNext ()Z' bytes='13' count='512' iicount='512' level='3' stamp='1.733' comment='tiered' hot_count='512'/>
                                                                                                                                        - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                                                                                        Decoding RuntimeStub - deoptimize Runtime1 stub 0x00007fde7ecf8510
                                                                                                                                        --------------------------------------------------------------------------------
                                                                                                                                          0x00007fde7ecf8580:   push   %rbp
                                                                                                                                          0x00007fde7ecf8581:   mov    %rsp,%rbp
                                                                                                                                          0x00007fde7ecf8584:   sub    $0x80,%rsp
                                                                                                                                          0x00007fde7ecf858b:   mov    %rax,0x78(%rsp)
....................................................................................................
  92.65%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.65%        runtime stub  StubRoutines::sha512_implCompressMB 
   3.93%                      <unknown> 
   0.51%              kernel  [unknown] 
   0.32%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1154 
   0.17%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.17%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.11%              kernel  [unknown] 
   0.11%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1154 
   0.09%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1154 
   0.07%              kernel  [unknown] 
   0.06%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1154 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1154 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1154 
   0.04%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1154 
   0.03%      jvmci, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 1110 
   0.03%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1154 
   0.03%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   1.44%  <...other 360 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.83%        runtime stub  StubRoutines::sha512_implCompressMB 
   4.00%                      <unknown> 
   1.59%              kernel  [unknown] 
   0.77%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1154 
   0.17%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.17%      jvmci, level 4  com.sun.crypto.provider.HmacCore::engineDoFinal, version 2, compile id 1162 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1164 
   0.04%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.03%      jvmci, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 1110 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1187 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.21%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.04%        runtime stub
   4.00%                    
   1.59%              kernel
   1.04%      jvmci, level 4
   0.16%           libjvm.so
   0.12%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA512/256, length = 16384)

# Run progress: 58.33% complete, ETA 00:09:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 45.302 us/op
# Warmup Iteration   2: 39.350 us/op
# Warmup Iteration   3: 39.350 us/op
# Warmup Iteration   4: 39.338 us/op
# Warmup Iteration   5: 39.336 us/op
Iteration   1: 39.338 us/op
Iteration   2: 39.340 us/op
Iteration   3: 39.342 us/op
Iteration   4: 39.331 us/op
Iteration   5: 39.338 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  39.338 ±(99.9%) 0.015 us/op [Average]
  (min, avg, max) = (39.331, 39.338, 39.342), stdev = 0.004
  CI (99.9%): [39.323, 39.353] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 271643 total address lines.
Perf output processed (skipped 61.420 seconds):
 Column 1: cycles (50543 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::sha512_implCompressMB [0x00007fc31ec5b8e0, 0x00007fc31ec5c725] (3653 bytes)
                  --------------------------------------------------------------------------------
   0.00%            0x00007fc31ec5b8e0:   push   %rbp
                    0x00007fc31ec5b8e1:   mov    %rsp,%rbp
                    0x00007fc31ec5b8e4:   push   %rdx
   0.00%            0x00007fc31ec5b8e5:   push   %rcx
                    0x00007fc31ec5b8e6:   mov    %rsp,%rax
                    0x00007fc31ec5b8e9:   sub    $0x70,%rsp
                    0x00007fc31ec5b8ed:   and    $0xffffffffffffffe0,%rsp
   0.00%            0x00007fc31ec5b8f1:   mov    %rax,0x38(%rsp)
                    0x00007fc31ec5b8f6:   mov    %rbp,0x40(%rsp)
   0.00%            0x00007fc31ec5b8fb:   mov    %rbx,0x48(%rsp)
   0.00%            0x00007fc31ec5b900:   mov    %r12,0x50(%rsp)
                    0x00007fc31ec5b905:   mov    %r13,0x58(%rsp)
                    0x00007fc31ec5b90a:   mov    %r14,0x60(%rsp)
   0.00%            0x00007fc31ec5b90f:   mov    %r15,0x68(%rsp)
   0.01%            0x00007fc31ec5b914:   vpblendd $0xf0,%xmm1,%xmm0,%xmm0
                    0x00007fc31ec5b91a:   vpblendd $0xf0,%ymm1,%ymm0,%ymm0
                    0x00007fc31ec5b920:   xor    %rax,%rax
   0.01%   ↗        0x00007fc31ec5b923:   cmp    %rcx,%rdx
          ╭│        0x00007fc31ec5b926:   jae    0x00007fc31ec5b937
   0.09%  ││        0x00007fc31ec5b928:   add    $0x80,%rdx
   0.04%  ││        0x00007fc31ec5b92f:   add    $0x80,%rax
   0.01%  │╰        0x00007fc31ec5b935:   jmp    0x00007fc31ec5b923
   0.02%  ↘         0x00007fc31ec5b937:   mov    %rax,%rdx
                    0x00007fc31ec5b93a:   cmp    $0x0,%rdx
            ╭       0x00007fc31ec5b93e:   je     0x00007fc31ec5c6eb
   0.00%    │       0x00007fc31ec5b944:   add    %rdi,%rdx
            │       0x00007fc31ec5b947:   mov    %rdx,0x30(%rsp)
   0.00%    │       0x00007fc31ec5b94c:   mov    (%rsi),%rax
            │       0x00007fc31ec5b94f:   mov    0x8(%rsi),%rbx
            │       0x00007fc31ec5b953:   mov    0x10(%rsi),%rcx
            │       0x00007fc31ec5b957:   mov    0x18(%rsi),%r8
            │       0x00007fc31ec5b95b:   mov    0x20(%rsi),%rdx
            │       0x00007fc31ec5b95f:   mov    0x28(%rsi),%r9
            │       0x00007fc31ec5b963:   mov    0x38(%rsi),%r11
   0.00%    │       0x00007fc31ec5b967:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007fc31ec5aa80
            │       0x00007fc31ec5b96f:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007fc31ec5aaa0
            │       0x00007fc31ec5b977:   mov    0x30(%rsi),%r10
   0.00%    │  ↗    0x00007fc31ec5b97b:   movabs $0x7fc337b2a840,%rbp
   0.03%    │  │    0x00007fc31ec5b985:   vmovdqu (%rdi),%ymm4
   0.33%    │  │    0x00007fc31ec5b989:   vpshufb %ymm9,%ymm4,%ymm4
   0.33%    │  │    0x00007fc31ec5b98e:   vmovdqu 0x20(%rdi),%ymm5
            │  │    0x00007fc31ec5b993:   vpshufb %ymm9,%ymm5,%ymm5
   0.00%    │  │    0x00007fc31ec5b998:   vmovdqu 0x40(%rdi),%ymm6
   0.06%    │  │    0x00007fc31ec5b99d:   vpshufb %ymm9,%ymm6,%ymm6
   0.31%    │  │    0x00007fc31ec5b9a2:   vmovdqu 0x60(%rdi),%ymm7
            │  │    0x00007fc31ec5b9a7:   vpshufb %ymm9,%ymm7,%ymm7
   0.01%    │  │    0x00007fc31ec5b9ac:   mov    %rdi,0x28(%rsp)
            │  │    0x00007fc31ec5b9b1:   movq   $0x4,0x20(%rsp)
   0.11%    │  │    0x00007fc31ec5b9ba:   nopw   0x0(%rax,%rax,1)
   0.03%    │↗ │    0x00007fc31ec5b9c0:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.21%    ││ │    0x00007fc31ec5b9c5:   vmovdqu %ymm0,(%rsp)
   0.10%    ││ │    0x00007fc31ec5b9ca:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.29%    ││ │    0x00007fc31ec5b9d0:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.25%    ││ │    0x00007fc31ec5b9d6:   vpaddq %ymm4,%ymm0,%ymm0
   0.69%    ││ │    0x00007fc31ec5b9da:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.11%    ││ │    0x00007fc31ec5b9e0:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.08%    ││ │    0x00007fc31ec5b9e6:   vpsrlq $0x1,%ymm1,%ymm2
   0.11%    ││ │    0x00007fc31ec5b9eb:   vpsllq $0x3f,%ymm1,%ymm3
   0.31%    ││ │    0x00007fc31ec5b9f0:   vpor   %ymm2,%ymm3,%ymm3
   0.12%    ││ │    0x00007fc31ec5b9f4:   vpsrlq $0x7,%ymm1,%ymm8
   0.09%    ││ │    0x00007fc31ec5b9f9:   mov    %rax,%rdi
   0.05%    ││ │    0x00007fc31ec5b9fc:   rorx   $0x29,%rdx,%r13
   0.23%    ││ │    0x00007fc31ec5ba02:   rorx   $0x12,%rdx,%r14
   0.16%    ││ │    0x00007fc31ec5ba08:   add    (%rsp),%r11
   0.08%    ││ │    0x00007fc31ec5ba0c:   or     %rcx,%rdi
   0.05%    ││ │    0x00007fc31ec5ba0f:   mov    %r9,%r15
   0.26%    ││ │    0x00007fc31ec5ba12:   xor    %r10,%r15
   0.16%    ││ │    0x00007fc31ec5ba15:   rorx   $0x22,%rax,%r12
   0.08%    ││ │    0x00007fc31ec5ba1b:   xor    %r14,%r13
   0.05%    ││ │    0x00007fc31ec5ba1e:   rorx   $0xe,%rdx,%r14
   0.24%    ││ │    0x00007fc31ec5ba24:   and    %rdx,%r15
   0.14%    ││ │    0x00007fc31ec5ba27:   add    %r11,%r8
   0.06%    ││ │    0x00007fc31ec5ba2a:   and    %rbx,%rdi
   0.03%    ││ │    0x00007fc31ec5ba2d:   xor    %r14,%r13
   0.22%    ││ │    0x00007fc31ec5ba30:   rorx   $0x27,%rax,%r14
   0.13%    ││ │    0x00007fc31ec5ba36:   xor    %r12,%r14
   0.05%    ││ │    0x00007fc31ec5ba39:   rorx   $0x1c,%rax,%r12
   0.07%    ││ │    0x00007fc31ec5ba3f:   xor    %r10,%r15
   0.23%    ││ │    0x00007fc31ec5ba42:   xor    %r12,%r14
   0.12%    ││ │    0x00007fc31ec5ba45:   mov    %rax,%r12
   0.07%    ││ │    0x00007fc31ec5ba48:   and    %rcx,%r12
   0.06%    ││ │    0x00007fc31ec5ba4b:   add    %r13,%r15
   0.22%    ││ │    0x00007fc31ec5ba4e:   or     %r12,%rdi
   0.11%    ││ │    0x00007fc31ec5ba51:   add    %r14,%r11
   0.07%    ││ │    0x00007fc31ec5ba54:   add    %r15,%r8
   0.04%    ││ │    0x00007fc31ec5ba57:   add    %r15,%r11
   0.25%    ││ │    0x00007fc31ec5ba5a:   add    %rdi,%r11
   0.10%    ││ │    0x00007fc31ec5ba5d:   vpsrlq $0x8,%ymm1,%ymm2
   0.09%    ││ │    0x00007fc31ec5ba62:   vpsllq $0x38,%ymm1,%ymm1
   0.04%    ││ │    0x00007fc31ec5ba67:   vpor   %ymm2,%ymm1,%ymm1
   0.25%    ││ │    0x00007fc31ec5ba6b:   vpxor  %ymm8,%ymm3,%ymm3
   0.13%    ││ │    0x00007fc31ec5ba70:   vpxor  %ymm1,%ymm3,%ymm1
   0.07%    ││ │    0x00007fc31ec5ba74:   vpaddq %ymm1,%ymm0,%ymm0
   0.04%    ││ │    0x00007fc31ec5ba78:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.20%    ││ │    0x00007fc31ec5ba7e:   vpand  %ymm10,%ymm0,%ymm0
   0.14%    ││ │    0x00007fc31ec5ba83:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.06%    ││ │    0x00007fc31ec5ba89:   vpsrlq $0x6,%ymm2,%ymm8
   0.06%    ││ │    0x00007fc31ec5ba8e:   mov    %r11,%rdi
   0.22%    ││ │    0x00007fc31ec5ba91:   rorx   $0x29,%r8,%r13
   0.12%    ││ │    0x00007fc31ec5ba97:   rorx   $0x12,%r8,%r14
   0.06%    ││ │    0x00007fc31ec5ba9d:   add    0x8(%rsp),%r10
   0.05%    ││ │    0x00007fc31ec5baa2:   or     %rbx,%rdi
   0.25%    ││ │    0x00007fc31ec5baa5:   mov    %rdx,%r15
   0.15%    ││ │    0x00007fc31ec5baa8:   xor    %r9,%r15
   0.06%    ││ │    0x00007fc31ec5baab:   rorx   $0x22,%r11,%r12
   0.06%    ││ │    0x00007fc31ec5bab1:   xor    %r14,%r13
   0.25%    ││ │    0x00007fc31ec5bab4:   rorx   $0xe,%r8,%r14
   0.14%    ││ │    0x00007fc31ec5baba:   and    %r8,%r15
   0.04%    ││ │    0x00007fc31ec5babd:   add    %r10,%rcx
   0.07%    ││ │    0x00007fc31ec5bac0:   and    %rax,%rdi
   0.24%    ││ │    0x00007fc31ec5bac3:   xor    %r14,%r13
   0.15%    ││ │    0x00007fc31ec5bac6:   rorx   $0x27,%r11,%r14
   0.07%    ││ │    0x00007fc31ec5bacc:   xor    %r12,%r14
   0.06%    ││ │    0x00007fc31ec5bacf:   rorx   $0x1c,%r11,%r12
   0.19%    ││ │    0x00007fc31ec5bad5:   xor    %r9,%r15
   0.11%    ││ │    0x00007fc31ec5bad8:   xor    %r12,%r14
   0.06%    ││ │    0x00007fc31ec5badb:   mov    %r11,%r12
   0.07%    ││ │    0x00007fc31ec5bade:   and    %rbx,%r12
   0.18%    ││ │    0x00007fc31ec5bae1:   add    %r13,%r15
   0.11%    ││ │    0x00007fc31ec5bae4:   or     %r12,%rdi
   0.08%    ││ │    0x00007fc31ec5bae7:   add    %r14,%r10
   0.03%    ││ │    0x00007fc31ec5baea:   add    %r15,%rcx
   0.26%    ││ │    0x00007fc31ec5baed:   add    %r15,%r10
   0.14%    ││ │    0x00007fc31ec5baf0:   add    %rdi,%r10
   0.08%    ││ │    0x00007fc31ec5baf3:   vpsrlq $0x13,%ymm2,%ymm3
   0.05%    ││ │    0x00007fc31ec5baf8:   vpsllq $0x2d,%ymm2,%ymm1
   0.25%    ││ │    0x00007fc31ec5bafd:   vpor   %ymm1,%ymm3,%ymm3
   0.10%    ││ │    0x00007fc31ec5bb01:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007fc31ec5bb05:   vpsrlq $0x3d,%ymm2,%ymm3
   0.06%    ││ │    0x00007fc31ec5bb0a:   vpsllq $0x3,%ymm2,%ymm1
   0.25%    ││ │    0x00007fc31ec5bb0f:   vpor   %ymm1,%ymm3,%ymm3
   0.16%    ││ │    0x00007fc31ec5bb13:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%    ││ │    0x00007fc31ec5bb17:   vpaddq %ymm8,%ymm4,%ymm4
   0.05%    ││ │    0x00007fc31ec5bb1c:   vpsrlq $0x6,%ymm4,%ymm8
   0.21%    ││ │    0x00007fc31ec5bb21:   mov    %r10,%rdi
   0.12%    ││ │    0x00007fc31ec5bb24:   rorx   $0x29,%rcx,%r13
   0.06%    ││ │    0x00007fc31ec5bb2a:   rorx   $0x12,%rcx,%r14
   0.05%    ││ │    0x00007fc31ec5bb30:   add    0x10(%rsp),%r9
   0.24%    ││ │    0x00007fc31ec5bb35:   or     %rax,%rdi
   0.16%    ││ │    0x00007fc31ec5bb38:   mov    %r8,%r15
   0.10%    ││ │    0x00007fc31ec5bb3b:   xor    %rdx,%r15
   0.04%    ││ │    0x00007fc31ec5bb3e:   rorx   $0x22,%r10,%r12
   0.23%    ││ │    0x00007fc31ec5bb44:   xor    %r14,%r13
   0.16%    ││ │    0x00007fc31ec5bb47:   rorx   $0xe,%rcx,%r14
   0.05%    ││ │    0x00007fc31ec5bb4d:   and    %rcx,%r15
   0.05%    ││ │    0x00007fc31ec5bb50:   add    %r9,%rbx
   0.23%    ││ │    0x00007fc31ec5bb53:   and    %r11,%rdi
   0.13%    ││ │    0x00007fc31ec5bb56:   xor    %r14,%r13
   0.08%    ││ │    0x00007fc31ec5bb59:   rorx   $0x27,%r10,%r14
   0.05%    ││ │    0x00007fc31ec5bb5f:   xor    %r12,%r14
   0.26%    ││ │    0x00007fc31ec5bb62:   rorx   $0x1c,%r10,%r12
   0.11%    ││ │    0x00007fc31ec5bb68:   xor    %rdx,%r15
   0.07%    ││ │    0x00007fc31ec5bb6b:   xor    %r12,%r14
   0.04%    ││ │    0x00007fc31ec5bb6e:   mov    %r10,%r12
   0.27%    ││ │    0x00007fc31ec5bb71:   and    %rax,%r12
   0.13%    ││ │    0x00007fc31ec5bb74:   add    %r13,%r15
   0.07%    ││ │    0x00007fc31ec5bb77:   or     %r12,%rdi
   0.05%    ││ │    0x00007fc31ec5bb7a:   add    %r14,%r9
   0.26%    ││ │    0x00007fc31ec5bb7d:   add    %r15,%rbx
   0.12%    ││ │    0x00007fc31ec5bb80:   add    %r15,%r9
   0.06%    ││ │    0x00007fc31ec5bb83:   add    %rdi,%r9
   0.05%    ││ │    0x00007fc31ec5bb86:   vpsrlq $0x13,%ymm4,%ymm3
   0.23%    ││ │    0x00007fc31ec5bb8b:   vpsllq $0x2d,%ymm4,%ymm1
   0.11%    ││ │    0x00007fc31ec5bb90:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007fc31ec5bb94:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007fc31ec5bb98:   vpsrlq $0x3d,%ymm4,%ymm3
   0.28%    ││ │    0x00007fc31ec5bb9d:   vpsllq $0x3,%ymm4,%ymm1
   0.14%    ││ │    0x00007fc31ec5bba2:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007fc31ec5bba6:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007fc31ec5bbaa:   vpaddq %ymm8,%ymm0,%ymm2
   0.24%    ││ │    0x00007fc31ec5bbaf:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.23%    ││ │    0x00007fc31ec5bbb5:   mov    %r9,%rdi
   0.07%    ││ │    0x00007fc31ec5bbb8:   rorx   $0x29,%rbx,%r13
   0.04%    ││ │    0x00007fc31ec5bbbe:   rorx   $0x12,%rbx,%r14
   0.19%    ││ │    0x00007fc31ec5bbc4:   add    0x18(%rsp),%rdx
   0.19%    ││ │    0x00007fc31ec5bbc9:   or     %r11,%rdi
   0.08%    ││ │    0x00007fc31ec5bbcc:   mov    %rcx,%r15
   0.03%    ││ │    0x00007fc31ec5bbcf:   xor    %r8,%r15
   0.22%    ││ │    0x00007fc31ec5bbd2:   rorx   $0x22,%r9,%r12
   0.19%    ││ │    0x00007fc31ec5bbd8:   xor    %r14,%r13
   0.06%    ││ │    0x00007fc31ec5bbdb:   rorx   $0xe,%rbx,%r14
   0.03%    ││ │    0x00007fc31ec5bbe1:   and    %rbx,%r15
   0.22%    ││ │    0x00007fc31ec5bbe4:   add    %rdx,%rax
   0.19%    ││ │    0x00007fc31ec5bbe7:   and    %r10,%rdi
   0.06%    ││ │    0x00007fc31ec5bbea:   xor    %r14,%r13
   0.03%    ││ │    0x00007fc31ec5bbed:   rorx   $0x27,%r9,%r14
   0.22%    ││ │    0x00007fc31ec5bbf3:   xor    %r12,%r14
   0.18%    ││ │    0x00007fc31ec5bbf6:   rorx   $0x1c,%r9,%r12
   0.05%    ││ │    0x00007fc31ec5bbfc:   xor    %r8,%r15
   0.03%    ││ │    0x00007fc31ec5bbff:   xor    %r12,%r14
   0.21%    ││ │    0x00007fc31ec5bc02:   mov    %r9,%r12
   0.14%    ││ │    0x00007fc31ec5bc05:   and    %r11,%r12
   0.07%    ││ │    0x00007fc31ec5bc08:   add    %r13,%r15
   0.03%    ││ │    0x00007fc31ec5bc0b:   or     %r12,%rdi
   0.19%    ││ │    0x00007fc31ec5bc0e:   add    %r14,%rdx
   0.16%    ││ │    0x00007fc31ec5bc11:   add    %r15,%rax
   0.07%    ││ │    0x00007fc31ec5bc14:   add    %r15,%rdx
   0.05%    ││ │    0x00007fc31ec5bc17:   add    %rdi,%rdx
   0.25%    ││ │    0x00007fc31ec5bc1a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.18%    ││ │    0x00007fc31ec5bc1f:   vmovdqu %ymm0,(%rsp)
   0.08%    ││ │    0x00007fc31ec5bc24:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.05%    ││ │    0x00007fc31ec5bc2a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.22%    ││ │    0x00007fc31ec5bc30:   vpaddq %ymm5,%ymm0,%ymm0
   0.27%    ││ │    0x00007fc31ec5bc34:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.07%    ││ │    0x00007fc31ec5bc3a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.05%    ││ │    0x00007fc31ec5bc40:   vpsrlq $0x1,%ymm1,%ymm2
   0.23%    ││ │    0x00007fc31ec5bc45:   vpsllq $0x3f,%ymm1,%ymm3
   0.16%    ││ │    0x00007fc31ec5bc4a:   vpor   %ymm2,%ymm3,%ymm3
   0.07%    ││ │    0x00007fc31ec5bc4e:   vpsrlq $0x7,%ymm1,%ymm8
   0.05%    ││ │    0x00007fc31ec5bc53:   mov    %rdx,%rdi
   0.19%    ││ │    0x00007fc31ec5bc56:   rorx   $0x29,%rax,%r13
   0.16%    ││ │    0x00007fc31ec5bc5c:   rorx   $0x12,%rax,%r14
   0.07%    ││ │    0x00007fc31ec5bc62:   add    (%rsp),%r8
   0.03%    ││ │    0x00007fc31ec5bc66:   or     %r10,%rdi
   0.18%    ││ │    0x00007fc31ec5bc69:   mov    %rbx,%r15
   0.18%    ││ │    0x00007fc31ec5bc6c:   xor    %rcx,%r15
   0.04%    ││ │    0x00007fc31ec5bc6f:   rorx   $0x22,%rdx,%r12
   0.04%    ││ │    0x00007fc31ec5bc75:   xor    %r14,%r13
   0.20%    ││ │    0x00007fc31ec5bc78:   rorx   $0xe,%rax,%r14
   0.20%    ││ │    0x00007fc31ec5bc7e:   and    %rax,%r15
   0.09%    ││ │    0x00007fc31ec5bc81:   add    %r8,%r11
   0.04%    ││ │    0x00007fc31ec5bc84:   and    %r9,%rdi
   0.21%    ││ │    0x00007fc31ec5bc87:   xor    %r14,%r13
   0.19%    ││ │    0x00007fc31ec5bc8a:   rorx   $0x27,%rdx,%r14
   0.10%    ││ │    0x00007fc31ec5bc90:   xor    %r12,%r14
   0.04%    ││ │    0x00007fc31ec5bc93:   rorx   $0x1c,%rdx,%r12
   0.20%    ││ │    0x00007fc31ec5bc99:   xor    %rcx,%r15
   0.16%    ││ │    0x00007fc31ec5bc9c:   xor    %r12,%r14
   0.05%    ││ │    0x00007fc31ec5bc9f:   mov    %rdx,%r12
   0.05%    ││ │    0x00007fc31ec5bca2:   and    %r10,%r12
   0.19%    ││ │    0x00007fc31ec5bca5:   add    %r13,%r15
   0.16%    ││ │    0x00007fc31ec5bca8:   or     %r12,%rdi
   0.10%    ││ │    0x00007fc31ec5bcab:   add    %r14,%r8
   0.04%    ││ │    0x00007fc31ec5bcae:   add    %r15,%r11
   0.18%    ││ │    0x00007fc31ec5bcb1:   add    %r15,%r8
   0.15%    ││ │    0x00007fc31ec5bcb4:   add    %rdi,%r8
   0.08%    ││ │    0x00007fc31ec5bcb7:   vpsrlq $0x8,%ymm1,%ymm2
   0.05%    ││ │    0x00007fc31ec5bcbc:   vpsllq $0x38,%ymm1,%ymm1
   0.23%    ││ │    0x00007fc31ec5bcc1:   vpor   %ymm2,%ymm1,%ymm1
   0.21%    ││ │    0x00007fc31ec5bcc5:   vpxor  %ymm8,%ymm3,%ymm3
   0.08%    ││ │    0x00007fc31ec5bcca:   vpxor  %ymm1,%ymm3,%ymm1
   0.03%    ││ │    0x00007fc31ec5bcce:   vpaddq %ymm1,%ymm0,%ymm0
   0.20%    ││ │    0x00007fc31ec5bcd2:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.17%    ││ │    0x00007fc31ec5bcd8:   vpand  %ymm10,%ymm0,%ymm0
   0.08%    ││ │    0x00007fc31ec5bcdd:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.04%    ││ │    0x00007fc31ec5bce3:   vpsrlq $0x6,%ymm2,%ymm8
   0.17%    ││ │    0x00007fc31ec5bce8:   mov    %r8,%rdi
   0.17%    ││ │    0x00007fc31ec5bceb:   rorx   $0x29,%r11,%r13
   0.08%    ││ │    0x00007fc31ec5bcf1:   rorx   $0x12,%r11,%r14
   0.04%    ││ │    0x00007fc31ec5bcf7:   add    0x8(%rsp),%rcx
   0.22%    ││ │    0x00007fc31ec5bcfc:   or     %r9,%rdi
   0.15%    ││ │    0x00007fc31ec5bcff:   mov    %rax,%r15
   0.08%    ││ │    0x00007fc31ec5bd02:   xor    %rbx,%r15
   0.03%    ││ │    0x00007fc31ec5bd05:   rorx   $0x22,%r8,%r12
   0.19%    ││ │    0x00007fc31ec5bd0b:   xor    %r14,%r13
   0.18%    ││ │    0x00007fc31ec5bd0e:   rorx   $0xe,%r11,%r14
   0.08%    ││ │    0x00007fc31ec5bd14:   and    %r11,%r15
   0.05%    ││ │    0x00007fc31ec5bd17:   add    %rcx,%r10
   0.19%    ││ │    0x00007fc31ec5bd1a:   and    %rdx,%rdi
   0.20%    ││ │    0x00007fc31ec5bd1d:   xor    %r14,%r13
   0.11%    ││ │    0x00007fc31ec5bd20:   rorx   $0x27,%r8,%r14
   0.05%    ││ │    0x00007fc31ec5bd26:   xor    %r12,%r14
   0.18%    ││ │    0x00007fc31ec5bd29:   rorx   $0x1c,%r8,%r12
   0.16%    ││ │    0x00007fc31ec5bd2f:   xor    %rbx,%r15
   0.08%    ││ │    0x00007fc31ec5bd32:   xor    %r12,%r14
   0.05%    ││ │    0x00007fc31ec5bd35:   mov    %r8,%r12
   0.18%    ││ │    0x00007fc31ec5bd38:   and    %r9,%r12
   0.17%    ││ │    0x00007fc31ec5bd3b:   add    %r13,%r15
   0.08%    ││ │    0x00007fc31ec5bd3e:   or     %r12,%rdi
   0.05%    ││ │    0x00007fc31ec5bd41:   add    %r14,%rcx
   0.18%    ││ │    0x00007fc31ec5bd44:   add    %r15,%r10
   0.17%    ││ │    0x00007fc31ec5bd47:   add    %r15,%rcx
   0.11%    ││ │    0x00007fc31ec5bd4a:   add    %rdi,%rcx
   0.04%    ││ │    0x00007fc31ec5bd4d:   vpsrlq $0x13,%ymm2,%ymm3
   0.18%    ││ │    0x00007fc31ec5bd52:   vpsllq $0x2d,%ymm2,%ymm1
   0.17%    ││ │    0x00007fc31ec5bd57:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007fc31ec5bd5b:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007fc31ec5bd5f:   vpsrlq $0x3d,%ymm2,%ymm3
   0.18%    ││ │    0x00007fc31ec5bd64:   vpsllq $0x3,%ymm2,%ymm1
   0.16%    ││ │    0x00007fc31ec5bd69:   vpor   %ymm1,%ymm3,%ymm3
   0.10%    ││ │    0x00007fc31ec5bd6d:   vpxor  %ymm3,%ymm8,%ymm8
   0.03%    ││ │    0x00007fc31ec5bd71:   vpaddq %ymm8,%ymm5,%ymm5
   0.22%    ││ │    0x00007fc31ec5bd76:   vpsrlq $0x6,%ymm5,%ymm8
   0.19%    ││ │    0x00007fc31ec5bd7b:   mov    %rcx,%rdi
   0.09%    ││ │    0x00007fc31ec5bd7e:   rorx   $0x29,%r10,%r13
   0.04%    ││ │    0x00007fc31ec5bd84:   rorx   $0x12,%r10,%r14
   0.17%    ││ │    0x00007fc31ec5bd8a:   add    0x10(%rsp),%rbx
   0.16%    ││ │    0x00007fc31ec5bd8f:   or     %rdx,%rdi
   0.08%    ││ │    0x00007fc31ec5bd92:   mov    %r11,%r15
   0.04%    ││ │    0x00007fc31ec5bd95:   xor    %rax,%r15
   0.18%    ││ │    0x00007fc31ec5bd98:   rorx   $0x22,%rcx,%r12
   0.20%    ││ │    0x00007fc31ec5bd9e:   xor    %r14,%r13
   0.07%    ││ │    0x00007fc31ec5bda1:   rorx   $0xe,%r10,%r14
   0.04%    ││ │    0x00007fc31ec5bda7:   and    %r10,%r15
   0.19%    ││ │    0x00007fc31ec5bdaa:   add    %rbx,%r9
   0.19%    ││ │    0x00007fc31ec5bdad:   and    %r8,%rdi
   0.08%    ││ │    0x00007fc31ec5bdb0:   xor    %r14,%r13
   0.04%    ││ │    0x00007fc31ec5bdb3:   rorx   $0x27,%rcx,%r14
   0.15%    ││ │    0x00007fc31ec5bdb9:   xor    %r12,%r14
   0.18%    ││ │    0x00007fc31ec5bdbc:   rorx   $0x1c,%rcx,%r12
   0.09%    ││ │    0x00007fc31ec5bdc2:   xor    %rax,%r15
   0.03%    ││ │    0x00007fc31ec5bdc5:   xor    %r12,%r14
   0.18%    ││ │    0x00007fc31ec5bdc8:   mov    %rcx,%r12
   0.17%    ││ │    0x00007fc31ec5bdcb:   and    %rdx,%r12
   0.09%    ││ │    0x00007fc31ec5bdce:   add    %r13,%r15
   0.04%    ││ │    0x00007fc31ec5bdd1:   or     %r12,%rdi
   0.18%    ││ │    0x00007fc31ec5bdd4:   add    %r14,%rbx
   0.17%    ││ │    0x00007fc31ec5bdd7:   add    %r15,%r9
   0.09%    ││ │    0x00007fc31ec5bdda:   add    %r15,%rbx
   0.02%    ││ │    0x00007fc31ec5bddd:   add    %rdi,%rbx
   0.19%    ││ │    0x00007fc31ec5bde0:   vpsrlq $0x13,%ymm5,%ymm3
   0.18%    ││ │    0x00007fc31ec5bde5:   vpsllq $0x2d,%ymm5,%ymm1
   0.10%    ││ │    0x00007fc31ec5bdea:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │    0x00007fc31ec5bdee:   vpxor  %ymm3,%ymm8,%ymm8
   0.16%    ││ │    0x00007fc31ec5bdf2:   vpsrlq $0x3d,%ymm5,%ymm3
   0.19%    ││ │    0x00007fc31ec5bdf7:   vpsllq $0x3,%ymm5,%ymm1
   0.10%    ││ │    0x00007fc31ec5bdfc:   vpor   %ymm1,%ymm3,%ymm3
   0.06%    ││ │    0x00007fc31ec5be00:   vpxor  %ymm3,%ymm8,%ymm8
   0.18%    ││ │    0x00007fc31ec5be04:   vpaddq %ymm8,%ymm0,%ymm2
   0.21%    ││ │    0x00007fc31ec5be09:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.15%    ││ │    0x00007fc31ec5be0f:   mov    %rbx,%rdi
   0.04%    ││ │    0x00007fc31ec5be12:   rorx   $0x29,%r9,%r13
   0.15%    ││ │    0x00007fc31ec5be18:   rorx   $0x12,%r9,%r14
   0.19%    ││ │    0x00007fc31ec5be1e:   add    0x18(%rsp),%rax
   0.13%    ││ │    0x00007fc31ec5be23:   or     %r8,%rdi
   0.04%    ││ │    0x00007fc31ec5be26:   mov    %r10,%r15
   0.18%    ││ │    0x00007fc31ec5be29:   xor    %r11,%r15
   0.23%    ││ │    0x00007fc31ec5be2c:   rorx   $0x22,%rbx,%r12
   0.12%    ││ │    0x00007fc31ec5be32:   xor    %r14,%r13
   0.04%    ││ │    0x00007fc31ec5be35:   rorx   $0xe,%r9,%r14
   0.14%    ││ │    0x00007fc31ec5be3b:   and    %r9,%r15
   0.18%    ││ │    0x00007fc31ec5be3e:   add    %rax,%rdx
   0.15%    ││ │    0x00007fc31ec5be41:   and    %rcx,%rdi
   0.04%    ││ │    0x00007fc31ec5be44:   xor    %r14,%r13
   0.15%    ││ │    0x00007fc31ec5be47:   rorx   $0x27,%rbx,%r14
   0.15%    ││ │    0x00007fc31ec5be4d:   xor    %r12,%r14
   0.09%    ││ │    0x00007fc31ec5be50:   rorx   $0x1c,%rbx,%r12
   0.04%    ││ │    0x00007fc31ec5be56:   xor    %r11,%r15
   0.13%    ││ │    0x00007fc31ec5be59:   xor    %r12,%r14
   0.18%    ││ │    0x00007fc31ec5be5c:   mov    %rbx,%r12
   0.11%    ││ │    0x00007fc31ec5be5f:   and    %r8,%r12
   0.04%    ││ │    0x00007fc31ec5be62:   add    %r13,%r15
   0.16%    ││ │    0x00007fc31ec5be65:   or     %r12,%rdi
   0.19%    ││ │    0x00007fc31ec5be68:   add    %r14,%rax
   0.12%    ││ │    0x00007fc31ec5be6b:   add    %r15,%rdx
   0.04%    ││ │    0x00007fc31ec5be6e:   add    %r15,%rax
   0.19%    ││ │    0x00007fc31ec5be71:   add    %rdi,%rax
   0.18%    ││ │    0x00007fc31ec5be74:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.10%    ││ │    0x00007fc31ec5be79:   vmovdqu %ymm0,(%rsp)
   0.03%    ││ │    0x00007fc31ec5be7e:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.19%    ││ │    0x00007fc31ec5be84:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.22%    ││ │    0x00007fc31ec5be8a:   vpaddq %ymm6,%ymm0,%ymm0
   0.20%    ││ │    0x00007fc31ec5be8e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.02%    ││ │    0x00007fc31ec5be94:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.16%    ││ │    0x00007fc31ec5be9a:   vpsrlq $0x1,%ymm1,%ymm2
   0.17%    ││ │    0x00007fc31ec5be9f:   vpsllq $0x3f,%ymm1,%ymm3
   0.20%    ││ │    0x00007fc31ec5bea4:   vpor   %ymm2,%ymm3,%ymm3
   0.04%    ││ │    0x00007fc31ec5bea8:   vpsrlq $0x7,%ymm1,%ymm8
   0.15%    ││ │    0x00007fc31ec5bead:   mov    %rax,%rdi
   0.14%    ││ │    0x00007fc31ec5beb0:   rorx   $0x29,%rdx,%r13
   0.16%    ││ │    0x00007fc31ec5beb6:   rorx   $0x12,%rdx,%r14
   0.03%    ││ │    0x00007fc31ec5bebc:   add    (%rsp),%r11
   0.14%    ││ │    0x00007fc31ec5bec0:   or     %rcx,%rdi
   0.14%    ││ │    0x00007fc31ec5bec3:   mov    %r9,%r15
   0.14%    ││ │    0x00007fc31ec5bec6:   xor    %r10,%r15
   0.05%    ││ │    0x00007fc31ec5bec9:   rorx   $0x22,%rax,%r12
   0.14%    ││ │    0x00007fc31ec5becf:   xor    %r14,%r13
   0.15%    ││ │    0x00007fc31ec5bed2:   rorx   $0xe,%rdx,%r14
   0.15%    ││ │    0x00007fc31ec5bed8:   and    %rdx,%r15
   0.03%    ││ │    0x00007fc31ec5bedb:   add    %r11,%r8
   0.13%    ││ │    0x00007fc31ec5bede:   and    %rbx,%rdi
   0.12%    ││ │    0x00007fc31ec5bee1:   xor    %r14,%r13
   0.16%    ││ │    0x00007fc31ec5bee4:   rorx   $0x27,%rax,%r14
   0.03%    ││ │    0x00007fc31ec5beea:   xor    %r12,%r14
   0.14%    ││ │    0x00007fc31ec5beed:   rorx   $0x1c,%rax,%r12
   0.14%    ││ │    0x00007fc31ec5bef3:   xor    %r10,%r15
   0.17%    ││ │    0x00007fc31ec5bef6:   xor    %r12,%r14
   0.06%    ││ │    0x00007fc31ec5bef9:   mov    %rax,%r12
   0.17%    ││ │    0x00007fc31ec5befc:   and    %rcx,%r12
   0.15%    ││ │    0x00007fc31ec5beff:   add    %r13,%r15
   0.16%    ││ │    0x00007fc31ec5bf02:   or     %r12,%rdi
   0.04%    ││ │    0x00007fc31ec5bf05:   add    %r14,%r11
   0.14%    ││ │    0x00007fc31ec5bf08:   add    %r15,%r8
   0.16%    ││ │    0x00007fc31ec5bf0b:   add    %r15,%r11
   0.16%    ││ │    0x00007fc31ec5bf0e:   add    %rdi,%r11
   0.03%    ││ │    0x00007fc31ec5bf11:   vpsrlq $0x8,%ymm1,%ymm2
   0.16%    ││ │    0x00007fc31ec5bf16:   vpsllq $0x38,%ymm1,%ymm1
   0.19%    ││ │    0x00007fc31ec5bf1b:   vpor   %ymm2,%ymm1,%ymm1
   0.13%    ││ │    0x00007fc31ec5bf1f:   vpxor  %ymm8,%ymm3,%ymm3
   0.05%    ││ │    0x00007fc31ec5bf24:   vpxor  %ymm1,%ymm3,%ymm1
   0.14%    ││ │    0x00007fc31ec5bf28:   vpaddq %ymm1,%ymm0,%ymm0
   0.13%    ││ │    0x00007fc31ec5bf2c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.17%    ││ │    0x00007fc31ec5bf32:   vpand  %ymm10,%ymm0,%ymm0
   0.04%    ││ │    0x00007fc31ec5bf37:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.15%    ││ │    0x00007fc31ec5bf3d:   vpsrlq $0x6,%ymm2,%ymm8
   0.14%    ││ │    0x00007fc31ec5bf42:   mov    %r11,%rdi
   0.16%    ││ │    0x00007fc31ec5bf45:   rorx   $0x29,%r8,%r13
   0.06%    ││ │    0x00007fc31ec5bf4b:   rorx   $0x12,%r8,%r14
   0.16%    ││ │    0x00007fc31ec5bf51:   add    0x8(%rsp),%r10
   0.13%    ││ │    0x00007fc31ec5bf56:   or     %rbx,%rdi
   0.15%    ││ │    0x00007fc31ec5bf59:   mov    %rdx,%r15
   0.05%    ││ │    0x00007fc31ec5bf5c:   xor    %r9,%r15
   0.18%    ││ │    0x00007fc31ec5bf5f:   rorx   $0x22,%r11,%r12
   0.16%    ││ │    0x00007fc31ec5bf65:   xor    %r14,%r13
   0.11%    ││ │    0x00007fc31ec5bf68:   rorx   $0xe,%r8,%r14
   0.04%    ││ │    0x00007fc31ec5bf6e:   and    %r8,%r15
   0.15%    ││ │    0x00007fc31ec5bf71:   add    %r10,%rcx
   0.17%    ││ │    0x00007fc31ec5bf74:   and    %rax,%rdi
   0.17%    ││ │    0x00007fc31ec5bf77:   xor    %r14,%r13
   0.05%    ││ │    0x00007fc31ec5bf7a:   rorx   $0x27,%r11,%r14
   0.15%    ││ │    0x00007fc31ec5bf80:   xor    %r12,%r14
   0.12%    ││ │    0x00007fc31ec5bf83:   rorx   $0x1c,%r11,%r12
   0.18%    ││ │    0x00007fc31ec5bf89:   xor    %r9,%r15
   0.07%    ││ │    0x00007fc31ec5bf8c:   xor    %r12,%r14
   0.15%    ││ │    0x00007fc31ec5bf8f:   mov    %r11,%r12
   0.15%    ││ │    0x00007fc31ec5bf92:   and    %rbx,%r12
   0.14%    ││ │    0x00007fc31ec5bf95:   add    %r13,%r15
   0.06%    ││ │    0x00007fc31ec5bf98:   or     %r12,%rdi
   0.14%    ││ │    0x00007fc31ec5bf9b:   add    %r14,%r10
   0.14%    ││ │    0x00007fc31ec5bf9e:   add    %r15,%rcx
   0.17%    ││ │    0x00007fc31ec5bfa1:   add    %r15,%r10
   0.05%    ││ │    0x00007fc31ec5bfa4:   add    %rdi,%r10
   0.15%    ││ │    0x00007fc31ec5bfa7:   vpsrlq $0x13,%ymm2,%ymm3
   0.15%    ││ │    0x00007fc31ec5bfac:   vpsllq $0x2d,%ymm2,%ymm1
   0.11%    ││ │    0x00007fc31ec5bfb1:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │    0x00007fc31ec5bfb5:   vpxor  %ymm3,%ymm8,%ymm8
   0.17%    ││ │    0x00007fc31ec5bfb9:   vpsrlq $0x3d,%ymm2,%ymm3
   0.16%    ││ │    0x00007fc31ec5bfbe:   vpsllq $0x3,%ymm2,%ymm1
   0.13%    ││ │    0x00007fc31ec5bfc3:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007fc31ec5bfc7:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%    ││ │    0x00007fc31ec5bfcb:   vpaddq %ymm8,%ymm6,%ymm6
   0.15%    ││ │    0x00007fc31ec5bfd0:   vpsrlq $0x6,%ymm6,%ymm8
   0.19%    ││ │    0x00007fc31ec5bfd5:   mov    %r10,%rdi
   0.06%    ││ │    0x00007fc31ec5bfd8:   rorx   $0x29,%rcx,%r13
   0.14%    ││ │    0x00007fc31ec5bfde:   rorx   $0x12,%rcx,%r14
   0.13%    ││ │    0x00007fc31ec5bfe4:   add    0x10(%rsp),%r9
   0.18%    ││ │    0x00007fc31ec5bfe9:   or     %rax,%rdi
   0.04%    ││ │    0x00007fc31ec5bfec:   mov    %r8,%r15
   0.12%    ││ │    0x00007fc31ec5bfef:   xor    %rdx,%r15
   0.15%    ││ │    0x00007fc31ec5bff2:   rorx   $0x22,%r10,%r12
   0.18%    ││ │    0x00007fc31ec5bff8:   xor    %r14,%r13
   0.04%    ││ │    0x00007fc31ec5bffb:   rorx   $0xe,%rcx,%r14
   0.12%    ││ │    0x00007fc31ec5c001:   and    %rcx,%r15
   0.10%    ││ │    0x00007fc31ec5c004:   add    %r9,%rbx
   0.18%    ││ │    0x00007fc31ec5c007:   and    %r11,%rdi
   0.04%    ││ │    0x00007fc31ec5c00a:   xor    %r14,%r13
   0.14%    ││ │    0x00007fc31ec5c00d:   rorx   $0x27,%r10,%r14
   0.13%    ││ │    0x00007fc31ec5c013:   xor    %r12,%r14
   0.15%    ││ │    0x00007fc31ec5c016:   rorx   $0x1c,%r10,%r12
   0.04%    ││ │    0x00007fc31ec5c01c:   xor    %rdx,%r15
   0.14%    ││ │    0x00007fc31ec5c01f:   xor    %r12,%r14
   0.11%    ││ │    0x00007fc31ec5c022:   mov    %r10,%r12
   0.17%    ││ │    0x00007fc31ec5c025:   and    %rax,%r12
   0.04%    ││ │    0x00007fc31ec5c028:   add    %r13,%r15
   0.15%    ││ │    0x00007fc31ec5c02b:   or     %r12,%rdi
   0.15%    ││ │    0x00007fc31ec5c02e:   add    %r14,%r9
   0.18%    ││ │    0x00007fc31ec5c031:   add    %r15,%rbx
   0.06%    ││ │    0x00007fc31ec5c034:   add    %r15,%r9
   0.15%    ││ │    0x00007fc31ec5c037:   add    %rdi,%r9
   0.15%    ││ │    0x00007fc31ec5c03a:   vpsrlq $0x13,%ymm6,%ymm3
   0.19%    ││ │    0x00007fc31ec5c03f:   vpsllq $0x2d,%ymm6,%ymm1
   0.04%    ││ │    0x00007fc31ec5c044:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007fc31ec5c048:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%    ││ │    0x00007fc31ec5c04c:   vpsrlq $0x3d,%ymm6,%ymm3
   0.19%    ││ │    0x00007fc31ec5c051:   vpsllq $0x3,%ymm6,%ymm1
   0.07%    ││ │    0x00007fc31ec5c056:   vpor   %ymm1,%ymm3,%ymm3
   0.18%    ││ │    0x00007fc31ec5c05a:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%    ││ │    0x00007fc31ec5c05e:   vpaddq %ymm8,%ymm0,%ymm2
   0.22%    ││ │    0x00007fc31ec5c063:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.17%    ││ │    0x00007fc31ec5c069:   mov    %r9,%rdi
   0.13%    ││ │    0x00007fc31ec5c06c:   rorx   $0x29,%rbx,%r13
   0.13%    ││ │    0x00007fc31ec5c072:   rorx   $0x12,%rbx,%r14
   0.13%    ││ │    0x00007fc31ec5c078:   add    0x18(%rsp),%rdx
   0.13%    ││ │    0x00007fc31ec5c07d:   or     %r11,%rdi
   0.14%    ││ │    0x00007fc31ec5c080:   mov    %rcx,%r15
   0.11%    ││ │    0x00007fc31ec5c083:   xor    %r8,%r15
   0.15%    ││ │    0x00007fc31ec5c086:   rorx   $0x22,%r9,%r12
   0.09%    ││ │    0x00007fc31ec5c08c:   xor    %r14,%r13
   0.12%    ││ │    0x00007fc31ec5c08f:   rorx   $0xe,%rbx,%r14
   0.12%    ││ │    0x00007fc31ec5c095:   and    %rbx,%r15
   0.13%    ││ │    0x00007fc31ec5c098:   add    %rdx,%rax
   0.12%    ││ │    0x00007fc31ec5c09b:   and    %r10,%rdi
   0.14%    ││ │    0x00007fc31ec5c09e:   xor    %r14,%r13
   0.10%    ││ │    0x00007fc31ec5c0a1:   rorx   $0x27,%r9,%r14
   0.10%    ││ │    0x00007fc31ec5c0a7:   xor    %r12,%r14
   0.13%    ││ │    0x00007fc31ec5c0aa:   rorx   $0x1c,%r9,%r12
   0.13%    ││ │    0x00007fc31ec5c0b0:   xor    %r8,%r15
   0.11%    ││ │    0x00007fc31ec5c0b3:   xor    %r12,%r14
   0.11%    ││ │    0x00007fc31ec5c0b6:   mov    %r9,%r12
   0.11%    ││ │    0x00007fc31ec5c0b9:   and    %r11,%r12
   0.10%    ││ │    0x00007fc31ec5c0bc:   add    %r13,%r15
   0.10%    ││ │    0x00007fc31ec5c0bf:   or     %r12,%rdi
   0.12%    ││ │    0x00007fc31ec5c0c2:   add    %r14,%rdx
   0.11%    ││ │    0x00007fc31ec5c0c5:   add    %r15,%rax
   0.12%    ││ │    0x00007fc31ec5c0c8:   add    %r15,%rdx
   0.12%    ││ │    0x00007fc31ec5c0cb:   add    %rdi,%rdx
   0.13%    ││ │    0x00007fc31ec5c0ce:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.09%    ││ │    0x00007fc31ec5c0d3:   vmovdqu %ymm0,(%rsp)
   0.12%    ││ │    0x00007fc31ec5c0d8:   add    $0x80,%rbp
   0.13%    ││ │    0x00007fc31ec5c0df:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.12%    ││ │    0x00007fc31ec5c0e5:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.11%    ││ │    0x00007fc31ec5c0eb:   vpaddq %ymm7,%ymm0,%ymm0
   0.26%    ││ │    0x00007fc31ec5c0ef:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.10%    ││ │    0x00007fc31ec5c0f5:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.12%    ││ │    0x00007fc31ec5c0fb:   vpsrlq $0x1,%ymm1,%ymm2
   0.13%    ││ │    0x00007fc31ec5c100:   vpsllq $0x3f,%ymm1,%ymm3
   0.21%    ││ │    0x00007fc31ec5c105:   vpor   %ymm2,%ymm3,%ymm3
   0.11%    ││ │    0x00007fc31ec5c109:   vpsrlq $0x7,%ymm1,%ymm8
   0.09%    ││ │    0x00007fc31ec5c10e:   mov    %rdx,%rdi
   0.08%    ││ │    0x00007fc31ec5c111:   rorx   $0x29,%rax,%r13
   0.17%    ││ │    0x00007fc31ec5c117:   rorx   $0x12,%rax,%r14
   0.14%    ││ │    0x00007fc31ec5c11d:   add    (%rsp),%r8
   0.12%    ││ │    0x00007fc31ec5c121:   or     %r10,%rdi
   0.08%    ││ │    0x00007fc31ec5c124:   mov    %rbx,%r15
   0.13%    ││ │    0x00007fc31ec5c127:   xor    %rcx,%r15
   0.09%    ││ │    0x00007fc31ec5c12a:   rorx   $0x22,%rdx,%r12
   0.10%    ││ │    0x00007fc31ec5c130:   xor    %r14,%r13
   0.08%    ││ │    0x00007fc31ec5c133:   rorx   $0xe,%rax,%r14
   0.19%    ││ │    0x00007fc31ec5c139:   and    %rax,%r15
   0.13%    ││ │    0x00007fc31ec5c13c:   add    %r8,%r11
   0.12%    ││ │    0x00007fc31ec5c13f:   and    %r9,%rdi
   0.08%    ││ │    0x00007fc31ec5c142:   xor    %r14,%r13
   0.19%    ││ │    0x00007fc31ec5c145:   rorx   $0x27,%rdx,%r14
   0.12%    ││ │    0x00007fc31ec5c14b:   xor    %r12,%r14
   0.11%    ││ │    0x00007fc31ec5c14e:   rorx   $0x1c,%rdx,%r12
   0.10%    ││ │    0x00007fc31ec5c154:   xor    %rcx,%r15
   0.16%    ││ │    0x00007fc31ec5c157:   xor    %r12,%r14
   0.11%    ││ │    0x00007fc31ec5c15a:   mov    %rdx,%r12
   0.12%    ││ │    0x00007fc31ec5c15d:   and    %r10,%r12
   0.11%    ││ │    0x00007fc31ec5c160:   add    %r13,%r15
   0.15%    ││ │    0x00007fc31ec5c163:   or     %r12,%rdi
   0.12%    ││ │    0x00007fc31ec5c166:   add    %r14,%r8
   0.11%    ││ │    0x00007fc31ec5c169:   add    %r15,%r11
   0.10%    ││ │    0x00007fc31ec5c16c:   add    %r15,%r8
   0.19%    ││ │    0x00007fc31ec5c16f:   add    %rdi,%r8
   0.12%    ││ │    0x00007fc31ec5c172:   vpsrlq $0x8,%ymm1,%ymm2
   0.09%    ││ │    0x00007fc31ec5c177:   vpsllq $0x38,%ymm1,%ymm1
   0.12%    ││ │    0x00007fc31ec5c17c:   vpor   %ymm2,%ymm1,%ymm1
   0.16%    ││ │    0x00007fc31ec5c180:   vpxor  %ymm8,%ymm3,%ymm3
   0.13%    ││ │    0x00007fc31ec5c185:   vpxor  %ymm1,%ymm3,%ymm1
   0.12%    ││ │    0x00007fc31ec5c189:   vpaddq %ymm1,%ymm0,%ymm0
   0.10%    ││ │    0x00007fc31ec5c18d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.19%    ││ │    0x00007fc31ec5c193:   vpand  %ymm10,%ymm0,%ymm0
   0.09%    ││ │    0x00007fc31ec5c198:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.11%    ││ │    0x00007fc31ec5c19e:   vpsrlq $0x6,%ymm2,%ymm8
   0.11%    ││ │    0x00007fc31ec5c1a3:   mov    %r8,%rdi
   0.17%    ││ │    0x00007fc31ec5c1a6:   rorx   $0x29,%r11,%r13
   0.12%    ││ │    0x00007fc31ec5c1ac:   rorx   $0x12,%r11,%r14
   0.10%    ││ │    0x00007fc31ec5c1b2:   add    0x8(%rsp),%rcx
   0.10%    ││ │    0x00007fc31ec5c1b7:   or     %r9,%rdi
   0.14%    ││ │    0x00007fc31ec5c1ba:   mov    %rax,%r15
   0.12%    ││ │    0x00007fc31ec5c1bd:   xor    %rbx,%r15
   0.14%    ││ │    0x00007fc31ec5c1c0:   rorx   $0x22,%r8,%r12
   0.11%    ││ │    0x00007fc31ec5c1c6:   xor    %r14,%r13
   0.16%    ││ │    0x00007fc31ec5c1c9:   rorx   $0xe,%r11,%r14
   0.12%    ││ │    0x00007fc31ec5c1cf:   and    %r11,%r15
   0.11%    ││ │    0x00007fc31ec5c1d2:   add    %rcx,%r10
   0.09%    ││ │    0x00007fc31ec5c1d5:   and    %rdx,%rdi
   0.18%    ││ │    0x00007fc31ec5c1d8:   xor    %r14,%r13
   0.09%    ││ │    0x00007fc31ec5c1db:   rorx   $0x27,%r8,%r14
   0.11%    ││ │    0x00007fc31ec5c1e1:   xor    %r12,%r14
   0.12%    ││ │    0x00007fc31ec5c1e4:   rorx   $0x1c,%r8,%r12
   0.21%    ││ │    0x00007fc31ec5c1ea:   xor    %rbx,%r15
   0.14%    ││ │    0x00007fc31ec5c1ed:   xor    %r12,%r14
   0.12%    ││ │    0x00007fc31ec5c1f0:   mov    %r8,%r12
   0.12%    ││ │    0x00007fc31ec5c1f3:   and    %r9,%r12
   0.17%    ││ │    0x00007fc31ec5c1f6:   add    %r13,%r15
   0.11%    ││ │    0x00007fc31ec5c1f9:   or     %r12,%rdi
   0.11%    ││ │    0x00007fc31ec5c1fc:   add    %r14,%rcx
   0.10%    ││ │    0x00007fc31ec5c1ff:   add    %r15,%r10
   0.19%    ││ │    0x00007fc31ec5c202:   add    %r15,%rcx
   0.10%    ││ │    0x00007fc31ec5c205:   add    %rdi,%rcx
   0.12%    ││ │    0x00007fc31ec5c208:   vpsrlq $0x13,%ymm2,%ymm3
   0.11%    ││ │    0x00007fc31ec5c20d:   vpsllq $0x2d,%ymm2,%ymm1
   0.15%    ││ │    0x00007fc31ec5c212:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007fc31ec5c216:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%    ││ │    0x00007fc31ec5c21a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.09%    ││ │    0x00007fc31ec5c21f:   vpsllq $0x3,%ymm2,%ymm1
   0.15%    ││ │    0x00007fc31ec5c224:   vpor   %ymm1,%ymm3,%ymm3
   0.14%    ││ │    0x00007fc31ec5c228:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%    ││ │    0x00007fc31ec5c22c:   vpaddq %ymm8,%ymm7,%ymm7
   0.07%    ││ │    0x00007fc31ec5c231:   vpsrlq $0x6,%ymm7,%ymm8
   0.18%    ││ │    0x00007fc31ec5c236:   mov    %rcx,%rdi
   0.11%    ││ │    0x00007fc31ec5c239:   rorx   $0x29,%r10,%r13
   0.11%    ││ │    0x00007fc31ec5c23f:   rorx   $0x12,%r10,%r14
   0.09%    ││ │    0x00007fc31ec5c245:   add    0x10(%rsp),%rbx
   0.16%    ││ │    0x00007fc31ec5c24a:   or     %rdx,%rdi
   0.12%    ││ │    0x00007fc31ec5c24d:   mov    %r11,%r15
   0.11%    ││ │    0x00007fc31ec5c250:   xor    %rax,%r15
   0.07%    ││ │    0x00007fc31ec5c253:   rorx   $0x22,%rcx,%r12
   0.22%    ││ │    0x00007fc31ec5c259:   xor    %r14,%r13
   0.14%    ││ │    0x00007fc31ec5c25c:   rorx   $0xe,%r10,%r14
   0.13%    ││ │    0x00007fc31ec5c262:   and    %r10,%r15
   0.10%    ││ │    0x00007fc31ec5c265:   add    %rbx,%r9
   0.17%    ││ │    0x00007fc31ec5c268:   and    %r8,%rdi
   0.12%    ││ │    0x00007fc31ec5c26b:   xor    %r14,%r13
   0.10%    ││ │    0x00007fc31ec5c26e:   rorx   $0x27,%rcx,%r14
   0.09%    ││ │    0x00007fc31ec5c274:   xor    %r12,%r14
   0.16%    ││ │    0x00007fc31ec5c277:   rorx   $0x1c,%rcx,%r12
   0.11%    ││ │    0x00007fc31ec5c27d:   xor    %rax,%r15
   0.13%    ││ │    0x00007fc31ec5c280:   xor    %r12,%r14
   0.11%    ││ │    0x00007fc31ec5c283:   mov    %rcx,%r12
   0.19%    ││ │    0x00007fc31ec5c286:   and    %rdx,%r12
   0.13%    ││ │    0x00007fc31ec5c289:   add    %r13,%r15
   0.09%    ││ │    0x00007fc31ec5c28c:   or     %r12,%rdi
   0.09%    ││ │    0x00007fc31ec5c28f:   add    %r14,%rbx
   0.16%    ││ │    0x00007fc31ec5c292:   add    %r15,%r9
   0.11%    ││ │    0x00007fc31ec5c295:   add    %r15,%rbx
   0.12%    ││ │    0x00007fc31ec5c298:   add    %rdi,%rbx
   0.08%    ││ │    0x00007fc31ec5c29b:   vpsrlq $0x13,%ymm7,%ymm3
   0.21%    ││ │    0x00007fc31ec5c2a0:   vpsllq $0x2d,%ymm7,%ymm1
   0.11%    ││ │    0x00007fc31ec5c2a5:   vpor   %ymm1,%ymm3,%ymm3
   0.12%    ││ │    0x00007fc31ec5c2a9:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%    ││ │    0x00007fc31ec5c2ad:   vpsrlq $0x3d,%ymm7,%ymm3
   0.20%    ││ │    0x00007fc31ec5c2b2:   vpsllq $0x3,%ymm7,%ymm1
   0.10%    ││ │    0x00007fc31ec5c2b7:   vpor   %ymm1,%ymm3,%ymm3
   0.14%    ││ │    0x00007fc31ec5c2bb:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%    ││ │    0x00007fc31ec5c2bf:   vpaddq %ymm8,%ymm0,%ymm2
   0.19%    ││ │    0x00007fc31ec5c2c4:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.20%    ││ │    0x00007fc31ec5c2ca:   mov    %rbx,%rdi
   0.12%    ││ │    0x00007fc31ec5c2cd:   rorx   $0x29,%r9,%r13
   0.07%    ││ │    0x00007fc31ec5c2d3:   rorx   $0x12,%r9,%r14
   0.17%    ││ │    0x00007fc31ec5c2d9:   add    0x18(%rsp),%rax
   0.15%    ││ │    0x00007fc31ec5c2de:   or     %r8,%rdi
   0.12%    ││ │    0x00007fc31ec5c2e1:   mov    %r10,%r15
   0.07%    ││ │    0x00007fc31ec5c2e4:   xor    %r11,%r15
   0.16%    ││ │    0x00007fc31ec5c2e7:   rorx   $0x22,%rbx,%r12
   0.18%    ││ │    0x00007fc31ec5c2ed:   xor    %r14,%r13
   0.10%    ││ │    0x00007fc31ec5c2f0:   rorx   $0xe,%r9,%r14
   0.05%    ││ │    0x00007fc31ec5c2f6:   and    %r9,%r15
   0.17%    ││ │    0x00007fc31ec5c2f9:   add    %rax,%rdx
   0.17%    ││ │    0x00007fc31ec5c2fc:   and    %rcx,%rdi
   0.08%    ││ │    0x00007fc31ec5c2ff:   xor    %r14,%r13
   0.07%    ││ │    0x00007fc31ec5c302:   rorx   $0x27,%rbx,%r14
   0.16%    ││ │    0x00007fc31ec5c308:   xor    %r12,%r14
   0.18%    ││ │    0x00007fc31ec5c30b:   rorx   $0x1c,%rbx,%r12
   0.09%    ││ │    0x00007fc31ec5c311:   xor    %r11,%r15
   0.08%    ││ │    0x00007fc31ec5c314:   xor    %r12,%r14
   0.15%    ││ │    0x00007fc31ec5c317:   mov    %rbx,%r12
   0.18%    ││ │    0x00007fc31ec5c31a:   and    %r8,%r12
   0.12%    ││ │    0x00007fc31ec5c31d:   add    %r13,%r15
   0.05%    ││ │    0x00007fc31ec5c320:   or     %r12,%rdi
   0.10%    ││ │    0x00007fc31ec5c323:   add    %r14,%rax
   0.15%    ││ │    0x00007fc31ec5c326:   add    %r15,%rdx
   0.12%    ││ │    0x00007fc31ec5c329:   add    %r15,%rax
   0.09%    ││ │    0x00007fc31ec5c32c:   add    %rdi,%rax
   0.14%    ││ │    0x00007fc31ec5c32f:   subq   $0x1,0x20(%rsp)
   0.29%    │╰ │    0x00007fc31ec5c335:   jne    0x00007fc31ec5b9c0
   0.02%    │  │    0x00007fc31ec5c33b:   movq   $0x2,0x20(%rsp)
   0.04%    │ ↗│    0x00007fc31ec5c344:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.07%    │ ││    0x00007fc31ec5c349:   vmovdqu %ymm0,(%rsp)
   0.05%    │ ││    0x00007fc31ec5c34e:   mov    %r9,%r15
   0.06%    │ ││    0x00007fc31ec5c351:   rorx   $0x29,%rdx,%r13
   0.06%    │ ││    0x00007fc31ec5c357:   rorx   $0x12,%rdx,%r14
   0.06%    │ ││    0x00007fc31ec5c35d:   xor    %r10,%r15
   0.06%    │ ││    0x00007fc31ec5c360:   xor    %r14,%r13
   0.07%    │ ││    0x00007fc31ec5c363:   rorx   $0xe,%rdx,%r14
   0.07%    │ ││    0x00007fc31ec5c369:   and    %rdx,%r15
   0.06%    │ ││    0x00007fc31ec5c36c:   xor    %r14,%r13
   0.05%    │ ││    0x00007fc31ec5c36f:   rorx   $0x22,%rax,%r12
   0.05%    │ ││    0x00007fc31ec5c375:   xor    %r10,%r15
   0.04%    │ ││    0x00007fc31ec5c378:   rorx   $0x27,%rax,%r14
   0.07%    │ ││    0x00007fc31ec5c37e:   mov    %rax,%rdi
   0.08%    │ ││    0x00007fc31ec5c381:   xor    %r12,%r14
   0.08%    │ ││    0x00007fc31ec5c384:   rorx   $0x1c,%rax,%r12
   0.05%    │ ││    0x00007fc31ec5c38a:   add    (%rsp),%r11
   0.08%    │ ││    0x00007fc31ec5c38e:   or     %rcx,%rdi
   0.06%    │ ││    0x00007fc31ec5c391:   xor    %r12,%r14
   0.06%    │ ││    0x00007fc31ec5c394:   mov    %rax,%r12
   0.06%    │ ││    0x00007fc31ec5c397:   and    %rbx,%rdi
   0.07%    │ ││    0x00007fc31ec5c39a:   and    %rcx,%r12
   0.05%    │ ││    0x00007fc31ec5c39d:   add    %r13,%r15
   0.09%    │ ││    0x00007fc31ec5c3a0:   add    %r11,%r8
   0.06%    │ ││    0x00007fc31ec5c3a3:   or     %r12,%rdi
   0.07%    │ ││    0x00007fc31ec5c3a6:   add    %r14,%r11
   0.06%    │ ││    0x00007fc31ec5c3a9:   add    %r15,%r8
   0.09%    │ ││    0x00007fc31ec5c3ac:   add    %r15,%r11
   0.06%    │ ││    0x00007fc31ec5c3af:   mov    %rdx,%r15
   0.06%    │ ││    0x00007fc31ec5c3b2:   rorx   $0x29,%r8,%r13
   0.06%    │ ││    0x00007fc31ec5c3b8:   rorx   $0x12,%r8,%r14
   0.09%    │ ││    0x00007fc31ec5c3be:   xor    %r9,%r15
   0.05%    │ ││    0x00007fc31ec5c3c1:   xor    %r14,%r13
   0.07%    │ ││    0x00007fc31ec5c3c4:   rorx   $0xe,%r8,%r14
   0.05%    │ ││    0x00007fc31ec5c3ca:   and    %r8,%r15
   0.08%    │ ││    0x00007fc31ec5c3cd:   add    %rdi,%r11
   0.06%    │ ││    0x00007fc31ec5c3d0:   xor    %r14,%r13
   0.06%    │ ││    0x00007fc31ec5c3d3:   rorx   $0x22,%r11,%r12
   0.06%    │ ││    0x00007fc31ec5c3d9:   xor    %r9,%r15
   0.05%    │ ││    0x00007fc31ec5c3dc:   rorx   $0x27,%r11,%r14
   0.05%    │ ││    0x00007fc31ec5c3e2:   mov    %r11,%rdi
   0.06%    │ ││    0x00007fc31ec5c3e5:   xor    %r12,%r14
   0.05%    │ ││    0x00007fc31ec5c3e8:   rorx   $0x1c,%r11,%r12
   0.08%    │ ││    0x00007fc31ec5c3ee:   add    0x8(%rsp),%r10
   0.05%    │ ││    0x00007fc31ec5c3f3:   or     %rbx,%rdi
   0.06%    │ ││    0x00007fc31ec5c3f6:   xor    %r12,%r14
   0.08%    │ ││    0x00007fc31ec5c3f9:   mov    %r11,%r12
   0.07%    │ ││    0x00007fc31ec5c3fc:   and    %rax,%rdi
   0.07%    │ ││    0x00007fc31ec5c3ff:   and    %rbx,%r12
   0.06%    │ ││    0x00007fc31ec5c402:   add    %r13,%r15
   0.07%    │ ││    0x00007fc31ec5c405:   add    %r10,%rcx
   0.06%    │ ││    0x00007fc31ec5c408:   or     %r12,%rdi
   0.06%    │ ││    0x00007fc31ec5c40b:   add    %r14,%r10
   0.05%    │ ││    0x00007fc31ec5c40e:   add    %r15,%rcx
   0.07%    │ ││    0x00007fc31ec5c411:   add    %r15,%r10
   0.06%    │ ││    0x00007fc31ec5c414:   mov    %r8,%r15
   0.04%    │ ││    0x00007fc31ec5c417:   rorx   $0x29,%rcx,%r13
   0.05%    │ ││    0x00007fc31ec5c41d:   rorx   $0x12,%rcx,%r14
   0.07%    │ ││    0x00007fc31ec5c423:   xor    %rdx,%r15
   0.06%    │ ││    0x00007fc31ec5c426:   xor    %r14,%r13
   0.07%    │ ││    0x00007fc31ec5c429:   rorx   $0xe,%rcx,%r14
   0.08%    │ ││    0x00007fc31ec5c42f:   and    %rcx,%r15
   0.06%    │ ││    0x00007fc31ec5c432:   add    %rdi,%r10
   0.07%    │ ││    0x00007fc31ec5c435:   xor    %r14,%r13
   0.06%    │ ││    0x00007fc31ec5c438:   rorx   $0x22,%r10,%r12
   0.06%    │ ││    0x00007fc31ec5c43e:   xor    %rdx,%r15
   0.08%    │ ││    0x00007fc31ec5c441:   rorx   $0x27,%r10,%r14
   0.06%    │ ││    0x00007fc31ec5c447:   mov    %r10,%rdi
   0.07%    │ ││    0x00007fc31ec5c44a:   xor    %r12,%r14
   0.09%    │ ││    0x00007fc31ec5c44d:   rorx   $0x1c,%r10,%r12
   0.06%    │ ││    0x00007fc31ec5c453:   add    0x10(%rsp),%r9
   0.08%    │ ││    0x00007fc31ec5c458:   or     %rax,%rdi
   0.07%    │ ││    0x00007fc31ec5c45b:   xor    %r12,%r14
   0.10%    │ ││    0x00007fc31ec5c45e:   mov    %r10,%r12
   0.04%    │ ││    0x00007fc31ec5c461:   and    %r11,%rdi
   0.06%    │ ││    0x00007fc31ec5c464:   and    %rax,%r12
   0.07%    │ ││    0x00007fc31ec5c467:   add    %r13,%r15
   0.06%    │ ││    0x00007fc31ec5c46a:   add    %r9,%rbx
   0.06%    │ ││    0x00007fc31ec5c46d:   or     %r12,%rdi
   0.05%    │ ││    0x00007fc31ec5c470:   add    %r14,%r9
   0.04%    │ ││    0x00007fc31ec5c473:   add    %r15,%rbx
   0.08%    │ ││    0x00007fc31ec5c476:   add    %r15,%r9
   0.06%    │ ││    0x00007fc31ec5c479:   mov    %rcx,%r15
   0.07%    │ ││    0x00007fc31ec5c47c:   rorx   $0x29,%rbx,%r13
   0.07%    │ ││    0x00007fc31ec5c482:   rorx   $0x12,%rbx,%r14
   0.08%    │ ││    0x00007fc31ec5c488:   xor    %r8,%r15
   0.07%    │ ││    0x00007fc31ec5c48b:   xor    %r14,%r13
   0.07%    │ ││    0x00007fc31ec5c48e:   rorx   $0xe,%rbx,%r14
   0.07%    │ ││    0x00007fc31ec5c494:   and    %rbx,%r15
   0.08%    │ ││    0x00007fc31ec5c497:   add    %rdi,%r9
   0.06%    │ ││    0x00007fc31ec5c49a:   xor    %r14,%r13
   0.06%    │ ││    0x00007fc31ec5c49d:   rorx   $0x22,%r9,%r12
   0.06%    │ ││    0x00007fc31ec5c4a3:   xor    %r8,%r15
   0.08%    │ ││    0x00007fc31ec5c4a6:   rorx   $0x27,%r9,%r14
   0.05%    │ ││    0x00007fc31ec5c4ac:   mov    %r9,%rdi
   0.06%    │ ││    0x00007fc31ec5c4af:   xor    %r12,%r14
   0.07%    │ ││    0x00007fc31ec5c4b2:   rorx   $0x1c,%r9,%r12
   0.06%    │ ││    0x00007fc31ec5c4b8:   add    0x18(%rsp),%rdx
   0.04%    │ ││    0x00007fc31ec5c4bd:   or     %r11,%rdi
   0.06%    │ ││    0x00007fc31ec5c4c0:   xor    %r12,%r14
   0.05%    │ ││    0x00007fc31ec5c4c3:   mov    %r9,%r12
   0.08%    │ ││    0x00007fc31ec5c4c6:   and    %r10,%rdi
   0.04%    │ ││    0x00007fc31ec5c4c9:   and    %r11,%r12
   0.06%    │ ││    0x00007fc31ec5c4cc:   add    %r13,%r15
   0.06%    │ ││    0x00007fc31ec5c4cf:   add    %rdx,%rax
   0.07%    │ ││    0x00007fc31ec5c4d2:   or     %r12,%rdi
   0.06%    │ ││    0x00007fc31ec5c4d5:   add    %r14,%rdx
   0.05%    │ ││    0x00007fc31ec5c4d8:   add    %r15,%rax
   0.06%    │ ││    0x00007fc31ec5c4db:   add    %r15,%rdx
   0.06%    │ ││    0x00007fc31ec5c4de:   add    %rdi,%rdx
   0.08%    │ ││    0x00007fc31ec5c4e1:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.06%    │ ││    0x00007fc31ec5c4e6:   vmovdqu %ymm0,(%rsp)
   0.03%    │ ││    0x00007fc31ec5c4eb:   add    $0x40,%rbp
   0.08%    │ ││    0x00007fc31ec5c4ef:   mov    %rbx,%r15
   0.08%    │ ││    0x00007fc31ec5c4f2:   rorx   $0x29,%rax,%r13
   0.05%    │ ││    0x00007fc31ec5c4f8:   rorx   $0x12,%rax,%r14
   0.03%    │ ││    0x00007fc31ec5c4fe:   xor    %rcx,%r15
   0.08%    │ ││    0x00007fc31ec5c501:   xor    %r14,%r13
   0.10%    │ ││    0x00007fc31ec5c504:   rorx   $0xe,%rax,%r14
   0.06%    │ ││    0x00007fc31ec5c50a:   and    %rax,%r15
   0.05%    │ ││    0x00007fc31ec5c50d:   xor    %r14,%r13
   0.08%    │ ││    0x00007fc31ec5c510:   rorx   $0x22,%rdx,%r12
   0.08%    │ ││    0x00007fc31ec5c516:   xor    %rcx,%r15
   0.08%    │ ││    0x00007fc31ec5c519:   rorx   $0x27,%rdx,%r14
   0.05%    │ ││    0x00007fc31ec5c51f:   mov    %rdx,%rdi
   0.06%    │ ││    0x00007fc31ec5c522:   xor    %r12,%r14
   0.08%    │ ││    0x00007fc31ec5c525:   rorx   $0x1c,%rdx,%r12
   0.05%    │ ││    0x00007fc31ec5c52b:   add    (%rsp),%r8
   0.04%    │ ││    0x00007fc31ec5c52f:   or     %r10,%rdi
   0.05%    │ ││    0x00007fc31ec5c532:   xor    %r12,%r14
   0.08%    │ ││    0x00007fc31ec5c535:   mov    %rdx,%r12
   0.05%    │ ││    0x00007fc31ec5c538:   and    %r9,%rdi
   0.05%    │ ││    0x00007fc31ec5c53b:   and    %r10,%r12
   0.04%    │ ││    0x00007fc31ec5c53e:   add    %r13,%r15
   0.09%    │ ││    0x00007fc31ec5c541:   add    %r8,%r11
   0.08%    │ ││    0x00007fc31ec5c544:   or     %r12,%rdi
   0.03%    │ ││    0x00007fc31ec5c547:   add    %r14,%r8
   0.07%    │ ││    0x00007fc31ec5c54a:   add    %r15,%r11
   0.08%    │ ││    0x00007fc31ec5c54d:   add    %r15,%r8
   0.07%    │ ││    0x00007fc31ec5c550:   mov    %rax,%r15
   0.07%    │ ││    0x00007fc31ec5c553:   rorx   $0x29,%r11,%r13
   0.07%    │ ││    0x00007fc31ec5c559:   rorx   $0x12,%r11,%r14
   0.09%    │ ││    0x00007fc31ec5c55f:   xor    %rbx,%r15
   0.06%    │ ││    0x00007fc31ec5c562:   xor    %r14,%r13
   0.05%    │ ││    0x00007fc31ec5c565:   rorx   $0xe,%r11,%r14
   0.05%    │ ││    0x00007fc31ec5c56b:   and    %r11,%r15
   0.08%    │ ││    0x00007fc31ec5c56e:   add    %rdi,%r8
   0.06%    │ ││    0x00007fc31ec5c571:   xor    %r14,%r13
   0.06%    │ ││    0x00007fc31ec5c574:   rorx   $0x22,%r8,%r12
   0.07%    │ ││    0x00007fc31ec5c57a:   xor    %rbx,%r15
   0.10%    │ ││    0x00007fc31ec5c57d:   rorx   $0x27,%r8,%r14
   0.06%    │ ││    0x00007fc31ec5c583:   mov    %r8,%rdi
   0.07%    │ ││    0x00007fc31ec5c586:   xor    %r12,%r14
   0.09%    │ ││    0x00007fc31ec5c589:   rorx   $0x1c,%r8,%r12
   0.06%    │ ││    0x00007fc31ec5c58f:   add    0x8(%rsp),%rcx
   0.05%    │ ││    0x00007fc31ec5c594:   or     %r9,%rdi
   0.06%    │ ││    0x00007fc31ec5c597:   xor    %r12,%r14
   0.09%    │ ││    0x00007fc31ec5c59a:   mov    %r8,%r12
   0.07%    │ ││    0x00007fc31ec5c59d:   and    %rdx,%rdi
   0.05%    │ ││    0x00007fc31ec5c5a0:   and    %r9,%r12
   0.03%    │ ││    0x00007fc31ec5c5a3:   add    %r13,%r15
   0.07%    │ ││    0x00007fc31ec5c5a6:   add    %rcx,%r10
   0.06%    │ ││    0x00007fc31ec5c5a9:   or     %r12,%rdi
   0.07%    │ ││    0x00007fc31ec5c5ac:   add    %r14,%rcx
   0.04%    │ ││    0x00007fc31ec5c5af:   add    %r15,%r10
   0.06%    │ ││    0x00007fc31ec5c5b2:   add    %r15,%rcx
   0.05%    │ ││    0x00007fc31ec5c5b5:   mov    %r11,%r15
   0.04%    │ ││    0x00007fc31ec5c5b8:   rorx   $0x29,%r10,%r13
   0.06%    │ ││    0x00007fc31ec5c5be:   rorx   $0x12,%r10,%r14
   0.09%    │ ││    0x00007fc31ec5c5c4:   xor    %rax,%r15
   0.08%    │ ││    0x00007fc31ec5c5c7:   xor    %r14,%r13
   0.05%    │ ││    0x00007fc31ec5c5ca:   rorx   $0xe,%r10,%r14
   0.07%    │ ││    0x00007fc31ec5c5d0:   and    %r10,%r15
   0.08%    │ ││    0x00007fc31ec5c5d3:   add    %rdi,%rcx
   0.07%    │ ││    0x00007fc31ec5c5d6:   xor    %r14,%r13
   0.06%    │ ││    0x00007fc31ec5c5d9:   rorx   $0x22,%rcx,%r12
   0.05%    │ ││    0x00007fc31ec5c5df:   xor    %rax,%r15
   0.12%    │ ││    0x00007fc31ec5c5e2:   rorx   $0x27,%rcx,%r14
   0.09%    │ ││    0x00007fc31ec5c5e8:   mov    %rcx,%rdi
   0.08%    │ ││    0x00007fc31ec5c5eb:   xor    %r12,%r14
   0.07%    │ ││    0x00007fc31ec5c5ee:   rorx   $0x1c,%rcx,%r12
   0.06%    │ ││    0x00007fc31ec5c5f4:   add    0x10(%rsp),%rbx
   0.07%    │ ││    0x00007fc31ec5c5f9:   or     %rdx,%rdi
   0.06%    │ ││    0x00007fc31ec5c5fc:   xor    %r12,%r14
   0.08%    │ ││    0x00007fc31ec5c5ff:   mov    %rcx,%r12
   0.07%    │ ││    0x00007fc31ec5c602:   and    %r8,%rdi
   0.08%    │ ││    0x00007fc31ec5c605:   and    %rdx,%r12
   0.06%    │ ││    0x00007fc31ec5c608:   add    %r13,%r15
   0.07%    │ ││    0x00007fc31ec5c60b:   add    %rbx,%r9
   0.08%    │ ││    0x00007fc31ec5c60e:   or     %r12,%rdi
   0.07%    │ ││    0x00007fc31ec5c611:   add    %r14,%rbx
   0.04%    │ ││    0x00007fc31ec5c614:   add    %r15,%r9
   0.09%    │ ││    0x00007fc31ec5c617:   add    %r15,%rbx
   0.08%    │ ││    0x00007fc31ec5c61a:   mov    %r10,%r15
   0.05%    │ ││    0x00007fc31ec5c61d:   rorx   $0x29,%r9,%r13
   0.06%    │ ││    0x00007fc31ec5c623:   rorx   $0x12,%r9,%r14
   0.08%    │ ││    0x00007fc31ec5c629:   xor    %r11,%r15
   0.08%    │ ││    0x00007fc31ec5c62c:   xor    %r14,%r13
   0.08%    │ ││    0x00007fc31ec5c62f:   rorx   $0xe,%r9,%r14
   0.05%    │ ││    0x00007fc31ec5c635:   and    %r9,%r15
   0.07%    │ ││    0x00007fc31ec5c638:   add    %rdi,%rbx
   0.09%    │ ││    0x00007fc31ec5c63b:   xor    %r14,%r13
   0.09%    │ ││    0x00007fc31ec5c63e:   rorx   $0x22,%rbx,%r12
   0.05%    │ ││    0x00007fc31ec5c644:   xor    %r11,%r15
   0.08%    │ ││    0x00007fc31ec5c647:   rorx   $0x27,%rbx,%r14
   0.06%    │ ││    0x00007fc31ec5c64d:   mov    %rbx,%rdi
   0.06%    │ ││    0x00007fc31ec5c650:   xor    %r12,%r14
   0.07%    │ ││    0x00007fc31ec5c653:   rorx   $0x1c,%rbx,%r12
   0.08%    │ ││    0x00007fc31ec5c659:   add    0x18(%rsp),%rax
   0.06%    │ ││    0x00007fc31ec5c65e:   or     %r8,%rdi
   0.03%    │ ││    0x00007fc31ec5c661:   xor    %r12,%r14
   0.09%    │ ││    0x00007fc31ec5c664:   mov    %rbx,%r12
   0.06%    │ ││    0x00007fc31ec5c667:   and    %rcx,%rdi
   0.07%    │ ││    0x00007fc31ec5c66a:   and    %r8,%r12
   0.07%    │ ││    0x00007fc31ec5c66d:   add    %r13,%r15
   0.07%    │ ││    0x00007fc31ec5c670:   add    %rax,%rdx
   0.07%    │ ││    0x00007fc31ec5c673:   or     %r12,%rdi
   0.08%    │ ││    0x00007fc31ec5c676:   add    %r14,%rax
   0.07%    │ ││    0x00007fc31ec5c679:   add    %r15,%rdx
   0.07%    │ ││    0x00007fc31ec5c67c:   add    %r15,%rax
   0.06%    │ ││    0x00007fc31ec5c67f:   add    %rdi,%rax
   0.11%    │ ││    0x00007fc31ec5c682:   vmovdqu %ymm6,%ymm4
   0.06%    │ ││    0x00007fc31ec5c686:   vmovdqu %ymm7,%ymm5
   0.01%    │ ││    0x00007fc31ec5c68a:   subq   $0x1,0x20(%rsp)
   0.15%    │ ╰│    0x00007fc31ec5c690:   jne    0x00007fc31ec5c344
   0.02%    │  │    0x00007fc31ec5c696:   add    (%rsi),%rax
   0.01%    │  │    0x00007fc31ec5c699:   mov    %rax,(%rsi)
   0.24%    │  │    0x00007fc31ec5c69c:   add    0x8(%rsi),%rbx
   0.00%    │  │    0x00007fc31ec5c6a0:   mov    %rbx,0x8(%rsi)
   0.01%    │  │    0x00007fc31ec5c6a4:   add    0x10(%rsi),%rcx
            │  │    0x00007fc31ec5c6a8:   mov    %rcx,0x10(%rsi)
   0.11%    │  │    0x00007fc31ec5c6ac:   add    0x18(%rsi),%r8
            │  │    0x00007fc31ec5c6b0:   mov    %r8,0x18(%rsi)
   0.01%    │  │    0x00007fc31ec5c6b4:   add    0x20(%rsi),%rdx
            │  │    0x00007fc31ec5c6b8:   mov    %rdx,0x20(%rsi)
   0.10%    │  │    0x00007fc31ec5c6bc:   add    0x28(%rsi),%r9
            │  │    0x00007fc31ec5c6c0:   mov    %r9,0x28(%rsi)
   0.01%    │  │    0x00007fc31ec5c6c4:   add    0x30(%rsi),%r10
            │  │    0x00007fc31ec5c6c8:   mov    %r10,0x30(%rsi)
   0.11%    │  │    0x00007fc31ec5c6cc:   add    0x38(%rsi),%r11
            │  │    0x00007fc31ec5c6d0:   mov    %r11,0x38(%rsi)
   0.02%    │  │    0x00007fc31ec5c6d4:   mov    0x28(%rsp),%rdi
            │  │    0x00007fc31ec5c6d9:   add    $0x80,%rdi
   0.09%    │  │    0x00007fc31ec5c6e0:   cmp    0x30(%rsp),%rdi
            │  ╰    0x00007fc31ec5c6e5:   jne    0x00007fc31ec5b97b
   0.02%    ↘       0x00007fc31ec5c6eb:   mov    0x40(%rsp),%rbp
   0.00%            0x00007fc31ec5c6f0:   mov    0x48(%rsp),%rbx
                    0x00007fc31ec5c6f5:   mov    0x50(%rsp),%r12
                    0x00007fc31ec5c6fa:   mov    0x58(%rsp),%r13
   0.01%            0x00007fc31ec5c6ff:   mov    0x60(%rsp),%r14
                    0x00007fc31ec5c704:   mov    0x68(%rsp),%r15
                    0x00007fc31ec5c709:   mov    0x38(%rsp),%rsp
                    0x00007fc31ec5c70e:   pop    %rcx
   0.01%            0x00007fc31ec5c70f:   pop    %rdx
                    0x00007fc31ec5c710:   mov    %rdx,%rax
   0.23%         ↗  0x00007fc31ec5c713:   cmp    %rcx,%rax
                ╭│  0x00007fc31ec5c716:   jae    0x00007fc31ec5c720
   0.00%        ││  0x00007fc31ec5c718:   add    $0x80,%rax
   0.00%        │╰  0x00007fc31ec5c71e:   jmp    0x00007fc31ec5c713
   0.02%        ↘   0x00007fc31ec5c720:   vzeroupper 
   0.00%            0x00007fc31ec5c723:   leave  
   0.01%            0x00007fc31ec5c724:   ret    
                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  <nmethod compile_id='1' compiler='c1' level='3' entry='0x00007fc3176ef1a0' size='776' address='0x00007fc3176ef010' relocation_offset='344' insts_offset='400' stub_offset='616' scopes_data_offset='680' scopes_pcs_offset='704' dependencies_offset='768' metadata_offset='664' method='java.lang.Object &lt;init&gt; ()V' bytes='1' count='652' iicount='652' stamp='1.704'/>
                  <print_nmethod compile_id='1' compiler='c1' level='3' stamp='1.704'>
                  ============================= C1-compiled nmethod ==============================
                  ----------------------------------- Assembly -----------------------------------
                  Compiled method (c1)    1703    1       3       java.lang.Object::&lt;init&gt; (1 bytes)
                   total in heap  [0x00007fc3176ef010,0x00007fc3176ef318] = 776
                   relocation     [0x00007fc3176ef168,0x00007fc3176ef198] = 48
                   main code      [0x00007fc3176ef1a0,0x00007fc3176ef278] = 216
....................................................................................................
  92.88%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.88%         runtime stub  StubRoutines::sha512_implCompressMB 
   3.81%                       <unknown> 
   0.39%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1137 
   0.30%               kernel  [unknown] 
   0.16%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.12%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1137 
   0.10%               kernel  [unknown] 
   0.09%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1137 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1137 
   0.06%               kernel  [unknown] 
   0.05%       jvmci, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 1094 
   0.05%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.05%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1137 
   0.05%       jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1142 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1142 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1166 
   1.51%  <...other 377 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.88%         runtime stub  StubRoutines::sha512_implCompressMB 
   3.89%                       <unknown> 
   1.56%               kernel  [unknown] 
   0.78%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 5, compile id 1137 
   0.26%       jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1142 
   0.16%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.05%       jvmci, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 1094 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark::mac, version 2, compile id 1140 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 5, compile id 1166 
   0.02%         runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  fileStream::write 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.21%  <...other 83 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.07%         runtime stub
   3.89%                     
   1.56%               kernel
   1.16%       jvmci, level 4
   0.14%            libjvm.so
   0.09%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.00%     perf-2110229.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA3-224, length = 16384)

# Run progress: 66.67% complete, ETA 00:07:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 133.875 us/op
# Warmup Iteration   2: 120.844 us/op
# Warmup Iteration   3: 120.858 us/op
# Warmup Iteration   4: 120.853 us/op
# Warmup Iteration   5: 120.856 us/op
Iteration   1: 120.827 us/op
Iteration   2: 120.841 us/op
Iteration   3: 120.817 us/op
Iteration   4: 120.834 us/op
Iteration   5: 120.813 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  120.827 ±(99.9%) 0.045 us/op [Average]
  (min, avg, max) = (120.813, 120.827, 120.841), stdev = 0.012
  CI (99.9%): [120.782, 120.871] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 258894 total address lines.
Perf output processed (skipped 61.374 seconds):
 Column 1: cycles (50693 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 1066 

 <region is too big to display, has 1287 lines, but threshold is 1000>
....................................................................................................
  88.45%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.45%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1066 
   8.34%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1110 
   0.61%               kernel  [unknown] 
   0.55%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1110 
   0.15%       jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1113 
   0.13%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1111 
   0.10%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1111 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1111 
   0.04%               kernel  [unknown] 
   0.04%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%       jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1113 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1111 
   0.02%               kernel  [unknown] 
   1.13%  <...other 320 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.45%       jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1066 
   8.89%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1110 
   1.62%               kernel  [unknown] 
   0.34%       jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1111 
   0.25%       jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1113 
   0.06%       jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1118 
   0.05%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%                       <unknown> 
   0.02%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  resource_allocate_bytes 
   0.01%       hsdis-amd64.so  print_insn 
   0.18%  <...other 76 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.01%       jvmci, level 4
   1.62%               kernel
   0.13%            libjvm.so
   0.08%         libc-2.31.so
   0.05%         runtime stub
   0.04%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA3-256, length = 16384)

# Run progress: 75.00% complete, ETA 00:05:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 141.222 us/op
# Warmup Iteration   2: 127.510 us/op
# Warmup Iteration   3: 127.491 us/op
# Warmup Iteration   4: 127.486 us/op
# Warmup Iteration   5: 127.494 us/op
Iteration   1: 127.500 us/op
Iteration   2: 127.493 us/op
Iteration   3: 127.496 us/op
Iteration   4: 127.502 us/op
Iteration   5: 127.494 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  127.497 ±(99.9%) 0.014 us/op [Average]
  (min, avg, max) = (127.493, 127.497, 127.502), stdev = 0.004
  CI (99.9%): [127.483, 127.511] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 262176 total address lines.
Perf output processed (skipped 61.499 seconds):
 Column 1: cycles (50487 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 1087 

 <region is too big to display, has 1285 lines, but threshold is 1000>
....................................................................................................
  89.68%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.68%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1087 
   7.81%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1128 
   0.42%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1128 
   0.16%              kernel  [unknown] 
   0.12%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1129 
   0.10%              kernel  [unknown] 
   0.09%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1131 
   0.08%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1129 
   0.07%              kernel  [unknown] 
   0.07%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1131 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1131 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1129 
   1.01%  <...other 329 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.68%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1087 
   8.24%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1128 
   1.16%              kernel  [unknown] 
   0.27%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1129 
   0.18%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1131 
   0.07%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.05%                      <unknown> 
   0.03%      jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1136 
   0.02%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  syscall 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.crypto.jmh_generated.HmacCryptoBenchmark_mac_jmhTest::mac_avgt_jmhStub, version 4, compile id 1158 
   0.20%  <...other 84 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.40%      jvmci, level 4
   1.16%              kernel
   0.16%           libjvm.so
   0.10%        libc-2.31.so
   0.07%        runtime stub
   0.05%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         interpreter
   0.00%    perf-2110354.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA3-384, length = 16384)

# Run progress: 83.33% complete, ETA 00:03:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 179.517 us/op
# Warmup Iteration   2: 162.535 us/op
# Warmup Iteration   3: 162.382 us/op
# Warmup Iteration   4: 162.274 us/op
# Warmup Iteration   5: 162.274 us/op
Iteration   1: 162.278 us/op
Iteration   2: 162.274 us/op
Iteration   3: 162.270 us/op
Iteration   4: 162.295 us/op
Iteration   5: 162.317 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  162.287 ±(99.9%) 0.074 us/op [Average]
  (min, avg, max) = (162.270, 162.287, 162.317), stdev = 0.019
  CI (99.9%): [162.212, 162.361] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 261420 total address lines.
Perf output processed (skipped 61.382 seconds):
 Column 1: cycles (50570 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 1075 

 <region is too big to display, has 1246 lines, but threshold is 1000>
....................................................................................................
  91.25%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.25%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1075 
   5.87%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1114 
   0.36%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1114 
   0.32%              kernel  [unknown] 
   0.19%              kernel  [unknown] 
   0.12%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1118 
   0.11%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1075 
   0.08%              kernel  [unknown] 
   0.06%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1120 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1118 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.21%  <...other 332 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.35%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1075 
   6.23%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1114 
   1.66%              kernel  [unknown] 
   0.26%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1118 
   0.13%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1120 
   0.06%                      <unknown> 
   0.04%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%      jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1127 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  os::current_thread_id 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%        libc-2.31.so  __GI___libc_write 
   0.00%        runtime stub  StubRoutines::jbyte_arraycopy 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.01%      jvmci, level 4
   1.66%              kernel
   0.12%           libjvm.so
   0.06%        libc-2.31.so
   0.06%                    
   0.05%        runtime stub
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac
# Parameters: (algorithm = HmacSHA3-512, length = 16384)

# Run progress: 91.67% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 252.639 us/op
# Warmup Iteration   2: 228.183 us/op
# Warmup Iteration   3: 228.079 us/op
# Warmup Iteration   4: 228.052 us/op
# Warmup Iteration   5: 228.024 us/op
Iteration   1: 228.038 us/op
Iteration   2: 228.027 us/op
Iteration   3: 228.010 us/op
Iteration   4: 228.017 us/op
Iteration   5: 228.000 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac":
  228.019 ±(99.9%) 0.057 us/op [Average]
  (min, avg, max) = (228.000, 228.019, 228.038), stdev = 0.015
  CI (99.9%): [227.961, 228.076] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.crypto.HmacCryptoBenchmark.mac:asm":
PrintAssembly processed: 257532 total address lines.
Perf output processed (skipped 61.246 seconds):
 Column 1: cycles (50756 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 1068 

 <region is too big to display, has 1250 lines, but threshold is 1000>
....................................................................................................
  92.17%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.17%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1068 
   4.61%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1107 
   0.65%              kernel  [unknown] 
   0.28%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1107 
   0.22%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1107 
   0.12%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1068 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1110 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1113 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1110 
   1.28%  <...other 382 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.28%      jvmci, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 1068 
   5.12%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1107 
   1.96%              kernel  [unknown] 
   0.13%      jvmci, level 4  sun.security.provider.DigestBase::engineUpdate, version 3, compile id 1110 
   0.09%      jvmci, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 1113 
   0.06%                      <unknown> 
   0.05%      jvmci, level 4  javax.crypto.Mac::doFinal, version 2, compile id 1119 
   0.02%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  fileStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_old_init 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.17%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.68%      jvmci, level 4
   1.96%              kernel
   0.12%           libjvm.so
   0.09%        libc-2.31.so
   0.06%                    
   0.03%        runtime stub
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%    perf-2110485.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:22:54

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
HmacCryptoBenchmark.mac             HmacMD5     16384  avgt    5   30.928 ± 0.036  us/op
HmacCryptoBenchmark.mac:asm         HmacMD5     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac            HmacSHA1     16384  avgt    5   73.200 ± 0.037  us/op
HmacCryptoBenchmark.mac:asm        HmacSHA1     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac          HmacSHA224     16384  avgt    5   55.618 ± 0.069  us/op
HmacCryptoBenchmark.mac:asm      HmacSHA224     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac          HmacSHA256     16384  avgt    5   55.598 ± 0.012  us/op
HmacCryptoBenchmark.mac:asm      HmacSHA256     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac          HmacSHA384     16384  avgt    5   39.348 ± 0.020  us/op
HmacCryptoBenchmark.mac:asm      HmacSHA384     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac          HmacSHA512     16384  avgt    5   39.257 ± 0.014  us/op
HmacCryptoBenchmark.mac:asm      HmacSHA512     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac      HmacSHA512/224     16384  avgt    5   39.281 ± 0.014  us/op
HmacCryptoBenchmark.mac:asm  HmacSHA512/224     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac      HmacSHA512/256     16384  avgt    5   39.338 ± 0.015  us/op
HmacCryptoBenchmark.mac:asm  HmacSHA512/256     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac        HmacSHA3-224     16384  avgt    5  120.827 ± 0.045  us/op
HmacCryptoBenchmark.mac:asm    HmacSHA3-224     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac        HmacSHA3-256     16384  avgt    5  127.497 ± 0.014  us/op
HmacCryptoBenchmark.mac:asm    HmacSHA3-256     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac        HmacSHA3-384     16384  avgt    5  162.287 ± 0.074  us/op
HmacCryptoBenchmark.mac:asm    HmacSHA3-384     16384  avgt           NaN            ---
HmacCryptoBenchmark.mac        HmacSHA3-512     16384  avgt    5  228.019 ± 0.057  us/op
HmacCryptoBenchmark.mac:asm    HmacSHA3-512     16384  avgt           NaN            ---
